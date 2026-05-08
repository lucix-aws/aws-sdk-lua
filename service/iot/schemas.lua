

local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.iot"

local M = {}

M.JobTargets = schema.new({ type = "list", list_member = prelude.String })

M.DetailsMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.PublicKeyMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.TagList = schema.new({ type = "list", list_member = M.Tag })

M.CertificateProviderAccountDefaultForOperations = schema.new({ type = "list", list_member = prelude.String })

M.CommandParameterList = schema.new({ type = "list", list_member = M.CommandParameter })

M.DimensionStringValues = schema.new({ type = "list", list_member = prelude.String })

M.ServerCertificateArns = schema.new({ type = "list", list_member = prelude.String })

M.ParameterMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.DestinationPackageVersions = schema.new({ type = "list", list_member = prelude.String })

M.MaintenanceWindows = schema.new({ type = "list", list_member = M.MaintenanceWindow })

M.Targets = schema.new({ type = "list", list_member = prelude.String })

M.Protocols = schema.new({ type = "list", list_member = prelude.String })

M.OTAUpdateFiles = schema.new({ type = "list", list_member = M.OTAUpdateFile })

M.AdditionalParameterMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.TagMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.ResourceAttributes = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.TargetAuditCheckNames = schema.new({ type = "list", list_member = prelude.String })

M.Behaviors = schema.new({ type = "list", list_member = M.Behavior })

M.AlertTargets = schema.new({ type = "map", map_key = prelude.String, map_value = M.AlertTarget })

M.AdditionalMetricsToRetainList = schema.new({ type = "list", list_member = prelude.String })

M.AdditionalMetricsToRetainV2List = schema.new({ type = "list", list_member = M.MetricToRetain })

M.StreamFiles = schema.new({ type = "list", list_member = M.StreamFile })

M.AuditNotificationTargetConfigurations = schema.new({ type = "map", map_key = prelude.String, map_value = M.AuditNotificationTarget })

M.AuditCheckConfigurations = schema.new({ type = "map", map_key = prelude.String, map_value = M.AuditCheckConfiguration })

M.AuditMitigationActionsTaskStatistics = schema.new({ type = "map", map_key = prelude.String, map_value = M.TaskStatisticsForAuditCheck })

M.AuditCheckToActionsMapping = schema.new({ type = "map", map_key = prelude.String, map_value = M.MitigationActionNameList })

M.MitigationActionList = schema.new({ type = "list", list_member = M.MitigationAction })

M.AuditDetails = schema.new({ type = "map", map_key = prelude.String, map_value = M.AuditCheckDetails })

M.ServerCertificates = schema.new({ type = "list", list_member = M.ServerCertificateSummary })

M.EventConfigurations = schema.new({ type = "map", map_key = prelude.String, map_value = M.Configuration })

M.Environments = schema.new({ type = "list", list_member = prelude.String })

M.DocumentParameters = schema.new({ type = "list", list_member = M.DocumentParameter })

M.Attributes = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.BehaviorModelTrainingSummaries = schema.new({ type = "list", list_member = M.BehaviorModelTrainingSummary })

M.Buckets = schema.new({ type = "list", list_member = M.Bucket })

M.CommandExecutionResultMap = schema.new({ type = "map", map_key = prelude.String, map_value = M.CommandExecutionResult })

M.CommandExecutionParameterMap = schema.new({ type = "map", map_key = prelude.String, map_value = M.CommandParameterValue })

M.EffectivePolicies = schema.new({ type = "list", list_member = M.EffectivePolicy })

M.PercentList = schema.new({ type = "list", list_member = prelude.Double })

M.Percentiles = schema.new({ type = "list", list_member = M.PercentPair })

M.LogEventConfigurations = schema.new({ type = "list", list_member = M.LogEventConfiguration })

M.ActiveViolations = schema.new({ type = "list", list_member = M.ActiveViolation })

M.Policies = schema.new({ type = "list", list_member = M.Policy })

M.AuditFindings = schema.new({ type = "list", list_member = M.AuditFinding })

M.AuditMitigationActionExecutionMetadataList = schema.new({ type = "list", list_member = M.AuditMitigationActionExecutionMetadata })

M.AuditMitigationActionsTaskMetadataList = schema.new({ type = "list", list_member = M.AuditMitigationActionsTaskMetadata })

M.AuditSuppressionList = schema.new({ type = "list", list_member = M.AuditSuppression })

M.AuditTaskMetadataList = schema.new({ type = "list", list_member = M.AuditTaskMetadata })

M.Authorizers = schema.new({ type = "list", list_member = M.AuthorizerSummary })

M.BillingGroupNameAndArnList = schema.new({ type = "list", list_member = M.GroupNameAndArn })

M.CACertificates = schema.new({ type = "list", list_member = M.CACertificate })

M.CertificateProviders = schema.new({ type = "list", list_member = M.CertificateProviderSummary })

M.Certificates = schema.new({ type = "list", list_member = M.Certificate })

M.CommandExecutionSummaryList = schema.new({ type = "list", list_member = M.CommandExecutionSummary })

M.CommandSummaryList = schema.new({ type = "list", list_member = M.CommandSummary })

M.MetricNames = schema.new({ type = "list", list_member = prelude.String })

M.DetectMitigationActionExecutionList = schema.new({ type = "list", list_member = M.DetectMitigationActionExecution })

M.DetectMitigationActionsTaskSummaryList = schema.new({ type = "list", list_member = M.DetectMitigationActionsTaskSummary })

M.DimensionNames = schema.new({ type = "list", list_member = prelude.String })

M.DomainConfigurations = schema.new({ type = "list", list_member = M.DomainConfigurationSummary })

M.FleetMetricNameAndArnList = schema.new({ type = "list", list_member = M.FleetMetricNameAndArn })

M.IndexNamesList = schema.new({ type = "list", list_member = prelude.String })

M.JobExecutionSummaryForJobList = schema.new({ type = "list", list_member = M.JobExecutionSummaryForJob })

M.JobExecutionSummaryForThingList = schema.new({ type = "list", list_member = M.JobExecutionSummaryForThing })

M.JobSummaryList = schema.new({ type = "list", list_member = M.JobSummary })

M.JobTemplateSummaryList = schema.new({ type = "list", list_member = M.JobTemplateSummary })

M.ManagedJobTemplatesSummaryList = schema.new({ type = "list", list_member = M.ManagedJobTemplateSummary })

M.MetricDatumList = schema.new({ type = "list", list_member = M.MetricDatum })

M.MitigationActionIdentifierList = schema.new({ type = "list", list_member = M.MitigationActionIdentifier })

M.OTAUpdatesSummary = schema.new({ type = "list", list_member = M.OTAUpdateSummary })

M.OutgoingCertificates = schema.new({ type = "list", list_member = M.OutgoingCertificate })

M.PackageSummaryList = schema.new({ type = "list", list_member = M.PackageSummary })

M.PackageVersionSummaryList = schema.new({ type = "list", list_member = M.PackageVersionSummary })

M.Principals = schema.new({ type = "list", list_member = prelude.String })

M.PolicyVersions = schema.new({ type = "list", list_member = M.PolicyVersion })

M.ThingNameList = schema.new({ type = "list", list_member = prelude.String })

M.PrincipalThingObjects = schema.new({ type = "list", list_member = M.PrincipalThingObject })

M.ProvisioningTemplateListing = schema.new({ type = "list", list_member = M.ProvisioningTemplateSummary })

M.ProvisioningTemplateVersionListing = schema.new({ type = "list", list_member = M.ProvisioningTemplateVersionSummary })

M.RelatedResources = schema.new({ type = "list", list_member = M.RelatedResource })

M.RoleAliases = schema.new({ type = "list", list_member = prelude.String })

M.SbomValidationResultSummaryList = schema.new({ type = "list", list_member = M.SbomValidationResultSummary })

M.ScheduledAuditMetadataList = schema.new({ type = "list", list_member = M.ScheduledAuditMetadata })

M.SecurityProfileIdentifiers = schema.new({ type = "list", list_member = M.SecurityProfileIdentifier })

M.SecurityProfileTargetMappings = schema.new({ type = "list", list_member = M.SecurityProfileTargetMapping })

M.StreamsSummary = schema.new({ type = "list", list_member = M.StreamSummary })

M.PolicyTargets = schema.new({ type = "list", list_member = prelude.String })

M.SecurityProfileTargets = schema.new({ type = "list", list_member = M.SecurityProfileTarget })

M.ThingGroupNameAndArnList = schema.new({ type = "list", list_member = M.GroupNameAndArn })

M.ThingPrincipalObjects = schema.new({ type = "list", list_member = M.ThingPrincipalObject })

M.S3FileUrlList = schema.new({ type = "list", list_member = prelude.String })

M.TaskIdList = schema.new({ type = "list", list_member = prelude.String })

M.ThingAttributeList = schema.new({ type = "list", list_member = M.ThingAttribute })

M.ThingTypeList = schema.new({ type = "list", list_member = M.ThingTypeDefinition })

M.TopicRuleDestinationSummaries = schema.new({ type = "list", list_member = M.TopicRuleDestinationSummary })

M.TopicRuleList = schema.new({ type = "list", list_member = M.TopicRuleListItem })

M.LogTargetConfigurations = schema.new({ type = "list", list_member = M.LogTargetConfiguration })

M.ViolationEvents = schema.new({ type = "list", list_member = M.ViolationEvent })

M.Parameters = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.ResourceArns = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.ThingDocumentList = schema.new({ type = "list", list_member = M.ThingDocument })

M.ThingGroupDocumentList = schema.new({ type = "list", list_member = M.ThingGroupDocument })

M.DetectMitigationActionsToExecuteList = schema.new({ type = "list", list_member = prelude.String })

M.AuthInfos = schema.new({ type = "list", list_member = M.AuthInfo })

M.PolicyNames = schema.new({ type = "list", list_member = prelude.String })

M.AuthResults = schema.new({ type = "list", list_member = M.AuthResult })

M.PolicyDocuments = schema.new({ type = "list", list_member = prelude.String })

M.TagKeyList = schema.new({ type = "list", list_member = prelude.String })

M.ThingGroupList = schema.new({ type = "list", list_member = prelude.String })

M.ValidationErrors = schema.new({ type = "list", list_member = M.ValidationError })

M.AggregationTypeValues = schema.new({ type = "list", list_member = prelude.String })

M.AbortCriteriaList = schema.new({ type = "list", list_member = M.AbortCriteria })

M.RetryCriteriaList = schema.new({ type = "list", list_member = M.RetryCriteria })

M.AwsJobAbortCriteriaList = schema.new({ type = "list", list_member = M.AwsJobAbortCriteria })

M.SearchableAttributes = schema.new({ type = "list", list_member = prelude.String })

M.ActionList = schema.new({ type = "list", list_member = M.Action })

M.FindingIds = schema.new({ type = "list", list_member = prelude.String })

M.AuditCheckToReasonCodeFilter = schema.new({ type = "map", map_key = prelude.String, map_value = M.ReasonForNonComplianceCodes })

M.MitigationActionNameList = schema.new({ type = "list", list_member = prelude.String })

M.ScheduledJobRolloutList = schema.new({ type = "list", list_member = M.ScheduledJobRollout })

M.Fields = schema.new({ type = "list", list_member = M.Field })

M.TargetViolationIdsForDetectMitigationActions = schema.new({ type = "list", list_member = prelude.String })

M.HttpHeaders = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.CommandParameterValueConditionList = schema.new({ type = "list", list_member = M.CommandParameterValueCondition })

M.ThingGroupNames = schema.new({ type = "list", list_member = prelude.String })

M.AttributesMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.PropagatingAttributeList = schema.new({ type = "list", list_member = M.PropagatingAttribute })

M.SubnetIdList = schema.new({ type = "list", list_member = prelude.String })

M.SecurityGroupList = schema.new({ type = "list", list_member = prelude.String })

M.CheckCustomConfiguration = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.StringMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.ReasonForNonComplianceCodes = schema.new({ type = "list", list_member = prelude.String })

M.ProcessingTargetNameList = schema.new({ type = "list", list_member = prelude.String })

M.NamedShadowNamesFilter = schema.new({ type = "list", list_member = prelude.String })

M.GeoLocationsFilter = schema.new({ type = "list", list_member = M.GeoLocationTarget })

M.ThingGroupNameList = schema.new({ type = "list", list_member = prelude.String })

M.Resources = schema.new({ type = "list", list_member = prelude.String })

M.MissingContextValues = schema.new({ type = "list", list_member = prelude.String })

M.PutAssetPropertyValueEntryList = schema.new({ type = "list", list_member = M.PutAssetPropertyValueEntry })

M.TimestreamDimensionList = schema.new({ type = "list", list_member = M.TimestreamDimension })

M.HeaderList = schema.new({ type = "list", list_member = M.HttpActionHeader })

M.ClientProperties = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.KafkaHeaders = schema.new({ type = "list", list_member = M.KafkaActionHeader })

M.Cidrs = schema.new({ type = "list", list_member = prelude.String })

M.Ports = schema.new({ type = "list", list_member = prelude.Integer })

M.NumberList = schema.new({ type = "list", list_member = prelude.Double })

M.StringList = schema.new({ type = "list", list_member = prelude.String })

M.UserProperties = schema.new({ type = "list", list_member = M.UserProperty })

M.CommandParameterValueStringList = schema.new({ type = "list", list_member = prelude.String })

M.AssetPropertyValueList = schema.new({ type = "list", list_member = M.AssetPropertyValue })

M.AbortCriteria = schema.new({
   id = id.from(_N, "AbortCriteria"),
   type = "structure",
   members = {
      failureType = schema.new({
         id = id.from(_N, "AbortCriteria", "failureType"),
         type = "string",
         name = "failureType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      action = schema.new({
         id = id.from(_N, "AbortCriteria", "action"),
         type = "string",
         name = "action",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      thresholdPercentage = schema.new({
         id = id.from(_N, "AbortCriteria", "thresholdPercentage"),
         type = "double",
         name = "thresholdPercentage",
         target_id = prelude.Double.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      minNumberOfExecutedThings = schema.new({
         id = id.from(_N, "AbortCriteria", "minNumberOfExecutedThings"),
         type = "integer",
         name = "minNumberOfExecutedThings",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AbortConfig = schema.new({
   id = id.from(_N, "AbortConfig"),
   type = "structure",
   members = {
      criteriaList = schema.new({
         id = id.from(_N, "AbortConfig", "criteriaList"),
         type = "list",
         name = "criteriaList",
         target_id = prelude.Document.id,
         list_member = M.AbortCriteria,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AcceptCertificateTransferInput = schema.new({
   id = id.from(_N, "AcceptCertificateTransferRequest"),
   type = "structure",
   members = {
      certificateId = schema.new({
         id = id.from(_N, "AcceptCertificateTransferInput", "certificateId"),
         type = "string",
         name = "certificateId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      setAsActive = schema.new({
         id = id.from(_N, "AcceptCertificateTransferInput", "setAsActive"),
         type = "boolean",
         name = "setAsActive",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
            [traits.HTTP_QUERY] = { name = "setAsActive" },
         },
      }),
   },
})

M.AcceptCertificateTransferOutput = prelude.Unit

M.InternalFailureException = schema.new({
   id = id.from(_N, "InternalFailureException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "server" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "InternalFailureException", "message"),
         type = "string",
         name = "message",
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
      message = schema.new({
         id = id.from(_N, "InvalidRequestException", "message"),
         type = "string",
         name = "message",
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

M.ServiceUnavailableException = schema.new({
   id = id.from(_N, "ServiceUnavailableException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "server" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "ServiceUnavailableException", "message"),
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

M.TransferAlreadyCompletedException = schema.new({
   id = id.from(_N, "TransferAlreadyCompletedException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "TransferAlreadyCompletedException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.UnauthorizedException = schema.new({
   id = id.from(_N, "UnauthorizedException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "UnauthorizedException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.CloudwatchAlarmAction = schema.new({
   id = id.from(_N, "CloudwatchAlarmAction"),
   type = "structure",
   members = {
      roleArn = schema.new({
         id = id.from(_N, "CloudwatchAlarmAction", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      alarmName = schema.new({
         id = id.from(_N, "CloudwatchAlarmAction", "alarmName"),
         type = "string",
         name = "alarmName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      stateReason = schema.new({
         id = id.from(_N, "CloudwatchAlarmAction", "stateReason"),
         type = "string",
         name = "stateReason",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      stateValue = schema.new({
         id = id.from(_N, "CloudwatchAlarmAction", "stateValue"),
         type = "string",
         name = "stateValue",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CloudwatchLogsAction = schema.new({
   id = id.from(_N, "CloudwatchLogsAction"),
   type = "structure",
   members = {
      roleArn = schema.new({
         id = id.from(_N, "CloudwatchLogsAction", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      logGroupName = schema.new({
         id = id.from(_N, "CloudwatchLogsAction", "logGroupName"),
         type = "string",
         name = "logGroupName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      batchMode = schema.new({
         id = id.from(_N, "CloudwatchLogsAction", "batchMode"),
         type = "boolean",
         name = "batchMode",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.CloudwatchMetricAction = schema.new({
   id = id.from(_N, "CloudwatchMetricAction"),
   type = "structure",
   members = {
      roleArn = schema.new({
         id = id.from(_N, "CloudwatchMetricAction", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      metricNamespace = schema.new({
         id = id.from(_N, "CloudwatchMetricAction", "metricNamespace"),
         type = "string",
         name = "metricNamespace",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      metricName = schema.new({
         id = id.from(_N, "CloudwatchMetricAction", "metricName"),
         type = "string",
         name = "metricName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      metricValue = schema.new({
         id = id.from(_N, "CloudwatchMetricAction", "metricValue"),
         type = "string",
         name = "metricValue",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      metricUnit = schema.new({
         id = id.from(_N, "CloudwatchMetricAction", "metricUnit"),
         type = "string",
         name = "metricUnit",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      metricTimestamp = schema.new({
         id = id.from(_N, "CloudwatchMetricAction", "metricTimestamp"),
         type = "string",
         name = "metricTimestamp",
         target_id = prelude.String.id,
      }),
   },
})

M.DynamoDBAction = schema.new({
   id = id.from(_N, "DynamoDBAction"),
   type = "structure",
   members = {
      tableName = schema.new({
         id = id.from(_N, "DynamoDBAction", "tableName"),
         type = "string",
         name = "tableName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      roleArn = schema.new({
         id = id.from(_N, "DynamoDBAction", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      operation = schema.new({
         id = id.from(_N, "DynamoDBAction", "operation"),
         type = "string",
         name = "operation",
         target_id = prelude.String.id,
      }),
      hashKeyField = schema.new({
         id = id.from(_N, "DynamoDBAction", "hashKeyField"),
         type = "string",
         name = "hashKeyField",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      hashKeyValue = schema.new({
         id = id.from(_N, "DynamoDBAction", "hashKeyValue"),
         type = "string",
         name = "hashKeyValue",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      hashKeyType = schema.new({
         id = id.from(_N, "DynamoDBAction", "hashKeyType"),
         type = "string",
         name = "hashKeyType",
         target_id = prelude.String.id,
      }),
      rangeKeyField = schema.new({
         id = id.from(_N, "DynamoDBAction", "rangeKeyField"),
         type = "string",
         name = "rangeKeyField",
         target_id = prelude.String.id,
      }),
      rangeKeyValue = schema.new({
         id = id.from(_N, "DynamoDBAction", "rangeKeyValue"),
         type = "string",
         name = "rangeKeyValue",
         target_id = prelude.String.id,
      }),
      rangeKeyType = schema.new({
         id = id.from(_N, "DynamoDBAction", "rangeKeyType"),
         type = "string",
         name = "rangeKeyType",
         target_id = prelude.String.id,
      }),
      payloadField = schema.new({
         id = id.from(_N, "DynamoDBAction", "payloadField"),
         type = "string",
         name = "payloadField",
         target_id = prelude.String.id,
      }),
   },
})

M.PutItemInput = schema.new({
   id = id.from(_N, "PutItemInput"),
   type = "structure",
   members = {
      tableName = schema.new({
         id = id.from(_N, "PutItemInput", "tableName"),
         type = "string",
         name = "tableName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DynamoDBv2Action = schema.new({
   id = id.from(_N, "DynamoDBv2Action"),
   type = "structure",
   members = {
      roleArn = schema.new({
         id = id.from(_N, "DynamoDBv2Action", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      putItem = schema.new({
         id = id.from(_N, "DynamoDBv2Action", "putItem"),
         type = "structure",
         name = "putItem",
         target_id = id.from(_N, "PutItemInput"),
         target = M.PutItemInput,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ElasticsearchAction = schema.new({
   id = id.from(_N, "ElasticsearchAction"),
   type = "structure",
   members = {
      roleArn = schema.new({
         id = id.from(_N, "ElasticsearchAction", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      endpoint = schema.new({
         id = id.from(_N, "ElasticsearchAction", "endpoint"),
         type = "string",
         name = "endpoint",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      index = schema.new({
         id = id.from(_N, "ElasticsearchAction", "index"),
         type = "string",
         name = "index",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      type = schema.new({
         id = id.from(_N, "ElasticsearchAction", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      id = schema.new({
         id = id.from(_N, "ElasticsearchAction", "id"),
         type = "string",
         name = "id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.FirehoseAction = schema.new({
   id = id.from(_N, "FirehoseAction"),
   type = "structure",
   members = {
      roleArn = schema.new({
         id = id.from(_N, "FirehoseAction", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      deliveryStreamName = schema.new({
         id = id.from(_N, "FirehoseAction", "deliveryStreamName"),
         type = "string",
         name = "deliveryStreamName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      separator = schema.new({
         id = id.from(_N, "FirehoseAction", "separator"),
         type = "string",
         name = "separator",
         target_id = prelude.String.id,
      }),
      batchMode = schema.new({
         id = id.from(_N, "FirehoseAction", "batchMode"),
         type = "boolean",
         name = "batchMode",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.SigV4Authorization = schema.new({
   id = id.from(_N, "SigV4Authorization"),
   type = "structure",
   members = {
      signingRegion = schema.new({
         id = id.from(_N, "SigV4Authorization", "signingRegion"),
         type = "string",
         name = "signingRegion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      serviceName = schema.new({
         id = id.from(_N, "SigV4Authorization", "serviceName"),
         type = "string",
         name = "serviceName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      roleArn = schema.new({
         id = id.from(_N, "SigV4Authorization", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.HttpAuthorization = schema.new({
   id = id.from(_N, "HttpAuthorization"),
   type = "structure",
   members = {
      sigv4 = schema.new({
         id = id.from(_N, "HttpAuthorization", "sigv4"),
         type = "structure",
         name = "sigv4",
         target_id = id.from(_N, "SigV4Authorization"),
         target = M.SigV4Authorization,
      }),
   },
})

M.BatchConfig = schema.new({
   id = id.from(_N, "BatchConfig"),
   type = "structure",
   members = {
      maxBatchOpenMs = schema.new({
         id = id.from(_N, "BatchConfig", "maxBatchOpenMs"),
         type = "integer",
         name = "maxBatchOpenMs",
         target_id = prelude.Integer.id,
      }),
      maxBatchSize = schema.new({
         id = id.from(_N, "BatchConfig", "maxBatchSize"),
         type = "integer",
         name = "maxBatchSize",
         target_id = prelude.Integer.id,
      }),
      maxBatchSizeBytes = schema.new({
         id = id.from(_N, "BatchConfig", "maxBatchSizeBytes"),
         type = "integer",
         name = "maxBatchSizeBytes",
         target_id = prelude.Integer.id,
      }),
      batchAcrossTopics = schema.new({
         id = id.from(_N, "BatchConfig", "batchAcrossTopics"),
         type = "boolean",
         name = "batchAcrossTopics",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
   },
})

M.HttpActionHeader = schema.new({
   id = id.from(_N, "HttpActionHeader"),
   type = "structure",
   members = {
      key = schema.new({
         id = id.from(_N, "HttpActionHeader", "key"),
         type = "string",
         name = "key",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      value = schema.new({
         id = id.from(_N, "HttpActionHeader", "value"),
         type = "string",
         name = "value",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.HttpAction = schema.new({
   id = id.from(_N, "HttpAction"),
   type = "structure",
   members = {
      url = schema.new({
         id = id.from(_N, "HttpAction", "url"),
         type = "string",
         name = "url",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      confirmationUrl = schema.new({
         id = id.from(_N, "HttpAction", "confirmationUrl"),
         type = "string",
         name = "confirmationUrl",
         target_id = prelude.String.id,
      }),
      headers = schema.new({
         id = id.from(_N, "HttpAction", "headers"),
         type = "list",
         name = "headers",
         target_id = prelude.Document.id,
         list_member = M.HttpActionHeader,
      }),
      auth = schema.new({
         id = id.from(_N, "HttpAction", "auth"),
         type = "structure",
         name = "auth",
         target_id = id.from(_N, "HttpAuthorization"),
         target = M.HttpAuthorization,
      }),
      enableBatching = schema.new({
         id = id.from(_N, "HttpAction", "enableBatching"),
         type = "boolean",
         name = "enableBatching",
         target_id = prelude.Boolean.id,
      }),
      batchConfig = schema.new({
         id = id.from(_N, "HttpAction", "batchConfig"),
         type = "structure",
         name = "batchConfig",
         target_id = id.from(_N, "BatchConfig"),
         target = M.BatchConfig,
      }),
   },
})

M.IotAnalyticsAction = schema.new({
   id = id.from(_N, "IotAnalyticsAction"),
   type = "structure",
   members = {
      channelArn = schema.new({
         id = id.from(_N, "IotAnalyticsAction", "channelArn"),
         type = "string",
         name = "channelArn",
         target_id = prelude.String.id,
      }),
      channelName = schema.new({
         id = id.from(_N, "IotAnalyticsAction", "channelName"),
         type = "string",
         name = "channelName",
         target_id = prelude.String.id,
      }),
      batchMode = schema.new({
         id = id.from(_N, "IotAnalyticsAction", "batchMode"),
         type = "boolean",
         name = "batchMode",
         target_id = prelude.Boolean.id,
      }),
      roleArn = schema.new({
         id = id.from(_N, "IotAnalyticsAction", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
      }),
   },
})

M.IotEventsAction = schema.new({
   id = id.from(_N, "IotEventsAction"),
   type = "structure",
   members = {
      inputName = schema.new({
         id = id.from(_N, "IotEventsAction", "inputName"),
         type = "string",
         name = "inputName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      messageId = schema.new({
         id = id.from(_N, "IotEventsAction", "messageId"),
         type = "string",
         name = "messageId",
         target_id = prelude.String.id,
      }),
      batchMode = schema.new({
         id = id.from(_N, "IotEventsAction", "batchMode"),
         type = "boolean",
         name = "batchMode",
         target_id = prelude.Boolean.id,
      }),
      roleArn = schema.new({
         id = id.from(_N, "IotEventsAction", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AssetPropertyTimestamp = schema.new({
   id = id.from(_N, "AssetPropertyTimestamp"),
   type = "structure",
   members = {
      timeInSeconds = schema.new({
         id = id.from(_N, "AssetPropertyTimestamp", "timeInSeconds"),
         type = "string",
         name = "timeInSeconds",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      offsetInNanos = schema.new({
         id = id.from(_N, "AssetPropertyTimestamp", "offsetInNanos"),
         type = "string",
         name = "offsetInNanos",
         target_id = prelude.String.id,
      }),
   },
})

M.AssetPropertyVariant = schema.new({
   id = id.from(_N, "AssetPropertyVariant"),
   type = "union",
   members = {
      stringValue = schema.new({
         id = id.from(_N, "AssetPropertyVariant", "stringValue"),
         type = "string",
         name = "stringValue",
         target_id = prelude.String.id,
      }),
      integerValue = schema.new({
         id = id.from(_N, "AssetPropertyVariant", "integerValue"),
         type = "string",
         name = "integerValue",
         target_id = prelude.String.id,
      }),
      doubleValue = schema.new({
         id = id.from(_N, "AssetPropertyVariant", "doubleValue"),
         type = "string",
         name = "doubleValue",
         target_id = prelude.String.id,
      }),
      booleanValue = schema.new({
         id = id.from(_N, "AssetPropertyVariant", "booleanValue"),
         type = "string",
         name = "booleanValue",
         target_id = prelude.String.id,
      }),
   },
})

M.AssetPropertyValue = schema.new({
   id = id.from(_N, "AssetPropertyValue"),
   type = "structure",
   members = {
      value = schema.new({
         id = id.from(_N, "AssetPropertyValue", "value"),
         type = "union",
         name = "value",
         target_id = id.from(_N, "AssetPropertyVariant"),
         target = M.AssetPropertyVariant,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      timestamp = schema.new({
         id = id.from(_N, "AssetPropertyValue", "timestamp"),
         type = "structure",
         name = "timestamp",
         target_id = id.from(_N, "AssetPropertyTimestamp"),
         target = M.AssetPropertyTimestamp,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      quality = schema.new({
         id = id.from(_N, "AssetPropertyValue", "quality"),
         type = "string",
         name = "quality",
         target_id = prelude.String.id,
      }),
   },
})

M.PutAssetPropertyValueEntry = schema.new({
   id = id.from(_N, "PutAssetPropertyValueEntry"),
   type = "structure",
   members = {
      entryId = schema.new({
         id = id.from(_N, "PutAssetPropertyValueEntry", "entryId"),
         type = "string",
         name = "entryId",
         target_id = prelude.String.id,
      }),
      assetId = schema.new({
         id = id.from(_N, "PutAssetPropertyValueEntry", "assetId"),
         type = "string",
         name = "assetId",
         target_id = prelude.String.id,
      }),
      propertyId = schema.new({
         id = id.from(_N, "PutAssetPropertyValueEntry", "propertyId"),
         type = "string",
         name = "propertyId",
         target_id = prelude.String.id,
      }),
      propertyAlias = schema.new({
         id = id.from(_N, "PutAssetPropertyValueEntry", "propertyAlias"),
         type = "string",
         name = "propertyAlias",
         target_id = prelude.String.id,
      }),
      propertyValues = schema.new({
         id = id.from(_N, "PutAssetPropertyValueEntry", "propertyValues"),
         type = "list",
         name = "propertyValues",
         target_id = prelude.Document.id,
         list_member = M.AssetPropertyValue,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.IotSiteWiseAction = schema.new({
   id = id.from(_N, "IotSiteWiseAction"),
   type = "structure",
   members = {
      putAssetPropertyValueEntries = schema.new({
         id = id.from(_N, "IotSiteWiseAction", "putAssetPropertyValueEntries"),
         type = "list",
         name = "putAssetPropertyValueEntries",
         target_id = prelude.Document.id,
         list_member = M.PutAssetPropertyValueEntry,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      roleArn = schema.new({
         id = id.from(_N, "IotSiteWiseAction", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.KafkaActionHeader = schema.new({
   id = id.from(_N, "KafkaActionHeader"),
   type = "structure",
   members = {
      key = schema.new({
         id = id.from(_N, "KafkaActionHeader", "key"),
         type = "string",
         name = "key",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      value = schema.new({
         id = id.from(_N, "KafkaActionHeader", "value"),
         type = "string",
         name = "value",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.KafkaAction = schema.new({
   id = id.from(_N, "KafkaAction"),
   type = "structure",
   members = {
      destinationArn = schema.new({
         id = id.from(_N, "KafkaAction", "destinationArn"),
         type = "string",
         name = "destinationArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      topic = schema.new({
         id = id.from(_N, "KafkaAction", "topic"),
         type = "string",
         name = "topic",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      key = schema.new({
         id = id.from(_N, "KafkaAction", "key"),
         type = "string",
         name = "key",
         target_id = prelude.String.id,
      }),
      partition = schema.new({
         id = id.from(_N, "KafkaAction", "partition"),
         type = "string",
         name = "partition",
         target_id = prelude.String.id,
      }),
      clientProperties = schema.new({
         id = id.from(_N, "KafkaAction", "clientProperties"),
         type = "map",
         name = "clientProperties",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      headers = schema.new({
         id = id.from(_N, "KafkaAction", "headers"),
         type = "list",
         name = "headers",
         target_id = prelude.Document.id,
         list_member = M.KafkaActionHeader,
      }),
   },
})

M.KinesisAction = schema.new({
   id = id.from(_N, "KinesisAction"),
   type = "structure",
   members = {
      roleArn = schema.new({
         id = id.from(_N, "KinesisAction", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      streamName = schema.new({
         id = id.from(_N, "KinesisAction", "streamName"),
         type = "string",
         name = "streamName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      partitionKey = schema.new({
         id = id.from(_N, "KinesisAction", "partitionKey"),
         type = "string",
         name = "partitionKey",
         target_id = prelude.String.id,
      }),
   },
})

M.LambdaAction = schema.new({
   id = id.from(_N, "LambdaAction"),
   type = "structure",
   members = {
      functionArn = schema.new({
         id = id.from(_N, "LambdaAction", "functionArn"),
         type = "string",
         name = "functionArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.LocationTimestamp = schema.new({
   id = id.from(_N, "LocationTimestamp"),
   type = "structure",
   members = {
      value = schema.new({
         id = id.from(_N, "LocationTimestamp", "value"),
         type = "string",
         name = "value",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      unit = schema.new({
         id = id.from(_N, "LocationTimestamp", "unit"),
         type = "string",
         name = "unit",
         target_id = prelude.String.id,
      }),
   },
})

M.LocationAction = schema.new({
   id = id.from(_N, "LocationAction"),
   type = "structure",
   members = {
      roleArn = schema.new({
         id = id.from(_N, "LocationAction", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      trackerName = schema.new({
         id = id.from(_N, "LocationAction", "trackerName"),
         type = "string",
         name = "trackerName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      deviceId = schema.new({
         id = id.from(_N, "LocationAction", "deviceId"),
         type = "string",
         name = "deviceId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      timestamp = schema.new({
         id = id.from(_N, "LocationAction", "timestamp"),
         type = "structure",
         name = "timestamp",
         target_id = id.from(_N, "LocationTimestamp"),
         target = M.LocationTimestamp,
      }),
      latitude = schema.new({
         id = id.from(_N, "LocationAction", "latitude"),
         type = "string",
         name = "latitude",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      longitude = schema.new({
         id = id.from(_N, "LocationAction", "longitude"),
         type = "string",
         name = "longitude",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.OpenSearchAction = schema.new({
   id = id.from(_N, "OpenSearchAction"),
   type = "structure",
   members = {
      roleArn = schema.new({
         id = id.from(_N, "OpenSearchAction", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      endpoint = schema.new({
         id = id.from(_N, "OpenSearchAction", "endpoint"),
         type = "string",
         name = "endpoint",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      index = schema.new({
         id = id.from(_N, "OpenSearchAction", "index"),
         type = "string",
         name = "index",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      type = schema.new({
         id = id.from(_N, "OpenSearchAction", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      id = schema.new({
         id = id.from(_N, "OpenSearchAction", "id"),
         type = "string",
         name = "id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UserProperty = schema.new({
   id = id.from(_N, "UserProperty"),
   type = "structure",
   members = {
      key = schema.new({
         id = id.from(_N, "UserProperty", "key"),
         type = "string",
         name = "key",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      value = schema.new({
         id = id.from(_N, "UserProperty", "value"),
         type = "string",
         name = "value",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.MqttHeaders = schema.new({
   id = id.from(_N, "MqttHeaders"),
   type = "structure",
   members = {
      payloadFormatIndicator = schema.new({
         id = id.from(_N, "MqttHeaders", "payloadFormatIndicator"),
         type = "string",
         name = "payloadFormatIndicator",
         target_id = prelude.String.id,
      }),
      contentType = schema.new({
         id = id.from(_N, "MqttHeaders", "contentType"),
         type = "string",
         name = "contentType",
         target_id = prelude.String.id,
      }),
      responseTopic = schema.new({
         id = id.from(_N, "MqttHeaders", "responseTopic"),
         type = "string",
         name = "responseTopic",
         target_id = prelude.String.id,
      }),
      correlationData = schema.new({
         id = id.from(_N, "MqttHeaders", "correlationData"),
         type = "string",
         name = "correlationData",
         target_id = prelude.String.id,
      }),
      messageExpiry = schema.new({
         id = id.from(_N, "MqttHeaders", "messageExpiry"),
         type = "string",
         name = "messageExpiry",
         target_id = prelude.String.id,
      }),
      userProperties = schema.new({
         id = id.from(_N, "MqttHeaders", "userProperties"),
         type = "list",
         name = "userProperties",
         target_id = prelude.Document.id,
         list_member = M.UserProperty,
      }),
   },
})

M.RepublishAction = schema.new({
   id = id.from(_N, "RepublishAction"),
   type = "structure",
   members = {
      roleArn = schema.new({
         id = id.from(_N, "RepublishAction", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      topic = schema.new({
         id = id.from(_N, "RepublishAction", "topic"),
         type = "string",
         name = "topic",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      qos = schema.new({
         id = id.from(_N, "RepublishAction", "qos"),
         type = "integer",
         name = "qos",
         target_id = prelude.Integer.id,
      }),
      headers = schema.new({
         id = id.from(_N, "RepublishAction", "headers"),
         type = "structure",
         name = "headers",
         target_id = id.from(_N, "MqttHeaders"),
         target = M.MqttHeaders,
      }),
   },
})

M.S3Action = schema.new({
   id = id.from(_N, "S3Action"),
   type = "structure",
   members = {
      roleArn = schema.new({
         id = id.from(_N, "S3Action", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      bucketName = schema.new({
         id = id.from(_N, "S3Action", "bucketName"),
         type = "string",
         name = "bucketName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      key = schema.new({
         id = id.from(_N, "S3Action", "key"),
         type = "string",
         name = "key",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      cannedAcl = schema.new({
         id = id.from(_N, "S3Action", "cannedAcl"),
         type = "string",
         name = "cannedAcl",
         target_id = prelude.String.id,
      }),
   },
})

M.SalesforceAction = schema.new({
   id = id.from(_N, "SalesforceAction"),
   type = "structure",
   members = {
      token = schema.new({
         id = id.from(_N, "SalesforceAction", "token"),
         type = "string",
         name = "token",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      url = schema.new({
         id = id.from(_N, "SalesforceAction", "url"),
         type = "string",
         name = "url",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.SnsAction = schema.new({
   id = id.from(_N, "SnsAction"),
   type = "structure",
   members = {
      targetArn = schema.new({
         id = id.from(_N, "SnsAction", "targetArn"),
         type = "string",
         name = "targetArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      roleArn = schema.new({
         id = id.from(_N, "SnsAction", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      messageFormat = schema.new({
         id = id.from(_N, "SnsAction", "messageFormat"),
         type = "string",
         name = "messageFormat",
         target_id = prelude.String.id,
      }),
   },
})

M.SqsAction = schema.new({
   id = id.from(_N, "SqsAction"),
   type = "structure",
   members = {
      roleArn = schema.new({
         id = id.from(_N, "SqsAction", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      queueUrl = schema.new({
         id = id.from(_N, "SqsAction", "queueUrl"),
         type = "string",
         name = "queueUrl",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      useBase64 = schema.new({
         id = id.from(_N, "SqsAction", "useBase64"),
         type = "boolean",
         name = "useBase64",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.StepFunctionsAction = schema.new({
   id = id.from(_N, "StepFunctionsAction"),
   type = "structure",
   members = {
      executionNamePrefix = schema.new({
         id = id.from(_N, "StepFunctionsAction", "executionNamePrefix"),
         type = "string",
         name = "executionNamePrefix",
         target_id = prelude.String.id,
      }),
      stateMachineName = schema.new({
         id = id.from(_N, "StepFunctionsAction", "stateMachineName"),
         type = "string",
         name = "stateMachineName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      roleArn = schema.new({
         id = id.from(_N, "StepFunctionsAction", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.TimestreamDimension = schema.new({
   id = id.from(_N, "TimestreamDimension"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "TimestreamDimension", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      value = schema.new({
         id = id.from(_N, "TimestreamDimension", "value"),
         type = "string",
         name = "value",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.TimestreamTimestamp = schema.new({
   id = id.from(_N, "TimestreamTimestamp"),
   type = "structure",
   members = {
      value = schema.new({
         id = id.from(_N, "TimestreamTimestamp", "value"),
         type = "string",
         name = "value",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      unit = schema.new({
         id = id.from(_N, "TimestreamTimestamp", "unit"),
         type = "string",
         name = "unit",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.TimestreamAction = schema.new({
   id = id.from(_N, "TimestreamAction"),
   type = "structure",
   members = {
      roleArn = schema.new({
         id = id.from(_N, "TimestreamAction", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      databaseName = schema.new({
         id = id.from(_N, "TimestreamAction", "databaseName"),
         type = "string",
         name = "databaseName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      tableName = schema.new({
         id = id.from(_N, "TimestreamAction", "tableName"),
         type = "string",
         name = "tableName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      dimensions = schema.new({
         id = id.from(_N, "TimestreamAction", "dimensions"),
         type = "list",
         name = "dimensions",
         target_id = prelude.Document.id,
         list_member = M.TimestreamDimension,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      timestamp = schema.new({
         id = id.from(_N, "TimestreamAction", "timestamp"),
         type = "structure",
         name = "timestamp",
         target_id = id.from(_N, "TimestreamTimestamp"),
         target = M.TimestreamTimestamp,
      }),
   },
})

M.Action = schema.new({
   id = id.from(_N, "Action"),
   type = "structure",
   members = {
      dynamoDB = schema.new({
         id = id.from(_N, "Action", "dynamoDB"),
         type = "structure",
         name = "dynamoDB",
         target_id = id.from(_N, "DynamoDBAction"),
         target = M.DynamoDBAction,
      }),
      dynamoDBv2 = schema.new({
         id = id.from(_N, "Action", "dynamoDBv2"),
         type = "structure",
         name = "dynamoDBv2",
         target_id = id.from(_N, "DynamoDBv2Action"),
         target = M.DynamoDBv2Action,
      }),
      lambda = schema.new({
         id = id.from(_N, "Action", "lambda"),
         type = "structure",
         name = "lambda",
         target_id = id.from(_N, "LambdaAction"),
         target = M.LambdaAction,
      }),
      sns = schema.new({
         id = id.from(_N, "Action", "sns"),
         type = "structure",
         name = "sns",
         target_id = id.from(_N, "SnsAction"),
         target = M.SnsAction,
      }),
      sqs = schema.new({
         id = id.from(_N, "Action", "sqs"),
         type = "structure",
         name = "sqs",
         target_id = id.from(_N, "SqsAction"),
         target = M.SqsAction,
      }),
      kinesis = schema.new({
         id = id.from(_N, "Action", "kinesis"),
         type = "structure",
         name = "kinesis",
         target_id = id.from(_N, "KinesisAction"),
         target = M.KinesisAction,
      }),
      republish = schema.new({
         id = id.from(_N, "Action", "republish"),
         type = "structure",
         name = "republish",
         target_id = id.from(_N, "RepublishAction"),
         target = M.RepublishAction,
      }),
      s3 = schema.new({
         id = id.from(_N, "Action", "s3"),
         type = "structure",
         name = "s3",
         target_id = id.from(_N, "S3Action"),
         target = M.S3Action,
      }),
      firehose = schema.new({
         id = id.from(_N, "Action", "firehose"),
         type = "structure",
         name = "firehose",
         target_id = id.from(_N, "FirehoseAction"),
         target = M.FirehoseAction,
      }),
      cloudwatchMetric = schema.new({
         id = id.from(_N, "Action", "cloudwatchMetric"),
         type = "structure",
         name = "cloudwatchMetric",
         target_id = id.from(_N, "CloudwatchMetricAction"),
         target = M.CloudwatchMetricAction,
      }),
      cloudwatchAlarm = schema.new({
         id = id.from(_N, "Action", "cloudwatchAlarm"),
         type = "structure",
         name = "cloudwatchAlarm",
         target_id = id.from(_N, "CloudwatchAlarmAction"),
         target = M.CloudwatchAlarmAction,
      }),
      cloudwatchLogs = schema.new({
         id = id.from(_N, "Action", "cloudwatchLogs"),
         type = "structure",
         name = "cloudwatchLogs",
         target_id = id.from(_N, "CloudwatchLogsAction"),
         target = M.CloudwatchLogsAction,
      }),
      elasticsearch = schema.new({
         id = id.from(_N, "Action", "elasticsearch"),
         type = "structure",
         name = "elasticsearch",
         target_id = id.from(_N, "ElasticsearchAction"),
         target = M.ElasticsearchAction,
      }),
      salesforce = schema.new({
         id = id.from(_N, "Action", "salesforce"),
         type = "structure",
         name = "salesforce",
         target_id = id.from(_N, "SalesforceAction"),
         target = M.SalesforceAction,
      }),
      iotAnalytics = schema.new({
         id = id.from(_N, "Action", "iotAnalytics"),
         type = "structure",
         name = "iotAnalytics",
         target_id = id.from(_N, "IotAnalyticsAction"),
         target = M.IotAnalyticsAction,
      }),
      iotEvents = schema.new({
         id = id.from(_N, "Action", "iotEvents"),
         type = "structure",
         name = "iotEvents",
         target_id = id.from(_N, "IotEventsAction"),
         target = M.IotEventsAction,
      }),
      iotSiteWise = schema.new({
         id = id.from(_N, "Action", "iotSiteWise"),
         type = "structure",
         name = "iotSiteWise",
         target_id = id.from(_N, "IotSiteWiseAction"),
         target = M.IotSiteWiseAction,
      }),
      stepFunctions = schema.new({
         id = id.from(_N, "Action", "stepFunctions"),
         type = "structure",
         name = "stepFunctions",
         target_id = id.from(_N, "StepFunctionsAction"),
         target = M.StepFunctionsAction,
      }),
      timestream = schema.new({
         id = id.from(_N, "Action", "timestream"),
         type = "structure",
         name = "timestream",
         target_id = id.from(_N, "TimestreamAction"),
         target = M.TimestreamAction,
      }),
      http = schema.new({
         id = id.from(_N, "Action", "http"),
         type = "structure",
         name = "http",
         target_id = id.from(_N, "HttpAction"),
         target = M.HttpAction,
      }),
      kafka = schema.new({
         id = id.from(_N, "Action", "kafka"),
         type = "structure",
         name = "kafka",
         target_id = id.from(_N, "KafkaAction"),
         target = M.KafkaAction,
      }),
      openSearch = schema.new({
         id = id.from(_N, "Action", "openSearch"),
         type = "structure",
         name = "openSearch",
         target_id = id.from(_N, "OpenSearchAction"),
         target = M.OpenSearchAction,
      }),
      location = schema.new({
         id = id.from(_N, "Action", "location"),
         type = "structure",
         name = "location",
         target_id = id.from(_N, "LocationAction"),
         target = M.LocationAction,
      }),
   },
})

M.MachineLearningDetectionConfig = schema.new({
   id = id.from(_N, "MachineLearningDetectionConfig"),
   type = "structure",
   members = {
      confidenceLevel = schema.new({
         id = id.from(_N, "MachineLearningDetectionConfig", "confidenceLevel"),
         type = "string",
         name = "confidenceLevel",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.StatisticalThreshold = schema.new({
   id = id.from(_N, "StatisticalThreshold"),
   type = "structure",
   members = {
      statistic = schema.new({
         id = id.from(_N, "StatisticalThreshold", "statistic"),
         type = "string",
         name = "statistic",
         target_id = prelude.String.id,
      }),
   },
})

M.MetricValue = schema.new({
   id = id.from(_N, "MetricValue"),
   type = "structure",
   members = {
      count = schema.new({
         id = id.from(_N, "MetricValue", "count"),
         type = "long",
         name = "count",
         target_id = prelude.Long.id,
      }),
      cidrs = schema.new({
         id = id.from(_N, "MetricValue", "cidrs"),
         type = "list",
         name = "cidrs",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      ports = schema.new({
         id = id.from(_N, "MetricValue", "ports"),
         type = "list",
         name = "ports",
         target_id = prelude.Document.id,
         list_member = prelude.Integer,
      }),
      number = schema.new({
         id = id.from(_N, "MetricValue", "number"),
         type = "double",
         name = "number",
         target_id = prelude.Double.id,
      }),
      numbers = schema.new({
         id = id.from(_N, "MetricValue", "numbers"),
         type = "list",
         name = "numbers",
         target_id = prelude.Document.id,
         list_member = prelude.Double,
      }),
      strings = schema.new({
         id = id.from(_N, "MetricValue", "strings"),
         type = "list",
         name = "strings",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.BehaviorCriteria = schema.new({
   id = id.from(_N, "BehaviorCriteria"),
   type = "structure",
   members = {
      comparisonOperator = schema.new({
         id = id.from(_N, "BehaviorCriteria", "comparisonOperator"),
         type = "string",
         name = "comparisonOperator",
         target_id = prelude.String.id,
      }),
      value = schema.new({
         id = id.from(_N, "BehaviorCriteria", "value"),
         type = "structure",
         name = "value",
         target_id = id.from(_N, "MetricValue"),
         target = M.MetricValue,
      }),
      durationSeconds = schema.new({
         id = id.from(_N, "BehaviorCriteria", "durationSeconds"),
         type = "integer",
         name = "durationSeconds",
         target_id = prelude.Integer.id,
      }),
      consecutiveDatapointsToAlarm = schema.new({
         id = id.from(_N, "BehaviorCriteria", "consecutiveDatapointsToAlarm"),
         type = "integer",
         name = "consecutiveDatapointsToAlarm",
         target_id = prelude.Integer.id,
      }),
      consecutiveDatapointsToClear = schema.new({
         id = id.from(_N, "BehaviorCriteria", "consecutiveDatapointsToClear"),
         type = "integer",
         name = "consecutiveDatapointsToClear",
         target_id = prelude.Integer.id,
      }),
      statisticalThreshold = schema.new({
         id = id.from(_N, "BehaviorCriteria", "statisticalThreshold"),
         type = "structure",
         name = "statisticalThreshold",
         target_id = id.from(_N, "StatisticalThreshold"),
         target = M.StatisticalThreshold,
      }),
      mlDetectionConfig = schema.new({
         id = id.from(_N, "BehaviorCriteria", "mlDetectionConfig"),
         type = "structure",
         name = "mlDetectionConfig",
         target_id = id.from(_N, "MachineLearningDetectionConfig"),
         target = M.MachineLearningDetectionConfig,
      }),
   },
})

M.MetricDimension = schema.new({
   id = id.from(_N, "MetricDimension"),
   type = "structure",
   members = {
      dimensionName = schema.new({
         id = id.from(_N, "MetricDimension", "dimensionName"),
         type = "string",
         name = "dimensionName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      operator = schema.new({
         id = id.from(_N, "MetricDimension", "operator"),
         type = "string",
         name = "operator",
         target_id = prelude.String.id,
      }),
   },
})

M.Behavior = schema.new({
   id = id.from(_N, "Behavior"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "Behavior", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      metric = schema.new({
         id = id.from(_N, "Behavior", "metric"),
         type = "string",
         name = "metric",
         target_id = prelude.String.id,
      }),
      metricDimension = schema.new({
         id = id.from(_N, "Behavior", "metricDimension"),
         type = "structure",
         name = "metricDimension",
         target_id = id.from(_N, "MetricDimension"),
         target = M.MetricDimension,
      }),
      criteria = schema.new({
         id = id.from(_N, "Behavior", "criteria"),
         type = "structure",
         name = "criteria",
         target_id = id.from(_N, "BehaviorCriteria"),
         target = M.BehaviorCriteria,
      }),
      suppressAlerts = schema.new({
         id = id.from(_N, "Behavior", "suppressAlerts"),
         type = "boolean",
         name = "suppressAlerts",
         target_id = prelude.Boolean.id,
      }),
      exportMetric = schema.new({
         id = id.from(_N, "Behavior", "exportMetric"),
         type = "boolean",
         name = "exportMetric",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.ViolationEventAdditionalInfo = schema.new({
   id = id.from(_N, "ViolationEventAdditionalInfo"),
   type = "structure",
   members = {
      confidenceLevel = schema.new({
         id = id.from(_N, "ViolationEventAdditionalInfo", "confidenceLevel"),
         type = "string",
         name = "confidenceLevel",
         target_id = prelude.String.id,
      }),
   },
})

M.ActiveViolation = schema.new({
   id = id.from(_N, "ActiveViolation"),
   type = "structure",
   members = {
      violationId = schema.new({
         id = id.from(_N, "ActiveViolation", "violationId"),
         type = "string",
         name = "violationId",
         target_id = prelude.String.id,
      }),
      thingName = schema.new({
         id = id.from(_N, "ActiveViolation", "thingName"),
         type = "string",
         name = "thingName",
         target_id = prelude.String.id,
      }),
      securityProfileName = schema.new({
         id = id.from(_N, "ActiveViolation", "securityProfileName"),
         type = "string",
         name = "securityProfileName",
         target_id = prelude.String.id,
      }),
      behavior = schema.new({
         id = id.from(_N, "ActiveViolation", "behavior"),
         type = "structure",
         name = "behavior",
         target_id = id.from(_N, "Behavior"),
         target = M.Behavior,
      }),
      lastViolationValue = schema.new({
         id = id.from(_N, "ActiveViolation", "lastViolationValue"),
         type = "structure",
         name = "lastViolationValue",
         target_id = id.from(_N, "MetricValue"),
         target = M.MetricValue,
      }),
      violationEventAdditionalInfo = schema.new({
         id = id.from(_N, "ActiveViolation", "violationEventAdditionalInfo"),
         type = "structure",
         name = "violationEventAdditionalInfo",
         target_id = id.from(_N, "ViolationEventAdditionalInfo"),
         target = M.ViolationEventAdditionalInfo,
      }),
      verificationState = schema.new({
         id = id.from(_N, "ActiveViolation", "verificationState"),
         type = "string",
         name = "verificationState",
         target_id = prelude.String.id,
      }),
      verificationStateDescription = schema.new({
         id = id.from(_N, "ActiveViolation", "verificationStateDescription"),
         type = "string",
         name = "verificationStateDescription",
         target_id = prelude.String.id,
      }),
      lastViolationTime = schema.new({
         id = id.from(_N, "ActiveViolation", "lastViolationTime"),
         type = "timestamp",
         name = "lastViolationTime",
         target_id = prelude.Timestamp.id,
      }),
      violationStartTime = schema.new({
         id = id.from(_N, "ActiveViolation", "violationStartTime"),
         type = "timestamp",
         name = "violationStartTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.MetricToRetain = schema.new({
   id = id.from(_N, "MetricToRetain"),
   type = "structure",
   members = {
      metric = schema.new({
         id = id.from(_N, "MetricToRetain", "metric"),
         type = "string",
         name = "metric",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      metricDimension = schema.new({
         id = id.from(_N, "MetricToRetain", "metricDimension"),
         type = "structure",
         name = "metricDimension",
         target_id = id.from(_N, "MetricDimension"),
         target = M.MetricDimension,
      }),
      exportMetric = schema.new({
         id = id.from(_N, "MetricToRetain", "exportMetric"),
         type = "boolean",
         name = "exportMetric",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.AddThingsToThingGroupParams = schema.new({
   id = id.from(_N, "AddThingsToThingGroupParams"),
   type = "structure",
   members = {
      thingGroupNames = schema.new({
         id = id.from(_N, "AddThingsToThingGroupParams", "thingGroupNames"),
         type = "list",
         name = "thingGroupNames",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      overrideDynamicGroups = schema.new({
         id = id.from(_N, "AddThingsToThingGroupParams", "overrideDynamicGroups"),
         type = "boolean",
         name = "overrideDynamicGroups",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.AddThingToBillingGroupInput = schema.new({
   id = id.from(_N, "AddThingToBillingGroupRequest"),
   type = "structure",
   members = {
      billingGroupName = schema.new({
         id = id.from(_N, "AddThingToBillingGroupInput", "billingGroupName"),
         type = "string",
         name = "billingGroupName",
         target_id = prelude.String.id,
      }),
      billingGroupArn = schema.new({
         id = id.from(_N, "AddThingToBillingGroupInput", "billingGroupArn"),
         type = "string",
         name = "billingGroupArn",
         target_id = prelude.String.id,
      }),
      thingName = schema.new({
         id = id.from(_N, "AddThingToBillingGroupInput", "thingName"),
         type = "string",
         name = "thingName",
         target_id = prelude.String.id,
      }),
      thingArn = schema.new({
         id = id.from(_N, "AddThingToBillingGroupInput", "thingArn"),
         type = "string",
         name = "thingArn",
         target_id = prelude.String.id,
      }),
   },
})

M.AddThingToBillingGroupOutput = schema.new({
   id = id.from(_N, "AddThingToBillingGroupResponse"),
   type = "structure",
})

M.AddThingToThingGroupInput = schema.new({
   id = id.from(_N, "AddThingToThingGroupRequest"),
   type = "structure",
   members = {
      thingGroupName = schema.new({
         id = id.from(_N, "AddThingToThingGroupInput", "thingGroupName"),
         type = "string",
         name = "thingGroupName",
         target_id = prelude.String.id,
      }),
      thingGroupArn = schema.new({
         id = id.from(_N, "AddThingToThingGroupInput", "thingGroupArn"),
         type = "string",
         name = "thingGroupArn",
         target_id = prelude.String.id,
      }),
      thingName = schema.new({
         id = id.from(_N, "AddThingToThingGroupInput", "thingName"),
         type = "string",
         name = "thingName",
         target_id = prelude.String.id,
      }),
      thingArn = schema.new({
         id = id.from(_N, "AddThingToThingGroupInput", "thingArn"),
         type = "string",
         name = "thingArn",
         target_id = prelude.String.id,
      }),
      overrideDynamicGroups = schema.new({
         id = id.from(_N, "AddThingToThingGroupInput", "overrideDynamicGroups"),
         type = "boolean",
         name = "overrideDynamicGroups",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
   },
})

M.AddThingToThingGroupOutput = schema.new({
   id = id.from(_N, "AddThingToThingGroupResponse"),
   type = "structure",
})

M.AggregationType = schema.new({
   id = id.from(_N, "AggregationType"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "AggregationType", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      values = schema.new({
         id = id.from(_N, "AggregationType", "values"),
         type = "list",
         name = "values",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.AlertTarget = schema.new({
   id = id.from(_N, "AlertTarget"),
   type = "structure",
   members = {
      alertTargetArn = schema.new({
         id = id.from(_N, "AlertTarget", "alertTargetArn"),
         type = "string",
         name = "alertTargetArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      roleArn = schema.new({
         id = id.from(_N, "AlertTarget", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.Policy = schema.new({
   id = id.from(_N, "Policy"),
   type = "structure",
   members = {
      policyName = schema.new({
         id = id.from(_N, "Policy", "policyName"),
         type = "string",
         name = "policyName",
         target_id = prelude.String.id,
      }),
      policyArn = schema.new({
         id = id.from(_N, "Policy", "policyArn"),
         type = "string",
         name = "policyArn",
         target_id = prelude.String.id,
      }),
   },
})

M.Allowed = schema.new({
   id = id.from(_N, "Allowed"),
   type = "structure",
   members = {
      policies = schema.new({
         id = id.from(_N, "Allowed", "policies"),
         type = "list",
         name = "policies",
         target_id = prelude.Document.id,
         list_member = M.Policy,
      }),
   },
})

M.S3Location = schema.new({
   id = id.from(_N, "S3Location"),
   type = "structure",
   members = {
      bucket = schema.new({
         id = id.from(_N, "S3Location", "bucket"),
         type = "string",
         name = "bucket",
         target_id = prelude.String.id,
      }),
      key = schema.new({
         id = id.from(_N, "S3Location", "key"),
         type = "string",
         name = "key",
         target_id = prelude.String.id,
      }),
      version = schema.new({
         id = id.from(_N, "S3Location", "version"),
         type = "string",
         name = "version",
         target_id = prelude.String.id,
      }),
   },
})

M.Sbom = schema.new({
   id = id.from(_N, "Sbom"),
   type = "structure",
   members = {
      s3Location = schema.new({
         id = id.from(_N, "Sbom", "s3Location"),
         type = "structure",
         name = "s3Location",
         target_id = id.from(_N, "S3Location"),
         target = M.S3Location,
      }),
   },
})

M.AssociateSbomWithPackageVersionInput = schema.new({
   id = id.from(_N, "AssociateSbomWithPackageVersionRequest"),
   type = "structure",
   members = {
      packageName = schema.new({
         id = id.from(_N, "AssociateSbomWithPackageVersionInput", "packageName"),
         type = "string",
         name = "packageName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      versionName = schema.new({
         id = id.from(_N, "AssociateSbomWithPackageVersionInput", "versionName"),
         type = "string",
         name = "versionName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      sbom = schema.new({
         id = id.from(_N, "AssociateSbomWithPackageVersionInput", "sbom"),
         type = "structure",
         name = "sbom",
         target_id = id.from(_N, "Sbom"),
         target = M.Sbom,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      clientToken = schema.new({
         id = id.from(_N, "AssociateSbomWithPackageVersionInput", "clientToken"),
         type = "string",
         name = "clientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "clientToken" },
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
   },
})

M.AssociateSbomWithPackageVersionOutput = schema.new({
   id = id.from(_N, "AssociateSbomWithPackageVersionResponse"),
   type = "structure",
   members = {
      packageName = schema.new({
         id = id.from(_N, "AssociateSbomWithPackageVersionOutput", "packageName"),
         type = "string",
         name = "packageName",
         target_id = prelude.String.id,
      }),
      versionName = schema.new({
         id = id.from(_N, "AssociateSbomWithPackageVersionOutput", "versionName"),
         type = "string",
         name = "versionName",
         target_id = prelude.String.id,
      }),
      sbom = schema.new({
         id = id.from(_N, "AssociateSbomWithPackageVersionOutput", "sbom"),
         type = "structure",
         name = "sbom",
         target_id = id.from(_N, "Sbom"),
         target = M.Sbom,
      }),
      sbomValidationStatus = schema.new({
         id = id.from(_N, "AssociateSbomWithPackageVersionOutput", "sbomValidationStatus"),
         type = "string",
         name = "sbomValidationStatus",
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
      resourceId = schema.new({
         id = id.from(_N, "ConflictException", "resourceId"),
         type = "string",
         name = "resourceId",
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

M.AssociateTargetsWithJobInput = schema.new({
   id = id.from(_N, "AssociateTargetsWithJobRequest"),
   type = "structure",
   members = {
      targets = schema.new({
         id = id.from(_N, "AssociateTargetsWithJobInput", "targets"),
         type = "list",
         name = "targets",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      jobId = schema.new({
         id = id.from(_N, "AssociateTargetsWithJobInput", "jobId"),
         type = "string",
         name = "jobId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      comment = schema.new({
         id = id.from(_N, "AssociateTargetsWithJobInput", "comment"),
         type = "string",
         name = "comment",
         target_id = prelude.String.id,
      }),
      namespaceId = schema.new({
         id = id.from(_N, "AssociateTargetsWithJobInput", "namespaceId"),
         type = "string",
         name = "namespaceId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "namespaceId" },
         },
      }),
   },
})

M.AssociateTargetsWithJobOutput = schema.new({
   id = id.from(_N, "AssociateTargetsWithJobResponse"),
   type = "structure",
   members = {
      jobArn = schema.new({
         id = id.from(_N, "AssociateTargetsWithJobOutput", "jobArn"),
         type = "string",
         name = "jobArn",
         target_id = prelude.String.id,
      }),
      jobId = schema.new({
         id = id.from(_N, "AssociateTargetsWithJobOutput", "jobId"),
         type = "string",
         name = "jobId",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "AssociateTargetsWithJobOutput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
   },
})

M.LimitExceededException = schema.new({
   id = id.from(_N, "LimitExceededException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "LimitExceededException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.AttachPolicyInput = schema.new({
   id = id.from(_N, "AttachPolicyRequest"),
   type = "structure",
   members = {
      policyName = schema.new({
         id = id.from(_N, "AttachPolicyInput", "policyName"),
         type = "string",
         name = "policyName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      target = schema.new({
         id = id.from(_N, "AttachPolicyInput", "target"),
         type = "string",
         name = "target",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AttachPolicyOutput = prelude.Unit

M.AttachPrincipalPolicyInput = schema.new({
   id = id.from(_N, "AttachPrincipalPolicyRequest"),
   type = "structure",
   members = {
      policyName = schema.new({
         id = id.from(_N, "AttachPrincipalPolicyInput", "policyName"),
         type = "string",
         name = "policyName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      principal = schema.new({
         id = id.from(_N, "AttachPrincipalPolicyInput", "principal"),
         type = "string",
         name = "principal",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_HEADER] = { name = "x-amzn-iot-principal" },
         },
      }),
   },
})

M.AttachPrincipalPolicyOutput = prelude.Unit

M.AttachSecurityProfileInput = schema.new({
   id = id.from(_N, "AttachSecurityProfileRequest"),
   type = "structure",
   members = {
      securityProfileName = schema.new({
         id = id.from(_N, "AttachSecurityProfileInput", "securityProfileName"),
         type = "string",
         name = "securityProfileName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      securityProfileTargetArn = schema.new({
         id = id.from(_N, "AttachSecurityProfileInput", "securityProfileTargetArn"),
         type = "string",
         name = "securityProfileTargetArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "securityProfileTargetArn" },
         },
      }),
   },
})

M.AttachSecurityProfileOutput = schema.new({
   id = id.from(_N, "AttachSecurityProfileResponse"),
   type = "structure",
})

M.VersionConflictException = schema.new({
   id = id.from(_N, "VersionConflictException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "VersionConflictException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.AttachThingPrincipalInput = schema.new({
   id = id.from(_N, "AttachThingPrincipalRequest"),
   type = "structure",
   members = {
      thingName = schema.new({
         id = id.from(_N, "AttachThingPrincipalInput", "thingName"),
         type = "string",
         name = "thingName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      principal = schema.new({
         id = id.from(_N, "AttachThingPrincipalInput", "principal"),
         type = "string",
         name = "principal",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_HEADER] = { name = "x-amzn-principal" },
         },
      }),
      thingPrincipalType = schema.new({
         id = id.from(_N, "AttachThingPrincipalInput", "thingPrincipalType"),
         type = "string",
         name = "thingPrincipalType",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "thingPrincipalType" },
         },
      }),
   },
})

M.AttachThingPrincipalOutput = schema.new({
   id = id.from(_N, "AttachThingPrincipalResponse"),
   type = "structure",
})

M.AttributePayload = schema.new({
   id = id.from(_N, "AttributePayload"),
   type = "structure",
   members = {
      attributes = schema.new({
         id = id.from(_N, "AttributePayload", "attributes"),
         type = "map",
         name = "attributes",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      merge = schema.new({
         id = id.from(_N, "AttributePayload", "merge"),
         type = "boolean",
         name = "merge",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
   },
})

M.AuditCheckConfiguration = schema.new({
   id = id.from(_N, "AuditCheckConfiguration"),
   type = "structure",
   members = {
      enabled = schema.new({
         id = id.from(_N, "AuditCheckConfiguration", "enabled"),
         type = "boolean",
         name = "enabled",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      configuration = schema.new({
         id = id.from(_N, "AuditCheckConfiguration", "configuration"),
         type = "map",
         name = "configuration",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.AuditCheckDetails = schema.new({
   id = id.from(_N, "AuditCheckDetails"),
   type = "structure",
   members = {
      checkRunStatus = schema.new({
         id = id.from(_N, "AuditCheckDetails", "checkRunStatus"),
         type = "string",
         name = "checkRunStatus",
         target_id = prelude.String.id,
      }),
      checkCompliant = schema.new({
         id = id.from(_N, "AuditCheckDetails", "checkCompliant"),
         type = "boolean",
         name = "checkCompliant",
         target_id = prelude.Boolean.id,
      }),
      totalResourcesCount = schema.new({
         id = id.from(_N, "AuditCheckDetails", "totalResourcesCount"),
         type = "long",
         name = "totalResourcesCount",
         target_id = prelude.Long.id,
      }),
      nonCompliantResourcesCount = schema.new({
         id = id.from(_N, "AuditCheckDetails", "nonCompliantResourcesCount"),
         type = "long",
         name = "nonCompliantResourcesCount",
         target_id = prelude.Long.id,
      }),
      suppressedNonCompliantResourcesCount = schema.new({
         id = id.from(_N, "AuditCheckDetails", "suppressedNonCompliantResourcesCount"),
         type = "long",
         name = "suppressedNonCompliantResourcesCount",
         target_id = prelude.Long.id,
      }),
      errorCode = schema.new({
         id = id.from(_N, "AuditCheckDetails", "errorCode"),
         type = "string",
         name = "errorCode",
         target_id = prelude.String.id,
      }),
      message = schema.new({
         id = id.from(_N, "AuditCheckDetails", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.IssuerCertificateIdentifier = schema.new({
   id = id.from(_N, "IssuerCertificateIdentifier"),
   type = "structure",
   members = {
      issuerCertificateSubject = schema.new({
         id = id.from(_N, "IssuerCertificateIdentifier", "issuerCertificateSubject"),
         type = "string",
         name = "issuerCertificateSubject",
         target_id = prelude.String.id,
      }),
      issuerId = schema.new({
         id = id.from(_N, "IssuerCertificateIdentifier", "issuerId"),
         type = "string",
         name = "issuerId",
         target_id = prelude.String.id,
      }),
      issuerCertificateSerialNumber = schema.new({
         id = id.from(_N, "IssuerCertificateIdentifier", "issuerCertificateSerialNumber"),
         type = "string",
         name = "issuerCertificateSerialNumber",
         target_id = prelude.String.id,
      }),
   },
})

M.PolicyVersionIdentifier = schema.new({
   id = id.from(_N, "PolicyVersionIdentifier"),
   type = "structure",
   members = {
      policyName = schema.new({
         id = id.from(_N, "PolicyVersionIdentifier", "policyName"),
         type = "string",
         name = "policyName",
         target_id = prelude.String.id,
      }),
      policyVersionId = schema.new({
         id = id.from(_N, "PolicyVersionIdentifier", "policyVersionId"),
         type = "string",
         name = "policyVersionId",
         target_id = prelude.String.id,
      }),
   },
})

M.ResourceIdentifier = schema.new({
   id = id.from(_N, "ResourceIdentifier"),
   type = "structure",
   members = {
      deviceCertificateId = schema.new({
         id = id.from(_N, "ResourceIdentifier", "deviceCertificateId"),
         type = "string",
         name = "deviceCertificateId",
         target_id = prelude.String.id,
      }),
      caCertificateId = schema.new({
         id = id.from(_N, "ResourceIdentifier", "caCertificateId"),
         type = "string",
         name = "caCertificateId",
         target_id = prelude.String.id,
      }),
      cognitoIdentityPoolId = schema.new({
         id = id.from(_N, "ResourceIdentifier", "cognitoIdentityPoolId"),
         type = "string",
         name = "cognitoIdentityPoolId",
         target_id = prelude.String.id,
      }),
      clientId = schema.new({
         id = id.from(_N, "ResourceIdentifier", "clientId"),
         type = "string",
         name = "clientId",
         target_id = prelude.String.id,
      }),
      policyVersionIdentifier = schema.new({
         id = id.from(_N, "ResourceIdentifier", "policyVersionIdentifier"),
         type = "structure",
         name = "policyVersionIdentifier",
         target_id = id.from(_N, "PolicyVersionIdentifier"),
         target = M.PolicyVersionIdentifier,
      }),
      account = schema.new({
         id = id.from(_N, "ResourceIdentifier", "account"),
         type = "string",
         name = "account",
         target_id = prelude.String.id,
      }),
      iamRoleArn = schema.new({
         id = id.from(_N, "ResourceIdentifier", "iamRoleArn"),
         type = "string",
         name = "iamRoleArn",
         target_id = prelude.String.id,
      }),
      roleAliasArn = schema.new({
         id = id.from(_N, "ResourceIdentifier", "roleAliasArn"),
         type = "string",
         name = "roleAliasArn",
         target_id = prelude.String.id,
      }),
      issuerCertificateIdentifier = schema.new({
         id = id.from(_N, "ResourceIdentifier", "issuerCertificateIdentifier"),
         type = "structure",
         name = "issuerCertificateIdentifier",
         target_id = id.from(_N, "IssuerCertificateIdentifier"),
         target = M.IssuerCertificateIdentifier,
      }),
      deviceCertificateArn = schema.new({
         id = id.from(_N, "ResourceIdentifier", "deviceCertificateArn"),
         type = "string",
         name = "deviceCertificateArn",
         target_id = prelude.String.id,
      }),
   },
})

M.NonCompliantResource = schema.new({
   id = id.from(_N, "NonCompliantResource"),
   type = "structure",
   members = {
      resourceType = schema.new({
         id = id.from(_N, "NonCompliantResource", "resourceType"),
         type = "string",
         name = "resourceType",
         target_id = prelude.String.id,
      }),
      resourceIdentifier = schema.new({
         id = id.from(_N, "NonCompliantResource", "resourceIdentifier"),
         type = "structure",
         name = "resourceIdentifier",
         target_id = id.from(_N, "ResourceIdentifier"),
         target = M.ResourceIdentifier,
      }),
      additionalInfo = schema.new({
         id = id.from(_N, "NonCompliantResource", "additionalInfo"),
         type = "map",
         name = "additionalInfo",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.RelatedResource = schema.new({
   id = id.from(_N, "RelatedResource"),
   type = "structure",
   members = {
      resourceType = schema.new({
         id = id.from(_N, "RelatedResource", "resourceType"),
         type = "string",
         name = "resourceType",
         target_id = prelude.String.id,
      }),
      resourceIdentifier = schema.new({
         id = id.from(_N, "RelatedResource", "resourceIdentifier"),
         type = "structure",
         name = "resourceIdentifier",
         target_id = id.from(_N, "ResourceIdentifier"),
         target = M.ResourceIdentifier,
      }),
      additionalInfo = schema.new({
         id = id.from(_N, "RelatedResource", "additionalInfo"),
         type = "map",
         name = "additionalInfo",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.AuditFinding = schema.new({
   id = id.from(_N, "AuditFinding"),
   type = "structure",
   members = {
      findingId = schema.new({
         id = id.from(_N, "AuditFinding", "findingId"),
         type = "string",
         name = "findingId",
         target_id = prelude.String.id,
      }),
      taskId = schema.new({
         id = id.from(_N, "AuditFinding", "taskId"),
         type = "string",
         name = "taskId",
         target_id = prelude.String.id,
      }),
      checkName = schema.new({
         id = id.from(_N, "AuditFinding", "checkName"),
         type = "string",
         name = "checkName",
         target_id = prelude.String.id,
      }),
      taskStartTime = schema.new({
         id = id.from(_N, "AuditFinding", "taskStartTime"),
         type = "timestamp",
         name = "taskStartTime",
         target_id = prelude.Timestamp.id,
      }),
      findingTime = schema.new({
         id = id.from(_N, "AuditFinding", "findingTime"),
         type = "timestamp",
         name = "findingTime",
         target_id = prelude.Timestamp.id,
      }),
      severity = schema.new({
         id = id.from(_N, "AuditFinding", "severity"),
         type = "string",
         name = "severity",
         target_id = prelude.String.id,
      }),
      nonCompliantResource = schema.new({
         id = id.from(_N, "AuditFinding", "nonCompliantResource"),
         type = "structure",
         name = "nonCompliantResource",
         target_id = id.from(_N, "NonCompliantResource"),
         target = M.NonCompliantResource,
      }),
      relatedResources = schema.new({
         id = id.from(_N, "AuditFinding", "relatedResources"),
         type = "list",
         name = "relatedResources",
         target_id = prelude.Document.id,
         list_member = M.RelatedResource,
      }),
      reasonForNonCompliance = schema.new({
         id = id.from(_N, "AuditFinding", "reasonForNonCompliance"),
         type = "string",
         name = "reasonForNonCompliance",
         target_id = prelude.String.id,
      }),
      reasonForNonComplianceCode = schema.new({
         id = id.from(_N, "AuditFinding", "reasonForNonComplianceCode"),
         type = "string",
         name = "reasonForNonComplianceCode",
         target_id = prelude.String.id,
      }),
      isSuppressed = schema.new({
         id = id.from(_N, "AuditFinding", "isSuppressed"),
         type = "boolean",
         name = "isSuppressed",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.AuditMitigationActionExecutionMetadata = schema.new({
   id = id.from(_N, "AuditMitigationActionExecutionMetadata"),
   type = "structure",
   members = {
      taskId = schema.new({
         id = id.from(_N, "AuditMitigationActionExecutionMetadata", "taskId"),
         type = "string",
         name = "taskId",
         target_id = prelude.String.id,
      }),
      findingId = schema.new({
         id = id.from(_N, "AuditMitigationActionExecutionMetadata", "findingId"),
         type = "string",
         name = "findingId",
         target_id = prelude.String.id,
      }),
      actionName = schema.new({
         id = id.from(_N, "AuditMitigationActionExecutionMetadata", "actionName"),
         type = "string",
         name = "actionName",
         target_id = prelude.String.id,
      }),
      actionId = schema.new({
         id = id.from(_N, "AuditMitigationActionExecutionMetadata", "actionId"),
         type = "string",
         name = "actionId",
         target_id = prelude.String.id,
      }),
      status = schema.new({
         id = id.from(_N, "AuditMitigationActionExecutionMetadata", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
      startTime = schema.new({
         id = id.from(_N, "AuditMitigationActionExecutionMetadata", "startTime"),
         type = "timestamp",
         name = "startTime",
         target_id = prelude.Timestamp.id,
      }),
      endTime = schema.new({
         id = id.from(_N, "AuditMitigationActionExecutionMetadata", "endTime"),
         type = "timestamp",
         name = "endTime",
         target_id = prelude.Timestamp.id,
      }),
      errorCode = schema.new({
         id = id.from(_N, "AuditMitigationActionExecutionMetadata", "errorCode"),
         type = "string",
         name = "errorCode",
         target_id = prelude.String.id,
      }),
      message = schema.new({
         id = id.from(_N, "AuditMitigationActionExecutionMetadata", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.AuditMitigationActionsTaskMetadata = schema.new({
   id = id.from(_N, "AuditMitigationActionsTaskMetadata"),
   type = "structure",
   members = {
      taskId = schema.new({
         id = id.from(_N, "AuditMitigationActionsTaskMetadata", "taskId"),
         type = "string",
         name = "taskId",
         target_id = prelude.String.id,
      }),
      startTime = schema.new({
         id = id.from(_N, "AuditMitigationActionsTaskMetadata", "startTime"),
         type = "timestamp",
         name = "startTime",
         target_id = prelude.Timestamp.id,
      }),
      taskStatus = schema.new({
         id = id.from(_N, "AuditMitigationActionsTaskMetadata", "taskStatus"),
         type = "string",
         name = "taskStatus",
         target_id = prelude.String.id,
      }),
   },
})

M.TaskStatisticsForAuditCheck = schema.new({
   id = id.from(_N, "TaskStatisticsForAuditCheck"),
   type = "structure",
   members = {
      totalFindingsCount = schema.new({
         id = id.from(_N, "TaskStatisticsForAuditCheck", "totalFindingsCount"),
         type = "long",
         name = "totalFindingsCount",
         target_id = prelude.Long.id,
      }),
      failedFindingsCount = schema.new({
         id = id.from(_N, "TaskStatisticsForAuditCheck", "failedFindingsCount"),
         type = "long",
         name = "failedFindingsCount",
         target_id = prelude.Long.id,
      }),
      succeededFindingsCount = schema.new({
         id = id.from(_N, "TaskStatisticsForAuditCheck", "succeededFindingsCount"),
         type = "long",
         name = "succeededFindingsCount",
         target_id = prelude.Long.id,
      }),
      skippedFindingsCount = schema.new({
         id = id.from(_N, "TaskStatisticsForAuditCheck", "skippedFindingsCount"),
         type = "long",
         name = "skippedFindingsCount",
         target_id = prelude.Long.id,
      }),
      canceledFindingsCount = schema.new({
         id = id.from(_N, "TaskStatisticsForAuditCheck", "canceledFindingsCount"),
         type = "long",
         name = "canceledFindingsCount",
         target_id = prelude.Long.id,
      }),
   },
})

M.AuditMitigationActionsTaskTarget = schema.new({
   id = id.from(_N, "AuditMitigationActionsTaskTarget"),
   type = "structure",
   members = {
      auditTaskId = schema.new({
         id = id.from(_N, "AuditMitigationActionsTaskTarget", "auditTaskId"),
         type = "string",
         name = "auditTaskId",
         target_id = prelude.String.id,
      }),
      findingIds = schema.new({
         id = id.from(_N, "AuditMitigationActionsTaskTarget", "findingIds"),
         type = "list",
         name = "findingIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      auditCheckToReasonCodeFilter = schema.new({
         id = id.from(_N, "AuditMitigationActionsTaskTarget", "auditCheckToReasonCodeFilter"),
         type = "map",
         name = "auditCheckToReasonCodeFilter",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = schema.new({ type = "list", list_member = prelude.String }),
      }),
   },
})

M.AuditNotificationTarget = schema.new({
   id = id.from(_N, "AuditNotificationTarget"),
   type = "structure",
   members = {
      targetArn = schema.new({
         id = id.from(_N, "AuditNotificationTarget", "targetArn"),
         type = "string",
         name = "targetArn",
         target_id = prelude.String.id,
      }),
      roleArn = schema.new({
         id = id.from(_N, "AuditNotificationTarget", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
      }),
      enabled = schema.new({
         id = id.from(_N, "AuditNotificationTarget", "enabled"),
         type = "boolean",
         name = "enabled",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
   },
})

M.AuditSuppression = schema.new({
   id = id.from(_N, "AuditSuppression"),
   type = "structure",
   members = {
      checkName = schema.new({
         id = id.from(_N, "AuditSuppression", "checkName"),
         type = "string",
         name = "checkName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      resourceIdentifier = schema.new({
         id = id.from(_N, "AuditSuppression", "resourceIdentifier"),
         type = "structure",
         name = "resourceIdentifier",
         target_id = id.from(_N, "ResourceIdentifier"),
         target = M.ResourceIdentifier,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      expirationDate = schema.new({
         id = id.from(_N, "AuditSuppression", "expirationDate"),
         type = "timestamp",
         name = "expirationDate",
         target_id = prelude.Timestamp.id,
      }),
      suppressIndefinitely = schema.new({
         id = id.from(_N, "AuditSuppression", "suppressIndefinitely"),
         type = "boolean",
         name = "suppressIndefinitely",
         target_id = prelude.Boolean.id,
      }),
      description = schema.new({
         id = id.from(_N, "AuditSuppression", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
   },
})

M.AuditTaskMetadata = schema.new({
   id = id.from(_N, "AuditTaskMetadata"),
   type = "structure",
   members = {
      taskId = schema.new({
         id = id.from(_N, "AuditTaskMetadata", "taskId"),
         type = "string",
         name = "taskId",
         target_id = prelude.String.id,
      }),
      taskStatus = schema.new({
         id = id.from(_N, "AuditTaskMetadata", "taskStatus"),
         type = "string",
         name = "taskStatus",
         target_id = prelude.String.id,
      }),
      taskType = schema.new({
         id = id.from(_N, "AuditTaskMetadata", "taskType"),
         type = "string",
         name = "taskType",
         target_id = prelude.String.id,
      }),
   },
})

M.AuthInfo = schema.new({
   id = id.from(_N, "AuthInfo"),
   type = "structure",
   members = {
      actionType = schema.new({
         id = id.from(_N, "AuthInfo", "actionType"),
         type = "string",
         name = "actionType",
         target_id = prelude.String.id,
      }),
      resources = schema.new({
         id = id.from(_N, "AuthInfo", "resources"),
         type = "list",
         name = "resources",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AuthorizerConfig = schema.new({
   id = id.from(_N, "AuthorizerConfig"),
   type = "structure",
   members = {
      defaultAuthorizerName = schema.new({
         id = id.from(_N, "AuthorizerConfig", "defaultAuthorizerName"),
         type = "string",
         name = "defaultAuthorizerName",
         target_id = prelude.String.id,
      }),
      allowAuthorizerOverride = schema.new({
         id = id.from(_N, "AuthorizerConfig", "allowAuthorizerOverride"),
         type = "boolean",
         name = "allowAuthorizerOverride",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = nil },
         },
      }),
   },
})

M.AuthorizerDescription = schema.new({
   id = id.from(_N, "AuthorizerDescription"),
   type = "structure",
   members = {
      authorizerName = schema.new({
         id = id.from(_N, "AuthorizerDescription", "authorizerName"),
         type = "string",
         name = "authorizerName",
         target_id = prelude.String.id,
      }),
      authorizerArn = schema.new({
         id = id.from(_N, "AuthorizerDescription", "authorizerArn"),
         type = "string",
         name = "authorizerArn",
         target_id = prelude.String.id,
      }),
      authorizerFunctionArn = schema.new({
         id = id.from(_N, "AuthorizerDescription", "authorizerFunctionArn"),
         type = "string",
         name = "authorizerFunctionArn",
         target_id = prelude.String.id,
      }),
      tokenKeyName = schema.new({
         id = id.from(_N, "AuthorizerDescription", "tokenKeyName"),
         type = "string",
         name = "tokenKeyName",
         target_id = prelude.String.id,
      }),
      tokenSigningPublicKeys = schema.new({
         id = id.from(_N, "AuthorizerDescription", "tokenSigningPublicKeys"),
         type = "map",
         name = "tokenSigningPublicKeys",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      status = schema.new({
         id = id.from(_N, "AuthorizerDescription", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
      creationDate = schema.new({
         id = id.from(_N, "AuthorizerDescription", "creationDate"),
         type = "timestamp",
         name = "creationDate",
         target_id = prelude.Timestamp.id,
      }),
      lastModifiedDate = schema.new({
         id = id.from(_N, "AuthorizerDescription", "lastModifiedDate"),
         type = "timestamp",
         name = "lastModifiedDate",
         target_id = prelude.Timestamp.id,
      }),
      signingDisabled = schema.new({
         id = id.from(_N, "AuthorizerDescription", "signingDisabled"),
         type = "boolean",
         name = "signingDisabled",
         target_id = prelude.Boolean.id,
      }),
      enableCachingForHttp = schema.new({
         id = id.from(_N, "AuthorizerDescription", "enableCachingForHttp"),
         type = "boolean",
         name = "enableCachingForHttp",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.AuthorizerSummary = schema.new({
   id = id.from(_N, "AuthorizerSummary"),
   type = "structure",
   members = {
      authorizerName = schema.new({
         id = id.from(_N, "AuthorizerSummary", "authorizerName"),
         type = "string",
         name = "authorizerName",
         target_id = prelude.String.id,
      }),
      authorizerArn = schema.new({
         id = id.from(_N, "AuthorizerSummary", "authorizerArn"),
         type = "string",
         name = "authorizerArn",
         target_id = prelude.String.id,
      }),
   },
})

M.ExplicitDeny = schema.new({
   id = id.from(_N, "ExplicitDeny"),
   type = "structure",
   members = {
      policies = schema.new({
         id = id.from(_N, "ExplicitDeny", "policies"),
         type = "list",
         name = "policies",
         target_id = prelude.Document.id,
         list_member = M.Policy,
      }),
   },
})

M.ImplicitDeny = schema.new({
   id = id.from(_N, "ImplicitDeny"),
   type = "structure",
   members = {
      policies = schema.new({
         id = id.from(_N, "ImplicitDeny", "policies"),
         type = "list",
         name = "policies",
         target_id = prelude.Document.id,
         list_member = M.Policy,
      }),
   },
})

M.Denied = schema.new({
   id = id.from(_N, "Denied"),
   type = "structure",
   members = {
      implicitDeny = schema.new({
         id = id.from(_N, "Denied", "implicitDeny"),
         type = "structure",
         name = "implicitDeny",
         target_id = id.from(_N, "ImplicitDeny"),
         target = M.ImplicitDeny,
      }),
      explicitDeny = schema.new({
         id = id.from(_N, "Denied", "explicitDeny"),
         type = "structure",
         name = "explicitDeny",
         target_id = id.from(_N, "ExplicitDeny"),
         target = M.ExplicitDeny,
      }),
   },
})

M.AuthResult = schema.new({
   id = id.from(_N, "AuthResult"),
   type = "structure",
   members = {
      authInfo = schema.new({
         id = id.from(_N, "AuthResult", "authInfo"),
         type = "structure",
         name = "authInfo",
         target_id = id.from(_N, "AuthInfo"),
         target = M.AuthInfo,
      }),
      allowed = schema.new({
         id = id.from(_N, "AuthResult", "allowed"),
         type = "structure",
         name = "allowed",
         target_id = id.from(_N, "Allowed"),
         target = M.Allowed,
      }),
      denied = schema.new({
         id = id.from(_N, "AuthResult", "denied"),
         type = "structure",
         name = "denied",
         target_id = id.from(_N, "Denied"),
         target = M.Denied,
      }),
      authDecision = schema.new({
         id = id.from(_N, "AuthResult", "authDecision"),
         type = "string",
         name = "authDecision",
         target_id = prelude.String.id,
      }),
      missingContextValues = schema.new({
         id = id.from(_N, "AuthResult", "missingContextValues"),
         type = "list",
         name = "missingContextValues",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.CancelAuditMitigationActionsTaskInput = schema.new({
   id = id.from(_N, "CancelAuditMitigationActionsTaskRequest"),
   type = "structure",
   members = {
      taskId = schema.new({
         id = id.from(_N, "CancelAuditMitigationActionsTaskInput", "taskId"),
         type = "string",
         name = "taskId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.CancelAuditMitigationActionsTaskOutput = schema.new({
   id = id.from(_N, "CancelAuditMitigationActionsTaskResponse"),
   type = "structure",
})

M.CancelAuditTaskInput = schema.new({
   id = id.from(_N, "CancelAuditTaskRequest"),
   type = "structure",
   members = {
      taskId = schema.new({
         id = id.from(_N, "CancelAuditTaskInput", "taskId"),
         type = "string",
         name = "taskId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.CancelAuditTaskOutput = schema.new({
   id = id.from(_N, "CancelAuditTaskResponse"),
   type = "structure",
})

M.CancelCertificateTransferInput = schema.new({
   id = id.from(_N, "CancelCertificateTransferRequest"),
   type = "structure",
   members = {
      certificateId = schema.new({
         id = id.from(_N, "CancelCertificateTransferInput", "certificateId"),
         type = "string",
         name = "certificateId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.CancelCertificateTransferOutput = prelude.Unit

M.CancelDetectMitigationActionsTaskInput = schema.new({
   id = id.from(_N, "CancelDetectMitigationActionsTaskRequest"),
   type = "structure",
   members = {
      taskId = schema.new({
         id = id.from(_N, "CancelDetectMitigationActionsTaskInput", "taskId"),
         type = "string",
         name = "taskId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.CancelDetectMitigationActionsTaskOutput = schema.new({
   id = id.from(_N, "CancelDetectMitigationActionsTaskResponse"),
   type = "structure",
})

M.CancelJobInput = schema.new({
   id = id.from(_N, "CancelJobRequest"),
   type = "structure",
   members = {
      jobId = schema.new({
         id = id.from(_N, "CancelJobInput", "jobId"),
         type = "string",
         name = "jobId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      reasonCode = schema.new({
         id = id.from(_N, "CancelJobInput", "reasonCode"),
         type = "string",
         name = "reasonCode",
         target_id = prelude.String.id,
      }),
      comment = schema.new({
         id = id.from(_N, "CancelJobInput", "comment"),
         type = "string",
         name = "comment",
         target_id = prelude.String.id,
      }),
      force = schema.new({
         id = id.from(_N, "CancelJobInput", "force"),
         type = "boolean",
         name = "force",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
            [traits.HTTP_QUERY] = { name = "force" },
         },
      }),
   },
})

M.CancelJobOutput = schema.new({
   id = id.from(_N, "CancelJobResponse"),
   type = "structure",
   members = {
      jobArn = schema.new({
         id = id.from(_N, "CancelJobOutput", "jobArn"),
         type = "string",
         name = "jobArn",
         target_id = prelude.String.id,
      }),
      jobId = schema.new({
         id = id.from(_N, "CancelJobOutput", "jobId"),
         type = "string",
         name = "jobId",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "CancelJobOutput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
   },
})

M.CancelJobExecutionInput = schema.new({
   id = id.from(_N, "CancelJobExecutionRequest"),
   type = "structure",
   members = {
      jobId = schema.new({
         id = id.from(_N, "CancelJobExecutionInput", "jobId"),
         type = "string",
         name = "jobId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      thingName = schema.new({
         id = id.from(_N, "CancelJobExecutionInput", "thingName"),
         type = "string",
         name = "thingName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      force = schema.new({
         id = id.from(_N, "CancelJobExecutionInput", "force"),
         type = "boolean",
         name = "force",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
            [traits.HTTP_QUERY] = { name = "force" },
         },
      }),
      expectedVersion = schema.new({
         id = id.from(_N, "CancelJobExecutionInput", "expectedVersion"),
         type = "long",
         name = "expectedVersion",
         target_id = prelude.Long.id,
      }),
      statusDetails = schema.new({
         id = id.from(_N, "CancelJobExecutionInput", "statusDetails"),
         type = "map",
         name = "statusDetails",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.CancelJobExecutionOutput = prelude.Unit

M.InvalidStateTransitionException = schema.new({
   id = id.from(_N, "InvalidStateTransitionException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "InvalidStateTransitionException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.ClearDefaultAuthorizerInput = schema.new({
   id = id.from(_N, "ClearDefaultAuthorizerRequest"),
   type = "structure",
})

M.ClearDefaultAuthorizerOutput = schema.new({
   id = id.from(_N, "ClearDefaultAuthorizerResponse"),
   type = "structure",
})

M.ConfirmTopicRuleDestinationInput = schema.new({
   id = id.from(_N, "ConfirmTopicRuleDestinationRequest"),
   type = "structure",
   members = {
      confirmationToken = schema.new({
         id = id.from(_N, "ConfirmTopicRuleDestinationInput", "confirmationToken"),
         type = "string",
         name = "confirmationToken",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.ConfirmTopicRuleDestinationOutput = schema.new({
   id = id.from(_N, "ConfirmTopicRuleDestinationResponse"),
   type = "structure",
})

M.ConflictingResourceUpdateException = schema.new({
   id = id.from(_N, "ConflictingResourceUpdateException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "ConflictingResourceUpdateException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
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
      }),
   },
})

M.CreateAuditSuppressionInput = schema.new({
   id = id.from(_N, "CreateAuditSuppressionRequest"),
   type = "structure",
   members = {
      checkName = schema.new({
         id = id.from(_N, "CreateAuditSuppressionInput", "checkName"),
         type = "string",
         name = "checkName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      resourceIdentifier = schema.new({
         id = id.from(_N, "CreateAuditSuppressionInput", "resourceIdentifier"),
         type = "structure",
         name = "resourceIdentifier",
         target_id = id.from(_N, "ResourceIdentifier"),
         target = M.ResourceIdentifier,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      expirationDate = schema.new({
         id = id.from(_N, "CreateAuditSuppressionInput", "expirationDate"),
         type = "timestamp",
         name = "expirationDate",
         target_id = prelude.Timestamp.id,
      }),
      suppressIndefinitely = schema.new({
         id = id.from(_N, "CreateAuditSuppressionInput", "suppressIndefinitely"),
         type = "boolean",
         name = "suppressIndefinitely",
         target_id = prelude.Boolean.id,
      }),
      description = schema.new({
         id = id.from(_N, "CreateAuditSuppressionInput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      clientRequestToken = schema.new({
         id = id.from(_N, "CreateAuditSuppressionInput", "clientRequestToken"),
         type = "string",
         name = "clientRequestToken",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
   },
})

M.CreateAuditSuppressionOutput = schema.new({
   id = id.from(_N, "CreateAuditSuppressionResponse"),
   type = "structure",
})

M.ResourceAlreadyExistsException = schema.new({
   id = id.from(_N, "ResourceAlreadyExistsException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "ResourceAlreadyExistsException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
      resourceId = schema.new({
         id = id.from(_N, "ResourceAlreadyExistsException", "resourceId"),
         type = "string",
         name = "resourceId",
         target_id = prelude.String.id,
      }),
      resourceArn = schema.new({
         id = id.from(_N, "ResourceAlreadyExistsException", "resourceArn"),
         type = "string",
         name = "resourceArn",
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
      }),
   },
})

M.CreateAuthorizerInput = schema.new({
   id = id.from(_N, "CreateAuthorizerRequest"),
   type = "structure",
   members = {
      authorizerName = schema.new({
         id = id.from(_N, "CreateAuthorizerInput", "authorizerName"),
         type = "string",
         name = "authorizerName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      authorizerFunctionArn = schema.new({
         id = id.from(_N, "CreateAuthorizerInput", "authorizerFunctionArn"),
         type = "string",
         name = "authorizerFunctionArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      tokenKeyName = schema.new({
         id = id.from(_N, "CreateAuthorizerInput", "tokenKeyName"),
         type = "string",
         name = "tokenKeyName",
         target_id = prelude.String.id,
      }),
      tokenSigningPublicKeys = schema.new({
         id = id.from(_N, "CreateAuthorizerInput", "tokenSigningPublicKeys"),
         type = "map",
         name = "tokenSigningPublicKeys",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      status = schema.new({
         id = id.from(_N, "CreateAuthorizerInput", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
      tags = schema.new({
         id = id.from(_N, "CreateAuthorizerInput", "tags"),
         type = "list",
         name = "tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
      signingDisabled = schema.new({
         id = id.from(_N, "CreateAuthorizerInput", "signingDisabled"),
         type = "boolean",
         name = "signingDisabled",
         target_id = prelude.Boolean.id,
      }),
      enableCachingForHttp = schema.new({
         id = id.from(_N, "CreateAuthorizerInput", "enableCachingForHttp"),
         type = "boolean",
         name = "enableCachingForHttp",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.CreateAuthorizerOutput = schema.new({
   id = id.from(_N, "CreateAuthorizerResponse"),
   type = "structure",
   members = {
      authorizerName = schema.new({
         id = id.from(_N, "CreateAuthorizerOutput", "authorizerName"),
         type = "string",
         name = "authorizerName",
         target_id = prelude.String.id,
      }),
      authorizerArn = schema.new({
         id = id.from(_N, "CreateAuthorizerOutput", "authorizerArn"),
         type = "string",
         name = "authorizerArn",
         target_id = prelude.String.id,
      }),
   },
})

M.BillingGroupProperties = schema.new({
   id = id.from(_N, "BillingGroupProperties"),
   type = "structure",
   members = {
      billingGroupDescription = schema.new({
         id = id.from(_N, "BillingGroupProperties", "billingGroupDescription"),
         type = "string",
         name = "billingGroupDescription",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateBillingGroupInput = schema.new({
   id = id.from(_N, "CreateBillingGroupRequest"),
   type = "structure",
   members = {
      billingGroupName = schema.new({
         id = id.from(_N, "CreateBillingGroupInput", "billingGroupName"),
         type = "string",
         name = "billingGroupName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      billingGroupProperties = schema.new({
         id = id.from(_N, "CreateBillingGroupInput", "billingGroupProperties"),
         type = "structure",
         name = "billingGroupProperties",
         target_id = id.from(_N, "BillingGroupProperties"),
         target = M.BillingGroupProperties,
      }),
      tags = schema.new({
         id = id.from(_N, "CreateBillingGroupInput", "tags"),
         type = "list",
         name = "tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
   },
})

M.CreateBillingGroupOutput = schema.new({
   id = id.from(_N, "CreateBillingGroupResponse"),
   type = "structure",
   members = {
      billingGroupName = schema.new({
         id = id.from(_N, "CreateBillingGroupOutput", "billingGroupName"),
         type = "string",
         name = "billingGroupName",
         target_id = prelude.String.id,
      }),
      billingGroupArn = schema.new({
         id = id.from(_N, "CreateBillingGroupOutput", "billingGroupArn"),
         type = "string",
         name = "billingGroupArn",
         target_id = prelude.String.id,
      }),
      billingGroupId = schema.new({
         id = id.from(_N, "CreateBillingGroupOutput", "billingGroupId"),
         type = "string",
         name = "billingGroupId",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateCertificateFromCsrInput = schema.new({
   id = id.from(_N, "CreateCertificateFromCsrRequest"),
   type = "structure",
   members = {
      certificateSigningRequest = schema.new({
         id = id.from(_N, "CreateCertificateFromCsrInput", "certificateSigningRequest"),
         type = "string",
         name = "certificateSigningRequest",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      setAsActive = schema.new({
         id = id.from(_N, "CreateCertificateFromCsrInput", "setAsActive"),
         type = "boolean",
         name = "setAsActive",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
            [traits.HTTP_QUERY] = { name = "setAsActive" },
         },
      }),
   },
})

M.CreateCertificateFromCsrOutput = schema.new({
   id = id.from(_N, "CreateCertificateFromCsrResponse"),
   type = "structure",
   members = {
      certificateArn = schema.new({
         id = id.from(_N, "CreateCertificateFromCsrOutput", "certificateArn"),
         type = "string",
         name = "certificateArn",
         target_id = prelude.String.id,
      }),
      certificateId = schema.new({
         id = id.from(_N, "CreateCertificateFromCsrOutput", "certificateId"),
         type = "string",
         name = "certificateId",
         target_id = prelude.String.id,
      }),
      certificatePem = schema.new({
         id = id.from(_N, "CreateCertificateFromCsrOutput", "certificatePem"),
         type = "string",
         name = "certificatePem",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateCertificateProviderInput = schema.new({
   id = id.from(_N, "CreateCertificateProviderRequest"),
   type = "structure",
   members = {
      certificateProviderName = schema.new({
         id = id.from(_N, "CreateCertificateProviderInput", "certificateProviderName"),
         type = "string",
         name = "certificateProviderName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      lambdaFunctionArn = schema.new({
         id = id.from(_N, "CreateCertificateProviderInput", "lambdaFunctionArn"),
         type = "string",
         name = "lambdaFunctionArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      accountDefaultForOperations = schema.new({
         id = id.from(_N, "CreateCertificateProviderInput", "accountDefaultForOperations"),
         type = "list",
         name = "accountDefaultForOperations",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      clientToken = schema.new({
         id = id.from(_N, "CreateCertificateProviderInput", "clientToken"),
         type = "string",
         name = "clientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      tags = schema.new({
         id = id.from(_N, "CreateCertificateProviderInput", "tags"),
         type = "list",
         name = "tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
   },
})

M.CreateCertificateProviderOutput = schema.new({
   id = id.from(_N, "CreateCertificateProviderResponse"),
   type = "structure",
   members = {
      certificateProviderName = schema.new({
         id = id.from(_N, "CreateCertificateProviderOutput", "certificateProviderName"),
         type = "string",
         name = "certificateProviderName",
         target_id = prelude.String.id,
      }),
      certificateProviderArn = schema.new({
         id = id.from(_N, "CreateCertificateProviderOutput", "certificateProviderArn"),
         type = "string",
         name = "certificateProviderArn",
         target_id = prelude.String.id,
      }),
   },
})

M.CommandParameterValue = schema.new({
   id = id.from(_N, "CommandParameterValue"),
   type = "structure",
   members = {
      S = schema.new({
         id = id.from(_N, "CommandParameterValue", "S"),
         type = "string",
         name = "S",
         target_id = prelude.String.id,
      }),
      B = schema.new({
         id = id.from(_N, "CommandParameterValue", "B"),
         type = "boolean",
         name = "B",
         target_id = prelude.Boolean.id,
      }),
      I = schema.new({
         id = id.from(_N, "CommandParameterValue", "I"),
         type = "integer",
         name = "I",
         target_id = prelude.Integer.id,
      }),
      L = schema.new({
         id = id.from(_N, "CommandParameterValue", "L"),
         type = "long",
         name = "L",
         target_id = prelude.Long.id,
      }),
      D = schema.new({
         id = id.from(_N, "CommandParameterValue", "D"),
         type = "double",
         name = "D",
         target_id = prelude.Double.id,
      }),
      BIN = schema.new({
         id = id.from(_N, "CommandParameterValue", "BIN"),
         type = "blob",
         name = "BIN",
         target_id = prelude.Blob.id,
      }),
      UL = schema.new({
         id = id.from(_N, "CommandParameterValue", "UL"),
         type = "string",
         name = "UL",
         target_id = prelude.String.id,
      }),
   },
})

M.CommandParameterValueNumberRange = schema.new({
   id = id.from(_N, "CommandParameterValueNumberRange"),
   type = "structure",
   members = {
      min = schema.new({
         id = id.from(_N, "CommandParameterValueNumberRange", "min"),
         type = "string",
         name = "min",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      max = schema.new({
         id = id.from(_N, "CommandParameterValueNumberRange", "max"),
         type = "string",
         name = "max",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CommandParameterValueComparisonOperand = schema.new({
   id = id.from(_N, "CommandParameterValueComparisonOperand"),
   type = "structure",
   members = {
      number = schema.new({
         id = id.from(_N, "CommandParameterValueComparisonOperand", "number"),
         type = "string",
         name = "number",
         target_id = prelude.String.id,
      }),
      numbers = schema.new({
         id = id.from(_N, "CommandParameterValueComparisonOperand", "numbers"),
         type = "list",
         name = "numbers",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      string = schema.new({
         id = id.from(_N, "CommandParameterValueComparisonOperand", "string"),
         type = "string",
         name = "string",
         target_id = prelude.String.id,
      }),
      strings = schema.new({
         id = id.from(_N, "CommandParameterValueComparisonOperand", "strings"),
         type = "list",
         name = "strings",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      numberRange = schema.new({
         id = id.from(_N, "CommandParameterValueComparisonOperand", "numberRange"),
         type = "structure",
         name = "numberRange",
         target_id = id.from(_N, "CommandParameterValueNumberRange"),
         target = M.CommandParameterValueNumberRange,
      }),
   },
})

M.CommandParameterValueCondition = schema.new({
   id = id.from(_N, "CommandParameterValueCondition"),
   type = "structure",
   members = {
      comparisonOperator = schema.new({
         id = id.from(_N, "CommandParameterValueCondition", "comparisonOperator"),
         type = "string",
         name = "comparisonOperator",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      operand = schema.new({
         id = id.from(_N, "CommandParameterValueCondition", "operand"),
         type = "structure",
         name = "operand",
         target_id = id.from(_N, "CommandParameterValueComparisonOperand"),
         target = M.CommandParameterValueComparisonOperand,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CommandParameter = schema.new({
   id = id.from(_N, "CommandParameter"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "CommandParameter", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      type = schema.new({
         id = id.from(_N, "CommandParameter", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
      }),
      value = schema.new({
         id = id.from(_N, "CommandParameter", "value"),
         type = "structure",
         name = "value",
         target_id = id.from(_N, "CommandParameterValue"),
         target = M.CommandParameterValue,
      }),
      defaultValue = schema.new({
         id = id.from(_N, "CommandParameter", "defaultValue"),
         type = "structure",
         name = "defaultValue",
         target_id = id.from(_N, "CommandParameterValue"),
         target = M.CommandParameterValue,
      }),
      valueConditions = schema.new({
         id = id.from(_N, "CommandParameter", "valueConditions"),
         type = "list",
         name = "valueConditions",
         target_id = prelude.Document.id,
         list_member = M.CommandParameterValueCondition,
      }),
      description = schema.new({
         id = id.from(_N, "CommandParameter", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
   },
})

M.CommandPayload = schema.new({
   id = id.from(_N, "CommandPayload"),
   type = "structure",
   members = {
      content = schema.new({
         id = id.from(_N, "CommandPayload", "content"),
         type = "blob",
         name = "content",
         target_id = prelude.Blob.id,
      }),
      contentType = schema.new({
         id = id.from(_N, "CommandPayload", "contentType"),
         type = "string",
         name = "contentType",
         target_id = prelude.String.id,
      }),
   },
})

M.AwsJsonSubstitutionCommandPreprocessorConfig = schema.new({
   id = id.from(_N, "AwsJsonSubstitutionCommandPreprocessorConfig"),
   type = "structure",
   members = {
      outputFormat = schema.new({
         id = id.from(_N, "AwsJsonSubstitutionCommandPreprocessorConfig", "outputFormat"),
         type = "string",
         name = "outputFormat",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CommandPreprocessor = schema.new({
   id = id.from(_N, "CommandPreprocessor"),
   type = "structure",
   members = {
      awsJsonSubstitution = schema.new({
         id = id.from(_N, "CommandPreprocessor", "awsJsonSubstitution"),
         type = "structure",
         name = "awsJsonSubstitution",
         target_id = id.from(_N, "AwsJsonSubstitutionCommandPreprocessorConfig"),
         target = M.AwsJsonSubstitutionCommandPreprocessorConfig,
      }),
   },
})

M.CreateCommandInput = schema.new({
   id = id.from(_N, "CreateCommandRequest"),
   type = "structure",
   members = {
      commandId = schema.new({
         id = id.from(_N, "CreateCommandInput", "commandId"),
         type = "string",
         name = "commandId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      namespace = schema.new({
         id = id.from(_N, "CreateCommandInput", "namespace"),
         type = "string",
         name = "namespace",
         target_id = prelude.String.id,
      }),
      displayName = schema.new({
         id = id.from(_N, "CreateCommandInput", "displayName"),
         type = "string",
         name = "displayName",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "CreateCommandInput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      payload = schema.new({
         id = id.from(_N, "CreateCommandInput", "payload"),
         type = "structure",
         name = "payload",
         target_id = id.from(_N, "CommandPayload"),
         target = M.CommandPayload,
      }),
      payloadTemplate = schema.new({
         id = id.from(_N, "CreateCommandInput", "payloadTemplate"),
         type = "string",
         name = "payloadTemplate",
         target_id = prelude.String.id,
      }),
      preprocessor = schema.new({
         id = id.from(_N, "CreateCommandInput", "preprocessor"),
         type = "structure",
         name = "preprocessor",
         target_id = id.from(_N, "CommandPreprocessor"),
         target = M.CommandPreprocessor,
      }),
      mandatoryParameters = schema.new({
         id = id.from(_N, "CreateCommandInput", "mandatoryParameters"),
         type = "list",
         name = "mandatoryParameters",
         target_id = prelude.Document.id,
         list_member = M.CommandParameter,
      }),
      roleArn = schema.new({
         id = id.from(_N, "CreateCommandInput", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
      }),
      tags = schema.new({
         id = id.from(_N, "CreateCommandInput", "tags"),
         type = "list",
         name = "tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
   },
})

M.CreateCommandOutput = schema.new({
   id = id.from(_N, "CreateCommandResponse"),
   type = "structure",
   members = {
      commandId = schema.new({
         id = id.from(_N, "CreateCommandOutput", "commandId"),
         type = "string",
         name = "commandId",
         target_id = prelude.String.id,
      }),
      commandArn = schema.new({
         id = id.from(_N, "CreateCommandOutput", "commandArn"),
         type = "string",
         name = "commandArn",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateCustomMetricInput = schema.new({
   id = id.from(_N, "CreateCustomMetricRequest"),
   type = "structure",
   members = {
      metricName = schema.new({
         id = id.from(_N, "CreateCustomMetricInput", "metricName"),
         type = "string",
         name = "metricName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      displayName = schema.new({
         id = id.from(_N, "CreateCustomMetricInput", "displayName"),
         type = "string",
         name = "displayName",
         target_id = prelude.String.id,
      }),
      metricType = schema.new({
         id = id.from(_N, "CreateCustomMetricInput", "metricType"),
         type = "string",
         name = "metricType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      tags = schema.new({
         id = id.from(_N, "CreateCustomMetricInput", "tags"),
         type = "list",
         name = "tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
      clientRequestToken = schema.new({
         id = id.from(_N, "CreateCustomMetricInput", "clientRequestToken"),
         type = "string",
         name = "clientRequestToken",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
   },
})

M.CreateCustomMetricOutput = schema.new({
   id = id.from(_N, "CreateCustomMetricResponse"),
   type = "structure",
   members = {
      metricName = schema.new({
         id = id.from(_N, "CreateCustomMetricOutput", "metricName"),
         type = "string",
         name = "metricName",
         target_id = prelude.String.id,
      }),
      metricArn = schema.new({
         id = id.from(_N, "CreateCustomMetricOutput", "metricArn"),
         type = "string",
         name = "metricArn",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateDimensionInput = schema.new({
   id = id.from(_N, "CreateDimensionRequest"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "CreateDimensionInput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      type = schema.new({
         id = id.from(_N, "CreateDimensionInput", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      stringValues = schema.new({
         id = id.from(_N, "CreateDimensionInput", "stringValues"),
         type = "list",
         name = "stringValues",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      tags = schema.new({
         id = id.from(_N, "CreateDimensionInput", "tags"),
         type = "list",
         name = "tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
      clientRequestToken = schema.new({
         id = id.from(_N, "CreateDimensionInput", "clientRequestToken"),
         type = "string",
         name = "clientRequestToken",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
   },
})

M.CreateDimensionOutput = schema.new({
   id = id.from(_N, "CreateDimensionResponse"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "CreateDimensionOutput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      arn = schema.new({
         id = id.from(_N, "CreateDimensionOutput", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
      }),
   },
})

M.CertificateValidationException = schema.new({
   id = id.from(_N, "CertificateValidationException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "CertificateValidationException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.ClientCertificateConfig = schema.new({
   id = id.from(_N, "ClientCertificateConfig"),
   type = "structure",
   members = {
      clientCertificateCallbackArn = schema.new({
         id = id.from(_N, "ClientCertificateConfig", "clientCertificateCallbackArn"),
         type = "string",
         name = "clientCertificateCallbackArn",
         target_id = prelude.String.id,
      }),
   },
})

M.ServerCertificateConfig = schema.new({
   id = id.from(_N, "ServerCertificateConfig"),
   type = "structure",
   members = {
      enableOCSPCheck = schema.new({
         id = id.from(_N, "ServerCertificateConfig", "enableOCSPCheck"),
         type = "boolean",
         name = "enableOCSPCheck",
         target_id = prelude.Boolean.id,
      }),
      ocspLambdaArn = schema.new({
         id = id.from(_N, "ServerCertificateConfig", "ocspLambdaArn"),
         type = "string",
         name = "ocspLambdaArn",
         target_id = prelude.String.id,
      }),
      ocspAuthorizedResponderArn = schema.new({
         id = id.from(_N, "ServerCertificateConfig", "ocspAuthorizedResponderArn"),
         type = "string",
         name = "ocspAuthorizedResponderArn",
         target_id = prelude.String.id,
      }),
   },
})

M.TlsConfig = schema.new({
   id = id.from(_N, "TlsConfig"),
   type = "structure",
   members = {
      securityPolicy = schema.new({
         id = id.from(_N, "TlsConfig", "securityPolicy"),
         type = "string",
         name = "securityPolicy",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateDomainConfigurationInput = schema.new({
   id = id.from(_N, "CreateDomainConfigurationRequest"),
   type = "structure",
   members = {
      domainConfigurationName = schema.new({
         id = id.from(_N, "CreateDomainConfigurationInput", "domainConfigurationName"),
         type = "string",
         name = "domainConfigurationName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      domainName = schema.new({
         id = id.from(_N, "CreateDomainConfigurationInput", "domainName"),
         type = "string",
         name = "domainName",
         target_id = prelude.String.id,
      }),
      serverCertificateArns = schema.new({
         id = id.from(_N, "CreateDomainConfigurationInput", "serverCertificateArns"),
         type = "list",
         name = "serverCertificateArns",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      validationCertificateArn = schema.new({
         id = id.from(_N, "CreateDomainConfigurationInput", "validationCertificateArn"),
         type = "string",
         name = "validationCertificateArn",
         target_id = prelude.String.id,
      }),
      authorizerConfig = schema.new({
         id = id.from(_N, "CreateDomainConfigurationInput", "authorizerConfig"),
         type = "structure",
         name = "authorizerConfig",
         target_id = id.from(_N, "AuthorizerConfig"),
         target = M.AuthorizerConfig,
      }),
      serviceType = schema.new({
         id = id.from(_N, "CreateDomainConfigurationInput", "serviceType"),
         type = "string",
         name = "serviceType",
         target_id = prelude.String.id,
      }),
      tags = schema.new({
         id = id.from(_N, "CreateDomainConfigurationInput", "tags"),
         type = "list",
         name = "tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
      tlsConfig = schema.new({
         id = id.from(_N, "CreateDomainConfigurationInput", "tlsConfig"),
         type = "structure",
         name = "tlsConfig",
         target_id = id.from(_N, "TlsConfig"),
         target = M.TlsConfig,
      }),
      serverCertificateConfig = schema.new({
         id = id.from(_N, "CreateDomainConfigurationInput", "serverCertificateConfig"),
         type = "structure",
         name = "serverCertificateConfig",
         target_id = id.from(_N, "ServerCertificateConfig"),
         target = M.ServerCertificateConfig,
      }),
      authenticationType = schema.new({
         id = id.from(_N, "CreateDomainConfigurationInput", "authenticationType"),
         type = "string",
         name = "authenticationType",
         target_id = prelude.String.id,
      }),
      applicationProtocol = schema.new({
         id = id.from(_N, "CreateDomainConfigurationInput", "applicationProtocol"),
         type = "string",
         name = "applicationProtocol",
         target_id = prelude.String.id,
      }),
      clientCertificateConfig = schema.new({
         id = id.from(_N, "CreateDomainConfigurationInput", "clientCertificateConfig"),
         type = "structure",
         name = "clientCertificateConfig",
         target_id = id.from(_N, "ClientCertificateConfig"),
         target = M.ClientCertificateConfig,
      }),
   },
})

M.CreateDomainConfigurationOutput = schema.new({
   id = id.from(_N, "CreateDomainConfigurationResponse"),
   type = "structure",
   members = {
      domainConfigurationName = schema.new({
         id = id.from(_N, "CreateDomainConfigurationOutput", "domainConfigurationName"),
         type = "string",
         name = "domainConfigurationName",
         target_id = prelude.String.id,
      }),
      domainConfigurationArn = schema.new({
         id = id.from(_N, "CreateDomainConfigurationOutput", "domainConfigurationArn"),
         type = "string",
         name = "domainConfigurationArn",
         target_id = prelude.String.id,
      }),
   },
})

M.ThingGroupProperties = schema.new({
   id = id.from(_N, "ThingGroupProperties"),
   type = "structure",
   members = {
      thingGroupDescription = schema.new({
         id = id.from(_N, "ThingGroupProperties", "thingGroupDescription"),
         type = "string",
         name = "thingGroupDescription",
         target_id = prelude.String.id,
      }),
      attributePayload = schema.new({
         id = id.from(_N, "ThingGroupProperties", "attributePayload"),
         type = "structure",
         name = "attributePayload",
         target_id = id.from(_N, "AttributePayload"),
         target = M.AttributePayload,
      }),
   },
})

M.CreateDynamicThingGroupInput = schema.new({
   id = id.from(_N, "CreateDynamicThingGroupRequest"),
   type = "structure",
   members = {
      thingGroupName = schema.new({
         id = id.from(_N, "CreateDynamicThingGroupInput", "thingGroupName"),
         type = "string",
         name = "thingGroupName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      thingGroupProperties = schema.new({
         id = id.from(_N, "CreateDynamicThingGroupInput", "thingGroupProperties"),
         type = "structure",
         name = "thingGroupProperties",
         target_id = id.from(_N, "ThingGroupProperties"),
         target = M.ThingGroupProperties,
      }),
      indexName = schema.new({
         id = id.from(_N, "CreateDynamicThingGroupInput", "indexName"),
         type = "string",
         name = "indexName",
         target_id = prelude.String.id,
      }),
      queryString = schema.new({
         id = id.from(_N, "CreateDynamicThingGroupInput", "queryString"),
         type = "string",
         name = "queryString",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      queryVersion = schema.new({
         id = id.from(_N, "CreateDynamicThingGroupInput", "queryVersion"),
         type = "string",
         name = "queryVersion",
         target_id = prelude.String.id,
      }),
      tags = schema.new({
         id = id.from(_N, "CreateDynamicThingGroupInput", "tags"),
         type = "list",
         name = "tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
   },
})

M.CreateDynamicThingGroupOutput = schema.new({
   id = id.from(_N, "CreateDynamicThingGroupResponse"),
   type = "structure",
   members = {
      thingGroupName = schema.new({
         id = id.from(_N, "CreateDynamicThingGroupOutput", "thingGroupName"),
         type = "string",
         name = "thingGroupName",
         target_id = prelude.String.id,
      }),
      thingGroupArn = schema.new({
         id = id.from(_N, "CreateDynamicThingGroupOutput", "thingGroupArn"),
         type = "string",
         name = "thingGroupArn",
         target_id = prelude.String.id,
      }),
      thingGroupId = schema.new({
         id = id.from(_N, "CreateDynamicThingGroupOutput", "thingGroupId"),
         type = "string",
         name = "thingGroupId",
         target_id = prelude.String.id,
      }),
      indexName = schema.new({
         id = id.from(_N, "CreateDynamicThingGroupOutput", "indexName"),
         type = "string",
         name = "indexName",
         target_id = prelude.String.id,
      }),
      queryString = schema.new({
         id = id.from(_N, "CreateDynamicThingGroupOutput", "queryString"),
         type = "string",
         name = "queryString",
         target_id = prelude.String.id,
      }),
      queryVersion = schema.new({
         id = id.from(_N, "CreateDynamicThingGroupOutput", "queryVersion"),
         type = "string",
         name = "queryVersion",
         target_id = prelude.String.id,
      }),
   },
})

M.InvalidQueryException = schema.new({
   id = id.from(_N, "InvalidQueryException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "InvalidQueryException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateFleetMetricInput = schema.new({
   id = id.from(_N, "CreateFleetMetricRequest"),
   type = "structure",
   members = {
      metricName = schema.new({
         id = id.from(_N, "CreateFleetMetricInput", "metricName"),
         type = "string",
         name = "metricName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      queryString = schema.new({
         id = id.from(_N, "CreateFleetMetricInput", "queryString"),
         type = "string",
         name = "queryString",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      aggregationType = schema.new({
         id = id.from(_N, "CreateFleetMetricInput", "aggregationType"),
         type = "structure",
         name = "aggregationType",
         target_id = id.from(_N, "AggregationType"),
         target = M.AggregationType,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      period = schema.new({
         id = id.from(_N, "CreateFleetMetricInput", "period"),
         type = "integer",
         name = "period",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      aggregationField = schema.new({
         id = id.from(_N, "CreateFleetMetricInput", "aggregationField"),
         type = "string",
         name = "aggregationField",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      description = schema.new({
         id = id.from(_N, "CreateFleetMetricInput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      queryVersion = schema.new({
         id = id.from(_N, "CreateFleetMetricInput", "queryVersion"),
         type = "string",
         name = "queryVersion",
         target_id = prelude.String.id,
      }),
      indexName = schema.new({
         id = id.from(_N, "CreateFleetMetricInput", "indexName"),
         type = "string",
         name = "indexName",
         target_id = prelude.String.id,
      }),
      unit = schema.new({
         id = id.from(_N, "CreateFleetMetricInput", "unit"),
         type = "string",
         name = "unit",
         target_id = prelude.String.id,
      }),
      tags = schema.new({
         id = id.from(_N, "CreateFleetMetricInput", "tags"),
         type = "list",
         name = "tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
   },
})

M.CreateFleetMetricOutput = schema.new({
   id = id.from(_N, "CreateFleetMetricResponse"),
   type = "structure",
   members = {
      metricName = schema.new({
         id = id.from(_N, "CreateFleetMetricOutput", "metricName"),
         type = "string",
         name = "metricName",
         target_id = prelude.String.id,
      }),
      metricArn = schema.new({
         id = id.from(_N, "CreateFleetMetricOutput", "metricArn"),
         type = "string",
         name = "metricArn",
         target_id = prelude.String.id,
      }),
   },
})

M.IndexNotReadyException = schema.new({
   id = id.from(_N, "IndexNotReadyException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "IndexNotReadyException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.InvalidAggregationException = schema.new({
   id = id.from(_N, "InvalidAggregationException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "InvalidAggregationException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.RetryCriteria = schema.new({
   id = id.from(_N, "RetryCriteria"),
   type = "structure",
   members = {
      failureType = schema.new({
         id = id.from(_N, "RetryCriteria", "failureType"),
         type = "string",
         name = "failureType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      numberOfRetries = schema.new({
         id = id.from(_N, "RetryCriteria", "numberOfRetries"),
         type = "integer",
         name = "numberOfRetries",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.JobExecutionsRetryConfig = schema.new({
   id = id.from(_N, "JobExecutionsRetryConfig"),
   type = "structure",
   members = {
      criteriaList = schema.new({
         id = id.from(_N, "JobExecutionsRetryConfig", "criteriaList"),
         type = "list",
         name = "criteriaList",
         target_id = prelude.Document.id,
         list_member = M.RetryCriteria,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.RateIncreaseCriteria = schema.new({
   id = id.from(_N, "RateIncreaseCriteria"),
   type = "structure",
   members = {
      numberOfNotifiedThings = schema.new({
         id = id.from(_N, "RateIncreaseCriteria", "numberOfNotifiedThings"),
         type = "integer",
         name = "numberOfNotifiedThings",
         target_id = prelude.Integer.id,
      }),
      numberOfSucceededThings = schema.new({
         id = id.from(_N, "RateIncreaseCriteria", "numberOfSucceededThings"),
         type = "integer",
         name = "numberOfSucceededThings",
         target_id = prelude.Integer.id,
      }),
   },
})

M.ExponentialRolloutRate = schema.new({
   id = id.from(_N, "ExponentialRolloutRate"),
   type = "structure",
   members = {
      baseRatePerMinute = schema.new({
         id = id.from(_N, "ExponentialRolloutRate", "baseRatePerMinute"),
         type = "integer",
         name = "baseRatePerMinute",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      incrementFactor = schema.new({
         id = id.from(_N, "ExponentialRolloutRate", "incrementFactor"),
         type = "double",
         name = "incrementFactor",
         target_id = prelude.Double.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      rateIncreaseCriteria = schema.new({
         id = id.from(_N, "ExponentialRolloutRate", "rateIncreaseCriteria"),
         type = "structure",
         name = "rateIncreaseCriteria",
         target_id = id.from(_N, "RateIncreaseCriteria"),
         target = M.RateIncreaseCriteria,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.JobExecutionsRolloutConfig = schema.new({
   id = id.from(_N, "JobExecutionsRolloutConfig"),
   type = "structure",
   members = {
      maximumPerMinute = schema.new({
         id = id.from(_N, "JobExecutionsRolloutConfig", "maximumPerMinute"),
         type = "integer",
         name = "maximumPerMinute",
         target_id = prelude.Integer.id,
      }),
      exponentialRate = schema.new({
         id = id.from(_N, "JobExecutionsRolloutConfig", "exponentialRate"),
         type = "structure",
         name = "exponentialRate",
         target_id = id.from(_N, "ExponentialRolloutRate"),
         target = M.ExponentialRolloutRate,
      }),
   },
})

M.PresignedUrlConfig = schema.new({
   id = id.from(_N, "PresignedUrlConfig"),
   type = "structure",
   members = {
      roleArn = schema.new({
         id = id.from(_N, "PresignedUrlConfig", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
      }),
      expiresInSec = schema.new({
         id = id.from(_N, "PresignedUrlConfig", "expiresInSec"),
         type = "long",
         name = "expiresInSec",
         target_id = prelude.Long.id,
      }),
   },
})

M.MaintenanceWindow = schema.new({
   id = id.from(_N, "MaintenanceWindow"),
   type = "structure",
   members = {
      startTime = schema.new({
         id = id.from(_N, "MaintenanceWindow", "startTime"),
         type = "string",
         name = "startTime",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      durationInMinutes = schema.new({
         id = id.from(_N, "MaintenanceWindow", "durationInMinutes"),
         type = "integer",
         name = "durationInMinutes",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.SchedulingConfig = schema.new({
   id = id.from(_N, "SchedulingConfig"),
   type = "structure",
   members = {
      startTime = schema.new({
         id = id.from(_N, "SchedulingConfig", "startTime"),
         type = "string",
         name = "startTime",
         target_id = prelude.String.id,
      }),
      endTime = schema.new({
         id = id.from(_N, "SchedulingConfig", "endTime"),
         type = "string",
         name = "endTime",
         target_id = prelude.String.id,
      }),
      endBehavior = schema.new({
         id = id.from(_N, "SchedulingConfig", "endBehavior"),
         type = "string",
         name = "endBehavior",
         target_id = prelude.String.id,
      }),
      maintenanceWindows = schema.new({
         id = id.from(_N, "SchedulingConfig", "maintenanceWindows"),
         type = "list",
         name = "maintenanceWindows",
         target_id = prelude.Document.id,
         list_member = M.MaintenanceWindow,
      }),
   },
})

M.TimeoutConfig = schema.new({
   id = id.from(_N, "TimeoutConfig"),
   type = "structure",
   members = {
      inProgressTimeoutInMinutes = schema.new({
         id = id.from(_N, "TimeoutConfig", "inProgressTimeoutInMinutes"),
         type = "long",
         name = "inProgressTimeoutInMinutes",
         target_id = prelude.Long.id,
      }),
   },
})

M.CreateJobInput = schema.new({
   id = id.from(_N, "CreateJobRequest"),
   type = "structure",
   members = {
      jobId = schema.new({
         id = id.from(_N, "CreateJobInput", "jobId"),
         type = "string",
         name = "jobId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      targets = schema.new({
         id = id.from(_N, "CreateJobInput", "targets"),
         type = "list",
         name = "targets",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      documentSource = schema.new({
         id = id.from(_N, "CreateJobInput", "documentSource"),
         type = "string",
         name = "documentSource",
         target_id = prelude.String.id,
      }),
      document = schema.new({
         id = id.from(_N, "CreateJobInput", "document"),
         type = "string",
         name = "document",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "CreateJobInput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      presignedUrlConfig = schema.new({
         id = id.from(_N, "CreateJobInput", "presignedUrlConfig"),
         type = "structure",
         name = "presignedUrlConfig",
         target_id = id.from(_N, "PresignedUrlConfig"),
         target = M.PresignedUrlConfig,
      }),
      targetSelection = schema.new({
         id = id.from(_N, "CreateJobInput", "targetSelection"),
         type = "string",
         name = "targetSelection",
         target_id = prelude.String.id,
      }),
      jobExecutionsRolloutConfig = schema.new({
         id = id.from(_N, "CreateJobInput", "jobExecutionsRolloutConfig"),
         type = "structure",
         name = "jobExecutionsRolloutConfig",
         target_id = id.from(_N, "JobExecutionsRolloutConfig"),
         target = M.JobExecutionsRolloutConfig,
      }),
      abortConfig = schema.new({
         id = id.from(_N, "CreateJobInput", "abortConfig"),
         type = "structure",
         name = "abortConfig",
         target_id = id.from(_N, "AbortConfig"),
         target = M.AbortConfig,
      }),
      timeoutConfig = schema.new({
         id = id.from(_N, "CreateJobInput", "timeoutConfig"),
         type = "structure",
         name = "timeoutConfig",
         target_id = id.from(_N, "TimeoutConfig"),
         target = M.TimeoutConfig,
      }),
      tags = schema.new({
         id = id.from(_N, "CreateJobInput", "tags"),
         type = "list",
         name = "tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
      namespaceId = schema.new({
         id = id.from(_N, "CreateJobInput", "namespaceId"),
         type = "string",
         name = "namespaceId",
         target_id = prelude.String.id,
      }),
      jobTemplateArn = schema.new({
         id = id.from(_N, "CreateJobInput", "jobTemplateArn"),
         type = "string",
         name = "jobTemplateArn",
         target_id = prelude.String.id,
      }),
      jobExecutionsRetryConfig = schema.new({
         id = id.from(_N, "CreateJobInput", "jobExecutionsRetryConfig"),
         type = "structure",
         name = "jobExecutionsRetryConfig",
         target_id = id.from(_N, "JobExecutionsRetryConfig"),
         target = M.JobExecutionsRetryConfig,
      }),
      documentParameters = schema.new({
         id = id.from(_N, "CreateJobInput", "documentParameters"),
         type = "map",
         name = "documentParameters",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      schedulingConfig = schema.new({
         id = id.from(_N, "CreateJobInput", "schedulingConfig"),
         type = "structure",
         name = "schedulingConfig",
         target_id = id.from(_N, "SchedulingConfig"),
         target = M.SchedulingConfig,
      }),
      destinationPackageVersions = schema.new({
         id = id.from(_N, "CreateJobInput", "destinationPackageVersions"),
         type = "list",
         name = "destinationPackageVersions",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.CreateJobOutput = schema.new({
   id = id.from(_N, "CreateJobResponse"),
   type = "structure",
   members = {
      jobArn = schema.new({
         id = id.from(_N, "CreateJobOutput", "jobArn"),
         type = "string",
         name = "jobArn",
         target_id = prelude.String.id,
      }),
      jobId = schema.new({
         id = id.from(_N, "CreateJobOutput", "jobId"),
         type = "string",
         name = "jobId",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "CreateJobOutput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateJobTemplateInput = schema.new({
   id = id.from(_N, "CreateJobTemplateRequest"),
   type = "structure",
   members = {
      jobTemplateId = schema.new({
         id = id.from(_N, "CreateJobTemplateInput", "jobTemplateId"),
         type = "string",
         name = "jobTemplateId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      jobArn = schema.new({
         id = id.from(_N, "CreateJobTemplateInput", "jobArn"),
         type = "string",
         name = "jobArn",
         target_id = prelude.String.id,
      }),
      documentSource = schema.new({
         id = id.from(_N, "CreateJobTemplateInput", "documentSource"),
         type = "string",
         name = "documentSource",
         target_id = prelude.String.id,
      }),
      document = schema.new({
         id = id.from(_N, "CreateJobTemplateInput", "document"),
         type = "string",
         name = "document",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "CreateJobTemplateInput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      presignedUrlConfig = schema.new({
         id = id.from(_N, "CreateJobTemplateInput", "presignedUrlConfig"),
         type = "structure",
         name = "presignedUrlConfig",
         target_id = id.from(_N, "PresignedUrlConfig"),
         target = M.PresignedUrlConfig,
      }),
      jobExecutionsRolloutConfig = schema.new({
         id = id.from(_N, "CreateJobTemplateInput", "jobExecutionsRolloutConfig"),
         type = "structure",
         name = "jobExecutionsRolloutConfig",
         target_id = id.from(_N, "JobExecutionsRolloutConfig"),
         target = M.JobExecutionsRolloutConfig,
      }),
      abortConfig = schema.new({
         id = id.from(_N, "CreateJobTemplateInput", "abortConfig"),
         type = "structure",
         name = "abortConfig",
         target_id = id.from(_N, "AbortConfig"),
         target = M.AbortConfig,
      }),
      timeoutConfig = schema.new({
         id = id.from(_N, "CreateJobTemplateInput", "timeoutConfig"),
         type = "structure",
         name = "timeoutConfig",
         target_id = id.from(_N, "TimeoutConfig"),
         target = M.TimeoutConfig,
      }),
      tags = schema.new({
         id = id.from(_N, "CreateJobTemplateInput", "tags"),
         type = "list",
         name = "tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
      jobExecutionsRetryConfig = schema.new({
         id = id.from(_N, "CreateJobTemplateInput", "jobExecutionsRetryConfig"),
         type = "structure",
         name = "jobExecutionsRetryConfig",
         target_id = id.from(_N, "JobExecutionsRetryConfig"),
         target = M.JobExecutionsRetryConfig,
      }),
      maintenanceWindows = schema.new({
         id = id.from(_N, "CreateJobTemplateInput", "maintenanceWindows"),
         type = "list",
         name = "maintenanceWindows",
         target_id = prelude.Document.id,
         list_member = M.MaintenanceWindow,
      }),
      destinationPackageVersions = schema.new({
         id = id.from(_N, "CreateJobTemplateInput", "destinationPackageVersions"),
         type = "list",
         name = "destinationPackageVersions",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.CreateJobTemplateOutput = schema.new({
   id = id.from(_N, "CreateJobTemplateResponse"),
   type = "structure",
   members = {
      jobTemplateArn = schema.new({
         id = id.from(_N, "CreateJobTemplateOutput", "jobTemplateArn"),
         type = "string",
         name = "jobTemplateArn",
         target_id = prelude.String.id,
      }),
      jobTemplateId = schema.new({
         id = id.from(_N, "CreateJobTemplateOutput", "jobTemplateId"),
         type = "string",
         name = "jobTemplateId",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateKeysAndCertificateInput = schema.new({
   id = id.from(_N, "CreateKeysAndCertificateRequest"),
   type = "structure",
   members = {
      setAsActive = schema.new({
         id = id.from(_N, "CreateKeysAndCertificateInput", "setAsActive"),
         type = "boolean",
         name = "setAsActive",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
            [traits.HTTP_QUERY] = { name = "setAsActive" },
         },
      }),
   },
})

M.KeyPair = schema.new({
   id = id.from(_N, "KeyPair"),
   type = "structure",
   members = {
      PublicKey = schema.new({
         id = id.from(_N, "KeyPair", "PublicKey"),
         type = "string",
         name = "PublicKey",
         target_id = prelude.String.id,
      }),
      PrivateKey = schema.new({
         id = id.from(_N, "KeyPair", "PrivateKey"),
         type = "string",
         name = "PrivateKey",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateKeysAndCertificateOutput = schema.new({
   id = id.from(_N, "CreateKeysAndCertificateResponse"),
   type = "structure",
   members = {
      certificateArn = schema.new({
         id = id.from(_N, "CreateKeysAndCertificateOutput", "certificateArn"),
         type = "string",
         name = "certificateArn",
         target_id = prelude.String.id,
      }),
      certificateId = schema.new({
         id = id.from(_N, "CreateKeysAndCertificateOutput", "certificateId"),
         type = "string",
         name = "certificateId",
         target_id = prelude.String.id,
      }),
      certificatePem = schema.new({
         id = id.from(_N, "CreateKeysAndCertificateOutput", "certificatePem"),
         type = "string",
         name = "certificatePem",
         target_id = prelude.String.id,
      }),
      keyPair = schema.new({
         id = id.from(_N, "CreateKeysAndCertificateOutput", "keyPair"),
         type = "structure",
         name = "keyPair",
         target_id = id.from(_N, "KeyPair"),
         target = M.KeyPair,
      }),
   },
})

M.EnableIoTLoggingParams = schema.new({
   id = id.from(_N, "EnableIoTLoggingParams"),
   type = "structure",
   members = {
      roleArnForLogging = schema.new({
         id = id.from(_N, "EnableIoTLoggingParams", "roleArnForLogging"),
         type = "string",
         name = "roleArnForLogging",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      logLevel = schema.new({
         id = id.from(_N, "EnableIoTLoggingParams", "logLevel"),
         type = "string",
         name = "logLevel",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.PublishFindingToSnsParams = schema.new({
   id = id.from(_N, "PublishFindingToSnsParams"),
   type = "structure",
   members = {
      topicArn = schema.new({
         id = id.from(_N, "PublishFindingToSnsParams", "topicArn"),
         type = "string",
         name = "topicArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ReplaceDefaultPolicyVersionParams = schema.new({
   id = id.from(_N, "ReplaceDefaultPolicyVersionParams"),
   type = "structure",
   members = {
      templateName = schema.new({
         id = id.from(_N, "ReplaceDefaultPolicyVersionParams", "templateName"),
         type = "string",
         name = "templateName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UpdateCACertificateParams = schema.new({
   id = id.from(_N, "UpdateCACertificateParams"),
   type = "structure",
   members = {
      action = schema.new({
         id = id.from(_N, "UpdateCACertificateParams", "action"),
         type = "string",
         name = "action",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UpdateDeviceCertificateParams = schema.new({
   id = id.from(_N, "UpdateDeviceCertificateParams"),
   type = "structure",
   members = {
      action = schema.new({
         id = id.from(_N, "UpdateDeviceCertificateParams", "action"),
         type = "string",
         name = "action",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.MitigationActionParams = schema.new({
   id = id.from(_N, "MitigationActionParams"),
   type = "structure",
   members = {
      updateDeviceCertificateParams = schema.new({
         id = id.from(_N, "MitigationActionParams", "updateDeviceCertificateParams"),
         type = "structure",
         name = "updateDeviceCertificateParams",
         target_id = id.from(_N, "UpdateDeviceCertificateParams"),
         target = M.UpdateDeviceCertificateParams,
      }),
      updateCACertificateParams = schema.new({
         id = id.from(_N, "MitigationActionParams", "updateCACertificateParams"),
         type = "structure",
         name = "updateCACertificateParams",
         target_id = id.from(_N, "UpdateCACertificateParams"),
         target = M.UpdateCACertificateParams,
      }),
      addThingsToThingGroupParams = schema.new({
         id = id.from(_N, "MitigationActionParams", "addThingsToThingGroupParams"),
         type = "structure",
         name = "addThingsToThingGroupParams",
         target_id = id.from(_N, "AddThingsToThingGroupParams"),
         target = M.AddThingsToThingGroupParams,
      }),
      replaceDefaultPolicyVersionParams = schema.new({
         id = id.from(_N, "MitigationActionParams", "replaceDefaultPolicyVersionParams"),
         type = "structure",
         name = "replaceDefaultPolicyVersionParams",
         target_id = id.from(_N, "ReplaceDefaultPolicyVersionParams"),
         target = M.ReplaceDefaultPolicyVersionParams,
      }),
      enableIoTLoggingParams = schema.new({
         id = id.from(_N, "MitigationActionParams", "enableIoTLoggingParams"),
         type = "structure",
         name = "enableIoTLoggingParams",
         target_id = id.from(_N, "EnableIoTLoggingParams"),
         target = M.EnableIoTLoggingParams,
      }),
      publishFindingToSnsParams = schema.new({
         id = id.from(_N, "MitigationActionParams", "publishFindingToSnsParams"),
         type = "structure",
         name = "publishFindingToSnsParams",
         target_id = id.from(_N, "PublishFindingToSnsParams"),
         target = M.PublishFindingToSnsParams,
      }),
   },
})

M.CreateMitigationActionInput = schema.new({
   id = id.from(_N, "CreateMitigationActionRequest"),
   type = "structure",
   members = {
      actionName = schema.new({
         id = id.from(_N, "CreateMitigationActionInput", "actionName"),
         type = "string",
         name = "actionName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      roleArn = schema.new({
         id = id.from(_N, "CreateMitigationActionInput", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      actionParams = schema.new({
         id = id.from(_N, "CreateMitigationActionInput", "actionParams"),
         type = "structure",
         name = "actionParams",
         target_id = id.from(_N, "MitigationActionParams"),
         target = M.MitigationActionParams,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      tags = schema.new({
         id = id.from(_N, "CreateMitigationActionInput", "tags"),
         type = "list",
         name = "tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
   },
})

M.CreateMitigationActionOutput = schema.new({
   id = id.from(_N, "CreateMitigationActionResponse"),
   type = "structure",
   members = {
      actionArn = schema.new({
         id = id.from(_N, "CreateMitigationActionOutput", "actionArn"),
         type = "string",
         name = "actionArn",
         target_id = prelude.String.id,
      }),
      actionId = schema.new({
         id = id.from(_N, "CreateMitigationActionOutput", "actionId"),
         type = "string",
         name = "actionId",
         target_id = prelude.String.id,
      }),
   },
})

M.AwsJobAbortCriteria = schema.new({
   id = id.from(_N, "AwsJobAbortCriteria"),
   type = "structure",
   members = {
      failureType = schema.new({
         id = id.from(_N, "AwsJobAbortCriteria", "failureType"),
         type = "string",
         name = "failureType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      action = schema.new({
         id = id.from(_N, "AwsJobAbortCriteria", "action"),
         type = "string",
         name = "action",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      thresholdPercentage = schema.new({
         id = id.from(_N, "AwsJobAbortCriteria", "thresholdPercentage"),
         type = "double",
         name = "thresholdPercentage",
         target_id = prelude.Double.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      minNumberOfExecutedThings = schema.new({
         id = id.from(_N, "AwsJobAbortCriteria", "minNumberOfExecutedThings"),
         type = "integer",
         name = "minNumberOfExecutedThings",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AwsJobAbortConfig = schema.new({
   id = id.from(_N, "AwsJobAbortConfig"),
   type = "structure",
   members = {
      abortCriteriaList = schema.new({
         id = id.from(_N, "AwsJobAbortConfig", "abortCriteriaList"),
         type = "list",
         name = "abortCriteriaList",
         target_id = prelude.Document.id,
         list_member = M.AwsJobAbortCriteria,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AwsJobRateIncreaseCriteria = schema.new({
   id = id.from(_N, "AwsJobRateIncreaseCriteria"),
   type = "structure",
   members = {
      numberOfNotifiedThings = schema.new({
         id = id.from(_N, "AwsJobRateIncreaseCriteria", "numberOfNotifiedThings"),
         type = "integer",
         name = "numberOfNotifiedThings",
         target_id = prelude.Integer.id,
      }),
      numberOfSucceededThings = schema.new({
         id = id.from(_N, "AwsJobRateIncreaseCriteria", "numberOfSucceededThings"),
         type = "integer",
         name = "numberOfSucceededThings",
         target_id = prelude.Integer.id,
      }),
   },
})

M.AwsJobExponentialRolloutRate = schema.new({
   id = id.from(_N, "AwsJobExponentialRolloutRate"),
   type = "structure",
   members = {
      baseRatePerMinute = schema.new({
         id = id.from(_N, "AwsJobExponentialRolloutRate", "baseRatePerMinute"),
         type = "integer",
         name = "baseRatePerMinute",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      incrementFactor = schema.new({
         id = id.from(_N, "AwsJobExponentialRolloutRate", "incrementFactor"),
         type = "double",
         name = "incrementFactor",
         target_id = prelude.Double.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      rateIncreaseCriteria = schema.new({
         id = id.from(_N, "AwsJobExponentialRolloutRate", "rateIncreaseCriteria"),
         type = "structure",
         name = "rateIncreaseCriteria",
         target_id = id.from(_N, "AwsJobRateIncreaseCriteria"),
         target = M.AwsJobRateIncreaseCriteria,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AwsJobExecutionsRolloutConfig = schema.new({
   id = id.from(_N, "AwsJobExecutionsRolloutConfig"),
   type = "structure",
   members = {
      maximumPerMinute = schema.new({
         id = id.from(_N, "AwsJobExecutionsRolloutConfig", "maximumPerMinute"),
         type = "integer",
         name = "maximumPerMinute",
         target_id = prelude.Integer.id,
      }),
      exponentialRate = schema.new({
         id = id.from(_N, "AwsJobExecutionsRolloutConfig", "exponentialRate"),
         type = "structure",
         name = "exponentialRate",
         target_id = id.from(_N, "AwsJobExponentialRolloutRate"),
         target = M.AwsJobExponentialRolloutRate,
      }),
   },
})

M.AwsJobPresignedUrlConfig = schema.new({
   id = id.from(_N, "AwsJobPresignedUrlConfig"),
   type = "structure",
   members = {
      expiresInSec = schema.new({
         id = id.from(_N, "AwsJobPresignedUrlConfig", "expiresInSec"),
         type = "long",
         name = "expiresInSec",
         target_id = prelude.Long.id,
      }),
   },
})

M.AwsJobTimeoutConfig = schema.new({
   id = id.from(_N, "AwsJobTimeoutConfig"),
   type = "structure",
   members = {
      inProgressTimeoutInMinutes = schema.new({
         id = id.from(_N, "AwsJobTimeoutConfig", "inProgressTimeoutInMinutes"),
         type = "long",
         name = "inProgressTimeoutInMinutes",
         target_id = prelude.Long.id,
      }),
   },
})

M.CodeSigningCertificateChain = schema.new({
   id = id.from(_N, "CodeSigningCertificateChain"),
   type = "structure",
   members = {
      certificateName = schema.new({
         id = id.from(_N, "CodeSigningCertificateChain", "certificateName"),
         type = "string",
         name = "certificateName",
         target_id = prelude.String.id,
      }),
      inlineDocument = schema.new({
         id = id.from(_N, "CodeSigningCertificateChain", "inlineDocument"),
         type = "string",
         name = "inlineDocument",
         target_id = prelude.String.id,
      }),
   },
})

M.CodeSigningSignature = schema.new({
   id = id.from(_N, "CodeSigningSignature"),
   type = "structure",
   members = {
      inlineDocument = schema.new({
         id = id.from(_N, "CodeSigningSignature", "inlineDocument"),
         type = "blob",
         name = "inlineDocument",
         target_id = prelude.Blob.id,
      }),
   },
})

M.CustomCodeSigning = schema.new({
   id = id.from(_N, "CustomCodeSigning"),
   type = "structure",
   members = {
      signature = schema.new({
         id = id.from(_N, "CustomCodeSigning", "signature"),
         type = "structure",
         name = "signature",
         target_id = id.from(_N, "CodeSigningSignature"),
         target = M.CodeSigningSignature,
      }),
      certificateChain = schema.new({
         id = id.from(_N, "CustomCodeSigning", "certificateChain"),
         type = "structure",
         name = "certificateChain",
         target_id = id.from(_N, "CodeSigningCertificateChain"),
         target = M.CodeSigningCertificateChain,
      }),
      hashAlgorithm = schema.new({
         id = id.from(_N, "CustomCodeSigning", "hashAlgorithm"),
         type = "string",
         name = "hashAlgorithm",
         target_id = prelude.String.id,
      }),
      signatureAlgorithm = schema.new({
         id = id.from(_N, "CustomCodeSigning", "signatureAlgorithm"),
         type = "string",
         name = "signatureAlgorithm",
         target_id = prelude.String.id,
      }),
   },
})

M.S3Destination = schema.new({
   id = id.from(_N, "S3Destination"),
   type = "structure",
   members = {
      bucket = schema.new({
         id = id.from(_N, "S3Destination", "bucket"),
         type = "string",
         name = "bucket",
         target_id = prelude.String.id,
      }),
      prefix = schema.new({
         id = id.from(_N, "S3Destination", "prefix"),
         type = "string",
         name = "prefix",
         target_id = prelude.String.id,
      }),
   },
})

M.Destination = schema.new({
   id = id.from(_N, "Destination"),
   type = "structure",
   members = {
      s3Destination = schema.new({
         id = id.from(_N, "Destination", "s3Destination"),
         type = "structure",
         name = "s3Destination",
         target_id = id.from(_N, "S3Destination"),
         target = M.S3Destination,
      }),
   },
})

M.SigningProfileParameter = schema.new({
   id = id.from(_N, "SigningProfileParameter"),
   type = "structure",
   members = {
      certificateArn = schema.new({
         id = id.from(_N, "SigningProfileParameter", "certificateArn"),
         type = "string",
         name = "certificateArn",
         target_id = prelude.String.id,
      }),
      platform = schema.new({
         id = id.from(_N, "SigningProfileParameter", "platform"),
         type = "string",
         name = "platform",
         target_id = prelude.String.id,
      }),
      certificatePathOnDevice = schema.new({
         id = id.from(_N, "SigningProfileParameter", "certificatePathOnDevice"),
         type = "string",
         name = "certificatePathOnDevice",
         target_id = prelude.String.id,
      }),
   },
})

M.StartSigningJobParameter = schema.new({
   id = id.from(_N, "StartSigningJobParameter"),
   type = "structure",
   members = {
      signingProfileParameter = schema.new({
         id = id.from(_N, "StartSigningJobParameter", "signingProfileParameter"),
         type = "structure",
         name = "signingProfileParameter",
         target_id = id.from(_N, "SigningProfileParameter"),
         target = M.SigningProfileParameter,
      }),
      signingProfileName = schema.new({
         id = id.from(_N, "StartSigningJobParameter", "signingProfileName"),
         type = "string",
         name = "signingProfileName",
         target_id = prelude.String.id,
      }),
      destination = schema.new({
         id = id.from(_N, "StartSigningJobParameter", "destination"),
         type = "structure",
         name = "destination",
         target_id = id.from(_N, "Destination"),
         target = M.Destination,
      }),
   },
})

M.CodeSigning = schema.new({
   id = id.from(_N, "CodeSigning"),
   type = "structure",
   members = {
      awsSignerJobId = schema.new({
         id = id.from(_N, "CodeSigning", "awsSignerJobId"),
         type = "string",
         name = "awsSignerJobId",
         target_id = prelude.String.id,
      }),
      startSigningJobParameter = schema.new({
         id = id.from(_N, "CodeSigning", "startSigningJobParameter"),
         type = "structure",
         name = "startSigningJobParameter",
         target_id = id.from(_N, "StartSigningJobParameter"),
         target = M.StartSigningJobParameter,
      }),
      customCodeSigning = schema.new({
         id = id.from(_N, "CodeSigning", "customCodeSigning"),
         type = "structure",
         name = "customCodeSigning",
         target_id = id.from(_N, "CustomCodeSigning"),
         target = M.CustomCodeSigning,
      }),
   },
})

M.Stream = schema.new({
   id = id.from(_N, "Stream"),
   type = "structure",
   members = {
      streamId = schema.new({
         id = id.from(_N, "Stream", "streamId"),
         type = "string",
         name = "streamId",
         target_id = prelude.String.id,
      }),
      fileId = schema.new({
         id = id.from(_N, "Stream", "fileId"),
         type = "integer",
         name = "fileId",
         target_id = prelude.Integer.id,
      }),
   },
})

M.FileLocation = schema.new({
   id = id.from(_N, "FileLocation"),
   type = "structure",
   members = {
      stream = schema.new({
         id = id.from(_N, "FileLocation", "stream"),
         type = "structure",
         name = "stream",
         target_id = id.from(_N, "Stream"),
         target = M.Stream,
      }),
      s3Location = schema.new({
         id = id.from(_N, "FileLocation", "s3Location"),
         type = "structure",
         name = "s3Location",
         target_id = id.from(_N, "S3Location"),
         target = M.S3Location,
      }),
   },
})

M.OTAUpdateFile = schema.new({
   id = id.from(_N, "OTAUpdateFile"),
   type = "structure",
   members = {
      fileName = schema.new({
         id = id.from(_N, "OTAUpdateFile", "fileName"),
         type = "string",
         name = "fileName",
         target_id = prelude.String.id,
      }),
      fileType = schema.new({
         id = id.from(_N, "OTAUpdateFile", "fileType"),
         type = "integer",
         name = "fileType",
         target_id = prelude.Integer.id,
      }),
      fileVersion = schema.new({
         id = id.from(_N, "OTAUpdateFile", "fileVersion"),
         type = "string",
         name = "fileVersion",
         target_id = prelude.String.id,
      }),
      fileLocation = schema.new({
         id = id.from(_N, "OTAUpdateFile", "fileLocation"),
         type = "structure",
         name = "fileLocation",
         target_id = id.from(_N, "FileLocation"),
         target = M.FileLocation,
      }),
      codeSigning = schema.new({
         id = id.from(_N, "OTAUpdateFile", "codeSigning"),
         type = "structure",
         name = "codeSigning",
         target_id = id.from(_N, "CodeSigning"),
         target = M.CodeSigning,
      }),
      attributes = schema.new({
         id = id.from(_N, "OTAUpdateFile", "attributes"),
         type = "map",
         name = "attributes",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.CreateOTAUpdateInput = schema.new({
   id = id.from(_N, "CreateOTAUpdateRequest"),
   type = "structure",
   members = {
      otaUpdateId = schema.new({
         id = id.from(_N, "CreateOTAUpdateInput", "otaUpdateId"),
         type = "string",
         name = "otaUpdateId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      description = schema.new({
         id = id.from(_N, "CreateOTAUpdateInput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      targets = schema.new({
         id = id.from(_N, "CreateOTAUpdateInput", "targets"),
         type = "list",
         name = "targets",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      protocols = schema.new({
         id = id.from(_N, "CreateOTAUpdateInput", "protocols"),
         type = "list",
         name = "protocols",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      targetSelection = schema.new({
         id = id.from(_N, "CreateOTAUpdateInput", "targetSelection"),
         type = "string",
         name = "targetSelection",
         target_id = prelude.String.id,
      }),
      awsJobExecutionsRolloutConfig = schema.new({
         id = id.from(_N, "CreateOTAUpdateInput", "awsJobExecutionsRolloutConfig"),
         type = "structure",
         name = "awsJobExecutionsRolloutConfig",
         target_id = id.from(_N, "AwsJobExecutionsRolloutConfig"),
         target = M.AwsJobExecutionsRolloutConfig,
      }),
      awsJobPresignedUrlConfig = schema.new({
         id = id.from(_N, "CreateOTAUpdateInput", "awsJobPresignedUrlConfig"),
         type = "structure",
         name = "awsJobPresignedUrlConfig",
         target_id = id.from(_N, "AwsJobPresignedUrlConfig"),
         target = M.AwsJobPresignedUrlConfig,
      }),
      awsJobAbortConfig = schema.new({
         id = id.from(_N, "CreateOTAUpdateInput", "awsJobAbortConfig"),
         type = "structure",
         name = "awsJobAbortConfig",
         target_id = id.from(_N, "AwsJobAbortConfig"),
         target = M.AwsJobAbortConfig,
      }),
      awsJobTimeoutConfig = schema.new({
         id = id.from(_N, "CreateOTAUpdateInput", "awsJobTimeoutConfig"),
         type = "structure",
         name = "awsJobTimeoutConfig",
         target_id = id.from(_N, "AwsJobTimeoutConfig"),
         target = M.AwsJobTimeoutConfig,
      }),
      files = schema.new({
         id = id.from(_N, "CreateOTAUpdateInput", "files"),
         type = "list",
         name = "files",
         target_id = prelude.Document.id,
         list_member = M.OTAUpdateFile,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      roleArn = schema.new({
         id = id.from(_N, "CreateOTAUpdateInput", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      additionalParameters = schema.new({
         id = id.from(_N, "CreateOTAUpdateInput", "additionalParameters"),
         type = "map",
         name = "additionalParameters",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      tags = schema.new({
         id = id.from(_N, "CreateOTAUpdateInput", "tags"),
         type = "list",
         name = "tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
   },
})

M.CreateOTAUpdateOutput = schema.new({
   id = id.from(_N, "CreateOTAUpdateResponse"),
   type = "structure",
   members = {
      otaUpdateId = schema.new({
         id = id.from(_N, "CreateOTAUpdateOutput", "otaUpdateId"),
         type = "string",
         name = "otaUpdateId",
         target_id = prelude.String.id,
      }),
      awsIotJobId = schema.new({
         id = id.from(_N, "CreateOTAUpdateOutput", "awsIotJobId"),
         type = "string",
         name = "awsIotJobId",
         target_id = prelude.String.id,
      }),
      otaUpdateArn = schema.new({
         id = id.from(_N, "CreateOTAUpdateOutput", "otaUpdateArn"),
         type = "string",
         name = "otaUpdateArn",
         target_id = prelude.String.id,
      }),
      awsIotJobArn = schema.new({
         id = id.from(_N, "CreateOTAUpdateOutput", "awsIotJobArn"),
         type = "string",
         name = "awsIotJobArn",
         target_id = prelude.String.id,
      }),
      otaUpdateStatus = schema.new({
         id = id.from(_N, "CreateOTAUpdateOutput", "otaUpdateStatus"),
         type = "string",
         name = "otaUpdateStatus",
         target_id = prelude.String.id,
      }),
   },
})

M.CreatePackageInput = schema.new({
   id = id.from(_N, "CreatePackageRequest"),
   type = "structure",
   members = {
      packageName = schema.new({
         id = id.from(_N, "CreatePackageInput", "packageName"),
         type = "string",
         name = "packageName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      description = schema.new({
         id = id.from(_N, "CreatePackageInput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      tags = schema.new({
         id = id.from(_N, "CreatePackageInput", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      clientToken = schema.new({
         id = id.from(_N, "CreatePackageInput", "clientToken"),
         type = "string",
         name = "clientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "clientToken" },
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
   },
})

M.CreatePackageOutput = schema.new({
   id = id.from(_N, "CreatePackageResponse"),
   type = "structure",
   members = {
      packageName = schema.new({
         id = id.from(_N, "CreatePackageOutput", "packageName"),
         type = "string",
         name = "packageName",
         target_id = prelude.String.id,
      }),
      packageArn = schema.new({
         id = id.from(_N, "CreatePackageOutput", "packageArn"),
         type = "string",
         name = "packageArn",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "CreatePackageOutput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
   },
})

M.PackageVersionArtifact = schema.new({
   id = id.from(_N, "PackageVersionArtifact"),
   type = "structure",
   members = {
      s3Location = schema.new({
         id = id.from(_N, "PackageVersionArtifact", "s3Location"),
         type = "structure",
         name = "s3Location",
         target_id = id.from(_N, "S3Location"),
         target = M.S3Location,
      }),
   },
})

M.CreatePackageVersionInput = schema.new({
   id = id.from(_N, "CreatePackageVersionRequest"),
   type = "structure",
   members = {
      packageName = schema.new({
         id = id.from(_N, "CreatePackageVersionInput", "packageName"),
         type = "string",
         name = "packageName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      versionName = schema.new({
         id = id.from(_N, "CreatePackageVersionInput", "versionName"),
         type = "string",
         name = "versionName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      description = schema.new({
         id = id.from(_N, "CreatePackageVersionInput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      attributes = schema.new({
         id = id.from(_N, "CreatePackageVersionInput", "attributes"),
         type = "map",
         name = "attributes",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      artifact = schema.new({
         id = id.from(_N, "CreatePackageVersionInput", "artifact"),
         type = "structure",
         name = "artifact",
         target_id = id.from(_N, "PackageVersionArtifact"),
         target = M.PackageVersionArtifact,
      }),
      recipe = schema.new({
         id = id.from(_N, "CreatePackageVersionInput", "recipe"),
         type = "string",
         name = "recipe",
         target_id = prelude.String.id,
      }),
      tags = schema.new({
         id = id.from(_N, "CreatePackageVersionInput", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      clientToken = schema.new({
         id = id.from(_N, "CreatePackageVersionInput", "clientToken"),
         type = "string",
         name = "clientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "clientToken" },
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
   },
})

M.CreatePackageVersionOutput = schema.new({
   id = id.from(_N, "CreatePackageVersionResponse"),
   type = "structure",
   members = {
      packageVersionArn = schema.new({
         id = id.from(_N, "CreatePackageVersionOutput", "packageVersionArn"),
         type = "string",
         name = "packageVersionArn",
         target_id = prelude.String.id,
      }),
      packageName = schema.new({
         id = id.from(_N, "CreatePackageVersionOutput", "packageName"),
         type = "string",
         name = "packageName",
         target_id = prelude.String.id,
      }),
      versionName = schema.new({
         id = id.from(_N, "CreatePackageVersionOutput", "versionName"),
         type = "string",
         name = "versionName",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "CreatePackageVersionOutput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      attributes = schema.new({
         id = id.from(_N, "CreatePackageVersionOutput", "attributes"),
         type = "map",
         name = "attributes",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      status = schema.new({
         id = id.from(_N, "CreatePackageVersionOutput", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
      errorReason = schema.new({
         id = id.from(_N, "CreatePackageVersionOutput", "errorReason"),
         type = "string",
         name = "errorReason",
         target_id = prelude.String.id,
      }),
   },
})

M.CreatePolicyInput = schema.new({
   id = id.from(_N, "CreatePolicyRequest"),
   type = "structure",
   members = {
      policyName = schema.new({
         id = id.from(_N, "CreatePolicyInput", "policyName"),
         type = "string",
         name = "policyName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      policyDocument = schema.new({
         id = id.from(_N, "CreatePolicyInput", "policyDocument"),
         type = "string",
         name = "policyDocument",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      tags = schema.new({
         id = id.from(_N, "CreatePolicyInput", "tags"),
         type = "list",
         name = "tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
   },
})

M.CreatePolicyOutput = schema.new({
   id = id.from(_N, "CreatePolicyResponse"),
   type = "structure",
   members = {
      policyName = schema.new({
         id = id.from(_N, "CreatePolicyOutput", "policyName"),
         type = "string",
         name = "policyName",
         target_id = prelude.String.id,
      }),
      policyArn = schema.new({
         id = id.from(_N, "CreatePolicyOutput", "policyArn"),
         type = "string",
         name = "policyArn",
         target_id = prelude.String.id,
      }),
      policyDocument = schema.new({
         id = id.from(_N, "CreatePolicyOutput", "policyDocument"),
         type = "string",
         name = "policyDocument",
         target_id = prelude.String.id,
      }),
      policyVersionId = schema.new({
         id = id.from(_N, "CreatePolicyOutput", "policyVersionId"),
         type = "string",
         name = "policyVersionId",
         target_id = prelude.String.id,
      }),
   },
})

M.MalformedPolicyException = schema.new({
   id = id.from(_N, "MalformedPolicyException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "MalformedPolicyException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.CreatePolicyVersionInput = schema.new({
   id = id.from(_N, "CreatePolicyVersionRequest"),
   type = "structure",
   members = {
      policyName = schema.new({
         id = id.from(_N, "CreatePolicyVersionInput", "policyName"),
         type = "string",
         name = "policyName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      policyDocument = schema.new({
         id = id.from(_N, "CreatePolicyVersionInput", "policyDocument"),
         type = "string",
         name = "policyDocument",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      setAsDefault = schema.new({
         id = id.from(_N, "CreatePolicyVersionInput", "setAsDefault"),
         type = "boolean",
         name = "setAsDefault",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
            [traits.HTTP_QUERY] = { name = "setAsDefault" },
         },
      }),
   },
})

M.CreatePolicyVersionOutput = schema.new({
   id = id.from(_N, "CreatePolicyVersionResponse"),
   type = "structure",
   members = {
      policyArn = schema.new({
         id = id.from(_N, "CreatePolicyVersionOutput", "policyArn"),
         type = "string",
         name = "policyArn",
         target_id = prelude.String.id,
      }),
      policyDocument = schema.new({
         id = id.from(_N, "CreatePolicyVersionOutput", "policyDocument"),
         type = "string",
         name = "policyDocument",
         target_id = prelude.String.id,
      }),
      policyVersionId = schema.new({
         id = id.from(_N, "CreatePolicyVersionOutput", "policyVersionId"),
         type = "string",
         name = "policyVersionId",
         target_id = prelude.String.id,
      }),
      isDefaultVersion = schema.new({
         id = id.from(_N, "CreatePolicyVersionOutput", "isDefaultVersion"),
         type = "boolean",
         name = "isDefaultVersion",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
   },
})

M.VersionsLimitExceededException = schema.new({
   id = id.from(_N, "VersionsLimitExceededException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "VersionsLimitExceededException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateProvisioningClaimInput = schema.new({
   id = id.from(_N, "CreateProvisioningClaimRequest"),
   type = "structure",
   members = {
      templateName = schema.new({
         id = id.from(_N, "CreateProvisioningClaimInput", "templateName"),
         type = "string",
         name = "templateName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.CreateProvisioningClaimOutput = schema.new({
   id = id.from(_N, "CreateProvisioningClaimResponse"),
   type = "structure",
   members = {
      certificateId = schema.new({
         id = id.from(_N, "CreateProvisioningClaimOutput", "certificateId"),
         type = "string",
         name = "certificateId",
         target_id = prelude.String.id,
      }),
      certificatePem = schema.new({
         id = id.from(_N, "CreateProvisioningClaimOutput", "certificatePem"),
         type = "string",
         name = "certificatePem",
         target_id = prelude.String.id,
      }),
      keyPair = schema.new({
         id = id.from(_N, "CreateProvisioningClaimOutput", "keyPair"),
         type = "structure",
         name = "keyPair",
         target_id = id.from(_N, "KeyPair"),
         target = M.KeyPair,
      }),
      expiration = schema.new({
         id = id.from(_N, "CreateProvisioningClaimOutput", "expiration"),
         type = "timestamp",
         name = "expiration",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.ProvisioningHook = schema.new({
   id = id.from(_N, "ProvisioningHook"),
   type = "structure",
   members = {
      payloadVersion = schema.new({
         id = id.from(_N, "ProvisioningHook", "payloadVersion"),
         type = "string",
         name = "payloadVersion",
         target_id = prelude.String.id,
      }),
      targetArn = schema.new({
         id = id.from(_N, "ProvisioningHook", "targetArn"),
         type = "string",
         name = "targetArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CreateProvisioningTemplateInput = schema.new({
   id = id.from(_N, "CreateProvisioningTemplateRequest"),
   type = "structure",
   members = {
      templateName = schema.new({
         id = id.from(_N, "CreateProvisioningTemplateInput", "templateName"),
         type = "string",
         name = "templateName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      description = schema.new({
         id = id.from(_N, "CreateProvisioningTemplateInput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      templateBody = schema.new({
         id = id.from(_N, "CreateProvisioningTemplateInput", "templateBody"),
         type = "string",
         name = "templateBody",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      enabled = schema.new({
         id = id.from(_N, "CreateProvisioningTemplateInput", "enabled"),
         type = "boolean",
         name = "enabled",
         target_id = prelude.Boolean.id,
      }),
      provisioningRoleArn = schema.new({
         id = id.from(_N, "CreateProvisioningTemplateInput", "provisioningRoleArn"),
         type = "string",
         name = "provisioningRoleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      preProvisioningHook = schema.new({
         id = id.from(_N, "CreateProvisioningTemplateInput", "preProvisioningHook"),
         type = "structure",
         name = "preProvisioningHook",
         target_id = id.from(_N, "ProvisioningHook"),
         target = M.ProvisioningHook,
      }),
      tags = schema.new({
         id = id.from(_N, "CreateProvisioningTemplateInput", "tags"),
         type = "list",
         name = "tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
      type = schema.new({
         id = id.from(_N, "CreateProvisioningTemplateInput", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateProvisioningTemplateOutput = schema.new({
   id = id.from(_N, "CreateProvisioningTemplateResponse"),
   type = "structure",
   members = {
      templateArn = schema.new({
         id = id.from(_N, "CreateProvisioningTemplateOutput", "templateArn"),
         type = "string",
         name = "templateArn",
         target_id = prelude.String.id,
      }),
      templateName = schema.new({
         id = id.from(_N, "CreateProvisioningTemplateOutput", "templateName"),
         type = "string",
         name = "templateName",
         target_id = prelude.String.id,
      }),
      defaultVersionId = schema.new({
         id = id.from(_N, "CreateProvisioningTemplateOutput", "defaultVersionId"),
         type = "integer",
         name = "defaultVersionId",
         target_id = prelude.Integer.id,
      }),
   },
})

M.CreateProvisioningTemplateVersionInput = schema.new({
   id = id.from(_N, "CreateProvisioningTemplateVersionRequest"),
   type = "structure",
   members = {
      templateName = schema.new({
         id = id.from(_N, "CreateProvisioningTemplateVersionInput", "templateName"),
         type = "string",
         name = "templateName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      templateBody = schema.new({
         id = id.from(_N, "CreateProvisioningTemplateVersionInput", "templateBody"),
         type = "string",
         name = "templateBody",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      setAsDefault = schema.new({
         id = id.from(_N, "CreateProvisioningTemplateVersionInput", "setAsDefault"),
         type = "boolean",
         name = "setAsDefault",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
            [traits.HTTP_QUERY] = { name = "setAsDefault" },
         },
      }),
   },
})

M.CreateProvisioningTemplateVersionOutput = schema.new({
   id = id.from(_N, "CreateProvisioningTemplateVersionResponse"),
   type = "structure",
   members = {
      templateArn = schema.new({
         id = id.from(_N, "CreateProvisioningTemplateVersionOutput", "templateArn"),
         type = "string",
         name = "templateArn",
         target_id = prelude.String.id,
      }),
      templateName = schema.new({
         id = id.from(_N, "CreateProvisioningTemplateVersionOutput", "templateName"),
         type = "string",
         name = "templateName",
         target_id = prelude.String.id,
      }),
      versionId = schema.new({
         id = id.from(_N, "CreateProvisioningTemplateVersionOutput", "versionId"),
         type = "integer",
         name = "versionId",
         target_id = prelude.Integer.id,
      }),
      isDefaultVersion = schema.new({
         id = id.from(_N, "CreateProvisioningTemplateVersionOutput", "isDefaultVersion"),
         type = "boolean",
         name = "isDefaultVersion",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
   },
})

M.CreateRoleAliasInput = schema.new({
   id = id.from(_N, "CreateRoleAliasRequest"),
   type = "structure",
   members = {
      roleAlias = schema.new({
         id = id.from(_N, "CreateRoleAliasInput", "roleAlias"),
         type = "string",
         name = "roleAlias",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      roleArn = schema.new({
         id = id.from(_N, "CreateRoleAliasInput", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      credentialDurationSeconds = schema.new({
         id = id.from(_N, "CreateRoleAliasInput", "credentialDurationSeconds"),
         type = "integer",
         name = "credentialDurationSeconds",
         target_id = prelude.Integer.id,
      }),
      tags = schema.new({
         id = id.from(_N, "CreateRoleAliasInput", "tags"),
         type = "list",
         name = "tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
   },
})

M.CreateRoleAliasOutput = schema.new({
   id = id.from(_N, "CreateRoleAliasResponse"),
   type = "structure",
   members = {
      roleAlias = schema.new({
         id = id.from(_N, "CreateRoleAliasOutput", "roleAlias"),
         type = "string",
         name = "roleAlias",
         target_id = prelude.String.id,
      }),
      roleAliasArn = schema.new({
         id = id.from(_N, "CreateRoleAliasOutput", "roleAliasArn"),
         type = "string",
         name = "roleAliasArn",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateScheduledAuditInput = schema.new({
   id = id.from(_N, "CreateScheduledAuditRequest"),
   type = "structure",
   members = {
      frequency = schema.new({
         id = id.from(_N, "CreateScheduledAuditInput", "frequency"),
         type = "string",
         name = "frequency",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      dayOfMonth = schema.new({
         id = id.from(_N, "CreateScheduledAuditInput", "dayOfMonth"),
         type = "string",
         name = "dayOfMonth",
         target_id = prelude.String.id,
      }),
      dayOfWeek = schema.new({
         id = id.from(_N, "CreateScheduledAuditInput", "dayOfWeek"),
         type = "string",
         name = "dayOfWeek",
         target_id = prelude.String.id,
      }),
      targetCheckNames = schema.new({
         id = id.from(_N, "CreateScheduledAuditInput", "targetCheckNames"),
         type = "list",
         name = "targetCheckNames",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      scheduledAuditName = schema.new({
         id = id.from(_N, "CreateScheduledAuditInput", "scheduledAuditName"),
         type = "string",
         name = "scheduledAuditName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      tags = schema.new({
         id = id.from(_N, "CreateScheduledAuditInput", "tags"),
         type = "list",
         name = "tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
   },
})

M.CreateScheduledAuditOutput = schema.new({
   id = id.from(_N, "CreateScheduledAuditResponse"),
   type = "structure",
   members = {
      scheduledAuditArn = schema.new({
         id = id.from(_N, "CreateScheduledAuditOutput", "scheduledAuditArn"),
         type = "string",
         name = "scheduledAuditArn",
         target_id = prelude.String.id,
      }),
   },
})

M.MetricsExportConfig = schema.new({
   id = id.from(_N, "MetricsExportConfig"),
   type = "structure",
   members = {
      mqttTopic = schema.new({
         id = id.from(_N, "MetricsExportConfig", "mqttTopic"),
         type = "string",
         name = "mqttTopic",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      roleArn = schema.new({
         id = id.from(_N, "MetricsExportConfig", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CreateSecurityProfileInput = schema.new({
   id = id.from(_N, "CreateSecurityProfileRequest"),
   type = "structure",
   members = {
      securityProfileName = schema.new({
         id = id.from(_N, "CreateSecurityProfileInput", "securityProfileName"),
         type = "string",
         name = "securityProfileName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      securityProfileDescription = schema.new({
         id = id.from(_N, "CreateSecurityProfileInput", "securityProfileDescription"),
         type = "string",
         name = "securityProfileDescription",
         target_id = prelude.String.id,
      }),
      behaviors = schema.new({
         id = id.from(_N, "CreateSecurityProfileInput", "behaviors"),
         type = "list",
         name = "behaviors",
         target_id = prelude.Document.id,
         list_member = M.Behavior,
      }),
      alertTargets = schema.new({
         id = id.from(_N, "CreateSecurityProfileInput", "alertTargets"),
         type = "map",
         name = "alertTargets",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.AlertTarget,
      }),
      additionalMetricsToRetain = schema.new({
         id = id.from(_N, "CreateSecurityProfileInput", "additionalMetricsToRetain"),
         type = "list",
         name = "additionalMetricsToRetain",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      additionalMetricsToRetainV2 = schema.new({
         id = id.from(_N, "CreateSecurityProfileInput", "additionalMetricsToRetainV2"),
         type = "list",
         name = "additionalMetricsToRetainV2",
         target_id = prelude.Document.id,
         list_member = M.MetricToRetain,
      }),
      tags = schema.new({
         id = id.from(_N, "CreateSecurityProfileInput", "tags"),
         type = "list",
         name = "tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
      metricsExportConfig = schema.new({
         id = id.from(_N, "CreateSecurityProfileInput", "metricsExportConfig"),
         type = "structure",
         name = "metricsExportConfig",
         target_id = id.from(_N, "MetricsExportConfig"),
         target = M.MetricsExportConfig,
      }),
   },
})

M.CreateSecurityProfileOutput = schema.new({
   id = id.from(_N, "CreateSecurityProfileResponse"),
   type = "structure",
   members = {
      securityProfileName = schema.new({
         id = id.from(_N, "CreateSecurityProfileOutput", "securityProfileName"),
         type = "string",
         name = "securityProfileName",
         target_id = prelude.String.id,
      }),
      securityProfileArn = schema.new({
         id = id.from(_N, "CreateSecurityProfileOutput", "securityProfileArn"),
         type = "string",
         name = "securityProfileArn",
         target_id = prelude.String.id,
      }),
   },
})

M.StreamFile = schema.new({
   id = id.from(_N, "StreamFile"),
   type = "structure",
   members = {
      fileId = schema.new({
         id = id.from(_N, "StreamFile", "fileId"),
         type = "integer",
         name = "fileId",
         target_id = prelude.Integer.id,
      }),
      s3Location = schema.new({
         id = id.from(_N, "StreamFile", "s3Location"),
         type = "structure",
         name = "s3Location",
         target_id = id.from(_N, "S3Location"),
         target = M.S3Location,
      }),
   },
})

M.CreateStreamInput = schema.new({
   id = id.from(_N, "CreateStreamRequest"),
   type = "structure",
   members = {
      streamId = schema.new({
         id = id.from(_N, "CreateStreamInput", "streamId"),
         type = "string",
         name = "streamId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      description = schema.new({
         id = id.from(_N, "CreateStreamInput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      files = schema.new({
         id = id.from(_N, "CreateStreamInput", "files"),
         type = "list",
         name = "files",
         target_id = prelude.Document.id,
         list_member = M.StreamFile,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      roleArn = schema.new({
         id = id.from(_N, "CreateStreamInput", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      tags = schema.new({
         id = id.from(_N, "CreateStreamInput", "tags"),
         type = "list",
         name = "tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
   },
})

M.CreateStreamOutput = schema.new({
   id = id.from(_N, "CreateStreamResponse"),
   type = "structure",
   members = {
      streamId = schema.new({
         id = id.from(_N, "CreateStreamOutput", "streamId"),
         type = "string",
         name = "streamId",
         target_id = prelude.String.id,
      }),
      streamArn = schema.new({
         id = id.from(_N, "CreateStreamOutput", "streamArn"),
         type = "string",
         name = "streamArn",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "CreateStreamOutput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      streamVersion = schema.new({
         id = id.from(_N, "CreateStreamOutput", "streamVersion"),
         type = "integer",
         name = "streamVersion",
         target_id = prelude.Integer.id,
      }),
   },
})

M.CreateThingInput = schema.new({
   id = id.from(_N, "CreateThingRequest"),
   type = "structure",
   members = {
      thingName = schema.new({
         id = id.from(_N, "CreateThingInput", "thingName"),
         type = "string",
         name = "thingName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      thingTypeName = schema.new({
         id = id.from(_N, "CreateThingInput", "thingTypeName"),
         type = "string",
         name = "thingTypeName",
         target_id = prelude.String.id,
      }),
      attributePayload = schema.new({
         id = id.from(_N, "CreateThingInput", "attributePayload"),
         type = "structure",
         name = "attributePayload",
         target_id = id.from(_N, "AttributePayload"),
         target = M.AttributePayload,
      }),
      billingGroupName = schema.new({
         id = id.from(_N, "CreateThingInput", "billingGroupName"),
         type = "string",
         name = "billingGroupName",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateThingOutput = schema.new({
   id = id.from(_N, "CreateThingResponse"),
   type = "structure",
   members = {
      thingName = schema.new({
         id = id.from(_N, "CreateThingOutput", "thingName"),
         type = "string",
         name = "thingName",
         target_id = prelude.String.id,
      }),
      thingArn = schema.new({
         id = id.from(_N, "CreateThingOutput", "thingArn"),
         type = "string",
         name = "thingArn",
         target_id = prelude.String.id,
      }),
      thingId = schema.new({
         id = id.from(_N, "CreateThingOutput", "thingId"),
         type = "string",
         name = "thingId",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateThingGroupInput = schema.new({
   id = id.from(_N, "CreateThingGroupRequest"),
   type = "structure",
   members = {
      thingGroupName = schema.new({
         id = id.from(_N, "CreateThingGroupInput", "thingGroupName"),
         type = "string",
         name = "thingGroupName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      parentGroupName = schema.new({
         id = id.from(_N, "CreateThingGroupInput", "parentGroupName"),
         type = "string",
         name = "parentGroupName",
         target_id = prelude.String.id,
      }),
      thingGroupProperties = schema.new({
         id = id.from(_N, "CreateThingGroupInput", "thingGroupProperties"),
         type = "structure",
         name = "thingGroupProperties",
         target_id = id.from(_N, "ThingGroupProperties"),
         target = M.ThingGroupProperties,
      }),
      tags = schema.new({
         id = id.from(_N, "CreateThingGroupInput", "tags"),
         type = "list",
         name = "tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
   },
})

M.CreateThingGroupOutput = schema.new({
   id = id.from(_N, "CreateThingGroupResponse"),
   type = "structure",
   members = {
      thingGroupName = schema.new({
         id = id.from(_N, "CreateThingGroupOutput", "thingGroupName"),
         type = "string",
         name = "thingGroupName",
         target_id = prelude.String.id,
      }),
      thingGroupArn = schema.new({
         id = id.from(_N, "CreateThingGroupOutput", "thingGroupArn"),
         type = "string",
         name = "thingGroupArn",
         target_id = prelude.String.id,
      }),
      thingGroupId = schema.new({
         id = id.from(_N, "CreateThingGroupOutput", "thingGroupId"),
         type = "string",
         name = "thingGroupId",
         target_id = prelude.String.id,
      }),
   },
})

M.PropagatingAttribute = schema.new({
   id = id.from(_N, "PropagatingAttribute"),
   type = "structure",
   members = {
      userPropertyKey = schema.new({
         id = id.from(_N, "PropagatingAttribute", "userPropertyKey"),
         type = "string",
         name = "userPropertyKey",
         target_id = prelude.String.id,
      }),
      thingAttribute = schema.new({
         id = id.from(_N, "PropagatingAttribute", "thingAttribute"),
         type = "string",
         name = "thingAttribute",
         target_id = prelude.String.id,
      }),
      connectionAttribute = schema.new({
         id = id.from(_N, "PropagatingAttribute", "connectionAttribute"),
         type = "string",
         name = "connectionAttribute",
         target_id = prelude.String.id,
      }),
   },
})

M.Mqtt5Configuration = schema.new({
   id = id.from(_N, "Mqtt5Configuration"),
   type = "structure",
   members = {
      propagatingAttributes = schema.new({
         id = id.from(_N, "Mqtt5Configuration", "propagatingAttributes"),
         type = "list",
         name = "propagatingAttributes",
         target_id = prelude.Document.id,
         list_member = M.PropagatingAttribute,
      }),
   },
})

M.ThingTypeProperties = schema.new({
   id = id.from(_N, "ThingTypeProperties"),
   type = "structure",
   members = {
      thingTypeDescription = schema.new({
         id = id.from(_N, "ThingTypeProperties", "thingTypeDescription"),
         type = "string",
         name = "thingTypeDescription",
         target_id = prelude.String.id,
      }),
      searchableAttributes = schema.new({
         id = id.from(_N, "ThingTypeProperties", "searchableAttributes"),
         type = "list",
         name = "searchableAttributes",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      mqtt5Configuration = schema.new({
         id = id.from(_N, "ThingTypeProperties", "mqtt5Configuration"),
         type = "structure",
         name = "mqtt5Configuration",
         target_id = id.from(_N, "Mqtt5Configuration"),
         target = M.Mqtt5Configuration,
      }),
   },
})

M.CreateThingTypeInput = schema.new({
   id = id.from(_N, "CreateThingTypeRequest"),
   type = "structure",
   members = {
      thingTypeName = schema.new({
         id = id.from(_N, "CreateThingTypeInput", "thingTypeName"),
         type = "string",
         name = "thingTypeName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      thingTypeProperties = schema.new({
         id = id.from(_N, "CreateThingTypeInput", "thingTypeProperties"),
         type = "structure",
         name = "thingTypeProperties",
         target_id = id.from(_N, "ThingTypeProperties"),
         target = M.ThingTypeProperties,
      }),
      tags = schema.new({
         id = id.from(_N, "CreateThingTypeInput", "tags"),
         type = "list",
         name = "tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
   },
})

M.CreateThingTypeOutput = schema.new({
   id = id.from(_N, "CreateThingTypeResponse"),
   type = "structure",
   members = {
      thingTypeName = schema.new({
         id = id.from(_N, "CreateThingTypeOutput", "thingTypeName"),
         type = "string",
         name = "thingTypeName",
         target_id = prelude.String.id,
      }),
      thingTypeArn = schema.new({
         id = id.from(_N, "CreateThingTypeOutput", "thingTypeArn"),
         type = "string",
         name = "thingTypeArn",
         target_id = prelude.String.id,
      }),
      thingTypeId = schema.new({
         id = id.from(_N, "CreateThingTypeOutput", "thingTypeId"),
         type = "string",
         name = "thingTypeId",
         target_id = prelude.String.id,
      }),
   },
})

M.TopicRulePayload = schema.new({
   id = id.from(_N, "TopicRulePayload"),
   type = "structure",
   members = {
      sql = schema.new({
         id = id.from(_N, "TopicRulePayload", "sql"),
         type = "string",
         name = "sql",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      description = schema.new({
         id = id.from(_N, "TopicRulePayload", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      actions = schema.new({
         id = id.from(_N, "TopicRulePayload", "actions"),
         type = "list",
         name = "actions",
         target_id = prelude.Document.id,
         list_member = M.Action,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ruleDisabled = schema.new({
         id = id.from(_N, "TopicRulePayload", "ruleDisabled"),
         type = "boolean",
         name = "ruleDisabled",
         target_id = prelude.Boolean.id,
      }),
      awsIotSqlVersion = schema.new({
         id = id.from(_N, "TopicRulePayload", "awsIotSqlVersion"),
         type = "string",
         name = "awsIotSqlVersion",
         target_id = prelude.String.id,
      }),
      errorAction = schema.new({
         id = id.from(_N, "TopicRulePayload", "errorAction"),
         type = "structure",
         name = "errorAction",
         target_id = id.from(_N, "Action"),
         target = M.Action,
      }),
   },
})

M.CreateTopicRuleInput = schema.new({
   id = id.from(_N, "CreateTopicRuleRequest"),
   type = "structure",
   members = {
      ruleName = schema.new({
         id = id.from(_N, "CreateTopicRuleInput", "ruleName"),
         type = "string",
         name = "ruleName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      topicRulePayload = schema.new({
         id = id.from(_N, "CreateTopicRuleInput", "topicRulePayload"),
         type = "structure",
         name = "topicRulePayload",
         target_id = id.from(_N, "TopicRulePayload"),
         target = M.TopicRulePayload,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
      tags = schema.new({
         id = id.from(_N, "CreateTopicRuleInput", "tags"),
         type = "string",
         name = "tags",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-tagging" },
         },
      }),
   },
})

M.CreateTopicRuleOutput = prelude.Unit

M.SqlParseException = schema.new({
   id = id.from(_N, "SqlParseException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "SqlParseException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.HttpUrlDestinationConfiguration = schema.new({
   id = id.from(_N, "HttpUrlDestinationConfiguration"),
   type = "structure",
   members = {
      confirmationUrl = schema.new({
         id = id.from(_N, "HttpUrlDestinationConfiguration", "confirmationUrl"),
         type = "string",
         name = "confirmationUrl",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.VpcDestinationConfiguration = schema.new({
   id = id.from(_N, "VpcDestinationConfiguration"),
   type = "structure",
   members = {
      subnetIds = schema.new({
         id = id.from(_N, "VpcDestinationConfiguration", "subnetIds"),
         type = "list",
         name = "subnetIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      securityGroups = schema.new({
         id = id.from(_N, "VpcDestinationConfiguration", "securityGroups"),
         type = "list",
         name = "securityGroups",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      vpcId = schema.new({
         id = id.from(_N, "VpcDestinationConfiguration", "vpcId"),
         type = "string",
         name = "vpcId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      roleArn = schema.new({
         id = id.from(_N, "VpcDestinationConfiguration", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.TopicRuleDestinationConfiguration = schema.new({
   id = id.from(_N, "TopicRuleDestinationConfiguration"),
   type = "structure",
   members = {
      httpUrlConfiguration = schema.new({
         id = id.from(_N, "TopicRuleDestinationConfiguration", "httpUrlConfiguration"),
         type = "structure",
         name = "httpUrlConfiguration",
         target_id = id.from(_N, "HttpUrlDestinationConfiguration"),
         target = M.HttpUrlDestinationConfiguration,
      }),
      vpcConfiguration = schema.new({
         id = id.from(_N, "TopicRuleDestinationConfiguration", "vpcConfiguration"),
         type = "structure",
         name = "vpcConfiguration",
         target_id = id.from(_N, "VpcDestinationConfiguration"),
         target = M.VpcDestinationConfiguration,
      }),
   },
})

M.CreateTopicRuleDestinationInput = schema.new({
   id = id.from(_N, "CreateTopicRuleDestinationRequest"),
   type = "structure",
   members = {
      destinationConfiguration = schema.new({
         id = id.from(_N, "CreateTopicRuleDestinationInput", "destinationConfiguration"),
         type = "structure",
         name = "destinationConfiguration",
         target_id = id.from(_N, "TopicRuleDestinationConfiguration"),
         target = M.TopicRuleDestinationConfiguration,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.HttpUrlDestinationProperties = schema.new({
   id = id.from(_N, "HttpUrlDestinationProperties"),
   type = "structure",
   members = {
      confirmationUrl = schema.new({
         id = id.from(_N, "HttpUrlDestinationProperties", "confirmationUrl"),
         type = "string",
         name = "confirmationUrl",
         target_id = prelude.String.id,
      }),
   },
})

M.VpcDestinationProperties = schema.new({
   id = id.from(_N, "VpcDestinationProperties"),
   type = "structure",
   members = {
      subnetIds = schema.new({
         id = id.from(_N, "VpcDestinationProperties", "subnetIds"),
         type = "list",
         name = "subnetIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      securityGroups = schema.new({
         id = id.from(_N, "VpcDestinationProperties", "securityGroups"),
         type = "list",
         name = "securityGroups",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      vpcId = schema.new({
         id = id.from(_N, "VpcDestinationProperties", "vpcId"),
         type = "string",
         name = "vpcId",
         target_id = prelude.String.id,
      }),
      roleArn = schema.new({
         id = id.from(_N, "VpcDestinationProperties", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
      }),
   },
})

M.TopicRuleDestination = schema.new({
   id = id.from(_N, "TopicRuleDestination"),
   type = "structure",
   members = {
      arn = schema.new({
         id = id.from(_N, "TopicRuleDestination", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
      }),
      status = schema.new({
         id = id.from(_N, "TopicRuleDestination", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
      createdAt = schema.new({
         id = id.from(_N, "TopicRuleDestination", "createdAt"),
         type = "timestamp",
         name = "createdAt",
         target_id = prelude.Timestamp.id,
      }),
      lastUpdatedAt = schema.new({
         id = id.from(_N, "TopicRuleDestination", "lastUpdatedAt"),
         type = "timestamp",
         name = "lastUpdatedAt",
         target_id = prelude.Timestamp.id,
      }),
      statusReason = schema.new({
         id = id.from(_N, "TopicRuleDestination", "statusReason"),
         type = "string",
         name = "statusReason",
         target_id = prelude.String.id,
      }),
      httpUrlProperties = schema.new({
         id = id.from(_N, "TopicRuleDestination", "httpUrlProperties"),
         type = "structure",
         name = "httpUrlProperties",
         target_id = id.from(_N, "HttpUrlDestinationProperties"),
         target = M.HttpUrlDestinationProperties,
      }),
      vpcProperties = schema.new({
         id = id.from(_N, "TopicRuleDestination", "vpcProperties"),
         type = "structure",
         name = "vpcProperties",
         target_id = id.from(_N, "VpcDestinationProperties"),
         target = M.VpcDestinationProperties,
      }),
   },
})

M.CreateTopicRuleDestinationOutput = schema.new({
   id = id.from(_N, "CreateTopicRuleDestinationResponse"),
   type = "structure",
   members = {
      topicRuleDestination = schema.new({
         id = id.from(_N, "CreateTopicRuleDestinationOutput", "topicRuleDestination"),
         type = "structure",
         name = "topicRuleDestination",
         target_id = id.from(_N, "TopicRuleDestination"),
         target = M.TopicRuleDestination,
      }),
   },
})

M.DeleteAccountAuditConfigurationInput = schema.new({
   id = id.from(_N, "DeleteAccountAuditConfigurationRequest"),
   type = "structure",
   members = {
      deleteScheduledAudits = schema.new({
         id = id.from(_N, "DeleteAccountAuditConfigurationInput", "deleteScheduledAudits"),
         type = "boolean",
         name = "deleteScheduledAudits",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
            [traits.HTTP_QUERY] = { name = "deleteScheduledAudits" },
         },
      }),
   },
})

M.DeleteAccountAuditConfigurationOutput = schema.new({
   id = id.from(_N, "DeleteAccountAuditConfigurationResponse"),
   type = "structure",
})

M.DeleteAuditSuppressionInput = schema.new({
   id = id.from(_N, "DeleteAuditSuppressionRequest"),
   type = "structure",
   members = {
      checkName = schema.new({
         id = id.from(_N, "DeleteAuditSuppressionInput", "checkName"),
         type = "string",
         name = "checkName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      resourceIdentifier = schema.new({
         id = id.from(_N, "DeleteAuditSuppressionInput", "resourceIdentifier"),
         type = "structure",
         name = "resourceIdentifier",
         target_id = id.from(_N, "ResourceIdentifier"),
         target = M.ResourceIdentifier,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteAuditSuppressionOutput = schema.new({
   id = id.from(_N, "DeleteAuditSuppressionResponse"),
   type = "structure",
})

M.DeleteAuthorizerInput = schema.new({
   id = id.from(_N, "DeleteAuthorizerRequest"),
   type = "structure",
   members = {
      authorizerName = schema.new({
         id = id.from(_N, "DeleteAuthorizerInput", "authorizerName"),
         type = "string",
         name = "authorizerName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteAuthorizerOutput = schema.new({
   id = id.from(_N, "DeleteAuthorizerResponse"),
   type = "structure",
})

M.DeleteConflictException = schema.new({
   id = id.from(_N, "DeleteConflictException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "DeleteConflictException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.DeleteBillingGroupInput = schema.new({
   id = id.from(_N, "DeleteBillingGroupRequest"),
   type = "structure",
   members = {
      billingGroupName = schema.new({
         id = id.from(_N, "DeleteBillingGroupInput", "billingGroupName"),
         type = "string",
         name = "billingGroupName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      expectedVersion = schema.new({
         id = id.from(_N, "DeleteBillingGroupInput", "expectedVersion"),
         type = "long",
         name = "expectedVersion",
         target_id = prelude.Long.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "expectedVersion" },
         },
      }),
   },
})

M.DeleteBillingGroupOutput = schema.new({
   id = id.from(_N, "DeleteBillingGroupResponse"),
   type = "structure",
})

M.CertificateStateException = schema.new({
   id = id.from(_N, "CertificateStateException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "CertificateStateException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.DeleteCACertificateInput = schema.new({
   id = id.from(_N, "DeleteCACertificateRequest"),
   type = "structure",
   members = {
      certificateId = schema.new({
         id = id.from(_N, "DeleteCACertificateInput", "certificateId"),
         type = "string",
         name = "certificateId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteCACertificateOutput = schema.new({
   id = id.from(_N, "DeleteCACertificateResponse"),
   type = "structure",
})

M.DeleteCertificateInput = schema.new({
   id = id.from(_N, "DeleteCertificateRequest"),
   type = "structure",
   members = {
      certificateId = schema.new({
         id = id.from(_N, "DeleteCertificateInput", "certificateId"),
         type = "string",
         name = "certificateId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      forceDelete = schema.new({
         id = id.from(_N, "DeleteCertificateInput", "forceDelete"),
         type = "boolean",
         name = "forceDelete",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
            [traits.HTTP_QUERY] = { name = "forceDelete" },
         },
      }),
   },
})

M.DeleteCertificateOutput = prelude.Unit

M.DeleteCertificateProviderInput = schema.new({
   id = id.from(_N, "DeleteCertificateProviderRequest"),
   type = "structure",
   members = {
      certificateProviderName = schema.new({
         id = id.from(_N, "DeleteCertificateProviderInput", "certificateProviderName"),
         type = "string",
         name = "certificateProviderName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteCertificateProviderOutput = schema.new({
   id = id.from(_N, "DeleteCertificateProviderResponse"),
   type = "structure",
})

M.DeleteCommandInput = schema.new({
   id = id.from(_N, "DeleteCommandRequest"),
   type = "structure",
   members = {
      commandId = schema.new({
         id = id.from(_N, "DeleteCommandInput", "commandId"),
         type = "string",
         name = "commandId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteCommandOutput = schema.new({
   id = id.from(_N, "DeleteCommandResponse"),
   type = "structure",
   members = {
      statusCode = schema.new({
         id = id.from(_N, "DeleteCommandOutput", "statusCode"),
         type = "integer",
         name = "statusCode",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
            [traits.HTTP_RESPONSE_CODE] = {},
         },
      }),
   },
})

M.DeleteCommandExecutionInput = schema.new({
   id = id.from(_N, "DeleteCommandExecutionRequest"),
   type = "structure",
   members = {
      executionId = schema.new({
         id = id.from(_N, "DeleteCommandExecutionInput", "executionId"),
         type = "string",
         name = "executionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      targetArn = schema.new({
         id = id.from(_N, "DeleteCommandExecutionInput", "targetArn"),
         type = "string",
         name = "targetArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "targetArn" },
         },
      }),
   },
})

M.DeleteCommandExecutionOutput = schema.new({
   id = id.from(_N, "DeleteCommandExecutionResponse"),
   type = "structure",
})

M.DeleteCustomMetricInput = schema.new({
   id = id.from(_N, "DeleteCustomMetricRequest"),
   type = "structure",
   members = {
      metricName = schema.new({
         id = id.from(_N, "DeleteCustomMetricInput", "metricName"),
         type = "string",
         name = "metricName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteCustomMetricOutput = schema.new({
   id = id.from(_N, "DeleteCustomMetricResponse"),
   type = "structure",
})

M.DeleteDimensionInput = schema.new({
   id = id.from(_N, "DeleteDimensionRequest"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "DeleteDimensionInput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteDimensionOutput = schema.new({
   id = id.from(_N, "DeleteDimensionResponse"),
   type = "structure",
})

M.DeleteDomainConfigurationInput = schema.new({
   id = id.from(_N, "DeleteDomainConfigurationRequest"),
   type = "structure",
   members = {
      domainConfigurationName = schema.new({
         id = id.from(_N, "DeleteDomainConfigurationInput", "domainConfigurationName"),
         type = "string",
         name = "domainConfigurationName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteDomainConfigurationOutput = schema.new({
   id = id.from(_N, "DeleteDomainConfigurationResponse"),
   type = "structure",
})

M.DeleteDynamicThingGroupInput = schema.new({
   id = id.from(_N, "DeleteDynamicThingGroupRequest"),
   type = "structure",
   members = {
      thingGroupName = schema.new({
         id = id.from(_N, "DeleteDynamicThingGroupInput", "thingGroupName"),
         type = "string",
         name = "thingGroupName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      expectedVersion = schema.new({
         id = id.from(_N, "DeleteDynamicThingGroupInput", "expectedVersion"),
         type = "long",
         name = "expectedVersion",
         target_id = prelude.Long.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "expectedVersion" },
         },
      }),
   },
})

M.DeleteDynamicThingGroupOutput = schema.new({
   id = id.from(_N, "DeleteDynamicThingGroupResponse"),
   type = "structure",
})

M.DeleteFleetMetricInput = schema.new({
   id = id.from(_N, "DeleteFleetMetricRequest"),
   type = "structure",
   members = {
      metricName = schema.new({
         id = id.from(_N, "DeleteFleetMetricInput", "metricName"),
         type = "string",
         name = "metricName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      expectedVersion = schema.new({
         id = id.from(_N, "DeleteFleetMetricInput", "expectedVersion"),
         type = "long",
         name = "expectedVersion",
         target_id = prelude.Long.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "expectedVersion" },
         },
      }),
   },
})

M.DeleteFleetMetricOutput = prelude.Unit

M.DeleteJobInput = schema.new({
   id = id.from(_N, "DeleteJobRequest"),
   type = "structure",
   members = {
      jobId = schema.new({
         id = id.from(_N, "DeleteJobInput", "jobId"),
         type = "string",
         name = "jobId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      force = schema.new({
         id = id.from(_N, "DeleteJobInput", "force"),
         type = "boolean",
         name = "force",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
            [traits.HTTP_QUERY] = { name = "force" },
         },
      }),
      namespaceId = schema.new({
         id = id.from(_N, "DeleteJobInput", "namespaceId"),
         type = "string",
         name = "namespaceId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "namespaceId" },
         },
      }),
   },
})

M.DeleteJobOutput = prelude.Unit

M.DeleteJobExecutionInput = schema.new({
   id = id.from(_N, "DeleteJobExecutionRequest"),
   type = "structure",
   members = {
      jobId = schema.new({
         id = id.from(_N, "DeleteJobExecutionInput", "jobId"),
         type = "string",
         name = "jobId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      thingName = schema.new({
         id = id.from(_N, "DeleteJobExecutionInput", "thingName"),
         type = "string",
         name = "thingName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      executionNumber = schema.new({
         id = id.from(_N, "DeleteJobExecutionInput", "executionNumber"),
         type = "long",
         name = "executionNumber",
         target_id = prelude.Long.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      force = schema.new({
         id = id.from(_N, "DeleteJobExecutionInput", "force"),
         type = "boolean",
         name = "force",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
            [traits.HTTP_QUERY] = { name = "force" },
         },
      }),
      namespaceId = schema.new({
         id = id.from(_N, "DeleteJobExecutionInput", "namespaceId"),
         type = "string",
         name = "namespaceId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "namespaceId" },
         },
      }),
   },
})

M.DeleteJobExecutionOutput = prelude.Unit

M.DeleteJobTemplateInput = schema.new({
   id = id.from(_N, "DeleteJobTemplateRequest"),
   type = "structure",
   members = {
      jobTemplateId = schema.new({
         id = id.from(_N, "DeleteJobTemplateInput", "jobTemplateId"),
         type = "string",
         name = "jobTemplateId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteJobTemplateOutput = prelude.Unit

M.DeleteMitigationActionInput = schema.new({
   id = id.from(_N, "DeleteMitigationActionRequest"),
   type = "structure",
   members = {
      actionName = schema.new({
         id = id.from(_N, "DeleteMitigationActionInput", "actionName"),
         type = "string",
         name = "actionName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteMitigationActionOutput = schema.new({
   id = id.from(_N, "DeleteMitigationActionResponse"),
   type = "structure",
})

M.DeleteOTAUpdateInput = schema.new({
   id = id.from(_N, "DeleteOTAUpdateRequest"),
   type = "structure",
   members = {
      otaUpdateId = schema.new({
         id = id.from(_N, "DeleteOTAUpdateInput", "otaUpdateId"),
         type = "string",
         name = "otaUpdateId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      deleteStream = schema.new({
         id = id.from(_N, "DeleteOTAUpdateInput", "deleteStream"),
         type = "boolean",
         name = "deleteStream",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
            [traits.HTTP_QUERY] = { name = "deleteStream" },
         },
      }),
      forceDeleteAWSJob = schema.new({
         id = id.from(_N, "DeleteOTAUpdateInput", "forceDeleteAWSJob"),
         type = "boolean",
         name = "forceDeleteAWSJob",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
            [traits.HTTP_QUERY] = { name = "forceDeleteAWSJob" },
         },
      }),
   },
})

M.DeleteOTAUpdateOutput = schema.new({
   id = id.from(_N, "DeleteOTAUpdateResponse"),
   type = "structure",
})

M.DeletePackageInput = schema.new({
   id = id.from(_N, "DeletePackageRequest"),
   type = "structure",
   members = {
      packageName = schema.new({
         id = id.from(_N, "DeletePackageInput", "packageName"),
         type = "string",
         name = "packageName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      clientToken = schema.new({
         id = id.from(_N, "DeletePackageInput", "clientToken"),
         type = "string",
         name = "clientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "clientToken" },
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
   },
})

M.DeletePackageOutput = schema.new({
   id = id.from(_N, "DeletePackageResponse"),
   type = "structure",
})

M.DeletePackageVersionInput = schema.new({
   id = id.from(_N, "DeletePackageVersionRequest"),
   type = "structure",
   members = {
      packageName = schema.new({
         id = id.from(_N, "DeletePackageVersionInput", "packageName"),
         type = "string",
         name = "packageName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      versionName = schema.new({
         id = id.from(_N, "DeletePackageVersionInput", "versionName"),
         type = "string",
         name = "versionName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      clientToken = schema.new({
         id = id.from(_N, "DeletePackageVersionInput", "clientToken"),
         type = "string",
         name = "clientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "clientToken" },
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
   },
})

M.DeletePackageVersionOutput = schema.new({
   id = id.from(_N, "DeletePackageVersionResponse"),
   type = "structure",
})

M.DeletePolicyInput = schema.new({
   id = id.from(_N, "DeletePolicyRequest"),
   type = "structure",
   members = {
      policyName = schema.new({
         id = id.from(_N, "DeletePolicyInput", "policyName"),
         type = "string",
         name = "policyName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeletePolicyOutput = prelude.Unit

M.DeletePolicyVersionInput = schema.new({
   id = id.from(_N, "DeletePolicyVersionRequest"),
   type = "structure",
   members = {
      policyName = schema.new({
         id = id.from(_N, "DeletePolicyVersionInput", "policyName"),
         type = "string",
         name = "policyName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      policyVersionId = schema.new({
         id = id.from(_N, "DeletePolicyVersionInput", "policyVersionId"),
         type = "string",
         name = "policyVersionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeletePolicyVersionOutput = prelude.Unit

M.DeleteProvisioningTemplateInput = schema.new({
   id = id.from(_N, "DeleteProvisioningTemplateRequest"),
   type = "structure",
   members = {
      templateName = schema.new({
         id = id.from(_N, "DeleteProvisioningTemplateInput", "templateName"),
         type = "string",
         name = "templateName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteProvisioningTemplateOutput = schema.new({
   id = id.from(_N, "DeleteProvisioningTemplateResponse"),
   type = "structure",
})

M.DeleteProvisioningTemplateVersionInput = schema.new({
   id = id.from(_N, "DeleteProvisioningTemplateVersionRequest"),
   type = "structure",
   members = {
      templateName = schema.new({
         id = id.from(_N, "DeleteProvisioningTemplateVersionInput", "templateName"),
         type = "string",
         name = "templateName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      versionId = schema.new({
         id = id.from(_N, "DeleteProvisioningTemplateVersionInput", "versionId"),
         type = "integer",
         name = "versionId",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteProvisioningTemplateVersionOutput = schema.new({
   id = id.from(_N, "DeleteProvisioningTemplateVersionResponse"),
   type = "structure",
})

M.DeleteRegistrationCodeInput = schema.new({
   id = id.from(_N, "DeleteRegistrationCodeRequest"),
   type = "structure",
})

M.DeleteRegistrationCodeOutput = schema.new({
   id = id.from(_N, "DeleteRegistrationCodeResponse"),
   type = "structure",
})

M.DeleteRoleAliasInput = schema.new({
   id = id.from(_N, "DeleteRoleAliasRequest"),
   type = "structure",
   members = {
      roleAlias = schema.new({
         id = id.from(_N, "DeleteRoleAliasInput", "roleAlias"),
         type = "string",
         name = "roleAlias",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteRoleAliasOutput = schema.new({
   id = id.from(_N, "DeleteRoleAliasResponse"),
   type = "structure",
})

M.DeleteScheduledAuditInput = schema.new({
   id = id.from(_N, "DeleteScheduledAuditRequest"),
   type = "structure",
   members = {
      scheduledAuditName = schema.new({
         id = id.from(_N, "DeleteScheduledAuditInput", "scheduledAuditName"),
         type = "string",
         name = "scheduledAuditName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteScheduledAuditOutput = schema.new({
   id = id.from(_N, "DeleteScheduledAuditResponse"),
   type = "structure",
})

M.DeleteSecurityProfileInput = schema.new({
   id = id.from(_N, "DeleteSecurityProfileRequest"),
   type = "structure",
   members = {
      securityProfileName = schema.new({
         id = id.from(_N, "DeleteSecurityProfileInput", "securityProfileName"),
         type = "string",
         name = "securityProfileName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      expectedVersion = schema.new({
         id = id.from(_N, "DeleteSecurityProfileInput", "expectedVersion"),
         type = "long",
         name = "expectedVersion",
         target_id = prelude.Long.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "expectedVersion" },
         },
      }),
   },
})

M.DeleteSecurityProfileOutput = schema.new({
   id = id.from(_N, "DeleteSecurityProfileResponse"),
   type = "structure",
})

M.DeleteStreamInput = schema.new({
   id = id.from(_N, "DeleteStreamRequest"),
   type = "structure",
   members = {
      streamId = schema.new({
         id = id.from(_N, "DeleteStreamInput", "streamId"),
         type = "string",
         name = "streamId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteStreamOutput = schema.new({
   id = id.from(_N, "DeleteStreamResponse"),
   type = "structure",
})

M.DeleteThingInput = schema.new({
   id = id.from(_N, "DeleteThingRequest"),
   type = "structure",
   members = {
      thingName = schema.new({
         id = id.from(_N, "DeleteThingInput", "thingName"),
         type = "string",
         name = "thingName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      expectedVersion = schema.new({
         id = id.from(_N, "DeleteThingInput", "expectedVersion"),
         type = "long",
         name = "expectedVersion",
         target_id = prelude.Long.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "expectedVersion" },
         },
      }),
   },
})

M.DeleteThingOutput = schema.new({
   id = id.from(_N, "DeleteThingResponse"),
   type = "structure",
})

M.DeleteThingGroupInput = schema.new({
   id = id.from(_N, "DeleteThingGroupRequest"),
   type = "structure",
   members = {
      thingGroupName = schema.new({
         id = id.from(_N, "DeleteThingGroupInput", "thingGroupName"),
         type = "string",
         name = "thingGroupName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      expectedVersion = schema.new({
         id = id.from(_N, "DeleteThingGroupInput", "expectedVersion"),
         type = "long",
         name = "expectedVersion",
         target_id = prelude.Long.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "expectedVersion" },
         },
      }),
   },
})

M.DeleteThingGroupOutput = schema.new({
   id = id.from(_N, "DeleteThingGroupResponse"),
   type = "structure",
})

M.DeleteThingTypeInput = schema.new({
   id = id.from(_N, "DeleteThingTypeRequest"),
   type = "structure",
   members = {
      thingTypeName = schema.new({
         id = id.from(_N, "DeleteThingTypeInput", "thingTypeName"),
         type = "string",
         name = "thingTypeName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteThingTypeOutput = schema.new({
   id = id.from(_N, "DeleteThingTypeResponse"),
   type = "structure",
})

M.DeleteTopicRuleInput = schema.new({
   id = id.from(_N, "DeleteTopicRuleRequest"),
   type = "structure",
   members = {
      ruleName = schema.new({
         id = id.from(_N, "DeleteTopicRuleInput", "ruleName"),
         type = "string",
         name = "ruleName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteTopicRuleOutput = prelude.Unit

M.DeleteTopicRuleDestinationInput = schema.new({
   id = id.from(_N, "DeleteTopicRuleDestinationRequest"),
   type = "structure",
   members = {
      arn = schema.new({
         id = id.from(_N, "DeleteTopicRuleDestinationInput", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteTopicRuleDestinationOutput = schema.new({
   id = id.from(_N, "DeleteTopicRuleDestinationResponse"),
   type = "structure",
})

M.DeleteV2LoggingLevelInput = schema.new({
   id = id.from(_N, "DeleteV2LoggingLevelRequest"),
   type = "structure",
   members = {
      targetType = schema.new({
         id = id.from(_N, "DeleteV2LoggingLevelInput", "targetType"),
         type = "string",
         name = "targetType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "targetType" },
         },
      }),
      targetName = schema.new({
         id = id.from(_N, "DeleteV2LoggingLevelInput", "targetName"),
         type = "string",
         name = "targetName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "targetName" },
         },
      }),
   },
})

M.DeleteV2LoggingLevelOutput = prelude.Unit

M.DeprecateThingTypeInput = schema.new({
   id = id.from(_N, "DeprecateThingTypeRequest"),
   type = "structure",
   members = {
      thingTypeName = schema.new({
         id = id.from(_N, "DeprecateThingTypeInput", "thingTypeName"),
         type = "string",
         name = "thingTypeName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      undoDeprecate = schema.new({
         id = id.from(_N, "DeprecateThingTypeInput", "undoDeprecate"),
         type = "boolean",
         name = "undoDeprecate",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
   },
})

M.DeprecateThingTypeOutput = schema.new({
   id = id.from(_N, "DeprecateThingTypeResponse"),
   type = "structure",
})

M.DescribeAccountAuditConfigurationInput = schema.new({
   id = id.from(_N, "DescribeAccountAuditConfigurationRequest"),
   type = "structure",
})

M.DescribeAccountAuditConfigurationOutput = schema.new({
   id = id.from(_N, "DescribeAccountAuditConfigurationResponse"),
   type = "structure",
   members = {
      roleArn = schema.new({
         id = id.from(_N, "DescribeAccountAuditConfigurationOutput", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
      }),
      auditNotificationTargetConfigurations = schema.new({
         id = id.from(_N, "DescribeAccountAuditConfigurationOutput", "auditNotificationTargetConfigurations"),
         type = "map",
         name = "auditNotificationTargetConfigurations",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.AuditNotificationTarget,
      }),
      auditCheckConfigurations = schema.new({
         id = id.from(_N, "DescribeAccountAuditConfigurationOutput", "auditCheckConfigurations"),
         type = "map",
         name = "auditCheckConfigurations",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.AuditCheckConfiguration,
      }),
   },
})

M.DescribeAuditFindingInput = schema.new({
   id = id.from(_N, "DescribeAuditFindingRequest"),
   type = "structure",
   members = {
      findingId = schema.new({
         id = id.from(_N, "DescribeAuditFindingInput", "findingId"),
         type = "string",
         name = "findingId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DescribeAuditFindingOutput = schema.new({
   id = id.from(_N, "DescribeAuditFindingResponse"),
   type = "structure",
   members = {
      finding = schema.new({
         id = id.from(_N, "DescribeAuditFindingOutput", "finding"),
         type = "structure",
         name = "finding",
         target_id = id.from(_N, "AuditFinding"),
         target = M.AuditFinding,
      }),
   },
})

M.DescribeAuditMitigationActionsTaskInput = schema.new({
   id = id.from(_N, "DescribeAuditMitigationActionsTaskRequest"),
   type = "structure",
   members = {
      taskId = schema.new({
         id = id.from(_N, "DescribeAuditMitigationActionsTaskInput", "taskId"),
         type = "string",
         name = "taskId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.MitigationAction = schema.new({
   id = id.from(_N, "MitigationAction"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "MitigationAction", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      id = schema.new({
         id = id.from(_N, "MitigationAction", "id"),
         type = "string",
         name = "id",
         target_id = prelude.String.id,
      }),
      roleArn = schema.new({
         id = id.from(_N, "MitigationAction", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
      }),
      actionParams = schema.new({
         id = id.from(_N, "MitigationAction", "actionParams"),
         type = "structure",
         name = "actionParams",
         target_id = id.from(_N, "MitigationActionParams"),
         target = M.MitigationActionParams,
      }),
   },
})

M.DescribeAuditMitigationActionsTaskOutput = schema.new({
   id = id.from(_N, "DescribeAuditMitigationActionsTaskResponse"),
   type = "structure",
   members = {
      taskStatus = schema.new({
         id = id.from(_N, "DescribeAuditMitigationActionsTaskOutput", "taskStatus"),
         type = "string",
         name = "taskStatus",
         target_id = prelude.String.id,
      }),
      startTime = schema.new({
         id = id.from(_N, "DescribeAuditMitigationActionsTaskOutput", "startTime"),
         type = "timestamp",
         name = "startTime",
         target_id = prelude.Timestamp.id,
      }),
      endTime = schema.new({
         id = id.from(_N, "DescribeAuditMitigationActionsTaskOutput", "endTime"),
         type = "timestamp",
         name = "endTime",
         target_id = prelude.Timestamp.id,
      }),
      taskStatistics = schema.new({
         id = id.from(_N, "DescribeAuditMitigationActionsTaskOutput", "taskStatistics"),
         type = "map",
         name = "taskStatistics",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.TaskStatisticsForAuditCheck,
      }),
      target = schema.new({
         id = id.from(_N, "DescribeAuditMitigationActionsTaskOutput", "target"),
         type = "structure",
         name = "target",
         target_id = id.from(_N, "AuditMitigationActionsTaskTarget"),
         target = M.AuditMitigationActionsTaskTarget,
      }),
      auditCheckToActionsMapping = schema.new({
         id = id.from(_N, "DescribeAuditMitigationActionsTaskOutput", "auditCheckToActionsMapping"),
         type = "map",
         name = "auditCheckToActionsMapping",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = schema.new({ type = "list", list_member = prelude.String }),
      }),
      actionsDefinition = schema.new({
         id = id.from(_N, "DescribeAuditMitigationActionsTaskOutput", "actionsDefinition"),
         type = "list",
         name = "actionsDefinition",
         target_id = prelude.Document.id,
         list_member = M.MitigationAction,
      }),
   },
})

M.DescribeAuditSuppressionInput = schema.new({
   id = id.from(_N, "DescribeAuditSuppressionRequest"),
   type = "structure",
   members = {
      checkName = schema.new({
         id = id.from(_N, "DescribeAuditSuppressionInput", "checkName"),
         type = "string",
         name = "checkName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      resourceIdentifier = schema.new({
         id = id.from(_N, "DescribeAuditSuppressionInput", "resourceIdentifier"),
         type = "structure",
         name = "resourceIdentifier",
         target_id = id.from(_N, "ResourceIdentifier"),
         target = M.ResourceIdentifier,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DescribeAuditSuppressionOutput = schema.new({
   id = id.from(_N, "DescribeAuditSuppressionResponse"),
   type = "structure",
   members = {
      checkName = schema.new({
         id = id.from(_N, "DescribeAuditSuppressionOutput", "checkName"),
         type = "string",
         name = "checkName",
         target_id = prelude.String.id,
      }),
      resourceIdentifier = schema.new({
         id = id.from(_N, "DescribeAuditSuppressionOutput", "resourceIdentifier"),
         type = "structure",
         name = "resourceIdentifier",
         target_id = id.from(_N, "ResourceIdentifier"),
         target = M.ResourceIdentifier,
      }),
      expirationDate = schema.new({
         id = id.from(_N, "DescribeAuditSuppressionOutput", "expirationDate"),
         type = "timestamp",
         name = "expirationDate",
         target_id = prelude.Timestamp.id,
      }),
      suppressIndefinitely = schema.new({
         id = id.from(_N, "DescribeAuditSuppressionOutput", "suppressIndefinitely"),
         type = "boolean",
         name = "suppressIndefinitely",
         target_id = prelude.Boolean.id,
      }),
      description = schema.new({
         id = id.from(_N, "DescribeAuditSuppressionOutput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeAuditTaskInput = schema.new({
   id = id.from(_N, "DescribeAuditTaskRequest"),
   type = "structure",
   members = {
      taskId = schema.new({
         id = id.from(_N, "DescribeAuditTaskInput", "taskId"),
         type = "string",
         name = "taskId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.TaskStatistics = schema.new({
   id = id.from(_N, "TaskStatistics"),
   type = "structure",
   members = {
      totalChecks = schema.new({
         id = id.from(_N, "TaskStatistics", "totalChecks"),
         type = "integer",
         name = "totalChecks",
         target_id = prelude.Integer.id,
      }),
      inProgressChecks = schema.new({
         id = id.from(_N, "TaskStatistics", "inProgressChecks"),
         type = "integer",
         name = "inProgressChecks",
         target_id = prelude.Integer.id,
      }),
      waitingForDataCollectionChecks = schema.new({
         id = id.from(_N, "TaskStatistics", "waitingForDataCollectionChecks"),
         type = "integer",
         name = "waitingForDataCollectionChecks",
         target_id = prelude.Integer.id,
      }),
      compliantChecks = schema.new({
         id = id.from(_N, "TaskStatistics", "compliantChecks"),
         type = "integer",
         name = "compliantChecks",
         target_id = prelude.Integer.id,
      }),
      nonCompliantChecks = schema.new({
         id = id.from(_N, "TaskStatistics", "nonCompliantChecks"),
         type = "integer",
         name = "nonCompliantChecks",
         target_id = prelude.Integer.id,
      }),
      failedChecks = schema.new({
         id = id.from(_N, "TaskStatistics", "failedChecks"),
         type = "integer",
         name = "failedChecks",
         target_id = prelude.Integer.id,
      }),
      canceledChecks = schema.new({
         id = id.from(_N, "TaskStatistics", "canceledChecks"),
         type = "integer",
         name = "canceledChecks",
         target_id = prelude.Integer.id,
      }),
   },
})

M.DescribeAuditTaskOutput = schema.new({
   id = id.from(_N, "DescribeAuditTaskResponse"),
   type = "structure",
   members = {
      taskStatus = schema.new({
         id = id.from(_N, "DescribeAuditTaskOutput", "taskStatus"),
         type = "string",
         name = "taskStatus",
         target_id = prelude.String.id,
      }),
      taskType = schema.new({
         id = id.from(_N, "DescribeAuditTaskOutput", "taskType"),
         type = "string",
         name = "taskType",
         target_id = prelude.String.id,
      }),
      taskStartTime = schema.new({
         id = id.from(_N, "DescribeAuditTaskOutput", "taskStartTime"),
         type = "timestamp",
         name = "taskStartTime",
         target_id = prelude.Timestamp.id,
      }),
      taskStatistics = schema.new({
         id = id.from(_N, "DescribeAuditTaskOutput", "taskStatistics"),
         type = "structure",
         name = "taskStatistics",
         target_id = id.from(_N, "TaskStatistics"),
         target = M.TaskStatistics,
      }),
      scheduledAuditName = schema.new({
         id = id.from(_N, "DescribeAuditTaskOutput", "scheduledAuditName"),
         type = "string",
         name = "scheduledAuditName",
         target_id = prelude.String.id,
      }),
      auditDetails = schema.new({
         id = id.from(_N, "DescribeAuditTaskOutput", "auditDetails"),
         type = "map",
         name = "auditDetails",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.AuditCheckDetails,
      }),
   },
})

M.DescribeAuthorizerInput = schema.new({
   id = id.from(_N, "DescribeAuthorizerRequest"),
   type = "structure",
   members = {
      authorizerName = schema.new({
         id = id.from(_N, "DescribeAuthorizerInput", "authorizerName"),
         type = "string",
         name = "authorizerName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DescribeAuthorizerOutput = schema.new({
   id = id.from(_N, "DescribeAuthorizerResponse"),
   type = "structure",
   members = {
      authorizerDescription = schema.new({
         id = id.from(_N, "DescribeAuthorizerOutput", "authorizerDescription"),
         type = "structure",
         name = "authorizerDescription",
         target_id = id.from(_N, "AuthorizerDescription"),
         target = M.AuthorizerDescription,
      }),
   },
})

M.DescribeBillingGroupInput = schema.new({
   id = id.from(_N, "DescribeBillingGroupRequest"),
   type = "structure",
   members = {
      billingGroupName = schema.new({
         id = id.from(_N, "DescribeBillingGroupInput", "billingGroupName"),
         type = "string",
         name = "billingGroupName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.BillingGroupMetadata = schema.new({
   id = id.from(_N, "BillingGroupMetadata"),
   type = "structure",
   members = {
      creationDate = schema.new({
         id = id.from(_N, "BillingGroupMetadata", "creationDate"),
         type = "timestamp",
         name = "creationDate",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.DescribeBillingGroupOutput = schema.new({
   id = id.from(_N, "DescribeBillingGroupResponse"),
   type = "structure",
   members = {
      billingGroupName = schema.new({
         id = id.from(_N, "DescribeBillingGroupOutput", "billingGroupName"),
         type = "string",
         name = "billingGroupName",
         target_id = prelude.String.id,
      }),
      billingGroupId = schema.new({
         id = id.from(_N, "DescribeBillingGroupOutput", "billingGroupId"),
         type = "string",
         name = "billingGroupId",
         target_id = prelude.String.id,
      }),
      billingGroupArn = schema.new({
         id = id.from(_N, "DescribeBillingGroupOutput", "billingGroupArn"),
         type = "string",
         name = "billingGroupArn",
         target_id = prelude.String.id,
      }),
      version = schema.new({
         id = id.from(_N, "DescribeBillingGroupOutput", "version"),
         type = "long",
         name = "version",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      billingGroupProperties = schema.new({
         id = id.from(_N, "DescribeBillingGroupOutput", "billingGroupProperties"),
         type = "structure",
         name = "billingGroupProperties",
         target_id = id.from(_N, "BillingGroupProperties"),
         target = M.BillingGroupProperties,
      }),
      billingGroupMetadata = schema.new({
         id = id.from(_N, "DescribeBillingGroupOutput", "billingGroupMetadata"),
         type = "structure",
         name = "billingGroupMetadata",
         target_id = id.from(_N, "BillingGroupMetadata"),
         target = M.BillingGroupMetadata,
      }),
   },
})

M.DescribeCACertificateInput = schema.new({
   id = id.from(_N, "DescribeCACertificateRequest"),
   type = "structure",
   members = {
      certificateId = schema.new({
         id = id.from(_N, "DescribeCACertificateInput", "certificateId"),
         type = "string",
         name = "certificateId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.CertificateValidity = schema.new({
   id = id.from(_N, "CertificateValidity"),
   type = "structure",
   members = {
      notBefore = schema.new({
         id = id.from(_N, "CertificateValidity", "notBefore"),
         type = "timestamp",
         name = "notBefore",
         target_id = prelude.Timestamp.id,
      }),
      notAfter = schema.new({
         id = id.from(_N, "CertificateValidity", "notAfter"),
         type = "timestamp",
         name = "notAfter",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.CACertificateDescription = schema.new({
   id = id.from(_N, "CACertificateDescription"),
   type = "structure",
   members = {
      certificateArn = schema.new({
         id = id.from(_N, "CACertificateDescription", "certificateArn"),
         type = "string",
         name = "certificateArn",
         target_id = prelude.String.id,
      }),
      certificateId = schema.new({
         id = id.from(_N, "CACertificateDescription", "certificateId"),
         type = "string",
         name = "certificateId",
         target_id = prelude.String.id,
      }),
      status = schema.new({
         id = id.from(_N, "CACertificateDescription", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
      certificatePem = schema.new({
         id = id.from(_N, "CACertificateDescription", "certificatePem"),
         type = "string",
         name = "certificatePem",
         target_id = prelude.String.id,
      }),
      ownedBy = schema.new({
         id = id.from(_N, "CACertificateDescription", "ownedBy"),
         type = "string",
         name = "ownedBy",
         target_id = prelude.String.id,
      }),
      creationDate = schema.new({
         id = id.from(_N, "CACertificateDescription", "creationDate"),
         type = "timestamp",
         name = "creationDate",
         target_id = prelude.Timestamp.id,
      }),
      autoRegistrationStatus = schema.new({
         id = id.from(_N, "CACertificateDescription", "autoRegistrationStatus"),
         type = "string",
         name = "autoRegistrationStatus",
         target_id = prelude.String.id,
      }),
      lastModifiedDate = schema.new({
         id = id.from(_N, "CACertificateDescription", "lastModifiedDate"),
         type = "timestamp",
         name = "lastModifiedDate",
         target_id = prelude.Timestamp.id,
      }),
      customerVersion = schema.new({
         id = id.from(_N, "CACertificateDescription", "customerVersion"),
         type = "integer",
         name = "customerVersion",
         target_id = prelude.Integer.id,
      }),
      generationId = schema.new({
         id = id.from(_N, "CACertificateDescription", "generationId"),
         type = "string",
         name = "generationId",
         target_id = prelude.String.id,
      }),
      validity = schema.new({
         id = id.from(_N, "CACertificateDescription", "validity"),
         type = "structure",
         name = "validity",
         target_id = id.from(_N, "CertificateValidity"),
         target = M.CertificateValidity,
      }),
      certificateMode = schema.new({
         id = id.from(_N, "CACertificateDescription", "certificateMode"),
         type = "string",
         name = "certificateMode",
         target_id = prelude.String.id,
      }),
   },
})

M.RegistrationConfig = schema.new({
   id = id.from(_N, "RegistrationConfig"),
   type = "structure",
   members = {
      templateBody = schema.new({
         id = id.from(_N, "RegistrationConfig", "templateBody"),
         type = "string",
         name = "templateBody",
         target_id = prelude.String.id,
      }),
      roleArn = schema.new({
         id = id.from(_N, "RegistrationConfig", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
      }),
      templateName = schema.new({
         id = id.from(_N, "RegistrationConfig", "templateName"),
         type = "string",
         name = "templateName",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeCACertificateOutput = schema.new({
   id = id.from(_N, "DescribeCACertificateResponse"),
   type = "structure",
   members = {
      certificateDescription = schema.new({
         id = id.from(_N, "DescribeCACertificateOutput", "certificateDescription"),
         type = "structure",
         name = "certificateDescription",
         target_id = id.from(_N, "CACertificateDescription"),
         target = M.CACertificateDescription,
      }),
      registrationConfig = schema.new({
         id = id.from(_N, "DescribeCACertificateOutput", "registrationConfig"),
         type = "structure",
         name = "registrationConfig",
         target_id = id.from(_N, "RegistrationConfig"),
         target = M.RegistrationConfig,
      }),
   },
})

M.DescribeCertificateInput = schema.new({
   id = id.from(_N, "DescribeCertificateRequest"),
   type = "structure",
   members = {
      certificateId = schema.new({
         id = id.from(_N, "DescribeCertificateInput", "certificateId"),
         type = "string",
         name = "certificateId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.TransferData = schema.new({
   id = id.from(_N, "TransferData"),
   type = "structure",
   members = {
      transferMessage = schema.new({
         id = id.from(_N, "TransferData", "transferMessage"),
         type = "string",
         name = "transferMessage",
         target_id = prelude.String.id,
      }),
      rejectReason = schema.new({
         id = id.from(_N, "TransferData", "rejectReason"),
         type = "string",
         name = "rejectReason",
         target_id = prelude.String.id,
      }),
      transferDate = schema.new({
         id = id.from(_N, "TransferData", "transferDate"),
         type = "timestamp",
         name = "transferDate",
         target_id = prelude.Timestamp.id,
      }),
      acceptDate = schema.new({
         id = id.from(_N, "TransferData", "acceptDate"),
         type = "timestamp",
         name = "acceptDate",
         target_id = prelude.Timestamp.id,
      }),
      rejectDate = schema.new({
         id = id.from(_N, "TransferData", "rejectDate"),
         type = "timestamp",
         name = "rejectDate",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.CertificateDescription = schema.new({
   id = id.from(_N, "CertificateDescription"),
   type = "structure",
   members = {
      certificateArn = schema.new({
         id = id.from(_N, "CertificateDescription", "certificateArn"),
         type = "string",
         name = "certificateArn",
         target_id = prelude.String.id,
      }),
      certificateId = schema.new({
         id = id.from(_N, "CertificateDescription", "certificateId"),
         type = "string",
         name = "certificateId",
         target_id = prelude.String.id,
      }),
      caCertificateId = schema.new({
         id = id.from(_N, "CertificateDescription", "caCertificateId"),
         type = "string",
         name = "caCertificateId",
         target_id = prelude.String.id,
      }),
      status = schema.new({
         id = id.from(_N, "CertificateDescription", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
      certificatePem = schema.new({
         id = id.from(_N, "CertificateDescription", "certificatePem"),
         type = "string",
         name = "certificatePem",
         target_id = prelude.String.id,
      }),
      ownedBy = schema.new({
         id = id.from(_N, "CertificateDescription", "ownedBy"),
         type = "string",
         name = "ownedBy",
         target_id = prelude.String.id,
      }),
      previousOwnedBy = schema.new({
         id = id.from(_N, "CertificateDescription", "previousOwnedBy"),
         type = "string",
         name = "previousOwnedBy",
         target_id = prelude.String.id,
      }),
      creationDate = schema.new({
         id = id.from(_N, "CertificateDescription", "creationDate"),
         type = "timestamp",
         name = "creationDate",
         target_id = prelude.Timestamp.id,
      }),
      lastModifiedDate = schema.new({
         id = id.from(_N, "CertificateDescription", "lastModifiedDate"),
         type = "timestamp",
         name = "lastModifiedDate",
         target_id = prelude.Timestamp.id,
      }),
      customerVersion = schema.new({
         id = id.from(_N, "CertificateDescription", "customerVersion"),
         type = "integer",
         name = "customerVersion",
         target_id = prelude.Integer.id,
      }),
      transferData = schema.new({
         id = id.from(_N, "CertificateDescription", "transferData"),
         type = "structure",
         name = "transferData",
         target_id = id.from(_N, "TransferData"),
         target = M.TransferData,
      }),
      generationId = schema.new({
         id = id.from(_N, "CertificateDescription", "generationId"),
         type = "string",
         name = "generationId",
         target_id = prelude.String.id,
      }),
      validity = schema.new({
         id = id.from(_N, "CertificateDescription", "validity"),
         type = "structure",
         name = "validity",
         target_id = id.from(_N, "CertificateValidity"),
         target = M.CertificateValidity,
      }),
      certificateMode = schema.new({
         id = id.from(_N, "CertificateDescription", "certificateMode"),
         type = "string",
         name = "certificateMode",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeCertificateOutput = schema.new({
   id = id.from(_N, "DescribeCertificateResponse"),
   type = "structure",
   members = {
      certificateDescription = schema.new({
         id = id.from(_N, "DescribeCertificateOutput", "certificateDescription"),
         type = "structure",
         name = "certificateDescription",
         target_id = id.from(_N, "CertificateDescription"),
         target = M.CertificateDescription,
      }),
   },
})

M.DescribeCertificateProviderInput = schema.new({
   id = id.from(_N, "DescribeCertificateProviderRequest"),
   type = "structure",
   members = {
      certificateProviderName = schema.new({
         id = id.from(_N, "DescribeCertificateProviderInput", "certificateProviderName"),
         type = "string",
         name = "certificateProviderName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DescribeCertificateProviderOutput = schema.new({
   id = id.from(_N, "DescribeCertificateProviderResponse"),
   type = "structure",
   members = {
      certificateProviderName = schema.new({
         id = id.from(_N, "DescribeCertificateProviderOutput", "certificateProviderName"),
         type = "string",
         name = "certificateProviderName",
         target_id = prelude.String.id,
      }),
      certificateProviderArn = schema.new({
         id = id.from(_N, "DescribeCertificateProviderOutput", "certificateProviderArn"),
         type = "string",
         name = "certificateProviderArn",
         target_id = prelude.String.id,
      }),
      lambdaFunctionArn = schema.new({
         id = id.from(_N, "DescribeCertificateProviderOutput", "lambdaFunctionArn"),
         type = "string",
         name = "lambdaFunctionArn",
         target_id = prelude.String.id,
      }),
      accountDefaultForOperations = schema.new({
         id = id.from(_N, "DescribeCertificateProviderOutput", "accountDefaultForOperations"),
         type = "list",
         name = "accountDefaultForOperations",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      creationDate = schema.new({
         id = id.from(_N, "DescribeCertificateProviderOutput", "creationDate"),
         type = "timestamp",
         name = "creationDate",
         target_id = prelude.Timestamp.id,
      }),
      lastModifiedDate = schema.new({
         id = id.from(_N, "DescribeCertificateProviderOutput", "lastModifiedDate"),
         type = "timestamp",
         name = "lastModifiedDate",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.DescribeCustomMetricInput = schema.new({
   id = id.from(_N, "DescribeCustomMetricRequest"),
   type = "structure",
   members = {
      metricName = schema.new({
         id = id.from(_N, "DescribeCustomMetricInput", "metricName"),
         type = "string",
         name = "metricName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DescribeCustomMetricOutput = schema.new({
   id = id.from(_N, "DescribeCustomMetricResponse"),
   type = "structure",
   members = {
      metricName = schema.new({
         id = id.from(_N, "DescribeCustomMetricOutput", "metricName"),
         type = "string",
         name = "metricName",
         target_id = prelude.String.id,
      }),
      metricArn = schema.new({
         id = id.from(_N, "DescribeCustomMetricOutput", "metricArn"),
         type = "string",
         name = "metricArn",
         target_id = prelude.String.id,
      }),
      metricType = schema.new({
         id = id.from(_N, "DescribeCustomMetricOutput", "metricType"),
         type = "string",
         name = "metricType",
         target_id = prelude.String.id,
      }),
      displayName = schema.new({
         id = id.from(_N, "DescribeCustomMetricOutput", "displayName"),
         type = "string",
         name = "displayName",
         target_id = prelude.String.id,
      }),
      creationDate = schema.new({
         id = id.from(_N, "DescribeCustomMetricOutput", "creationDate"),
         type = "timestamp",
         name = "creationDate",
         target_id = prelude.Timestamp.id,
      }),
      lastModifiedDate = schema.new({
         id = id.from(_N, "DescribeCustomMetricOutput", "lastModifiedDate"),
         type = "timestamp",
         name = "lastModifiedDate",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.DescribeDefaultAuthorizerInput = schema.new({
   id = id.from(_N, "DescribeDefaultAuthorizerRequest"),
   type = "structure",
})

M.DescribeDefaultAuthorizerOutput = schema.new({
   id = id.from(_N, "DescribeDefaultAuthorizerResponse"),
   type = "structure",
   members = {
      authorizerDescription = schema.new({
         id = id.from(_N, "DescribeDefaultAuthorizerOutput", "authorizerDescription"),
         type = "structure",
         name = "authorizerDescription",
         target_id = id.from(_N, "AuthorizerDescription"),
         target = M.AuthorizerDescription,
      }),
   },
})

M.DescribeDetectMitigationActionsTaskInput = schema.new({
   id = id.from(_N, "DescribeDetectMitigationActionsTaskRequest"),
   type = "structure",
   members = {
      taskId = schema.new({
         id = id.from(_N, "DescribeDetectMitigationActionsTaskInput", "taskId"),
         type = "string",
         name = "taskId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DetectMitigationActionsTaskTarget = schema.new({
   id = id.from(_N, "DetectMitigationActionsTaskTarget"),
   type = "structure",
   members = {
      violationIds = schema.new({
         id = id.from(_N, "DetectMitigationActionsTaskTarget", "violationIds"),
         type = "list",
         name = "violationIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      securityProfileName = schema.new({
         id = id.from(_N, "DetectMitigationActionsTaskTarget", "securityProfileName"),
         type = "string",
         name = "securityProfileName",
         target_id = prelude.String.id,
      }),
      behaviorName = schema.new({
         id = id.from(_N, "DetectMitigationActionsTaskTarget", "behaviorName"),
         type = "string",
         name = "behaviorName",
         target_id = prelude.String.id,
      }),
   },
})

M.DetectMitigationActionsTaskStatistics = schema.new({
   id = id.from(_N, "DetectMitigationActionsTaskStatistics"),
   type = "structure",
   members = {
      actionsExecuted = schema.new({
         id = id.from(_N, "DetectMitigationActionsTaskStatistics", "actionsExecuted"),
         type = "long",
         name = "actionsExecuted",
         target_id = prelude.Long.id,
      }),
      actionsSkipped = schema.new({
         id = id.from(_N, "DetectMitigationActionsTaskStatistics", "actionsSkipped"),
         type = "long",
         name = "actionsSkipped",
         target_id = prelude.Long.id,
      }),
      actionsFailed = schema.new({
         id = id.from(_N, "DetectMitigationActionsTaskStatistics", "actionsFailed"),
         type = "long",
         name = "actionsFailed",
         target_id = prelude.Long.id,
      }),
   },
})

M.ViolationEventOccurrenceRange = schema.new({
   id = id.from(_N, "ViolationEventOccurrenceRange"),
   type = "structure",
   members = {
      startTime = schema.new({
         id = id.from(_N, "ViolationEventOccurrenceRange", "startTime"),
         type = "timestamp",
         name = "startTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      endTime = schema.new({
         id = id.from(_N, "ViolationEventOccurrenceRange", "endTime"),
         type = "timestamp",
         name = "endTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DetectMitigationActionsTaskSummary = schema.new({
   id = id.from(_N, "DetectMitigationActionsTaskSummary"),
   type = "structure",
   members = {
      taskId = schema.new({
         id = id.from(_N, "DetectMitigationActionsTaskSummary", "taskId"),
         type = "string",
         name = "taskId",
         target_id = prelude.String.id,
      }),
      taskStatus = schema.new({
         id = id.from(_N, "DetectMitigationActionsTaskSummary", "taskStatus"),
         type = "string",
         name = "taskStatus",
         target_id = prelude.String.id,
      }),
      taskStartTime = schema.new({
         id = id.from(_N, "DetectMitigationActionsTaskSummary", "taskStartTime"),
         type = "timestamp",
         name = "taskStartTime",
         target_id = prelude.Timestamp.id,
      }),
      taskEndTime = schema.new({
         id = id.from(_N, "DetectMitigationActionsTaskSummary", "taskEndTime"),
         type = "timestamp",
         name = "taskEndTime",
         target_id = prelude.Timestamp.id,
      }),
      target = schema.new({
         id = id.from(_N, "DetectMitigationActionsTaskSummary", "target"),
         type = "structure",
         name = "target",
         target_id = id.from(_N, "DetectMitigationActionsTaskTarget"),
         target = M.DetectMitigationActionsTaskTarget,
      }),
      violationEventOccurrenceRange = schema.new({
         id = id.from(_N, "DetectMitigationActionsTaskSummary", "violationEventOccurrenceRange"),
         type = "structure",
         name = "violationEventOccurrenceRange",
         target_id = id.from(_N, "ViolationEventOccurrenceRange"),
         target = M.ViolationEventOccurrenceRange,
      }),
      onlyActiveViolationsIncluded = schema.new({
         id = id.from(_N, "DetectMitigationActionsTaskSummary", "onlyActiveViolationsIncluded"),
         type = "boolean",
         name = "onlyActiveViolationsIncluded",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      suppressedAlertsIncluded = schema.new({
         id = id.from(_N, "DetectMitigationActionsTaskSummary", "suppressedAlertsIncluded"),
         type = "boolean",
         name = "suppressedAlertsIncluded",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      actionsDefinition = schema.new({
         id = id.from(_N, "DetectMitigationActionsTaskSummary", "actionsDefinition"),
         type = "list",
         name = "actionsDefinition",
         target_id = prelude.Document.id,
         list_member = M.MitigationAction,
      }),
      taskStatistics = schema.new({
         id = id.from(_N, "DetectMitigationActionsTaskSummary", "taskStatistics"),
         type = "structure",
         name = "taskStatistics",
         target_id = id.from(_N, "DetectMitigationActionsTaskStatistics"),
         target = M.DetectMitigationActionsTaskStatistics,
      }),
   },
})

M.DescribeDetectMitigationActionsTaskOutput = schema.new({
   id = id.from(_N, "DescribeDetectMitigationActionsTaskResponse"),
   type = "structure",
   members = {
      taskSummary = schema.new({
         id = id.from(_N, "DescribeDetectMitigationActionsTaskOutput", "taskSummary"),
         type = "structure",
         name = "taskSummary",
         target_id = id.from(_N, "DetectMitigationActionsTaskSummary"),
         target = M.DetectMitigationActionsTaskSummary,
      }),
   },
})

M.DescribeDimensionInput = schema.new({
   id = id.from(_N, "DescribeDimensionRequest"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "DescribeDimensionInput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DescribeDimensionOutput = schema.new({
   id = id.from(_N, "DescribeDimensionResponse"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "DescribeDimensionOutput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      arn = schema.new({
         id = id.from(_N, "DescribeDimensionOutput", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
      }),
      type = schema.new({
         id = id.from(_N, "DescribeDimensionOutput", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
      }),
      stringValues = schema.new({
         id = id.from(_N, "DescribeDimensionOutput", "stringValues"),
         type = "list",
         name = "stringValues",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      creationDate = schema.new({
         id = id.from(_N, "DescribeDimensionOutput", "creationDate"),
         type = "timestamp",
         name = "creationDate",
         target_id = prelude.Timestamp.id,
      }),
      lastModifiedDate = schema.new({
         id = id.from(_N, "DescribeDimensionOutput", "lastModifiedDate"),
         type = "timestamp",
         name = "lastModifiedDate",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.DescribeDomainConfigurationInput = schema.new({
   id = id.from(_N, "DescribeDomainConfigurationRequest"),
   type = "structure",
   members = {
      domainConfigurationName = schema.new({
         id = id.from(_N, "DescribeDomainConfigurationInput", "domainConfigurationName"),
         type = "string",
         name = "domainConfigurationName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.ServerCertificateSummary = schema.new({
   id = id.from(_N, "ServerCertificateSummary"),
   type = "structure",
   members = {
      serverCertificateArn = schema.new({
         id = id.from(_N, "ServerCertificateSummary", "serverCertificateArn"),
         type = "string",
         name = "serverCertificateArn",
         target_id = prelude.String.id,
      }),
      serverCertificateStatus = schema.new({
         id = id.from(_N, "ServerCertificateSummary", "serverCertificateStatus"),
         type = "string",
         name = "serverCertificateStatus",
         target_id = prelude.String.id,
      }),
      serverCertificateStatusDetail = schema.new({
         id = id.from(_N, "ServerCertificateSummary", "serverCertificateStatusDetail"),
         type = "string",
         name = "serverCertificateStatusDetail",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeDomainConfigurationOutput = schema.new({
   id = id.from(_N, "DescribeDomainConfigurationResponse"),
   type = "structure",
   members = {
      domainConfigurationName = schema.new({
         id = id.from(_N, "DescribeDomainConfigurationOutput", "domainConfigurationName"),
         type = "string",
         name = "domainConfigurationName",
         target_id = prelude.String.id,
      }),
      domainConfigurationArn = schema.new({
         id = id.from(_N, "DescribeDomainConfigurationOutput", "domainConfigurationArn"),
         type = "string",
         name = "domainConfigurationArn",
         target_id = prelude.String.id,
      }),
      domainName = schema.new({
         id = id.from(_N, "DescribeDomainConfigurationOutput", "domainName"),
         type = "string",
         name = "domainName",
         target_id = prelude.String.id,
      }),
      serverCertificates = schema.new({
         id = id.from(_N, "DescribeDomainConfigurationOutput", "serverCertificates"),
         type = "list",
         name = "serverCertificates",
         target_id = prelude.Document.id,
         list_member = M.ServerCertificateSummary,
      }),
      authorizerConfig = schema.new({
         id = id.from(_N, "DescribeDomainConfigurationOutput", "authorizerConfig"),
         type = "structure",
         name = "authorizerConfig",
         target_id = id.from(_N, "AuthorizerConfig"),
         target = M.AuthorizerConfig,
      }),
      domainConfigurationStatus = schema.new({
         id = id.from(_N, "DescribeDomainConfigurationOutput", "domainConfigurationStatus"),
         type = "string",
         name = "domainConfigurationStatus",
         target_id = prelude.String.id,
      }),
      serviceType = schema.new({
         id = id.from(_N, "DescribeDomainConfigurationOutput", "serviceType"),
         type = "string",
         name = "serviceType",
         target_id = prelude.String.id,
      }),
      domainType = schema.new({
         id = id.from(_N, "DescribeDomainConfigurationOutput", "domainType"),
         type = "string",
         name = "domainType",
         target_id = prelude.String.id,
      }),
      lastStatusChangeDate = schema.new({
         id = id.from(_N, "DescribeDomainConfigurationOutput", "lastStatusChangeDate"),
         type = "timestamp",
         name = "lastStatusChangeDate",
         target_id = prelude.Timestamp.id,
      }),
      tlsConfig = schema.new({
         id = id.from(_N, "DescribeDomainConfigurationOutput", "tlsConfig"),
         type = "structure",
         name = "tlsConfig",
         target_id = id.from(_N, "TlsConfig"),
         target = M.TlsConfig,
      }),
      serverCertificateConfig = schema.new({
         id = id.from(_N, "DescribeDomainConfigurationOutput", "serverCertificateConfig"),
         type = "structure",
         name = "serverCertificateConfig",
         target_id = id.from(_N, "ServerCertificateConfig"),
         target = M.ServerCertificateConfig,
      }),
      authenticationType = schema.new({
         id = id.from(_N, "DescribeDomainConfigurationOutput", "authenticationType"),
         type = "string",
         name = "authenticationType",
         target_id = prelude.String.id,
      }),
      applicationProtocol = schema.new({
         id = id.from(_N, "DescribeDomainConfigurationOutput", "applicationProtocol"),
         type = "string",
         name = "applicationProtocol",
         target_id = prelude.String.id,
      }),
      clientCertificateConfig = schema.new({
         id = id.from(_N, "DescribeDomainConfigurationOutput", "clientCertificateConfig"),
         type = "structure",
         name = "clientCertificateConfig",
         target_id = id.from(_N, "ClientCertificateConfig"),
         target = M.ClientCertificateConfig,
      }),
   },
})

M.DescribeEncryptionConfigurationInput = schema.new({
   id = id.from(_N, "DescribeEncryptionConfigurationRequest"),
   type = "structure",
})

M.ConfigurationDetails = schema.new({
   id = id.from(_N, "ConfigurationDetails"),
   type = "structure",
   members = {
      configurationStatus = schema.new({
         id = id.from(_N, "ConfigurationDetails", "configurationStatus"),
         type = "string",
         name = "configurationStatus",
         target_id = prelude.String.id,
      }),
      errorCode = schema.new({
         id = id.from(_N, "ConfigurationDetails", "errorCode"),
         type = "string",
         name = "errorCode",
         target_id = prelude.String.id,
      }),
      errorMessage = schema.new({
         id = id.from(_N, "ConfigurationDetails", "errorMessage"),
         type = "string",
         name = "errorMessage",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeEncryptionConfigurationOutput = schema.new({
   id = id.from(_N, "DescribeEncryptionConfigurationResponse"),
   type = "structure",
   members = {
      encryptionType = schema.new({
         id = id.from(_N, "DescribeEncryptionConfigurationOutput", "encryptionType"),
         type = "string",
         name = "encryptionType",
         target_id = prelude.String.id,
      }),
      kmsKeyArn = schema.new({
         id = id.from(_N, "DescribeEncryptionConfigurationOutput", "kmsKeyArn"),
         type = "string",
         name = "kmsKeyArn",
         target_id = prelude.String.id,
      }),
      kmsAccessRoleArn = schema.new({
         id = id.from(_N, "DescribeEncryptionConfigurationOutput", "kmsAccessRoleArn"),
         type = "string",
         name = "kmsAccessRoleArn",
         target_id = prelude.String.id,
      }),
      configurationDetails = schema.new({
         id = id.from(_N, "DescribeEncryptionConfigurationOutput", "configurationDetails"),
         type = "structure",
         name = "configurationDetails",
         target_id = id.from(_N, "ConfigurationDetails"),
         target = M.ConfigurationDetails,
      }),
      lastModifiedDate = schema.new({
         id = id.from(_N, "DescribeEncryptionConfigurationOutput", "lastModifiedDate"),
         type = "timestamp",
         name = "lastModifiedDate",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.DescribeEndpointInput = schema.new({
   id = id.from(_N, "DescribeEndpointRequest"),
   type = "structure",
   members = {
      endpointType = schema.new({
         id = id.from(_N, "DescribeEndpointInput", "endpointType"),
         type = "string",
         name = "endpointType",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "endpointType" },
         },
      }),
   },
})

M.DescribeEndpointOutput = schema.new({
   id = id.from(_N, "DescribeEndpointResponse"),
   type = "structure",
   members = {
      endpointAddress = schema.new({
         id = id.from(_N, "DescribeEndpointOutput", "endpointAddress"),
         type = "string",
         name = "endpointAddress",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeEventConfigurationsInput = schema.new({
   id = id.from(_N, "DescribeEventConfigurationsRequest"),
   type = "structure",
})

M.Configuration = schema.new({
   id = id.from(_N, "Configuration"),
   type = "structure",
   members = {
      Enabled = schema.new({
         id = id.from(_N, "Configuration", "Enabled"),
         type = "boolean",
         name = "Enabled",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
   },
})

M.DescribeEventConfigurationsOutput = schema.new({
   id = id.from(_N, "DescribeEventConfigurationsResponse"),
   type = "structure",
   members = {
      eventConfigurations = schema.new({
         id = id.from(_N, "DescribeEventConfigurationsOutput", "eventConfigurations"),
         type = "map",
         name = "eventConfigurations",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.Configuration,
      }),
      creationDate = schema.new({
         id = id.from(_N, "DescribeEventConfigurationsOutput", "creationDate"),
         type = "timestamp",
         name = "creationDate",
         target_id = prelude.Timestamp.id,
      }),
      lastModifiedDate = schema.new({
         id = id.from(_N, "DescribeEventConfigurationsOutput", "lastModifiedDate"),
         type = "timestamp",
         name = "lastModifiedDate",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.DescribeFleetMetricInput = schema.new({
   id = id.from(_N, "DescribeFleetMetricRequest"),
   type = "structure",
   members = {
      metricName = schema.new({
         id = id.from(_N, "DescribeFleetMetricInput", "metricName"),
         type = "string",
         name = "metricName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DescribeFleetMetricOutput = schema.new({
   id = id.from(_N, "DescribeFleetMetricResponse"),
   type = "structure",
   members = {
      metricName = schema.new({
         id = id.from(_N, "DescribeFleetMetricOutput", "metricName"),
         type = "string",
         name = "metricName",
         target_id = prelude.String.id,
      }),
      queryString = schema.new({
         id = id.from(_N, "DescribeFleetMetricOutput", "queryString"),
         type = "string",
         name = "queryString",
         target_id = prelude.String.id,
      }),
      aggregationType = schema.new({
         id = id.from(_N, "DescribeFleetMetricOutput", "aggregationType"),
         type = "structure",
         name = "aggregationType",
         target_id = id.from(_N, "AggregationType"),
         target = M.AggregationType,
      }),
      period = schema.new({
         id = id.from(_N, "DescribeFleetMetricOutput", "period"),
         type = "integer",
         name = "period",
         target_id = prelude.Integer.id,
      }),
      aggregationField = schema.new({
         id = id.from(_N, "DescribeFleetMetricOutput", "aggregationField"),
         type = "string",
         name = "aggregationField",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "DescribeFleetMetricOutput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      queryVersion = schema.new({
         id = id.from(_N, "DescribeFleetMetricOutput", "queryVersion"),
         type = "string",
         name = "queryVersion",
         target_id = prelude.String.id,
      }),
      indexName = schema.new({
         id = id.from(_N, "DescribeFleetMetricOutput", "indexName"),
         type = "string",
         name = "indexName",
         target_id = prelude.String.id,
      }),
      creationDate = schema.new({
         id = id.from(_N, "DescribeFleetMetricOutput", "creationDate"),
         type = "timestamp",
         name = "creationDate",
         target_id = prelude.Timestamp.id,
      }),
      lastModifiedDate = schema.new({
         id = id.from(_N, "DescribeFleetMetricOutput", "lastModifiedDate"),
         type = "timestamp",
         name = "lastModifiedDate",
         target_id = prelude.Timestamp.id,
      }),
      unit = schema.new({
         id = id.from(_N, "DescribeFleetMetricOutput", "unit"),
         type = "string",
         name = "unit",
         target_id = prelude.String.id,
      }),
      version = schema.new({
         id = id.from(_N, "DescribeFleetMetricOutput", "version"),
         type = "long",
         name = "version",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      metricArn = schema.new({
         id = id.from(_N, "DescribeFleetMetricOutput", "metricArn"),
         type = "string",
         name = "metricArn",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeIndexInput = schema.new({
   id = id.from(_N, "DescribeIndexRequest"),
   type = "structure",
   members = {
      indexName = schema.new({
         id = id.from(_N, "DescribeIndexInput", "indexName"),
         type = "string",
         name = "indexName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DescribeIndexOutput = schema.new({
   id = id.from(_N, "DescribeIndexResponse"),
   type = "structure",
   members = {
      indexName = schema.new({
         id = id.from(_N, "DescribeIndexOutput", "indexName"),
         type = "string",
         name = "indexName",
         target_id = prelude.String.id,
      }),
      indexStatus = schema.new({
         id = id.from(_N, "DescribeIndexOutput", "indexStatus"),
         type = "string",
         name = "indexStatus",
         target_id = prelude.String.id,
      }),
      schema = schema.new({
         id = id.from(_N, "DescribeIndexOutput", "schema"),
         type = "string",
         name = "schema",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeJobInput = schema.new({
   id = id.from(_N, "DescribeJobRequest"),
   type = "structure",
   members = {
      jobId = schema.new({
         id = id.from(_N, "DescribeJobInput", "jobId"),
         type = "string",
         name = "jobId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      beforeSubstitution = schema.new({
         id = id.from(_N, "DescribeJobInput", "beforeSubstitution"),
         type = "boolean",
         name = "beforeSubstitution",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
            [traits.HTTP_QUERY] = { name = "beforeSubstitution" },
         },
      }),
   },
})

M.JobProcessDetails = schema.new({
   id = id.from(_N, "JobProcessDetails"),
   type = "structure",
   members = {
      processingTargets = schema.new({
         id = id.from(_N, "JobProcessDetails", "processingTargets"),
         type = "list",
         name = "processingTargets",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      numberOfCanceledThings = schema.new({
         id = id.from(_N, "JobProcessDetails", "numberOfCanceledThings"),
         type = "integer",
         name = "numberOfCanceledThings",
         target_id = prelude.Integer.id,
      }),
      numberOfSucceededThings = schema.new({
         id = id.from(_N, "JobProcessDetails", "numberOfSucceededThings"),
         type = "integer",
         name = "numberOfSucceededThings",
         target_id = prelude.Integer.id,
      }),
      numberOfFailedThings = schema.new({
         id = id.from(_N, "JobProcessDetails", "numberOfFailedThings"),
         type = "integer",
         name = "numberOfFailedThings",
         target_id = prelude.Integer.id,
      }),
      numberOfRejectedThings = schema.new({
         id = id.from(_N, "JobProcessDetails", "numberOfRejectedThings"),
         type = "integer",
         name = "numberOfRejectedThings",
         target_id = prelude.Integer.id,
      }),
      numberOfQueuedThings = schema.new({
         id = id.from(_N, "JobProcessDetails", "numberOfQueuedThings"),
         type = "integer",
         name = "numberOfQueuedThings",
         target_id = prelude.Integer.id,
      }),
      numberOfInProgressThings = schema.new({
         id = id.from(_N, "JobProcessDetails", "numberOfInProgressThings"),
         type = "integer",
         name = "numberOfInProgressThings",
         target_id = prelude.Integer.id,
      }),
      numberOfRemovedThings = schema.new({
         id = id.from(_N, "JobProcessDetails", "numberOfRemovedThings"),
         type = "integer",
         name = "numberOfRemovedThings",
         target_id = prelude.Integer.id,
      }),
      numberOfTimedOutThings = schema.new({
         id = id.from(_N, "JobProcessDetails", "numberOfTimedOutThings"),
         type = "integer",
         name = "numberOfTimedOutThings",
         target_id = prelude.Integer.id,
      }),
   },
})

M.ScheduledJobRollout = schema.new({
   id = id.from(_N, "ScheduledJobRollout"),
   type = "structure",
   members = {
      startTime = schema.new({
         id = id.from(_N, "ScheduledJobRollout", "startTime"),
         type = "string",
         name = "startTime",
         target_id = prelude.String.id,
      }),
   },
})

M.Job = schema.new({
   id = id.from(_N, "Job"),
   type = "structure",
   members = {
      jobArn = schema.new({
         id = id.from(_N, "Job", "jobArn"),
         type = "string",
         name = "jobArn",
         target_id = prelude.String.id,
      }),
      jobId = schema.new({
         id = id.from(_N, "Job", "jobId"),
         type = "string",
         name = "jobId",
         target_id = prelude.String.id,
      }),
      targetSelection = schema.new({
         id = id.from(_N, "Job", "targetSelection"),
         type = "string",
         name = "targetSelection",
         target_id = prelude.String.id,
      }),
      status = schema.new({
         id = id.from(_N, "Job", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
      forceCanceled = schema.new({
         id = id.from(_N, "Job", "forceCanceled"),
         type = "boolean",
         name = "forceCanceled",
         target_id = prelude.Boolean.id,
      }),
      reasonCode = schema.new({
         id = id.from(_N, "Job", "reasonCode"),
         type = "string",
         name = "reasonCode",
         target_id = prelude.String.id,
      }),
      comment = schema.new({
         id = id.from(_N, "Job", "comment"),
         type = "string",
         name = "comment",
         target_id = prelude.String.id,
      }),
      targets = schema.new({
         id = id.from(_N, "Job", "targets"),
         type = "list",
         name = "targets",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      description = schema.new({
         id = id.from(_N, "Job", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      presignedUrlConfig = schema.new({
         id = id.from(_N, "Job", "presignedUrlConfig"),
         type = "structure",
         name = "presignedUrlConfig",
         target_id = id.from(_N, "PresignedUrlConfig"),
         target = M.PresignedUrlConfig,
      }),
      jobExecutionsRolloutConfig = schema.new({
         id = id.from(_N, "Job", "jobExecutionsRolloutConfig"),
         type = "structure",
         name = "jobExecutionsRolloutConfig",
         target_id = id.from(_N, "JobExecutionsRolloutConfig"),
         target = M.JobExecutionsRolloutConfig,
      }),
      abortConfig = schema.new({
         id = id.from(_N, "Job", "abortConfig"),
         type = "structure",
         name = "abortConfig",
         target_id = id.from(_N, "AbortConfig"),
         target = M.AbortConfig,
      }),
      createdAt = schema.new({
         id = id.from(_N, "Job", "createdAt"),
         type = "timestamp",
         name = "createdAt",
         target_id = prelude.Timestamp.id,
      }),
      lastUpdatedAt = schema.new({
         id = id.from(_N, "Job", "lastUpdatedAt"),
         type = "timestamp",
         name = "lastUpdatedAt",
         target_id = prelude.Timestamp.id,
      }),
      completedAt = schema.new({
         id = id.from(_N, "Job", "completedAt"),
         type = "timestamp",
         name = "completedAt",
         target_id = prelude.Timestamp.id,
      }),
      jobProcessDetails = schema.new({
         id = id.from(_N, "Job", "jobProcessDetails"),
         type = "structure",
         name = "jobProcessDetails",
         target_id = id.from(_N, "JobProcessDetails"),
         target = M.JobProcessDetails,
      }),
      timeoutConfig = schema.new({
         id = id.from(_N, "Job", "timeoutConfig"),
         type = "structure",
         name = "timeoutConfig",
         target_id = id.from(_N, "TimeoutConfig"),
         target = M.TimeoutConfig,
      }),
      namespaceId = schema.new({
         id = id.from(_N, "Job", "namespaceId"),
         type = "string",
         name = "namespaceId",
         target_id = prelude.String.id,
      }),
      jobTemplateArn = schema.new({
         id = id.from(_N, "Job", "jobTemplateArn"),
         type = "string",
         name = "jobTemplateArn",
         target_id = prelude.String.id,
      }),
      jobExecutionsRetryConfig = schema.new({
         id = id.from(_N, "Job", "jobExecutionsRetryConfig"),
         type = "structure",
         name = "jobExecutionsRetryConfig",
         target_id = id.from(_N, "JobExecutionsRetryConfig"),
         target = M.JobExecutionsRetryConfig,
      }),
      documentParameters = schema.new({
         id = id.from(_N, "Job", "documentParameters"),
         type = "map",
         name = "documentParameters",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      isConcurrent = schema.new({
         id = id.from(_N, "Job", "isConcurrent"),
         type = "boolean",
         name = "isConcurrent",
         target_id = prelude.Boolean.id,
      }),
      schedulingConfig = schema.new({
         id = id.from(_N, "Job", "schedulingConfig"),
         type = "structure",
         name = "schedulingConfig",
         target_id = id.from(_N, "SchedulingConfig"),
         target = M.SchedulingConfig,
      }),
      scheduledJobRollouts = schema.new({
         id = id.from(_N, "Job", "scheduledJobRollouts"),
         type = "list",
         name = "scheduledJobRollouts",
         target_id = prelude.Document.id,
         list_member = M.ScheduledJobRollout,
      }),
      destinationPackageVersions = schema.new({
         id = id.from(_N, "Job", "destinationPackageVersions"),
         type = "list",
         name = "destinationPackageVersions",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.DescribeJobOutput = schema.new({
   id = id.from(_N, "DescribeJobResponse"),
   type = "structure",
   members = {
      documentSource = schema.new({
         id = id.from(_N, "DescribeJobOutput", "documentSource"),
         type = "string",
         name = "documentSource",
         target_id = prelude.String.id,
      }),
      job = schema.new({
         id = id.from(_N, "DescribeJobOutput", "job"),
         type = "structure",
         name = "job",
         target_id = id.from(_N, "Job"),
         target = M.Job,
      }),
   },
})

M.DescribeJobExecutionInput = schema.new({
   id = id.from(_N, "DescribeJobExecutionRequest"),
   type = "structure",
   members = {
      jobId = schema.new({
         id = id.from(_N, "DescribeJobExecutionInput", "jobId"),
         type = "string",
         name = "jobId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      thingName = schema.new({
         id = id.from(_N, "DescribeJobExecutionInput", "thingName"),
         type = "string",
         name = "thingName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      executionNumber = schema.new({
         id = id.from(_N, "DescribeJobExecutionInput", "executionNumber"),
         type = "long",
         name = "executionNumber",
         target_id = prelude.Long.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "executionNumber" },
         },
      }),
   },
})

M.JobExecutionStatusDetails = schema.new({
   id = id.from(_N, "JobExecutionStatusDetails"),
   type = "structure",
   members = {
      detailsMap = schema.new({
         id = id.from(_N, "JobExecutionStatusDetails", "detailsMap"),
         type = "map",
         name = "detailsMap",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.JobExecution = schema.new({
   id = id.from(_N, "JobExecution"),
   type = "structure",
   members = {
      jobId = schema.new({
         id = id.from(_N, "JobExecution", "jobId"),
         type = "string",
         name = "jobId",
         target_id = prelude.String.id,
      }),
      status = schema.new({
         id = id.from(_N, "JobExecution", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
      forceCanceled = schema.new({
         id = id.from(_N, "JobExecution", "forceCanceled"),
         type = "boolean",
         name = "forceCanceled",
         target_id = prelude.Boolean.id,
      }),
      statusDetails = schema.new({
         id = id.from(_N, "JobExecution", "statusDetails"),
         type = "structure",
         name = "statusDetails",
         target_id = id.from(_N, "JobExecutionStatusDetails"),
         target = M.JobExecutionStatusDetails,
      }),
      thingArn = schema.new({
         id = id.from(_N, "JobExecution", "thingArn"),
         type = "string",
         name = "thingArn",
         target_id = prelude.String.id,
      }),
      queuedAt = schema.new({
         id = id.from(_N, "JobExecution", "queuedAt"),
         type = "timestamp",
         name = "queuedAt",
         target_id = prelude.Timestamp.id,
      }),
      startedAt = schema.new({
         id = id.from(_N, "JobExecution", "startedAt"),
         type = "timestamp",
         name = "startedAt",
         target_id = prelude.Timestamp.id,
      }),
      lastUpdatedAt = schema.new({
         id = id.from(_N, "JobExecution", "lastUpdatedAt"),
         type = "timestamp",
         name = "lastUpdatedAt",
         target_id = prelude.Timestamp.id,
      }),
      executionNumber = schema.new({
         id = id.from(_N, "JobExecution", "executionNumber"),
         type = "long",
         name = "executionNumber",
         target_id = prelude.Long.id,
      }),
      versionNumber = schema.new({
         id = id.from(_N, "JobExecution", "versionNumber"),
         type = "long",
         name = "versionNumber",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      approximateSecondsBeforeTimedOut = schema.new({
         id = id.from(_N, "JobExecution", "approximateSecondsBeforeTimedOut"),
         type = "long",
         name = "approximateSecondsBeforeTimedOut",
         target_id = prelude.Long.id,
      }),
   },
})

M.DescribeJobExecutionOutput = schema.new({
   id = id.from(_N, "DescribeJobExecutionResponse"),
   type = "structure",
   members = {
      execution = schema.new({
         id = id.from(_N, "DescribeJobExecutionOutput", "execution"),
         type = "structure",
         name = "execution",
         target_id = id.from(_N, "JobExecution"),
         target = M.JobExecution,
      }),
   },
})

M.DescribeJobTemplateInput = schema.new({
   id = id.from(_N, "DescribeJobTemplateRequest"),
   type = "structure",
   members = {
      jobTemplateId = schema.new({
         id = id.from(_N, "DescribeJobTemplateInput", "jobTemplateId"),
         type = "string",
         name = "jobTemplateId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DescribeJobTemplateOutput = schema.new({
   id = id.from(_N, "DescribeJobTemplateResponse"),
   type = "structure",
   members = {
      jobTemplateArn = schema.new({
         id = id.from(_N, "DescribeJobTemplateOutput", "jobTemplateArn"),
         type = "string",
         name = "jobTemplateArn",
         target_id = prelude.String.id,
      }),
      jobTemplateId = schema.new({
         id = id.from(_N, "DescribeJobTemplateOutput", "jobTemplateId"),
         type = "string",
         name = "jobTemplateId",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "DescribeJobTemplateOutput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      documentSource = schema.new({
         id = id.from(_N, "DescribeJobTemplateOutput", "documentSource"),
         type = "string",
         name = "documentSource",
         target_id = prelude.String.id,
      }),
      document = schema.new({
         id = id.from(_N, "DescribeJobTemplateOutput", "document"),
         type = "string",
         name = "document",
         target_id = prelude.String.id,
      }),
      createdAt = schema.new({
         id = id.from(_N, "DescribeJobTemplateOutput", "createdAt"),
         type = "timestamp",
         name = "createdAt",
         target_id = prelude.Timestamp.id,
      }),
      presignedUrlConfig = schema.new({
         id = id.from(_N, "DescribeJobTemplateOutput", "presignedUrlConfig"),
         type = "structure",
         name = "presignedUrlConfig",
         target_id = id.from(_N, "PresignedUrlConfig"),
         target = M.PresignedUrlConfig,
      }),
      jobExecutionsRolloutConfig = schema.new({
         id = id.from(_N, "DescribeJobTemplateOutput", "jobExecutionsRolloutConfig"),
         type = "structure",
         name = "jobExecutionsRolloutConfig",
         target_id = id.from(_N, "JobExecutionsRolloutConfig"),
         target = M.JobExecutionsRolloutConfig,
      }),
      abortConfig = schema.new({
         id = id.from(_N, "DescribeJobTemplateOutput", "abortConfig"),
         type = "structure",
         name = "abortConfig",
         target_id = id.from(_N, "AbortConfig"),
         target = M.AbortConfig,
      }),
      timeoutConfig = schema.new({
         id = id.from(_N, "DescribeJobTemplateOutput", "timeoutConfig"),
         type = "structure",
         name = "timeoutConfig",
         target_id = id.from(_N, "TimeoutConfig"),
         target = M.TimeoutConfig,
      }),
      jobExecutionsRetryConfig = schema.new({
         id = id.from(_N, "DescribeJobTemplateOutput", "jobExecutionsRetryConfig"),
         type = "structure",
         name = "jobExecutionsRetryConfig",
         target_id = id.from(_N, "JobExecutionsRetryConfig"),
         target = M.JobExecutionsRetryConfig,
      }),
      maintenanceWindows = schema.new({
         id = id.from(_N, "DescribeJobTemplateOutput", "maintenanceWindows"),
         type = "list",
         name = "maintenanceWindows",
         target_id = prelude.Document.id,
         list_member = M.MaintenanceWindow,
      }),
      destinationPackageVersions = schema.new({
         id = id.from(_N, "DescribeJobTemplateOutput", "destinationPackageVersions"),
         type = "list",
         name = "destinationPackageVersions",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.DescribeManagedJobTemplateInput = schema.new({
   id = id.from(_N, "DescribeManagedJobTemplateRequest"),
   type = "structure",
   members = {
      templateName = schema.new({
         id = id.from(_N, "DescribeManagedJobTemplateInput", "templateName"),
         type = "string",
         name = "templateName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      templateVersion = schema.new({
         id = id.from(_N, "DescribeManagedJobTemplateInput", "templateVersion"),
         type = "string",
         name = "templateVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "templateVersion" },
         },
      }),
   },
})

M.DocumentParameter = schema.new({
   id = id.from(_N, "DocumentParameter"),
   type = "structure",
   members = {
      key = schema.new({
         id = id.from(_N, "DocumentParameter", "key"),
         type = "string",
         name = "key",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "DocumentParameter", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      regex = schema.new({
         id = id.from(_N, "DocumentParameter", "regex"),
         type = "string",
         name = "regex",
         target_id = prelude.String.id,
      }),
      example = schema.new({
         id = id.from(_N, "DocumentParameter", "example"),
         type = "string",
         name = "example",
         target_id = prelude.String.id,
      }),
      optional = schema.new({
         id = id.from(_N, "DocumentParameter", "optional"),
         type = "boolean",
         name = "optional",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
   },
})

M.DescribeManagedJobTemplateOutput = schema.new({
   id = id.from(_N, "DescribeManagedJobTemplateResponse"),
   type = "structure",
   members = {
      templateName = schema.new({
         id = id.from(_N, "DescribeManagedJobTemplateOutput", "templateName"),
         type = "string",
         name = "templateName",
         target_id = prelude.String.id,
      }),
      templateArn = schema.new({
         id = id.from(_N, "DescribeManagedJobTemplateOutput", "templateArn"),
         type = "string",
         name = "templateArn",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "DescribeManagedJobTemplateOutput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      templateVersion = schema.new({
         id = id.from(_N, "DescribeManagedJobTemplateOutput", "templateVersion"),
         type = "string",
         name = "templateVersion",
         target_id = prelude.String.id,
      }),
      environments = schema.new({
         id = id.from(_N, "DescribeManagedJobTemplateOutput", "environments"),
         type = "list",
         name = "environments",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      documentParameters = schema.new({
         id = id.from(_N, "DescribeManagedJobTemplateOutput", "documentParameters"),
         type = "list",
         name = "documentParameters",
         target_id = prelude.Document.id,
         list_member = M.DocumentParameter,
      }),
      document = schema.new({
         id = id.from(_N, "DescribeManagedJobTemplateOutput", "document"),
         type = "string",
         name = "document",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeMitigationActionInput = schema.new({
   id = id.from(_N, "DescribeMitigationActionRequest"),
   type = "structure",
   members = {
      actionName = schema.new({
         id = id.from(_N, "DescribeMitigationActionInput", "actionName"),
         type = "string",
         name = "actionName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DescribeMitigationActionOutput = schema.new({
   id = id.from(_N, "DescribeMitigationActionResponse"),
   type = "structure",
   members = {
      actionName = schema.new({
         id = id.from(_N, "DescribeMitigationActionOutput", "actionName"),
         type = "string",
         name = "actionName",
         target_id = prelude.String.id,
      }),
      actionType = schema.new({
         id = id.from(_N, "DescribeMitigationActionOutput", "actionType"),
         type = "string",
         name = "actionType",
         target_id = prelude.String.id,
      }),
      actionArn = schema.new({
         id = id.from(_N, "DescribeMitigationActionOutput", "actionArn"),
         type = "string",
         name = "actionArn",
         target_id = prelude.String.id,
      }),
      actionId = schema.new({
         id = id.from(_N, "DescribeMitigationActionOutput", "actionId"),
         type = "string",
         name = "actionId",
         target_id = prelude.String.id,
      }),
      roleArn = schema.new({
         id = id.from(_N, "DescribeMitigationActionOutput", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
      }),
      actionParams = schema.new({
         id = id.from(_N, "DescribeMitigationActionOutput", "actionParams"),
         type = "structure",
         name = "actionParams",
         target_id = id.from(_N, "MitigationActionParams"),
         target = M.MitigationActionParams,
      }),
      creationDate = schema.new({
         id = id.from(_N, "DescribeMitigationActionOutput", "creationDate"),
         type = "timestamp",
         name = "creationDate",
         target_id = prelude.Timestamp.id,
      }),
      lastModifiedDate = schema.new({
         id = id.from(_N, "DescribeMitigationActionOutput", "lastModifiedDate"),
         type = "timestamp",
         name = "lastModifiedDate",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.DescribeProvisioningTemplateInput = schema.new({
   id = id.from(_N, "DescribeProvisioningTemplateRequest"),
   type = "structure",
   members = {
      templateName = schema.new({
         id = id.from(_N, "DescribeProvisioningTemplateInput", "templateName"),
         type = "string",
         name = "templateName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DescribeProvisioningTemplateOutput = schema.new({
   id = id.from(_N, "DescribeProvisioningTemplateResponse"),
   type = "structure",
   members = {
      templateArn = schema.new({
         id = id.from(_N, "DescribeProvisioningTemplateOutput", "templateArn"),
         type = "string",
         name = "templateArn",
         target_id = prelude.String.id,
      }),
      templateName = schema.new({
         id = id.from(_N, "DescribeProvisioningTemplateOutput", "templateName"),
         type = "string",
         name = "templateName",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "DescribeProvisioningTemplateOutput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      creationDate = schema.new({
         id = id.from(_N, "DescribeProvisioningTemplateOutput", "creationDate"),
         type = "timestamp",
         name = "creationDate",
         target_id = prelude.Timestamp.id,
      }),
      lastModifiedDate = schema.new({
         id = id.from(_N, "DescribeProvisioningTemplateOutput", "lastModifiedDate"),
         type = "timestamp",
         name = "lastModifiedDate",
         target_id = prelude.Timestamp.id,
      }),
      defaultVersionId = schema.new({
         id = id.from(_N, "DescribeProvisioningTemplateOutput", "defaultVersionId"),
         type = "integer",
         name = "defaultVersionId",
         target_id = prelude.Integer.id,
      }),
      templateBody = schema.new({
         id = id.from(_N, "DescribeProvisioningTemplateOutput", "templateBody"),
         type = "string",
         name = "templateBody",
         target_id = prelude.String.id,
      }),
      enabled = schema.new({
         id = id.from(_N, "DescribeProvisioningTemplateOutput", "enabled"),
         type = "boolean",
         name = "enabled",
         target_id = prelude.Boolean.id,
      }),
      provisioningRoleArn = schema.new({
         id = id.from(_N, "DescribeProvisioningTemplateOutput", "provisioningRoleArn"),
         type = "string",
         name = "provisioningRoleArn",
         target_id = prelude.String.id,
      }),
      preProvisioningHook = schema.new({
         id = id.from(_N, "DescribeProvisioningTemplateOutput", "preProvisioningHook"),
         type = "structure",
         name = "preProvisioningHook",
         target_id = id.from(_N, "ProvisioningHook"),
         target = M.ProvisioningHook,
      }),
      type = schema.new({
         id = id.from(_N, "DescribeProvisioningTemplateOutput", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeProvisioningTemplateVersionInput = schema.new({
   id = id.from(_N, "DescribeProvisioningTemplateVersionRequest"),
   type = "structure",
   members = {
      templateName = schema.new({
         id = id.from(_N, "DescribeProvisioningTemplateVersionInput", "templateName"),
         type = "string",
         name = "templateName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      versionId = schema.new({
         id = id.from(_N, "DescribeProvisioningTemplateVersionInput", "versionId"),
         type = "integer",
         name = "versionId",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DescribeProvisioningTemplateVersionOutput = schema.new({
   id = id.from(_N, "DescribeProvisioningTemplateVersionResponse"),
   type = "structure",
   members = {
      versionId = schema.new({
         id = id.from(_N, "DescribeProvisioningTemplateVersionOutput", "versionId"),
         type = "integer",
         name = "versionId",
         target_id = prelude.Integer.id,
      }),
      creationDate = schema.new({
         id = id.from(_N, "DescribeProvisioningTemplateVersionOutput", "creationDate"),
         type = "timestamp",
         name = "creationDate",
         target_id = prelude.Timestamp.id,
      }),
      templateBody = schema.new({
         id = id.from(_N, "DescribeProvisioningTemplateVersionOutput", "templateBody"),
         type = "string",
         name = "templateBody",
         target_id = prelude.String.id,
      }),
      isDefaultVersion = schema.new({
         id = id.from(_N, "DescribeProvisioningTemplateVersionOutput", "isDefaultVersion"),
         type = "boolean",
         name = "isDefaultVersion",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
   },
})

M.DescribeRoleAliasInput = schema.new({
   id = id.from(_N, "DescribeRoleAliasRequest"),
   type = "structure",
   members = {
      roleAlias = schema.new({
         id = id.from(_N, "DescribeRoleAliasInput", "roleAlias"),
         type = "string",
         name = "roleAlias",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.RoleAliasDescription = schema.new({
   id = id.from(_N, "RoleAliasDescription"),
   type = "structure",
   members = {
      roleAlias = schema.new({
         id = id.from(_N, "RoleAliasDescription", "roleAlias"),
         type = "string",
         name = "roleAlias",
         target_id = prelude.String.id,
      }),
      roleAliasArn = schema.new({
         id = id.from(_N, "RoleAliasDescription", "roleAliasArn"),
         type = "string",
         name = "roleAliasArn",
         target_id = prelude.String.id,
      }),
      roleArn = schema.new({
         id = id.from(_N, "RoleAliasDescription", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
      }),
      owner = schema.new({
         id = id.from(_N, "RoleAliasDescription", "owner"),
         type = "string",
         name = "owner",
         target_id = prelude.String.id,
      }),
      credentialDurationSeconds = schema.new({
         id = id.from(_N, "RoleAliasDescription", "credentialDurationSeconds"),
         type = "integer",
         name = "credentialDurationSeconds",
         target_id = prelude.Integer.id,
      }),
      creationDate = schema.new({
         id = id.from(_N, "RoleAliasDescription", "creationDate"),
         type = "timestamp",
         name = "creationDate",
         target_id = prelude.Timestamp.id,
      }),
      lastModifiedDate = schema.new({
         id = id.from(_N, "RoleAliasDescription", "lastModifiedDate"),
         type = "timestamp",
         name = "lastModifiedDate",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.DescribeRoleAliasOutput = schema.new({
   id = id.from(_N, "DescribeRoleAliasResponse"),
   type = "structure",
   members = {
      roleAliasDescription = schema.new({
         id = id.from(_N, "DescribeRoleAliasOutput", "roleAliasDescription"),
         type = "structure",
         name = "roleAliasDescription",
         target_id = id.from(_N, "RoleAliasDescription"),
         target = M.RoleAliasDescription,
      }),
   },
})

M.DescribeScheduledAuditInput = schema.new({
   id = id.from(_N, "DescribeScheduledAuditRequest"),
   type = "structure",
   members = {
      scheduledAuditName = schema.new({
         id = id.from(_N, "DescribeScheduledAuditInput", "scheduledAuditName"),
         type = "string",
         name = "scheduledAuditName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DescribeScheduledAuditOutput = schema.new({
   id = id.from(_N, "DescribeScheduledAuditResponse"),
   type = "structure",
   members = {
      frequency = schema.new({
         id = id.from(_N, "DescribeScheduledAuditOutput", "frequency"),
         type = "string",
         name = "frequency",
         target_id = prelude.String.id,
      }),
      dayOfMonth = schema.new({
         id = id.from(_N, "DescribeScheduledAuditOutput", "dayOfMonth"),
         type = "string",
         name = "dayOfMonth",
         target_id = prelude.String.id,
      }),
      dayOfWeek = schema.new({
         id = id.from(_N, "DescribeScheduledAuditOutput", "dayOfWeek"),
         type = "string",
         name = "dayOfWeek",
         target_id = prelude.String.id,
      }),
      targetCheckNames = schema.new({
         id = id.from(_N, "DescribeScheduledAuditOutput", "targetCheckNames"),
         type = "list",
         name = "targetCheckNames",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      scheduledAuditName = schema.new({
         id = id.from(_N, "DescribeScheduledAuditOutput", "scheduledAuditName"),
         type = "string",
         name = "scheduledAuditName",
         target_id = prelude.String.id,
      }),
      scheduledAuditArn = schema.new({
         id = id.from(_N, "DescribeScheduledAuditOutput", "scheduledAuditArn"),
         type = "string",
         name = "scheduledAuditArn",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeSecurityProfileInput = schema.new({
   id = id.from(_N, "DescribeSecurityProfileRequest"),
   type = "structure",
   members = {
      securityProfileName = schema.new({
         id = id.from(_N, "DescribeSecurityProfileInput", "securityProfileName"),
         type = "string",
         name = "securityProfileName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DescribeSecurityProfileOutput = schema.new({
   id = id.from(_N, "DescribeSecurityProfileResponse"),
   type = "structure",
   members = {
      securityProfileName = schema.new({
         id = id.from(_N, "DescribeSecurityProfileOutput", "securityProfileName"),
         type = "string",
         name = "securityProfileName",
         target_id = prelude.String.id,
      }),
      securityProfileArn = schema.new({
         id = id.from(_N, "DescribeSecurityProfileOutput", "securityProfileArn"),
         type = "string",
         name = "securityProfileArn",
         target_id = prelude.String.id,
      }),
      securityProfileDescription = schema.new({
         id = id.from(_N, "DescribeSecurityProfileOutput", "securityProfileDescription"),
         type = "string",
         name = "securityProfileDescription",
         target_id = prelude.String.id,
      }),
      behaviors = schema.new({
         id = id.from(_N, "DescribeSecurityProfileOutput", "behaviors"),
         type = "list",
         name = "behaviors",
         target_id = prelude.Document.id,
         list_member = M.Behavior,
      }),
      alertTargets = schema.new({
         id = id.from(_N, "DescribeSecurityProfileOutput", "alertTargets"),
         type = "map",
         name = "alertTargets",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.AlertTarget,
      }),
      additionalMetricsToRetain = schema.new({
         id = id.from(_N, "DescribeSecurityProfileOutput", "additionalMetricsToRetain"),
         type = "list",
         name = "additionalMetricsToRetain",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      additionalMetricsToRetainV2 = schema.new({
         id = id.from(_N, "DescribeSecurityProfileOutput", "additionalMetricsToRetainV2"),
         type = "list",
         name = "additionalMetricsToRetainV2",
         target_id = prelude.Document.id,
         list_member = M.MetricToRetain,
      }),
      version = schema.new({
         id = id.from(_N, "DescribeSecurityProfileOutput", "version"),
         type = "long",
         name = "version",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      creationDate = schema.new({
         id = id.from(_N, "DescribeSecurityProfileOutput", "creationDate"),
         type = "timestamp",
         name = "creationDate",
         target_id = prelude.Timestamp.id,
      }),
      lastModifiedDate = schema.new({
         id = id.from(_N, "DescribeSecurityProfileOutput", "lastModifiedDate"),
         type = "timestamp",
         name = "lastModifiedDate",
         target_id = prelude.Timestamp.id,
      }),
      metricsExportConfig = schema.new({
         id = id.from(_N, "DescribeSecurityProfileOutput", "metricsExportConfig"),
         type = "structure",
         name = "metricsExportConfig",
         target_id = id.from(_N, "MetricsExportConfig"),
         target = M.MetricsExportConfig,
      }),
   },
})

M.DescribeStreamInput = schema.new({
   id = id.from(_N, "DescribeStreamRequest"),
   type = "structure",
   members = {
      streamId = schema.new({
         id = id.from(_N, "DescribeStreamInput", "streamId"),
         type = "string",
         name = "streamId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.StreamInfo = schema.new({
   id = id.from(_N, "StreamInfo"),
   type = "structure",
   members = {
      streamId = schema.new({
         id = id.from(_N, "StreamInfo", "streamId"),
         type = "string",
         name = "streamId",
         target_id = prelude.String.id,
      }),
      streamArn = schema.new({
         id = id.from(_N, "StreamInfo", "streamArn"),
         type = "string",
         name = "streamArn",
         target_id = prelude.String.id,
      }),
      streamVersion = schema.new({
         id = id.from(_N, "StreamInfo", "streamVersion"),
         type = "integer",
         name = "streamVersion",
         target_id = prelude.Integer.id,
      }),
      description = schema.new({
         id = id.from(_N, "StreamInfo", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      files = schema.new({
         id = id.from(_N, "StreamInfo", "files"),
         type = "list",
         name = "files",
         target_id = prelude.Document.id,
         list_member = M.StreamFile,
      }),
      createdAt = schema.new({
         id = id.from(_N, "StreamInfo", "createdAt"),
         type = "timestamp",
         name = "createdAt",
         target_id = prelude.Timestamp.id,
      }),
      lastUpdatedAt = schema.new({
         id = id.from(_N, "StreamInfo", "lastUpdatedAt"),
         type = "timestamp",
         name = "lastUpdatedAt",
         target_id = prelude.Timestamp.id,
      }),
      roleArn = schema.new({
         id = id.from(_N, "StreamInfo", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeStreamOutput = schema.new({
   id = id.from(_N, "DescribeStreamResponse"),
   type = "structure",
   members = {
      streamInfo = schema.new({
         id = id.from(_N, "DescribeStreamOutput", "streamInfo"),
         type = "structure",
         name = "streamInfo",
         target_id = id.from(_N, "StreamInfo"),
         target = M.StreamInfo,
      }),
   },
})

M.DescribeThingInput = schema.new({
   id = id.from(_N, "DescribeThingRequest"),
   type = "structure",
   members = {
      thingName = schema.new({
         id = id.from(_N, "DescribeThingInput", "thingName"),
         type = "string",
         name = "thingName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DescribeThingOutput = schema.new({
   id = id.from(_N, "DescribeThingResponse"),
   type = "structure",
   members = {
      defaultClientId = schema.new({
         id = id.from(_N, "DescribeThingOutput", "defaultClientId"),
         type = "string",
         name = "defaultClientId",
         target_id = prelude.String.id,
      }),
      thingName = schema.new({
         id = id.from(_N, "DescribeThingOutput", "thingName"),
         type = "string",
         name = "thingName",
         target_id = prelude.String.id,
      }),
      thingId = schema.new({
         id = id.from(_N, "DescribeThingOutput", "thingId"),
         type = "string",
         name = "thingId",
         target_id = prelude.String.id,
      }),
      thingArn = schema.new({
         id = id.from(_N, "DescribeThingOutput", "thingArn"),
         type = "string",
         name = "thingArn",
         target_id = prelude.String.id,
      }),
      thingTypeName = schema.new({
         id = id.from(_N, "DescribeThingOutput", "thingTypeName"),
         type = "string",
         name = "thingTypeName",
         target_id = prelude.String.id,
      }),
      attributes = schema.new({
         id = id.from(_N, "DescribeThingOutput", "attributes"),
         type = "map",
         name = "attributes",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      version = schema.new({
         id = id.from(_N, "DescribeThingOutput", "version"),
         type = "long",
         name = "version",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      billingGroupName = schema.new({
         id = id.from(_N, "DescribeThingOutput", "billingGroupName"),
         type = "string",
         name = "billingGroupName",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeThingGroupInput = schema.new({
   id = id.from(_N, "DescribeThingGroupRequest"),
   type = "structure",
   members = {
      thingGroupName = schema.new({
         id = id.from(_N, "DescribeThingGroupInput", "thingGroupName"),
         type = "string",
         name = "thingGroupName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GroupNameAndArn = schema.new({
   id = id.from(_N, "GroupNameAndArn"),
   type = "structure",
   members = {
      groupName = schema.new({
         id = id.from(_N, "GroupNameAndArn", "groupName"),
         type = "string",
         name = "groupName",
         target_id = prelude.String.id,
      }),
      groupArn = schema.new({
         id = id.from(_N, "GroupNameAndArn", "groupArn"),
         type = "string",
         name = "groupArn",
         target_id = prelude.String.id,
      }),
   },
})

M.ThingGroupMetadata = schema.new({
   id = id.from(_N, "ThingGroupMetadata"),
   type = "structure",
   members = {
      parentGroupName = schema.new({
         id = id.from(_N, "ThingGroupMetadata", "parentGroupName"),
         type = "string",
         name = "parentGroupName",
         target_id = prelude.String.id,
      }),
      rootToParentThingGroups = schema.new({
         id = id.from(_N, "ThingGroupMetadata", "rootToParentThingGroups"),
         type = "list",
         name = "rootToParentThingGroups",
         target_id = prelude.Document.id,
         list_member = M.GroupNameAndArn,
      }),
      creationDate = schema.new({
         id = id.from(_N, "ThingGroupMetadata", "creationDate"),
         type = "timestamp",
         name = "creationDate",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.DescribeThingGroupOutput = schema.new({
   id = id.from(_N, "DescribeThingGroupResponse"),
   type = "structure",
   members = {
      thingGroupName = schema.new({
         id = id.from(_N, "DescribeThingGroupOutput", "thingGroupName"),
         type = "string",
         name = "thingGroupName",
         target_id = prelude.String.id,
      }),
      thingGroupId = schema.new({
         id = id.from(_N, "DescribeThingGroupOutput", "thingGroupId"),
         type = "string",
         name = "thingGroupId",
         target_id = prelude.String.id,
      }),
      thingGroupArn = schema.new({
         id = id.from(_N, "DescribeThingGroupOutput", "thingGroupArn"),
         type = "string",
         name = "thingGroupArn",
         target_id = prelude.String.id,
      }),
      version = schema.new({
         id = id.from(_N, "DescribeThingGroupOutput", "version"),
         type = "long",
         name = "version",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      thingGroupProperties = schema.new({
         id = id.from(_N, "DescribeThingGroupOutput", "thingGroupProperties"),
         type = "structure",
         name = "thingGroupProperties",
         target_id = id.from(_N, "ThingGroupProperties"),
         target = M.ThingGroupProperties,
      }),
      thingGroupMetadata = schema.new({
         id = id.from(_N, "DescribeThingGroupOutput", "thingGroupMetadata"),
         type = "structure",
         name = "thingGroupMetadata",
         target_id = id.from(_N, "ThingGroupMetadata"),
         target = M.ThingGroupMetadata,
      }),
      indexName = schema.new({
         id = id.from(_N, "DescribeThingGroupOutput", "indexName"),
         type = "string",
         name = "indexName",
         target_id = prelude.String.id,
      }),
      queryString = schema.new({
         id = id.from(_N, "DescribeThingGroupOutput", "queryString"),
         type = "string",
         name = "queryString",
         target_id = prelude.String.id,
      }),
      queryVersion = schema.new({
         id = id.from(_N, "DescribeThingGroupOutput", "queryVersion"),
         type = "string",
         name = "queryVersion",
         target_id = prelude.String.id,
      }),
      status = schema.new({
         id = id.from(_N, "DescribeThingGroupOutput", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeThingRegistrationTaskInput = schema.new({
   id = id.from(_N, "DescribeThingRegistrationTaskRequest"),
   type = "structure",
   members = {
      taskId = schema.new({
         id = id.from(_N, "DescribeThingRegistrationTaskInput", "taskId"),
         type = "string",
         name = "taskId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DescribeThingRegistrationTaskOutput = schema.new({
   id = id.from(_N, "DescribeThingRegistrationTaskResponse"),
   type = "structure",
   members = {
      taskId = schema.new({
         id = id.from(_N, "DescribeThingRegistrationTaskOutput", "taskId"),
         type = "string",
         name = "taskId",
         target_id = prelude.String.id,
      }),
      creationDate = schema.new({
         id = id.from(_N, "DescribeThingRegistrationTaskOutput", "creationDate"),
         type = "timestamp",
         name = "creationDate",
         target_id = prelude.Timestamp.id,
      }),
      lastModifiedDate = schema.new({
         id = id.from(_N, "DescribeThingRegistrationTaskOutput", "lastModifiedDate"),
         type = "timestamp",
         name = "lastModifiedDate",
         target_id = prelude.Timestamp.id,
      }),
      templateBody = schema.new({
         id = id.from(_N, "DescribeThingRegistrationTaskOutput", "templateBody"),
         type = "string",
         name = "templateBody",
         target_id = prelude.String.id,
      }),
      inputFileBucket = schema.new({
         id = id.from(_N, "DescribeThingRegistrationTaskOutput", "inputFileBucket"),
         type = "string",
         name = "inputFileBucket",
         target_id = prelude.String.id,
      }),
      inputFileKey = schema.new({
         id = id.from(_N, "DescribeThingRegistrationTaskOutput", "inputFileKey"),
         type = "string",
         name = "inputFileKey",
         target_id = prelude.String.id,
      }),
      roleArn = schema.new({
         id = id.from(_N, "DescribeThingRegistrationTaskOutput", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
      }),
      status = schema.new({
         id = id.from(_N, "DescribeThingRegistrationTaskOutput", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
      message = schema.new({
         id = id.from(_N, "DescribeThingRegistrationTaskOutput", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
      successCount = schema.new({
         id = id.from(_N, "DescribeThingRegistrationTaskOutput", "successCount"),
         type = "integer",
         name = "successCount",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      failureCount = schema.new({
         id = id.from(_N, "DescribeThingRegistrationTaskOutput", "failureCount"),
         type = "integer",
         name = "failureCount",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      percentageProgress = schema.new({
         id = id.from(_N, "DescribeThingRegistrationTaskOutput", "percentageProgress"),
         type = "integer",
         name = "percentageProgress",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
   },
})

M.DescribeThingTypeInput = schema.new({
   id = id.from(_N, "DescribeThingTypeRequest"),
   type = "structure",
   members = {
      thingTypeName = schema.new({
         id = id.from(_N, "DescribeThingTypeInput", "thingTypeName"),
         type = "string",
         name = "thingTypeName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.ThingTypeMetadata = schema.new({
   id = id.from(_N, "ThingTypeMetadata"),
   type = "structure",
   members = {
      deprecated = schema.new({
         id = id.from(_N, "ThingTypeMetadata", "deprecated"),
         type = "boolean",
         name = "deprecated",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      deprecationDate = schema.new({
         id = id.from(_N, "ThingTypeMetadata", "deprecationDate"),
         type = "timestamp",
         name = "deprecationDate",
         target_id = prelude.Timestamp.id,
      }),
      creationDate = schema.new({
         id = id.from(_N, "ThingTypeMetadata", "creationDate"),
         type = "timestamp",
         name = "creationDate",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.DescribeThingTypeOutput = schema.new({
   id = id.from(_N, "DescribeThingTypeResponse"),
   type = "structure",
   members = {
      thingTypeName = schema.new({
         id = id.from(_N, "DescribeThingTypeOutput", "thingTypeName"),
         type = "string",
         name = "thingTypeName",
         target_id = prelude.String.id,
      }),
      thingTypeId = schema.new({
         id = id.from(_N, "DescribeThingTypeOutput", "thingTypeId"),
         type = "string",
         name = "thingTypeId",
         target_id = prelude.String.id,
      }),
      thingTypeArn = schema.new({
         id = id.from(_N, "DescribeThingTypeOutput", "thingTypeArn"),
         type = "string",
         name = "thingTypeArn",
         target_id = prelude.String.id,
      }),
      thingTypeProperties = schema.new({
         id = id.from(_N, "DescribeThingTypeOutput", "thingTypeProperties"),
         type = "structure",
         name = "thingTypeProperties",
         target_id = id.from(_N, "ThingTypeProperties"),
         target = M.ThingTypeProperties,
      }),
      thingTypeMetadata = schema.new({
         id = id.from(_N, "DescribeThingTypeOutput", "thingTypeMetadata"),
         type = "structure",
         name = "thingTypeMetadata",
         target_id = id.from(_N, "ThingTypeMetadata"),
         target = M.ThingTypeMetadata,
      }),
   },
})

M.DetachPolicyInput = schema.new({
   id = id.from(_N, "DetachPolicyRequest"),
   type = "structure",
   members = {
      policyName = schema.new({
         id = id.from(_N, "DetachPolicyInput", "policyName"),
         type = "string",
         name = "policyName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      target = schema.new({
         id = id.from(_N, "DetachPolicyInput", "target"),
         type = "string",
         name = "target",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DetachPolicyOutput = prelude.Unit

M.DetachPrincipalPolicyInput = schema.new({
   id = id.from(_N, "DetachPrincipalPolicyRequest"),
   type = "structure",
   members = {
      policyName = schema.new({
         id = id.from(_N, "DetachPrincipalPolicyInput", "policyName"),
         type = "string",
         name = "policyName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      principal = schema.new({
         id = id.from(_N, "DetachPrincipalPolicyInput", "principal"),
         type = "string",
         name = "principal",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_HEADER] = { name = "x-amzn-iot-principal" },
         },
      }),
   },
})

M.DetachPrincipalPolicyOutput = prelude.Unit

M.DetachSecurityProfileInput = schema.new({
   id = id.from(_N, "DetachSecurityProfileRequest"),
   type = "structure",
   members = {
      securityProfileName = schema.new({
         id = id.from(_N, "DetachSecurityProfileInput", "securityProfileName"),
         type = "string",
         name = "securityProfileName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      securityProfileTargetArn = schema.new({
         id = id.from(_N, "DetachSecurityProfileInput", "securityProfileTargetArn"),
         type = "string",
         name = "securityProfileTargetArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "securityProfileTargetArn" },
         },
      }),
   },
})

M.DetachSecurityProfileOutput = schema.new({
   id = id.from(_N, "DetachSecurityProfileResponse"),
   type = "structure",
})

M.DetachThingPrincipalInput = schema.new({
   id = id.from(_N, "DetachThingPrincipalRequest"),
   type = "structure",
   members = {
      thingName = schema.new({
         id = id.from(_N, "DetachThingPrincipalInput", "thingName"),
         type = "string",
         name = "thingName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      principal = schema.new({
         id = id.from(_N, "DetachThingPrincipalInput", "principal"),
         type = "string",
         name = "principal",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_HEADER] = { name = "x-amzn-principal" },
         },
      }),
   },
})

M.DetachThingPrincipalOutput = schema.new({
   id = id.from(_N, "DetachThingPrincipalResponse"),
   type = "structure",
})

M.DisableTopicRuleInput = schema.new({
   id = id.from(_N, "DisableTopicRuleRequest"),
   type = "structure",
   members = {
      ruleName = schema.new({
         id = id.from(_N, "DisableTopicRuleInput", "ruleName"),
         type = "string",
         name = "ruleName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DisableTopicRuleOutput = prelude.Unit

M.DisassociateSbomFromPackageVersionInput = schema.new({
   id = id.from(_N, "DisassociateSbomFromPackageVersionRequest"),
   type = "structure",
   members = {
      packageName = schema.new({
         id = id.from(_N, "DisassociateSbomFromPackageVersionInput", "packageName"),
         type = "string",
         name = "packageName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      versionName = schema.new({
         id = id.from(_N, "DisassociateSbomFromPackageVersionInput", "versionName"),
         type = "string",
         name = "versionName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      clientToken = schema.new({
         id = id.from(_N, "DisassociateSbomFromPackageVersionInput", "clientToken"),
         type = "string",
         name = "clientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "clientToken" },
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
   },
})

M.DisassociateSbomFromPackageVersionOutput = schema.new({
   id = id.from(_N, "DisassociateSbomFromPackageVersionResponse"),
   type = "structure",
})

M.EnableTopicRuleInput = schema.new({
   id = id.from(_N, "EnableTopicRuleRequest"),
   type = "structure",
   members = {
      ruleName = schema.new({
         id = id.from(_N, "EnableTopicRuleInput", "ruleName"),
         type = "string",
         name = "ruleName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.EnableTopicRuleOutput = prelude.Unit

M.GetBehaviorModelTrainingSummariesInput = schema.new({
   id = id.from(_N, "GetBehaviorModelTrainingSummariesRequest"),
   type = "structure",
   members = {
      securityProfileName = schema.new({
         id = id.from(_N, "GetBehaviorModelTrainingSummariesInput", "securityProfileName"),
         type = "string",
         name = "securityProfileName",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "securityProfileName" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "GetBehaviorModelTrainingSummariesInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "GetBehaviorModelTrainingSummariesInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
   },
})

M.BehaviorModelTrainingSummary = schema.new({
   id = id.from(_N, "BehaviorModelTrainingSummary"),
   type = "structure",
   members = {
      securityProfileName = schema.new({
         id = id.from(_N, "BehaviorModelTrainingSummary", "securityProfileName"),
         type = "string",
         name = "securityProfileName",
         target_id = prelude.String.id,
      }),
      behaviorName = schema.new({
         id = id.from(_N, "BehaviorModelTrainingSummary", "behaviorName"),
         type = "string",
         name = "behaviorName",
         target_id = prelude.String.id,
      }),
      trainingDataCollectionStartDate = schema.new({
         id = id.from(_N, "BehaviorModelTrainingSummary", "trainingDataCollectionStartDate"),
         type = "timestamp",
         name = "trainingDataCollectionStartDate",
         target_id = prelude.Timestamp.id,
      }),
      modelStatus = schema.new({
         id = id.from(_N, "BehaviorModelTrainingSummary", "modelStatus"),
         type = "string",
         name = "modelStatus",
         target_id = prelude.String.id,
      }),
      datapointsCollectionPercentage = schema.new({
         id = id.from(_N, "BehaviorModelTrainingSummary", "datapointsCollectionPercentage"),
         type = "double",
         name = "datapointsCollectionPercentage",
         target_id = prelude.Double.id,
      }),
      lastModelRefreshDate = schema.new({
         id = id.from(_N, "BehaviorModelTrainingSummary", "lastModelRefreshDate"),
         type = "timestamp",
         name = "lastModelRefreshDate",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.GetBehaviorModelTrainingSummariesOutput = schema.new({
   id = id.from(_N, "GetBehaviorModelTrainingSummariesResponse"),
   type = "structure",
   members = {
      summaries = schema.new({
         id = id.from(_N, "GetBehaviorModelTrainingSummariesOutput", "summaries"),
         type = "list",
         name = "summaries",
         target_id = prelude.Document.id,
         list_member = M.BehaviorModelTrainingSummary,
      }),
      nextToken = schema.new({
         id = id.from(_N, "GetBehaviorModelTrainingSummariesOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.TermsAggregation = schema.new({
   id = id.from(_N, "TermsAggregation"),
   type = "structure",
   members = {
      maxBuckets = schema.new({
         id = id.from(_N, "TermsAggregation", "maxBuckets"),
         type = "integer",
         name = "maxBuckets",
         target_id = prelude.Integer.id,
      }),
   },
})

M.BucketsAggregationType = schema.new({
   id = id.from(_N, "BucketsAggregationType"),
   type = "structure",
   members = {
      termsAggregation = schema.new({
         id = id.from(_N, "BucketsAggregationType", "termsAggregation"),
         type = "structure",
         name = "termsAggregation",
         target_id = id.from(_N, "TermsAggregation"),
         target = M.TermsAggregation,
      }),
   },
})

M.GetBucketsAggregationInput = schema.new({
   id = id.from(_N, "GetBucketsAggregationRequest"),
   type = "structure",
   members = {
      indexName = schema.new({
         id = id.from(_N, "GetBucketsAggregationInput", "indexName"),
         type = "string",
         name = "indexName",
         target_id = prelude.String.id,
      }),
      queryString = schema.new({
         id = id.from(_N, "GetBucketsAggregationInput", "queryString"),
         type = "string",
         name = "queryString",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      aggregationField = schema.new({
         id = id.from(_N, "GetBucketsAggregationInput", "aggregationField"),
         type = "string",
         name = "aggregationField",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      queryVersion = schema.new({
         id = id.from(_N, "GetBucketsAggregationInput", "queryVersion"),
         type = "string",
         name = "queryVersion",
         target_id = prelude.String.id,
      }),
      bucketsAggregationType = schema.new({
         id = id.from(_N, "GetBucketsAggregationInput", "bucketsAggregationType"),
         type = "structure",
         name = "bucketsAggregationType",
         target_id = id.from(_N, "BucketsAggregationType"),
         target = M.BucketsAggregationType,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.Bucket = schema.new({
   id = id.from(_N, "Bucket"),
   type = "structure",
   members = {
      keyValue = schema.new({
         id = id.from(_N, "Bucket", "keyValue"),
         type = "string",
         name = "keyValue",
         target_id = prelude.String.id,
      }),
      count = schema.new({
         id = id.from(_N, "Bucket", "count"),
         type = "integer",
         name = "count",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
   },
})

M.GetBucketsAggregationOutput = schema.new({
   id = id.from(_N, "GetBucketsAggregationResponse"),
   type = "structure",
   members = {
      totalCount = schema.new({
         id = id.from(_N, "GetBucketsAggregationOutput", "totalCount"),
         type = "integer",
         name = "totalCount",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      buckets = schema.new({
         id = id.from(_N, "GetBucketsAggregationOutput", "buckets"),
         type = "list",
         name = "buckets",
         target_id = prelude.Document.id,
         list_member = M.Bucket,
      }),
   },
})

M.GetCardinalityInput = schema.new({
   id = id.from(_N, "GetCardinalityRequest"),
   type = "structure",
   members = {
      indexName = schema.new({
         id = id.from(_N, "GetCardinalityInput", "indexName"),
         type = "string",
         name = "indexName",
         target_id = prelude.String.id,
      }),
      queryString = schema.new({
         id = id.from(_N, "GetCardinalityInput", "queryString"),
         type = "string",
         name = "queryString",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      aggregationField = schema.new({
         id = id.from(_N, "GetCardinalityInput", "aggregationField"),
         type = "string",
         name = "aggregationField",
         target_id = prelude.String.id,
      }),
      queryVersion = schema.new({
         id = id.from(_N, "GetCardinalityInput", "queryVersion"),
         type = "string",
         name = "queryVersion",
         target_id = prelude.String.id,
      }),
   },
})

M.GetCardinalityOutput = schema.new({
   id = id.from(_N, "GetCardinalityResponse"),
   type = "structure",
   members = {
      cardinality = schema.new({
         id = id.from(_N, "GetCardinalityOutput", "cardinality"),
         type = "integer",
         name = "cardinality",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
   },
})

M.GetCommandInput = schema.new({
   id = id.from(_N, "GetCommandRequest"),
   type = "structure",
   members = {
      commandId = schema.new({
         id = id.from(_N, "GetCommandInput", "commandId"),
         type = "string",
         name = "commandId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetCommandOutput = schema.new({
   id = id.from(_N, "GetCommandResponse"),
   type = "structure",
   members = {
      commandId = schema.new({
         id = id.from(_N, "GetCommandOutput", "commandId"),
         type = "string",
         name = "commandId",
         target_id = prelude.String.id,
      }),
      commandArn = schema.new({
         id = id.from(_N, "GetCommandOutput", "commandArn"),
         type = "string",
         name = "commandArn",
         target_id = prelude.String.id,
      }),
      namespace = schema.new({
         id = id.from(_N, "GetCommandOutput", "namespace"),
         type = "string",
         name = "namespace",
         target_id = prelude.String.id,
      }),
      displayName = schema.new({
         id = id.from(_N, "GetCommandOutput", "displayName"),
         type = "string",
         name = "displayName",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "GetCommandOutput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      mandatoryParameters = schema.new({
         id = id.from(_N, "GetCommandOutput", "mandatoryParameters"),
         type = "list",
         name = "mandatoryParameters",
         target_id = prelude.Document.id,
         list_member = M.CommandParameter,
      }),
      payload = schema.new({
         id = id.from(_N, "GetCommandOutput", "payload"),
         type = "structure",
         name = "payload",
         target_id = id.from(_N, "CommandPayload"),
         target = M.CommandPayload,
      }),
      payloadTemplate = schema.new({
         id = id.from(_N, "GetCommandOutput", "payloadTemplate"),
         type = "string",
         name = "payloadTemplate",
         target_id = prelude.String.id,
      }),
      preprocessor = schema.new({
         id = id.from(_N, "GetCommandOutput", "preprocessor"),
         type = "structure",
         name = "preprocessor",
         target_id = id.from(_N, "CommandPreprocessor"),
         target = M.CommandPreprocessor,
      }),
      roleArn = schema.new({
         id = id.from(_N, "GetCommandOutput", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
      }),
      createdAt = schema.new({
         id = id.from(_N, "GetCommandOutput", "createdAt"),
         type = "timestamp",
         name = "createdAt",
         target_id = prelude.Timestamp.id,
      }),
      lastUpdatedAt = schema.new({
         id = id.from(_N, "GetCommandOutput", "lastUpdatedAt"),
         type = "timestamp",
         name = "lastUpdatedAt",
         target_id = prelude.Timestamp.id,
      }),
      deprecated = schema.new({
         id = id.from(_N, "GetCommandOutput", "deprecated"),
         type = "boolean",
         name = "deprecated",
         target_id = prelude.Boolean.id,
      }),
      pendingDeletion = schema.new({
         id = id.from(_N, "GetCommandOutput", "pendingDeletion"),
         type = "boolean",
         name = "pendingDeletion",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.GetCommandExecutionInput = schema.new({
   id = id.from(_N, "GetCommandExecutionRequest"),
   type = "structure",
   members = {
      executionId = schema.new({
         id = id.from(_N, "GetCommandExecutionInput", "executionId"),
         type = "string",
         name = "executionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      targetArn = schema.new({
         id = id.from(_N, "GetCommandExecutionInput", "targetArn"),
         type = "string",
         name = "targetArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "targetArn" },
         },
      }),
      includeResult = schema.new({
         id = id.from(_N, "GetCommandExecutionInput", "includeResult"),
         type = "boolean",
         name = "includeResult",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "includeResult" },
         },
      }),
   },
})

M.CommandExecutionResult = schema.new({
   id = id.from(_N, "CommandExecutionResult"),
   type = "structure",
   members = {
      S = schema.new({
         id = id.from(_N, "CommandExecutionResult", "S"),
         type = "string",
         name = "S",
         target_id = prelude.String.id,
      }),
      B = schema.new({
         id = id.from(_N, "CommandExecutionResult", "B"),
         type = "boolean",
         name = "B",
         target_id = prelude.Boolean.id,
      }),
      BIN = schema.new({
         id = id.from(_N, "CommandExecutionResult", "BIN"),
         type = "blob",
         name = "BIN",
         target_id = prelude.Blob.id,
      }),
   },
})

M.StatusReason = schema.new({
   id = id.from(_N, "StatusReason"),
   type = "structure",
   members = {
      reasonCode = schema.new({
         id = id.from(_N, "StatusReason", "reasonCode"),
         type = "string",
         name = "reasonCode",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      reasonDescription = schema.new({
         id = id.from(_N, "StatusReason", "reasonDescription"),
         type = "string",
         name = "reasonDescription",
         target_id = prelude.String.id,
      }),
   },
})

M.GetCommandExecutionOutput = schema.new({
   id = id.from(_N, "GetCommandExecutionResponse"),
   type = "structure",
   members = {
      executionId = schema.new({
         id = id.from(_N, "GetCommandExecutionOutput", "executionId"),
         type = "string",
         name = "executionId",
         target_id = prelude.String.id,
      }),
      commandArn = schema.new({
         id = id.from(_N, "GetCommandExecutionOutput", "commandArn"),
         type = "string",
         name = "commandArn",
         target_id = prelude.String.id,
      }),
      targetArn = schema.new({
         id = id.from(_N, "GetCommandExecutionOutput", "targetArn"),
         type = "string",
         name = "targetArn",
         target_id = prelude.String.id,
      }),
      status = schema.new({
         id = id.from(_N, "GetCommandExecutionOutput", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
      statusReason = schema.new({
         id = id.from(_N, "GetCommandExecutionOutput", "statusReason"),
         type = "structure",
         name = "statusReason",
         target_id = id.from(_N, "StatusReason"),
         target = M.StatusReason,
      }),
      result = schema.new({
         id = id.from(_N, "GetCommandExecutionOutput", "result"),
         type = "map",
         name = "result",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.CommandExecutionResult,
      }),
      parameters = schema.new({
         id = id.from(_N, "GetCommandExecutionOutput", "parameters"),
         type = "map",
         name = "parameters",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.CommandParameterValue,
      }),
      executionTimeoutSeconds = schema.new({
         id = id.from(_N, "GetCommandExecutionOutput", "executionTimeoutSeconds"),
         type = "long",
         name = "executionTimeoutSeconds",
         target_id = prelude.Long.id,
      }),
      createdAt = schema.new({
         id = id.from(_N, "GetCommandExecutionOutput", "createdAt"),
         type = "timestamp",
         name = "createdAt",
         target_id = prelude.Timestamp.id,
      }),
      lastUpdatedAt = schema.new({
         id = id.from(_N, "GetCommandExecutionOutput", "lastUpdatedAt"),
         type = "timestamp",
         name = "lastUpdatedAt",
         target_id = prelude.Timestamp.id,
      }),
      startedAt = schema.new({
         id = id.from(_N, "GetCommandExecutionOutput", "startedAt"),
         type = "timestamp",
         name = "startedAt",
         target_id = prelude.Timestamp.id,
      }),
      completedAt = schema.new({
         id = id.from(_N, "GetCommandExecutionOutput", "completedAt"),
         type = "timestamp",
         name = "completedAt",
         target_id = prelude.Timestamp.id,
      }),
      timeToLive = schema.new({
         id = id.from(_N, "GetCommandExecutionOutput", "timeToLive"),
         type = "timestamp",
         name = "timeToLive",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.GetEffectivePoliciesInput = schema.new({
   id = id.from(_N, "GetEffectivePoliciesRequest"),
   type = "structure",
   members = {
      principal = schema.new({
         id = id.from(_N, "GetEffectivePoliciesInput", "principal"),
         type = "string",
         name = "principal",
         target_id = prelude.String.id,
      }),
      cognitoIdentityPoolId = schema.new({
         id = id.from(_N, "GetEffectivePoliciesInput", "cognitoIdentityPoolId"),
         type = "string",
         name = "cognitoIdentityPoolId",
         target_id = prelude.String.id,
      }),
      thingName = schema.new({
         id = id.from(_N, "GetEffectivePoliciesInput", "thingName"),
         type = "string",
         name = "thingName",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "thingName" },
         },
      }),
   },
})

M.EffectivePolicy = schema.new({
   id = id.from(_N, "EffectivePolicy"),
   type = "structure",
   members = {
      policyName = schema.new({
         id = id.from(_N, "EffectivePolicy", "policyName"),
         type = "string",
         name = "policyName",
         target_id = prelude.String.id,
      }),
      policyArn = schema.new({
         id = id.from(_N, "EffectivePolicy", "policyArn"),
         type = "string",
         name = "policyArn",
         target_id = prelude.String.id,
      }),
      policyDocument = schema.new({
         id = id.from(_N, "EffectivePolicy", "policyDocument"),
         type = "string",
         name = "policyDocument",
         target_id = prelude.String.id,
      }),
   },
})

M.GetEffectivePoliciesOutput = schema.new({
   id = id.from(_N, "GetEffectivePoliciesResponse"),
   type = "structure",
   members = {
      effectivePolicies = schema.new({
         id = id.from(_N, "GetEffectivePoliciesOutput", "effectivePolicies"),
         type = "list",
         name = "effectivePolicies",
         target_id = prelude.Document.id,
         list_member = M.EffectivePolicy,
      }),
   },
})

M.GetIndexingConfigurationInput = schema.new({
   id = id.from(_N, "GetIndexingConfigurationRequest"),
   type = "structure",
})

M.Field = schema.new({
   id = id.from(_N, "Field"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "Field", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      type = schema.new({
         id = id.from(_N, "Field", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
      }),
   },
})

M.ThingGroupIndexingConfiguration = schema.new({
   id = id.from(_N, "ThingGroupIndexingConfiguration"),
   type = "structure",
   members = {
      thingGroupIndexingMode = schema.new({
         id = id.from(_N, "ThingGroupIndexingConfiguration", "thingGroupIndexingMode"),
         type = "string",
         name = "thingGroupIndexingMode",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      managedFields = schema.new({
         id = id.from(_N, "ThingGroupIndexingConfiguration", "managedFields"),
         type = "list",
         name = "managedFields",
         target_id = prelude.Document.id,
         list_member = M.Field,
      }),
      customFields = schema.new({
         id = id.from(_N, "ThingGroupIndexingConfiguration", "customFields"),
         type = "list",
         name = "customFields",
         target_id = prelude.Document.id,
         list_member = M.Field,
      }),
   },
})

M.GeoLocationTarget = schema.new({
   id = id.from(_N, "GeoLocationTarget"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "GeoLocationTarget", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      order = schema.new({
         id = id.from(_N, "GeoLocationTarget", "order"),
         type = "string",
         name = "order",
         target_id = prelude.String.id,
      }),
   },
})

M.IndexingFilter = schema.new({
   id = id.from(_N, "IndexingFilter"),
   type = "structure",
   members = {
      namedShadowNames = schema.new({
         id = id.from(_N, "IndexingFilter", "namedShadowNames"),
         type = "list",
         name = "namedShadowNames",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      geoLocations = schema.new({
         id = id.from(_N, "IndexingFilter", "geoLocations"),
         type = "list",
         name = "geoLocations",
         target_id = prelude.Document.id,
         list_member = M.GeoLocationTarget,
      }),
   },
})

M.ThingIndexingConfiguration = schema.new({
   id = id.from(_N, "ThingIndexingConfiguration"),
   type = "structure",
   members = {
      thingIndexingMode = schema.new({
         id = id.from(_N, "ThingIndexingConfiguration", "thingIndexingMode"),
         type = "string",
         name = "thingIndexingMode",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      thingConnectivityIndexingMode = schema.new({
         id = id.from(_N, "ThingIndexingConfiguration", "thingConnectivityIndexingMode"),
         type = "string",
         name = "thingConnectivityIndexingMode",
         target_id = prelude.String.id,
      }),
      deviceDefenderIndexingMode = schema.new({
         id = id.from(_N, "ThingIndexingConfiguration", "deviceDefenderIndexingMode"),
         type = "string",
         name = "deviceDefenderIndexingMode",
         target_id = prelude.String.id,
      }),
      namedShadowIndexingMode = schema.new({
         id = id.from(_N, "ThingIndexingConfiguration", "namedShadowIndexingMode"),
         type = "string",
         name = "namedShadowIndexingMode",
         target_id = prelude.String.id,
      }),
      managedFields = schema.new({
         id = id.from(_N, "ThingIndexingConfiguration", "managedFields"),
         type = "list",
         name = "managedFields",
         target_id = prelude.Document.id,
         list_member = M.Field,
      }),
      customFields = schema.new({
         id = id.from(_N, "ThingIndexingConfiguration", "customFields"),
         type = "list",
         name = "customFields",
         target_id = prelude.Document.id,
         list_member = M.Field,
      }),
      filter = schema.new({
         id = id.from(_N, "ThingIndexingConfiguration", "filter"),
         type = "structure",
         name = "filter",
         target_id = id.from(_N, "IndexingFilter"),
         target = M.IndexingFilter,
      }),
   },
})

M.GetIndexingConfigurationOutput = schema.new({
   id = id.from(_N, "GetIndexingConfigurationResponse"),
   type = "structure",
   members = {
      thingIndexingConfiguration = schema.new({
         id = id.from(_N, "GetIndexingConfigurationOutput", "thingIndexingConfiguration"),
         type = "structure",
         name = "thingIndexingConfiguration",
         target_id = id.from(_N, "ThingIndexingConfiguration"),
         target = M.ThingIndexingConfiguration,
      }),
      thingGroupIndexingConfiguration = schema.new({
         id = id.from(_N, "GetIndexingConfigurationOutput", "thingGroupIndexingConfiguration"),
         type = "structure",
         name = "thingGroupIndexingConfiguration",
         target_id = id.from(_N, "ThingGroupIndexingConfiguration"),
         target = M.ThingGroupIndexingConfiguration,
      }),
   },
})

M.GetJobDocumentInput = schema.new({
   id = id.from(_N, "GetJobDocumentRequest"),
   type = "structure",
   members = {
      jobId = schema.new({
         id = id.from(_N, "GetJobDocumentInput", "jobId"),
         type = "string",
         name = "jobId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      beforeSubstitution = schema.new({
         id = id.from(_N, "GetJobDocumentInput", "beforeSubstitution"),
         type = "boolean",
         name = "beforeSubstitution",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
            [traits.HTTP_QUERY] = { name = "beforeSubstitution" },
         },
      }),
   },
})

M.GetJobDocumentOutput = schema.new({
   id = id.from(_N, "GetJobDocumentResponse"),
   type = "structure",
   members = {
      document = schema.new({
         id = id.from(_N, "GetJobDocumentOutput", "document"),
         type = "string",
         name = "document",
         target_id = prelude.String.id,
      }),
   },
})

M.GetLoggingOptionsInput = schema.new({
   id = id.from(_N, "GetLoggingOptionsRequest"),
   type = "structure",
})

M.GetLoggingOptionsOutput = schema.new({
   id = id.from(_N, "GetLoggingOptionsResponse"),
   type = "structure",
   members = {
      roleArn = schema.new({
         id = id.from(_N, "GetLoggingOptionsOutput", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
      }),
      logLevel = schema.new({
         id = id.from(_N, "GetLoggingOptionsOutput", "logLevel"),
         type = "string",
         name = "logLevel",
         target_id = prelude.String.id,
      }),
   },
})

M.GetOTAUpdateInput = schema.new({
   id = id.from(_N, "GetOTAUpdateRequest"),
   type = "structure",
   members = {
      otaUpdateId = schema.new({
         id = id.from(_N, "GetOTAUpdateInput", "otaUpdateId"),
         type = "string",
         name = "otaUpdateId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.ErrorInfo = schema.new({
   id = id.from(_N, "ErrorInfo"),
   type = "structure",
   members = {
      code = schema.new({
         id = id.from(_N, "ErrorInfo", "code"),
         type = "string",
         name = "code",
         target_id = prelude.String.id,
      }),
      message = schema.new({
         id = id.from(_N, "ErrorInfo", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.OTAUpdateInfo = schema.new({
   id = id.from(_N, "OTAUpdateInfo"),
   type = "structure",
   members = {
      otaUpdateId = schema.new({
         id = id.from(_N, "OTAUpdateInfo", "otaUpdateId"),
         type = "string",
         name = "otaUpdateId",
         target_id = prelude.String.id,
      }),
      otaUpdateArn = schema.new({
         id = id.from(_N, "OTAUpdateInfo", "otaUpdateArn"),
         type = "string",
         name = "otaUpdateArn",
         target_id = prelude.String.id,
      }),
      creationDate = schema.new({
         id = id.from(_N, "OTAUpdateInfo", "creationDate"),
         type = "timestamp",
         name = "creationDate",
         target_id = prelude.Timestamp.id,
      }),
      lastModifiedDate = schema.new({
         id = id.from(_N, "OTAUpdateInfo", "lastModifiedDate"),
         type = "timestamp",
         name = "lastModifiedDate",
         target_id = prelude.Timestamp.id,
      }),
      description = schema.new({
         id = id.from(_N, "OTAUpdateInfo", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      targets = schema.new({
         id = id.from(_N, "OTAUpdateInfo", "targets"),
         type = "list",
         name = "targets",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      protocols = schema.new({
         id = id.from(_N, "OTAUpdateInfo", "protocols"),
         type = "list",
         name = "protocols",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      awsJobExecutionsRolloutConfig = schema.new({
         id = id.from(_N, "OTAUpdateInfo", "awsJobExecutionsRolloutConfig"),
         type = "structure",
         name = "awsJobExecutionsRolloutConfig",
         target_id = id.from(_N, "AwsJobExecutionsRolloutConfig"),
         target = M.AwsJobExecutionsRolloutConfig,
      }),
      awsJobPresignedUrlConfig = schema.new({
         id = id.from(_N, "OTAUpdateInfo", "awsJobPresignedUrlConfig"),
         type = "structure",
         name = "awsJobPresignedUrlConfig",
         target_id = id.from(_N, "AwsJobPresignedUrlConfig"),
         target = M.AwsJobPresignedUrlConfig,
      }),
      targetSelection = schema.new({
         id = id.from(_N, "OTAUpdateInfo", "targetSelection"),
         type = "string",
         name = "targetSelection",
         target_id = prelude.String.id,
      }),
      otaUpdateFiles = schema.new({
         id = id.from(_N, "OTAUpdateInfo", "otaUpdateFiles"),
         type = "list",
         name = "otaUpdateFiles",
         target_id = prelude.Document.id,
         list_member = M.OTAUpdateFile,
      }),
      otaUpdateStatus = schema.new({
         id = id.from(_N, "OTAUpdateInfo", "otaUpdateStatus"),
         type = "string",
         name = "otaUpdateStatus",
         target_id = prelude.String.id,
      }),
      awsIotJobId = schema.new({
         id = id.from(_N, "OTAUpdateInfo", "awsIotJobId"),
         type = "string",
         name = "awsIotJobId",
         target_id = prelude.String.id,
      }),
      awsIotJobArn = schema.new({
         id = id.from(_N, "OTAUpdateInfo", "awsIotJobArn"),
         type = "string",
         name = "awsIotJobArn",
         target_id = prelude.String.id,
      }),
      errorInfo = schema.new({
         id = id.from(_N, "OTAUpdateInfo", "errorInfo"),
         type = "structure",
         name = "errorInfo",
         target_id = id.from(_N, "ErrorInfo"),
         target = M.ErrorInfo,
      }),
      additionalParameters = schema.new({
         id = id.from(_N, "OTAUpdateInfo", "additionalParameters"),
         type = "map",
         name = "additionalParameters",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.GetOTAUpdateOutput = schema.new({
   id = id.from(_N, "GetOTAUpdateResponse"),
   type = "structure",
   members = {
      otaUpdateInfo = schema.new({
         id = id.from(_N, "GetOTAUpdateOutput", "otaUpdateInfo"),
         type = "structure",
         name = "otaUpdateInfo",
         target_id = id.from(_N, "OTAUpdateInfo"),
         target = M.OTAUpdateInfo,
      }),
   },
})

M.GetPackageInput = schema.new({
   id = id.from(_N, "GetPackageRequest"),
   type = "structure",
   members = {
      packageName = schema.new({
         id = id.from(_N, "GetPackageInput", "packageName"),
         type = "string",
         name = "packageName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetPackageOutput = schema.new({
   id = id.from(_N, "GetPackageResponse"),
   type = "structure",
   members = {
      packageName = schema.new({
         id = id.from(_N, "GetPackageOutput", "packageName"),
         type = "string",
         name = "packageName",
         target_id = prelude.String.id,
      }),
      packageArn = schema.new({
         id = id.from(_N, "GetPackageOutput", "packageArn"),
         type = "string",
         name = "packageArn",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "GetPackageOutput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      defaultVersionName = schema.new({
         id = id.from(_N, "GetPackageOutput", "defaultVersionName"),
         type = "string",
         name = "defaultVersionName",
         target_id = prelude.String.id,
      }),
      creationDate = schema.new({
         id = id.from(_N, "GetPackageOutput", "creationDate"),
         type = "timestamp",
         name = "creationDate",
         target_id = prelude.Timestamp.id,
      }),
      lastModifiedDate = schema.new({
         id = id.from(_N, "GetPackageOutput", "lastModifiedDate"),
         type = "timestamp",
         name = "lastModifiedDate",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.GetPackageConfigurationInput = schema.new({
   id = id.from(_N, "GetPackageConfigurationRequest"),
   type = "structure",
})

M.VersionUpdateByJobsConfig = schema.new({
   id = id.from(_N, "VersionUpdateByJobsConfig"),
   type = "structure",
   members = {
      enabled = schema.new({
         id = id.from(_N, "VersionUpdateByJobsConfig", "enabled"),
         type = "boolean",
         name = "enabled",
         target_id = prelude.Boolean.id,
      }),
      roleArn = schema.new({
         id = id.from(_N, "VersionUpdateByJobsConfig", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
      }),
   },
})

M.GetPackageConfigurationOutput = schema.new({
   id = id.from(_N, "GetPackageConfigurationResponse"),
   type = "structure",
   members = {
      versionUpdateByJobsConfig = schema.new({
         id = id.from(_N, "GetPackageConfigurationOutput", "versionUpdateByJobsConfig"),
         type = "structure",
         name = "versionUpdateByJobsConfig",
         target_id = id.from(_N, "VersionUpdateByJobsConfig"),
         target = M.VersionUpdateByJobsConfig,
      }),
   },
})

M.GetPackageVersionInput = schema.new({
   id = id.from(_N, "GetPackageVersionRequest"),
   type = "structure",
   members = {
      packageName = schema.new({
         id = id.from(_N, "GetPackageVersionInput", "packageName"),
         type = "string",
         name = "packageName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      versionName = schema.new({
         id = id.from(_N, "GetPackageVersionInput", "versionName"),
         type = "string",
         name = "versionName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetPackageVersionOutput = schema.new({
   id = id.from(_N, "GetPackageVersionResponse"),
   type = "structure",
   members = {
      packageVersionArn = schema.new({
         id = id.from(_N, "GetPackageVersionOutput", "packageVersionArn"),
         type = "string",
         name = "packageVersionArn",
         target_id = prelude.String.id,
      }),
      packageName = schema.new({
         id = id.from(_N, "GetPackageVersionOutput", "packageName"),
         type = "string",
         name = "packageName",
         target_id = prelude.String.id,
      }),
      versionName = schema.new({
         id = id.from(_N, "GetPackageVersionOutput", "versionName"),
         type = "string",
         name = "versionName",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "GetPackageVersionOutput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      attributes = schema.new({
         id = id.from(_N, "GetPackageVersionOutput", "attributes"),
         type = "map",
         name = "attributes",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      artifact = schema.new({
         id = id.from(_N, "GetPackageVersionOutput", "artifact"),
         type = "structure",
         name = "artifact",
         target_id = id.from(_N, "PackageVersionArtifact"),
         target = M.PackageVersionArtifact,
      }),
      status = schema.new({
         id = id.from(_N, "GetPackageVersionOutput", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
      errorReason = schema.new({
         id = id.from(_N, "GetPackageVersionOutput", "errorReason"),
         type = "string",
         name = "errorReason",
         target_id = prelude.String.id,
      }),
      creationDate = schema.new({
         id = id.from(_N, "GetPackageVersionOutput", "creationDate"),
         type = "timestamp",
         name = "creationDate",
         target_id = prelude.Timestamp.id,
      }),
      lastModifiedDate = schema.new({
         id = id.from(_N, "GetPackageVersionOutput", "lastModifiedDate"),
         type = "timestamp",
         name = "lastModifiedDate",
         target_id = prelude.Timestamp.id,
      }),
      sbom = schema.new({
         id = id.from(_N, "GetPackageVersionOutput", "sbom"),
         type = "structure",
         name = "sbom",
         target_id = id.from(_N, "Sbom"),
         target = M.Sbom,
      }),
      sbomValidationStatus = schema.new({
         id = id.from(_N, "GetPackageVersionOutput", "sbomValidationStatus"),
         type = "string",
         name = "sbomValidationStatus",
         target_id = prelude.String.id,
      }),
      recipe = schema.new({
         id = id.from(_N, "GetPackageVersionOutput", "recipe"),
         type = "string",
         name = "recipe",
         target_id = prelude.String.id,
      }),
   },
})

M.GetPercentilesInput = schema.new({
   id = id.from(_N, "GetPercentilesRequest"),
   type = "structure",
   members = {
      indexName = schema.new({
         id = id.from(_N, "GetPercentilesInput", "indexName"),
         type = "string",
         name = "indexName",
         target_id = prelude.String.id,
      }),
      queryString = schema.new({
         id = id.from(_N, "GetPercentilesInput", "queryString"),
         type = "string",
         name = "queryString",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      aggregationField = schema.new({
         id = id.from(_N, "GetPercentilesInput", "aggregationField"),
         type = "string",
         name = "aggregationField",
         target_id = prelude.String.id,
      }),
      queryVersion = schema.new({
         id = id.from(_N, "GetPercentilesInput", "queryVersion"),
         type = "string",
         name = "queryVersion",
         target_id = prelude.String.id,
      }),
      percents = schema.new({
         id = id.from(_N, "GetPercentilesInput", "percents"),
         type = "list",
         name = "percents",
         target_id = prelude.Document.id,
         list_member = prelude.Double,
      }),
   },
})

M.PercentPair = schema.new({
   id = id.from(_N, "PercentPair"),
   type = "structure",
   members = {
      percent = schema.new({
         id = id.from(_N, "PercentPair", "percent"),
         type = "double",
         name = "percent",
         target_id = prelude.Double.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      value = schema.new({
         id = id.from(_N, "PercentPair", "value"),
         type = "double",
         name = "value",
         target_id = prelude.Double.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
   },
})

M.GetPercentilesOutput = schema.new({
   id = id.from(_N, "GetPercentilesResponse"),
   type = "structure",
   members = {
      percentiles = schema.new({
         id = id.from(_N, "GetPercentilesOutput", "percentiles"),
         type = "list",
         name = "percentiles",
         target_id = prelude.Document.id,
         list_member = M.PercentPair,
      }),
   },
})

M.GetPolicyInput = schema.new({
   id = id.from(_N, "GetPolicyRequest"),
   type = "structure",
   members = {
      policyName = schema.new({
         id = id.from(_N, "GetPolicyInput", "policyName"),
         type = "string",
         name = "policyName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetPolicyOutput = schema.new({
   id = id.from(_N, "GetPolicyResponse"),
   type = "structure",
   members = {
      policyName = schema.new({
         id = id.from(_N, "GetPolicyOutput", "policyName"),
         type = "string",
         name = "policyName",
         target_id = prelude.String.id,
      }),
      policyArn = schema.new({
         id = id.from(_N, "GetPolicyOutput", "policyArn"),
         type = "string",
         name = "policyArn",
         target_id = prelude.String.id,
      }),
      policyDocument = schema.new({
         id = id.from(_N, "GetPolicyOutput", "policyDocument"),
         type = "string",
         name = "policyDocument",
         target_id = prelude.String.id,
      }),
      defaultVersionId = schema.new({
         id = id.from(_N, "GetPolicyOutput", "defaultVersionId"),
         type = "string",
         name = "defaultVersionId",
         target_id = prelude.String.id,
      }),
      creationDate = schema.new({
         id = id.from(_N, "GetPolicyOutput", "creationDate"),
         type = "timestamp",
         name = "creationDate",
         target_id = prelude.Timestamp.id,
      }),
      lastModifiedDate = schema.new({
         id = id.from(_N, "GetPolicyOutput", "lastModifiedDate"),
         type = "timestamp",
         name = "lastModifiedDate",
         target_id = prelude.Timestamp.id,
      }),
      generationId = schema.new({
         id = id.from(_N, "GetPolicyOutput", "generationId"),
         type = "string",
         name = "generationId",
         target_id = prelude.String.id,
      }),
   },
})

M.GetPolicyVersionInput = schema.new({
   id = id.from(_N, "GetPolicyVersionRequest"),
   type = "structure",
   members = {
      policyName = schema.new({
         id = id.from(_N, "GetPolicyVersionInput", "policyName"),
         type = "string",
         name = "policyName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      policyVersionId = schema.new({
         id = id.from(_N, "GetPolicyVersionInput", "policyVersionId"),
         type = "string",
         name = "policyVersionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetPolicyVersionOutput = schema.new({
   id = id.from(_N, "GetPolicyVersionResponse"),
   type = "structure",
   members = {
      policyArn = schema.new({
         id = id.from(_N, "GetPolicyVersionOutput", "policyArn"),
         type = "string",
         name = "policyArn",
         target_id = prelude.String.id,
      }),
      policyName = schema.new({
         id = id.from(_N, "GetPolicyVersionOutput", "policyName"),
         type = "string",
         name = "policyName",
         target_id = prelude.String.id,
      }),
      policyDocument = schema.new({
         id = id.from(_N, "GetPolicyVersionOutput", "policyDocument"),
         type = "string",
         name = "policyDocument",
         target_id = prelude.String.id,
      }),
      policyVersionId = schema.new({
         id = id.from(_N, "GetPolicyVersionOutput", "policyVersionId"),
         type = "string",
         name = "policyVersionId",
         target_id = prelude.String.id,
      }),
      isDefaultVersion = schema.new({
         id = id.from(_N, "GetPolicyVersionOutput", "isDefaultVersion"),
         type = "boolean",
         name = "isDefaultVersion",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      creationDate = schema.new({
         id = id.from(_N, "GetPolicyVersionOutput", "creationDate"),
         type = "timestamp",
         name = "creationDate",
         target_id = prelude.Timestamp.id,
      }),
      lastModifiedDate = schema.new({
         id = id.from(_N, "GetPolicyVersionOutput", "lastModifiedDate"),
         type = "timestamp",
         name = "lastModifiedDate",
         target_id = prelude.Timestamp.id,
      }),
      generationId = schema.new({
         id = id.from(_N, "GetPolicyVersionOutput", "generationId"),
         type = "string",
         name = "generationId",
         target_id = prelude.String.id,
      }),
   },
})

M.GetRegistrationCodeInput = schema.new({
   id = id.from(_N, "GetRegistrationCodeRequest"),
   type = "structure",
})

M.GetRegistrationCodeOutput = schema.new({
   id = id.from(_N, "GetRegistrationCodeResponse"),
   type = "structure",
   members = {
      registrationCode = schema.new({
         id = id.from(_N, "GetRegistrationCodeOutput", "registrationCode"),
         type = "string",
         name = "registrationCode",
         target_id = prelude.String.id,
      }),
   },
})

M.GetStatisticsInput = schema.new({
   id = id.from(_N, "GetStatisticsRequest"),
   type = "structure",
   members = {
      indexName = schema.new({
         id = id.from(_N, "GetStatisticsInput", "indexName"),
         type = "string",
         name = "indexName",
         target_id = prelude.String.id,
      }),
      queryString = schema.new({
         id = id.from(_N, "GetStatisticsInput", "queryString"),
         type = "string",
         name = "queryString",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      aggregationField = schema.new({
         id = id.from(_N, "GetStatisticsInput", "aggregationField"),
         type = "string",
         name = "aggregationField",
         target_id = prelude.String.id,
      }),
      queryVersion = schema.new({
         id = id.from(_N, "GetStatisticsInput", "queryVersion"),
         type = "string",
         name = "queryVersion",
         target_id = prelude.String.id,
      }),
   },
})

M.Statistics = schema.new({
   id = id.from(_N, "Statistics"),
   type = "structure",
   members = {
      count = schema.new({
         id = id.from(_N, "Statistics", "count"),
         type = "integer",
         name = "count",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      average = schema.new({
         id = id.from(_N, "Statistics", "average"),
         type = "double",
         name = "average",
         target_id = prelude.Double.id,
         traits = {
            [traits.DEFAULT] = { value = nil },
         },
      }),
      sum = schema.new({
         id = id.from(_N, "Statistics", "sum"),
         type = "double",
         name = "sum",
         target_id = prelude.Double.id,
         traits = {
            [traits.DEFAULT] = { value = nil },
         },
      }),
      minimum = schema.new({
         id = id.from(_N, "Statistics", "minimum"),
         type = "double",
         name = "minimum",
         target_id = prelude.Double.id,
         traits = {
            [traits.DEFAULT] = { value = nil },
         },
      }),
      maximum = schema.new({
         id = id.from(_N, "Statistics", "maximum"),
         type = "double",
         name = "maximum",
         target_id = prelude.Double.id,
         traits = {
            [traits.DEFAULT] = { value = nil },
         },
      }),
      sumOfSquares = schema.new({
         id = id.from(_N, "Statistics", "sumOfSquares"),
         type = "double",
         name = "sumOfSquares",
         target_id = prelude.Double.id,
         traits = {
            [traits.DEFAULT] = { value = nil },
         },
      }),
      variance = schema.new({
         id = id.from(_N, "Statistics", "variance"),
         type = "double",
         name = "variance",
         target_id = prelude.Double.id,
         traits = {
            [traits.DEFAULT] = { value = nil },
         },
      }),
      stdDeviation = schema.new({
         id = id.from(_N, "Statistics", "stdDeviation"),
         type = "double",
         name = "stdDeviation",
         target_id = prelude.Double.id,
         traits = {
            [traits.DEFAULT] = { value = nil },
         },
      }),
   },
})

M.GetStatisticsOutput = schema.new({
   id = id.from(_N, "GetStatisticsResponse"),
   type = "structure",
   members = {
      statistics = schema.new({
         id = id.from(_N, "GetStatisticsOutput", "statistics"),
         type = "structure",
         name = "statistics",
         target_id = id.from(_N, "Statistics"),
         target = M.Statistics,
      }),
   },
})

M.GetThingConnectivityDataInput = schema.new({
   id = id.from(_N, "GetThingConnectivityDataRequest"),
   type = "structure",
   members = {
      thingName = schema.new({
         id = id.from(_N, "GetThingConnectivityDataInput", "thingName"),
         type = "string",
         name = "thingName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetThingConnectivityDataOutput = schema.new({
   id = id.from(_N, "GetThingConnectivityDataResponse"),
   type = "structure",
   members = {
      thingName = schema.new({
         id = id.from(_N, "GetThingConnectivityDataOutput", "thingName"),
         type = "string",
         name = "thingName",
         target_id = prelude.String.id,
      }),
      connected = schema.new({
         id = id.from(_N, "GetThingConnectivityDataOutput", "connected"),
         type = "boolean",
         name = "connected",
         target_id = prelude.Boolean.id,
      }),
      timestamp = schema.new({
         id = id.from(_N, "GetThingConnectivityDataOutput", "timestamp"),
         type = "timestamp",
         name = "timestamp",
         target_id = prelude.Timestamp.id,
      }),
      disconnectReason = schema.new({
         id = id.from(_N, "GetThingConnectivityDataOutput", "disconnectReason"),
         type = "string",
         name = "disconnectReason",
         target_id = prelude.String.id,
      }),
   },
})

M.GetTopicRuleInput = schema.new({
   id = id.from(_N, "GetTopicRuleRequest"),
   type = "structure",
   members = {
      ruleName = schema.new({
         id = id.from(_N, "GetTopicRuleInput", "ruleName"),
         type = "string",
         name = "ruleName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.TopicRule = schema.new({
   id = id.from(_N, "TopicRule"),
   type = "structure",
   members = {
      ruleName = schema.new({
         id = id.from(_N, "TopicRule", "ruleName"),
         type = "string",
         name = "ruleName",
         target_id = prelude.String.id,
      }),
      sql = schema.new({
         id = id.from(_N, "TopicRule", "sql"),
         type = "string",
         name = "sql",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "TopicRule", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      createdAt = schema.new({
         id = id.from(_N, "TopicRule", "createdAt"),
         type = "timestamp",
         name = "createdAt",
         target_id = prelude.Timestamp.id,
      }),
      actions = schema.new({
         id = id.from(_N, "TopicRule", "actions"),
         type = "list",
         name = "actions",
         target_id = prelude.Document.id,
         list_member = M.Action,
      }),
      ruleDisabled = schema.new({
         id = id.from(_N, "TopicRule", "ruleDisabled"),
         type = "boolean",
         name = "ruleDisabled",
         target_id = prelude.Boolean.id,
      }),
      awsIotSqlVersion = schema.new({
         id = id.from(_N, "TopicRule", "awsIotSqlVersion"),
         type = "string",
         name = "awsIotSqlVersion",
         target_id = prelude.String.id,
      }),
      errorAction = schema.new({
         id = id.from(_N, "TopicRule", "errorAction"),
         type = "structure",
         name = "errorAction",
         target_id = id.from(_N, "Action"),
         target = M.Action,
      }),
   },
})

M.GetTopicRuleOutput = schema.new({
   id = id.from(_N, "GetTopicRuleResponse"),
   type = "structure",
   members = {
      ruleArn = schema.new({
         id = id.from(_N, "GetTopicRuleOutput", "ruleArn"),
         type = "string",
         name = "ruleArn",
         target_id = prelude.String.id,
      }),
      rule = schema.new({
         id = id.from(_N, "GetTopicRuleOutput", "rule"),
         type = "structure",
         name = "rule",
         target_id = id.from(_N, "TopicRule"),
         target = M.TopicRule,
      }),
   },
})

M.GetTopicRuleDestinationInput = schema.new({
   id = id.from(_N, "GetTopicRuleDestinationRequest"),
   type = "structure",
   members = {
      arn = schema.new({
         id = id.from(_N, "GetTopicRuleDestinationInput", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetTopicRuleDestinationOutput = schema.new({
   id = id.from(_N, "GetTopicRuleDestinationResponse"),
   type = "structure",
   members = {
      topicRuleDestination = schema.new({
         id = id.from(_N, "GetTopicRuleDestinationOutput", "topicRuleDestination"),
         type = "structure",
         name = "topicRuleDestination",
         target_id = id.from(_N, "TopicRuleDestination"),
         target = M.TopicRuleDestination,
      }),
   },
})

M.GetV2LoggingOptionsInput = schema.new({
   id = id.from(_N, "GetV2LoggingOptionsRequest"),
   type = "structure",
   members = {
      verbose = schema.new({
         id = id.from(_N, "GetV2LoggingOptionsInput", "verbose"),
         type = "boolean",
         name = "verbose",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
            [traits.HTTP_QUERY] = { name = "verbose" },
         },
      }),
   },
})

M.LogEventConfiguration = schema.new({
   id = id.from(_N, "LogEventConfiguration"),
   type = "structure",
   members = {
      eventType = schema.new({
         id = id.from(_N, "LogEventConfiguration", "eventType"),
         type = "string",
         name = "eventType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      logLevel = schema.new({
         id = id.from(_N, "LogEventConfiguration", "logLevel"),
         type = "string",
         name = "logLevel",
         target_id = prelude.String.id,
      }),
      logDestination = schema.new({
         id = id.from(_N, "LogEventConfiguration", "logDestination"),
         type = "string",
         name = "logDestination",
         target_id = prelude.String.id,
      }),
   },
})

M.GetV2LoggingOptionsOutput = schema.new({
   id = id.from(_N, "GetV2LoggingOptionsResponse"),
   type = "structure",
   members = {
      roleArn = schema.new({
         id = id.from(_N, "GetV2LoggingOptionsOutput", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
      }),
      defaultLogLevel = schema.new({
         id = id.from(_N, "GetV2LoggingOptionsOutput", "defaultLogLevel"),
         type = "string",
         name = "defaultLogLevel",
         target_id = prelude.String.id,
      }),
      disableAllLogs = schema.new({
         id = id.from(_N, "GetV2LoggingOptionsOutput", "disableAllLogs"),
         type = "boolean",
         name = "disableAllLogs",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      eventConfigurations = schema.new({
         id = id.from(_N, "GetV2LoggingOptionsOutput", "eventConfigurations"),
         type = "list",
         name = "eventConfigurations",
         target_id = prelude.Document.id,
         list_member = M.LogEventConfiguration,
      }),
   },
})

M.NotConfiguredException = schema.new({
   id = id.from(_N, "NotConfiguredException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "NotConfiguredException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.ListActiveViolationsInput = schema.new({
   id = id.from(_N, "ListActiveViolationsRequest"),
   type = "structure",
   members = {
      thingName = schema.new({
         id = id.from(_N, "ListActiveViolationsInput", "thingName"),
         type = "string",
         name = "thingName",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "thingName" },
         },
      }),
      securityProfileName = schema.new({
         id = id.from(_N, "ListActiveViolationsInput", "securityProfileName"),
         type = "string",
         name = "securityProfileName",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "securityProfileName" },
         },
      }),
      behaviorCriteriaType = schema.new({
         id = id.from(_N, "ListActiveViolationsInput", "behaviorCriteriaType"),
         type = "string",
         name = "behaviorCriteriaType",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "behaviorCriteriaType" },
         },
      }),
      listSuppressedAlerts = schema.new({
         id = id.from(_N, "ListActiveViolationsInput", "listSuppressedAlerts"),
         type = "boolean",
         name = "listSuppressedAlerts",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "listSuppressedAlerts" },
         },
      }),
      verificationState = schema.new({
         id = id.from(_N, "ListActiveViolationsInput", "verificationState"),
         type = "string",
         name = "verificationState",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "verificationState" },
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListActiveViolationsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListActiveViolationsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
   },
})

M.ListActiveViolationsOutput = schema.new({
   id = id.from(_N, "ListActiveViolationsResponse"),
   type = "structure",
   members = {
      activeViolations = schema.new({
         id = id.from(_N, "ListActiveViolationsOutput", "activeViolations"),
         type = "list",
         name = "activeViolations",
         target_id = prelude.Document.id,
         list_member = M.ActiveViolation,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListActiveViolationsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListAttachedPoliciesInput = schema.new({
   id = id.from(_N, "ListAttachedPoliciesRequest"),
   type = "structure",
   members = {
      target = schema.new({
         id = id.from(_N, "ListAttachedPoliciesInput", "target"),
         type = "string",
         name = "target",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      recursive = schema.new({
         id = id.from(_N, "ListAttachedPoliciesInput", "recursive"),
         type = "boolean",
         name = "recursive",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
            [traits.HTTP_QUERY] = { name = "recursive" },
         },
      }),
      marker = schema.new({
         id = id.from(_N, "ListAttachedPoliciesInput", "marker"),
         type = "string",
         name = "marker",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "marker" },
         },
      }),
      pageSize = schema.new({
         id = id.from(_N, "ListAttachedPoliciesInput", "pageSize"),
         type = "integer",
         name = "pageSize",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "pageSize" },
         },
      }),
   },
})

M.ListAttachedPoliciesOutput = schema.new({
   id = id.from(_N, "ListAttachedPoliciesResponse"),
   type = "structure",
   members = {
      policies = schema.new({
         id = id.from(_N, "ListAttachedPoliciesOutput", "policies"),
         type = "list",
         name = "policies",
         target_id = prelude.Document.id,
         list_member = M.Policy,
      }),
      nextMarker = schema.new({
         id = id.from(_N, "ListAttachedPoliciesOutput", "nextMarker"),
         type = "string",
         name = "nextMarker",
         target_id = prelude.String.id,
      }),
   },
})

M.ListAuditFindingsInput = schema.new({
   id = id.from(_N, "ListAuditFindingsRequest"),
   type = "structure",
   members = {
      taskId = schema.new({
         id = id.from(_N, "ListAuditFindingsInput", "taskId"),
         type = "string",
         name = "taskId",
         target_id = prelude.String.id,
      }),
      checkName = schema.new({
         id = id.from(_N, "ListAuditFindingsInput", "checkName"),
         type = "string",
         name = "checkName",
         target_id = prelude.String.id,
      }),
      resourceIdentifier = schema.new({
         id = id.from(_N, "ListAuditFindingsInput", "resourceIdentifier"),
         type = "structure",
         name = "resourceIdentifier",
         target_id = id.from(_N, "ResourceIdentifier"),
         target = M.ResourceIdentifier,
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListAuditFindingsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListAuditFindingsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
      startTime = schema.new({
         id = id.from(_N, "ListAuditFindingsInput", "startTime"),
         type = "timestamp",
         name = "startTime",
         target_id = prelude.Timestamp.id,
      }),
      endTime = schema.new({
         id = id.from(_N, "ListAuditFindingsInput", "endTime"),
         type = "timestamp",
         name = "endTime",
         target_id = prelude.Timestamp.id,
      }),
      listSuppressedFindings = schema.new({
         id = id.from(_N, "ListAuditFindingsInput", "listSuppressedFindings"),
         type = "boolean",
         name = "listSuppressedFindings",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
   },
})

M.ListAuditFindingsOutput = schema.new({
   id = id.from(_N, "ListAuditFindingsResponse"),
   type = "structure",
   members = {
      findings = schema.new({
         id = id.from(_N, "ListAuditFindingsOutput", "findings"),
         type = "list",
         name = "findings",
         target_id = prelude.Document.id,
         list_member = M.AuditFinding,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListAuditFindingsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListAuditMitigationActionsExecutionsInput = schema.new({
   id = id.from(_N, "ListAuditMitigationActionsExecutionsRequest"),
   type = "structure",
   members = {
      taskId = schema.new({
         id = id.from(_N, "ListAuditMitigationActionsExecutionsInput", "taskId"),
         type = "string",
         name = "taskId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "taskId" },
         },
      }),
      actionStatus = schema.new({
         id = id.from(_N, "ListAuditMitigationActionsExecutionsInput", "actionStatus"),
         type = "string",
         name = "actionStatus",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "actionStatus" },
         },
      }),
      findingId = schema.new({
         id = id.from(_N, "ListAuditMitigationActionsExecutionsInput", "findingId"),
         type = "string",
         name = "findingId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "findingId" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListAuditMitigationActionsExecutionsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListAuditMitigationActionsExecutionsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
   },
})

M.ListAuditMitigationActionsExecutionsOutput = schema.new({
   id = id.from(_N, "ListAuditMitigationActionsExecutionsResponse"),
   type = "structure",
   members = {
      actionsExecutions = schema.new({
         id = id.from(_N, "ListAuditMitigationActionsExecutionsOutput", "actionsExecutions"),
         type = "list",
         name = "actionsExecutions",
         target_id = prelude.Document.id,
         list_member = M.AuditMitigationActionExecutionMetadata,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListAuditMitigationActionsExecutionsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListAuditMitigationActionsTasksInput = schema.new({
   id = id.from(_N, "ListAuditMitigationActionsTasksRequest"),
   type = "structure",
   members = {
      auditTaskId = schema.new({
         id = id.from(_N, "ListAuditMitigationActionsTasksInput", "auditTaskId"),
         type = "string",
         name = "auditTaskId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "auditTaskId" },
         },
      }),
      findingId = schema.new({
         id = id.from(_N, "ListAuditMitigationActionsTasksInput", "findingId"),
         type = "string",
         name = "findingId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "findingId" },
         },
      }),
      taskStatus = schema.new({
         id = id.from(_N, "ListAuditMitigationActionsTasksInput", "taskStatus"),
         type = "string",
         name = "taskStatus",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "taskStatus" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListAuditMitigationActionsTasksInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListAuditMitigationActionsTasksInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      startTime = schema.new({
         id = id.from(_N, "ListAuditMitigationActionsTasksInput", "startTime"),
         type = "timestamp",
         name = "startTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "startTime" },
         },
      }),
      endTime = schema.new({
         id = id.from(_N, "ListAuditMitigationActionsTasksInput", "endTime"),
         type = "timestamp",
         name = "endTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "endTime" },
         },
      }),
   },
})

M.ListAuditMitigationActionsTasksOutput = schema.new({
   id = id.from(_N, "ListAuditMitigationActionsTasksResponse"),
   type = "structure",
   members = {
      tasks = schema.new({
         id = id.from(_N, "ListAuditMitigationActionsTasksOutput", "tasks"),
         type = "list",
         name = "tasks",
         target_id = prelude.Document.id,
         list_member = M.AuditMitigationActionsTaskMetadata,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListAuditMitigationActionsTasksOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListAuditSuppressionsInput = schema.new({
   id = id.from(_N, "ListAuditSuppressionsRequest"),
   type = "structure",
   members = {
      checkName = schema.new({
         id = id.from(_N, "ListAuditSuppressionsInput", "checkName"),
         type = "string",
         name = "checkName",
         target_id = prelude.String.id,
      }),
      resourceIdentifier = schema.new({
         id = id.from(_N, "ListAuditSuppressionsInput", "resourceIdentifier"),
         type = "structure",
         name = "resourceIdentifier",
         target_id = id.from(_N, "ResourceIdentifier"),
         target = M.ResourceIdentifier,
      }),
      ascendingOrder = schema.new({
         id = id.from(_N, "ListAuditSuppressionsInput", "ascendingOrder"),
         type = "boolean",
         name = "ascendingOrder",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListAuditSuppressionsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListAuditSuppressionsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
      }),
   },
})

M.ListAuditSuppressionsOutput = schema.new({
   id = id.from(_N, "ListAuditSuppressionsResponse"),
   type = "structure",
   members = {
      suppressions = schema.new({
         id = id.from(_N, "ListAuditSuppressionsOutput", "suppressions"),
         type = "list",
         name = "suppressions",
         target_id = prelude.Document.id,
         list_member = M.AuditSuppression,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListAuditSuppressionsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListAuditTasksInput = schema.new({
   id = id.from(_N, "ListAuditTasksRequest"),
   type = "structure",
   members = {
      startTime = schema.new({
         id = id.from(_N, "ListAuditTasksInput", "startTime"),
         type = "timestamp",
         name = "startTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "startTime" },
         },
      }),
      endTime = schema.new({
         id = id.from(_N, "ListAuditTasksInput", "endTime"),
         type = "timestamp",
         name = "endTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "endTime" },
         },
      }),
      taskType = schema.new({
         id = id.from(_N, "ListAuditTasksInput", "taskType"),
         type = "string",
         name = "taskType",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "taskType" },
         },
      }),
      taskStatus = schema.new({
         id = id.from(_N, "ListAuditTasksInput", "taskStatus"),
         type = "string",
         name = "taskStatus",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "taskStatus" },
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListAuditTasksInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListAuditTasksInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
   },
})

M.ListAuditTasksOutput = schema.new({
   id = id.from(_N, "ListAuditTasksResponse"),
   type = "structure",
   members = {
      tasks = schema.new({
         id = id.from(_N, "ListAuditTasksOutput", "tasks"),
         type = "list",
         name = "tasks",
         target_id = prelude.Document.id,
         list_member = M.AuditTaskMetadata,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListAuditTasksOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListAuthorizersInput = schema.new({
   id = id.from(_N, "ListAuthorizersRequest"),
   type = "structure",
   members = {
      pageSize = schema.new({
         id = id.from(_N, "ListAuthorizersInput", "pageSize"),
         type = "integer",
         name = "pageSize",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "pageSize" },
         },
      }),
      marker = schema.new({
         id = id.from(_N, "ListAuthorizersInput", "marker"),
         type = "string",
         name = "marker",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "marker" },
         },
      }),
      ascendingOrder = schema.new({
         id = id.from(_N, "ListAuthorizersInput", "ascendingOrder"),
         type = "boolean",
         name = "ascendingOrder",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
            [traits.HTTP_QUERY] = { name = "isAscendingOrder" },
         },
      }),
      status = schema.new({
         id = id.from(_N, "ListAuthorizersInput", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "status" },
         },
      }),
   },
})

M.ListAuthorizersOutput = schema.new({
   id = id.from(_N, "ListAuthorizersResponse"),
   type = "structure",
   members = {
      authorizers = schema.new({
         id = id.from(_N, "ListAuthorizersOutput", "authorizers"),
         type = "list",
         name = "authorizers",
         target_id = prelude.Document.id,
         list_member = M.AuthorizerSummary,
      }),
      nextMarker = schema.new({
         id = id.from(_N, "ListAuthorizersOutput", "nextMarker"),
         type = "string",
         name = "nextMarker",
         target_id = prelude.String.id,
      }),
   },
})

M.ListBillingGroupsInput = schema.new({
   id = id.from(_N, "ListBillingGroupsRequest"),
   type = "structure",
   members = {
      nextToken = schema.new({
         id = id.from(_N, "ListBillingGroupsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListBillingGroupsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      namePrefixFilter = schema.new({
         id = id.from(_N, "ListBillingGroupsInput", "namePrefixFilter"),
         type = "string",
         name = "namePrefixFilter",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "namePrefixFilter" },
         },
      }),
   },
})

M.ListBillingGroupsOutput = schema.new({
   id = id.from(_N, "ListBillingGroupsResponse"),
   type = "structure",
   members = {
      billingGroups = schema.new({
         id = id.from(_N, "ListBillingGroupsOutput", "billingGroups"),
         type = "list",
         name = "billingGroups",
         target_id = prelude.Document.id,
         list_member = M.GroupNameAndArn,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListBillingGroupsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListCACertificatesInput = schema.new({
   id = id.from(_N, "ListCACertificatesRequest"),
   type = "structure",
   members = {
      pageSize = schema.new({
         id = id.from(_N, "ListCACertificatesInput", "pageSize"),
         type = "integer",
         name = "pageSize",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "pageSize" },
         },
      }),
      marker = schema.new({
         id = id.from(_N, "ListCACertificatesInput", "marker"),
         type = "string",
         name = "marker",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "marker" },
         },
      }),
      ascendingOrder = schema.new({
         id = id.from(_N, "ListCACertificatesInput", "ascendingOrder"),
         type = "boolean",
         name = "ascendingOrder",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
            [traits.HTTP_QUERY] = { name = "isAscendingOrder" },
         },
      }),
      templateName = schema.new({
         id = id.from(_N, "ListCACertificatesInput", "templateName"),
         type = "string",
         name = "templateName",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "templateName" },
         },
      }),
   },
})

M.CACertificate = schema.new({
   id = id.from(_N, "CACertificate"),
   type = "structure",
   members = {
      certificateArn = schema.new({
         id = id.from(_N, "CACertificate", "certificateArn"),
         type = "string",
         name = "certificateArn",
         target_id = prelude.String.id,
      }),
      certificateId = schema.new({
         id = id.from(_N, "CACertificate", "certificateId"),
         type = "string",
         name = "certificateId",
         target_id = prelude.String.id,
      }),
      status = schema.new({
         id = id.from(_N, "CACertificate", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
      creationDate = schema.new({
         id = id.from(_N, "CACertificate", "creationDate"),
         type = "timestamp",
         name = "creationDate",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.ListCACertificatesOutput = schema.new({
   id = id.from(_N, "ListCACertificatesResponse"),
   type = "structure",
   members = {
      certificates = schema.new({
         id = id.from(_N, "ListCACertificatesOutput", "certificates"),
         type = "list",
         name = "certificates",
         target_id = prelude.Document.id,
         list_member = M.CACertificate,
      }),
      nextMarker = schema.new({
         id = id.from(_N, "ListCACertificatesOutput", "nextMarker"),
         type = "string",
         name = "nextMarker",
         target_id = prelude.String.id,
      }),
   },
})

M.ListCertificateProvidersInput = schema.new({
   id = id.from(_N, "ListCertificateProvidersRequest"),
   type = "structure",
   members = {
      nextToken = schema.new({
         id = id.from(_N, "ListCertificateProvidersInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      ascendingOrder = schema.new({
         id = id.from(_N, "ListCertificateProvidersInput", "ascendingOrder"),
         type = "boolean",
         name = "ascendingOrder",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
            [traits.HTTP_QUERY] = { name = "isAscendingOrder" },
         },
      }),
   },
})

M.CertificateProviderSummary = schema.new({
   id = id.from(_N, "CertificateProviderSummary"),
   type = "structure",
   members = {
      certificateProviderName = schema.new({
         id = id.from(_N, "CertificateProviderSummary", "certificateProviderName"),
         type = "string",
         name = "certificateProviderName",
         target_id = prelude.String.id,
      }),
      certificateProviderArn = schema.new({
         id = id.from(_N, "CertificateProviderSummary", "certificateProviderArn"),
         type = "string",
         name = "certificateProviderArn",
         target_id = prelude.String.id,
      }),
   },
})

M.ListCertificateProvidersOutput = schema.new({
   id = id.from(_N, "ListCertificateProvidersResponse"),
   type = "structure",
   members = {
      certificateProviders = schema.new({
         id = id.from(_N, "ListCertificateProvidersOutput", "certificateProviders"),
         type = "list",
         name = "certificateProviders",
         target_id = prelude.Document.id,
         list_member = M.CertificateProviderSummary,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListCertificateProvidersOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListCertificatesInput = schema.new({
   id = id.from(_N, "ListCertificatesRequest"),
   type = "structure",
   members = {
      pageSize = schema.new({
         id = id.from(_N, "ListCertificatesInput", "pageSize"),
         type = "integer",
         name = "pageSize",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "pageSize" },
         },
      }),
      marker = schema.new({
         id = id.from(_N, "ListCertificatesInput", "marker"),
         type = "string",
         name = "marker",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "marker" },
         },
      }),
      ascendingOrder = schema.new({
         id = id.from(_N, "ListCertificatesInput", "ascendingOrder"),
         type = "boolean",
         name = "ascendingOrder",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
            [traits.HTTP_QUERY] = { name = "isAscendingOrder" },
         },
      }),
   },
})

M.Certificate = schema.new({
   id = id.from(_N, "Certificate"),
   type = "structure",
   members = {
      certificateArn = schema.new({
         id = id.from(_N, "Certificate", "certificateArn"),
         type = "string",
         name = "certificateArn",
         target_id = prelude.String.id,
      }),
      certificateId = schema.new({
         id = id.from(_N, "Certificate", "certificateId"),
         type = "string",
         name = "certificateId",
         target_id = prelude.String.id,
      }),
      status = schema.new({
         id = id.from(_N, "Certificate", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
      certificateMode = schema.new({
         id = id.from(_N, "Certificate", "certificateMode"),
         type = "string",
         name = "certificateMode",
         target_id = prelude.String.id,
      }),
      creationDate = schema.new({
         id = id.from(_N, "Certificate", "creationDate"),
         type = "timestamp",
         name = "creationDate",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.ListCertificatesOutput = schema.new({
   id = id.from(_N, "ListCertificatesResponse"),
   type = "structure",
   members = {
      certificates = schema.new({
         id = id.from(_N, "ListCertificatesOutput", "certificates"),
         type = "list",
         name = "certificates",
         target_id = prelude.Document.id,
         list_member = M.Certificate,
      }),
      nextMarker = schema.new({
         id = id.from(_N, "ListCertificatesOutput", "nextMarker"),
         type = "string",
         name = "nextMarker",
         target_id = prelude.String.id,
      }),
   },
})

M.ListCertificatesByCAInput = schema.new({
   id = id.from(_N, "ListCertificatesByCARequest"),
   type = "structure",
   members = {
      caCertificateId = schema.new({
         id = id.from(_N, "ListCertificatesByCAInput", "caCertificateId"),
         type = "string",
         name = "caCertificateId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      pageSize = schema.new({
         id = id.from(_N, "ListCertificatesByCAInput", "pageSize"),
         type = "integer",
         name = "pageSize",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "pageSize" },
         },
      }),
      marker = schema.new({
         id = id.from(_N, "ListCertificatesByCAInput", "marker"),
         type = "string",
         name = "marker",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "marker" },
         },
      }),
      ascendingOrder = schema.new({
         id = id.from(_N, "ListCertificatesByCAInput", "ascendingOrder"),
         type = "boolean",
         name = "ascendingOrder",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
            [traits.HTTP_QUERY] = { name = "isAscendingOrder" },
         },
      }),
   },
})

M.ListCertificatesByCAOutput = schema.new({
   id = id.from(_N, "ListCertificatesByCAResponse"),
   type = "structure",
   members = {
      certificates = schema.new({
         id = id.from(_N, "ListCertificatesByCAOutput", "certificates"),
         type = "list",
         name = "certificates",
         target_id = prelude.Document.id,
         list_member = M.Certificate,
      }),
      nextMarker = schema.new({
         id = id.from(_N, "ListCertificatesByCAOutput", "nextMarker"),
         type = "string",
         name = "nextMarker",
         target_id = prelude.String.id,
      }),
   },
})

M.TimeFilter = schema.new({
   id = id.from(_N, "TimeFilter"),
   type = "structure",
   members = {
      after = schema.new({
         id = id.from(_N, "TimeFilter", "after"),
         type = "string",
         name = "after",
         target_id = prelude.String.id,
      }),
      before = schema.new({
         id = id.from(_N, "TimeFilter", "before"),
         type = "string",
         name = "before",
         target_id = prelude.String.id,
      }),
   },
})

M.ListCommandExecutionsInput = schema.new({
   id = id.from(_N, "ListCommandExecutionsRequest"),
   type = "structure",
   members = {
      maxResults = schema.new({
         id = id.from(_N, "ListCommandExecutionsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListCommandExecutionsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      namespace = schema.new({
         id = id.from(_N, "ListCommandExecutionsInput", "namespace"),
         type = "string",
         name = "namespace",
         target_id = prelude.String.id,
      }),
      status = schema.new({
         id = id.from(_N, "ListCommandExecutionsInput", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
      sortOrder = schema.new({
         id = id.from(_N, "ListCommandExecutionsInput", "sortOrder"),
         type = "string",
         name = "sortOrder",
         target_id = prelude.String.id,
      }),
      startedTimeFilter = schema.new({
         id = id.from(_N, "ListCommandExecutionsInput", "startedTimeFilter"),
         type = "structure",
         name = "startedTimeFilter",
         target_id = id.from(_N, "TimeFilter"),
         target = M.TimeFilter,
      }),
      completedTimeFilter = schema.new({
         id = id.from(_N, "ListCommandExecutionsInput", "completedTimeFilter"),
         type = "structure",
         name = "completedTimeFilter",
         target_id = id.from(_N, "TimeFilter"),
         target = M.TimeFilter,
      }),
      targetArn = schema.new({
         id = id.from(_N, "ListCommandExecutionsInput", "targetArn"),
         type = "string",
         name = "targetArn",
         target_id = prelude.String.id,
      }),
      commandArn = schema.new({
         id = id.from(_N, "ListCommandExecutionsInput", "commandArn"),
         type = "string",
         name = "commandArn",
         target_id = prelude.String.id,
      }),
   },
})

M.CommandExecutionSummary = schema.new({
   id = id.from(_N, "CommandExecutionSummary"),
   type = "structure",
   members = {
      commandArn = schema.new({
         id = id.from(_N, "CommandExecutionSummary", "commandArn"),
         type = "string",
         name = "commandArn",
         target_id = prelude.String.id,
      }),
      executionId = schema.new({
         id = id.from(_N, "CommandExecutionSummary", "executionId"),
         type = "string",
         name = "executionId",
         target_id = prelude.String.id,
      }),
      targetArn = schema.new({
         id = id.from(_N, "CommandExecutionSummary", "targetArn"),
         type = "string",
         name = "targetArn",
         target_id = prelude.String.id,
      }),
      status = schema.new({
         id = id.from(_N, "CommandExecutionSummary", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
      createdAt = schema.new({
         id = id.from(_N, "CommandExecutionSummary", "createdAt"),
         type = "timestamp",
         name = "createdAt",
         target_id = prelude.Timestamp.id,
      }),
      startedAt = schema.new({
         id = id.from(_N, "CommandExecutionSummary", "startedAt"),
         type = "timestamp",
         name = "startedAt",
         target_id = prelude.Timestamp.id,
      }),
      completedAt = schema.new({
         id = id.from(_N, "CommandExecutionSummary", "completedAt"),
         type = "timestamp",
         name = "completedAt",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.ListCommandExecutionsOutput = schema.new({
   id = id.from(_N, "ListCommandExecutionsResponse"),
   type = "structure",
   members = {
      commandExecutions = schema.new({
         id = id.from(_N, "ListCommandExecutionsOutput", "commandExecutions"),
         type = "list",
         name = "commandExecutions",
         target_id = prelude.Document.id,
         list_member = M.CommandExecutionSummary,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListCommandExecutionsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListCommandsInput = schema.new({
   id = id.from(_N, "ListCommandsRequest"),
   type = "structure",
   members = {
      maxResults = schema.new({
         id = id.from(_N, "ListCommandsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListCommandsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      namespace = schema.new({
         id = id.from(_N, "ListCommandsInput", "namespace"),
         type = "string",
         name = "namespace",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "namespace" },
         },
      }),
      commandParameterName = schema.new({
         id = id.from(_N, "ListCommandsInput", "commandParameterName"),
         type = "string",
         name = "commandParameterName",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "commandParameterName" },
         },
      }),
      sortOrder = schema.new({
         id = id.from(_N, "ListCommandsInput", "sortOrder"),
         type = "string",
         name = "sortOrder",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "sortOrder" },
         },
      }),
   },
})

M.CommandSummary = schema.new({
   id = id.from(_N, "CommandSummary"),
   type = "structure",
   members = {
      commandArn = schema.new({
         id = id.from(_N, "CommandSummary", "commandArn"),
         type = "string",
         name = "commandArn",
         target_id = prelude.String.id,
      }),
      commandId = schema.new({
         id = id.from(_N, "CommandSummary", "commandId"),
         type = "string",
         name = "commandId",
         target_id = prelude.String.id,
      }),
      displayName = schema.new({
         id = id.from(_N, "CommandSummary", "displayName"),
         type = "string",
         name = "displayName",
         target_id = prelude.String.id,
      }),
      deprecated = schema.new({
         id = id.from(_N, "CommandSummary", "deprecated"),
         type = "boolean",
         name = "deprecated",
         target_id = prelude.Boolean.id,
      }),
      createdAt = schema.new({
         id = id.from(_N, "CommandSummary", "createdAt"),
         type = "timestamp",
         name = "createdAt",
         target_id = prelude.Timestamp.id,
      }),
      lastUpdatedAt = schema.new({
         id = id.from(_N, "CommandSummary", "lastUpdatedAt"),
         type = "timestamp",
         name = "lastUpdatedAt",
         target_id = prelude.Timestamp.id,
      }),
      pendingDeletion = schema.new({
         id = id.from(_N, "CommandSummary", "pendingDeletion"),
         type = "boolean",
         name = "pendingDeletion",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.ListCommandsOutput = schema.new({
   id = id.from(_N, "ListCommandsResponse"),
   type = "structure",
   members = {
      commands = schema.new({
         id = id.from(_N, "ListCommandsOutput", "commands"),
         type = "list",
         name = "commands",
         target_id = prelude.Document.id,
         list_member = M.CommandSummary,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListCommandsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListCustomMetricsInput = schema.new({
   id = id.from(_N, "ListCustomMetricsRequest"),
   type = "structure",
   members = {
      nextToken = schema.new({
         id = id.from(_N, "ListCustomMetricsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListCustomMetricsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
   },
})

M.ListCustomMetricsOutput = schema.new({
   id = id.from(_N, "ListCustomMetricsResponse"),
   type = "structure",
   members = {
      metricNames = schema.new({
         id = id.from(_N, "ListCustomMetricsOutput", "metricNames"),
         type = "list",
         name = "metricNames",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListCustomMetricsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListDetectMitigationActionsExecutionsInput = schema.new({
   id = id.from(_N, "ListDetectMitigationActionsExecutionsRequest"),
   type = "structure",
   members = {
      taskId = schema.new({
         id = id.from(_N, "ListDetectMitigationActionsExecutionsInput", "taskId"),
         type = "string",
         name = "taskId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "taskId" },
         },
      }),
      violationId = schema.new({
         id = id.from(_N, "ListDetectMitigationActionsExecutionsInput", "violationId"),
         type = "string",
         name = "violationId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "violationId" },
         },
      }),
      thingName = schema.new({
         id = id.from(_N, "ListDetectMitigationActionsExecutionsInput", "thingName"),
         type = "string",
         name = "thingName",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "thingName" },
         },
      }),
      startTime = schema.new({
         id = id.from(_N, "ListDetectMitigationActionsExecutionsInput", "startTime"),
         type = "timestamp",
         name = "startTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "startTime" },
         },
      }),
      endTime = schema.new({
         id = id.from(_N, "ListDetectMitigationActionsExecutionsInput", "endTime"),
         type = "timestamp",
         name = "endTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "endTime" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListDetectMitigationActionsExecutionsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListDetectMitigationActionsExecutionsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
   },
})

M.DetectMitigationActionExecution = schema.new({
   id = id.from(_N, "DetectMitigationActionExecution"),
   type = "structure",
   members = {
      taskId = schema.new({
         id = id.from(_N, "DetectMitigationActionExecution", "taskId"),
         type = "string",
         name = "taskId",
         target_id = prelude.String.id,
      }),
      violationId = schema.new({
         id = id.from(_N, "DetectMitigationActionExecution", "violationId"),
         type = "string",
         name = "violationId",
         target_id = prelude.String.id,
      }),
      actionName = schema.new({
         id = id.from(_N, "DetectMitigationActionExecution", "actionName"),
         type = "string",
         name = "actionName",
         target_id = prelude.String.id,
      }),
      thingName = schema.new({
         id = id.from(_N, "DetectMitigationActionExecution", "thingName"),
         type = "string",
         name = "thingName",
         target_id = prelude.String.id,
      }),
      executionStartDate = schema.new({
         id = id.from(_N, "DetectMitigationActionExecution", "executionStartDate"),
         type = "timestamp",
         name = "executionStartDate",
         target_id = prelude.Timestamp.id,
      }),
      executionEndDate = schema.new({
         id = id.from(_N, "DetectMitigationActionExecution", "executionEndDate"),
         type = "timestamp",
         name = "executionEndDate",
         target_id = prelude.Timestamp.id,
      }),
      status = schema.new({
         id = id.from(_N, "DetectMitigationActionExecution", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
      errorCode = schema.new({
         id = id.from(_N, "DetectMitigationActionExecution", "errorCode"),
         type = "string",
         name = "errorCode",
         target_id = prelude.String.id,
      }),
      message = schema.new({
         id = id.from(_N, "DetectMitigationActionExecution", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.ListDetectMitigationActionsExecutionsOutput = schema.new({
   id = id.from(_N, "ListDetectMitigationActionsExecutionsResponse"),
   type = "structure",
   members = {
      actionsExecutions = schema.new({
         id = id.from(_N, "ListDetectMitigationActionsExecutionsOutput", "actionsExecutions"),
         type = "list",
         name = "actionsExecutions",
         target_id = prelude.Document.id,
         list_member = M.DetectMitigationActionExecution,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListDetectMitigationActionsExecutionsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListDetectMitigationActionsTasksInput = schema.new({
   id = id.from(_N, "ListDetectMitigationActionsTasksRequest"),
   type = "structure",
   members = {
      maxResults = schema.new({
         id = id.from(_N, "ListDetectMitigationActionsTasksInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListDetectMitigationActionsTasksInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      startTime = schema.new({
         id = id.from(_N, "ListDetectMitigationActionsTasksInput", "startTime"),
         type = "timestamp",
         name = "startTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "startTime" },
         },
      }),
      endTime = schema.new({
         id = id.from(_N, "ListDetectMitigationActionsTasksInput", "endTime"),
         type = "timestamp",
         name = "endTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "endTime" },
         },
      }),
   },
})

M.ListDetectMitigationActionsTasksOutput = schema.new({
   id = id.from(_N, "ListDetectMitigationActionsTasksResponse"),
   type = "structure",
   members = {
      tasks = schema.new({
         id = id.from(_N, "ListDetectMitigationActionsTasksOutput", "tasks"),
         type = "list",
         name = "tasks",
         target_id = prelude.Document.id,
         list_member = M.DetectMitigationActionsTaskSummary,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListDetectMitigationActionsTasksOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListDimensionsInput = schema.new({
   id = id.from(_N, "ListDimensionsRequest"),
   type = "structure",
   members = {
      nextToken = schema.new({
         id = id.from(_N, "ListDimensionsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListDimensionsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
   },
})

M.ListDimensionsOutput = schema.new({
   id = id.from(_N, "ListDimensionsResponse"),
   type = "structure",
   members = {
      dimensionNames = schema.new({
         id = id.from(_N, "ListDimensionsOutput", "dimensionNames"),
         type = "list",
         name = "dimensionNames",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListDimensionsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListDomainConfigurationsInput = schema.new({
   id = id.from(_N, "ListDomainConfigurationsRequest"),
   type = "structure",
   members = {
      marker = schema.new({
         id = id.from(_N, "ListDomainConfigurationsInput", "marker"),
         type = "string",
         name = "marker",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "marker" },
         },
      }),
      pageSize = schema.new({
         id = id.from(_N, "ListDomainConfigurationsInput", "pageSize"),
         type = "integer",
         name = "pageSize",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "pageSize" },
         },
      }),
      serviceType = schema.new({
         id = id.from(_N, "ListDomainConfigurationsInput", "serviceType"),
         type = "string",
         name = "serviceType",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "serviceType" },
         },
      }),
   },
})

M.DomainConfigurationSummary = schema.new({
   id = id.from(_N, "DomainConfigurationSummary"),
   type = "structure",
   members = {
      domainConfigurationName = schema.new({
         id = id.from(_N, "DomainConfigurationSummary", "domainConfigurationName"),
         type = "string",
         name = "domainConfigurationName",
         target_id = prelude.String.id,
      }),
      domainConfigurationArn = schema.new({
         id = id.from(_N, "DomainConfigurationSummary", "domainConfigurationArn"),
         type = "string",
         name = "domainConfigurationArn",
         target_id = prelude.String.id,
      }),
      serviceType = schema.new({
         id = id.from(_N, "DomainConfigurationSummary", "serviceType"),
         type = "string",
         name = "serviceType",
         target_id = prelude.String.id,
      }),
   },
})

M.ListDomainConfigurationsOutput = schema.new({
   id = id.from(_N, "ListDomainConfigurationsResponse"),
   type = "structure",
   members = {
      domainConfigurations = schema.new({
         id = id.from(_N, "ListDomainConfigurationsOutput", "domainConfigurations"),
         type = "list",
         name = "domainConfigurations",
         target_id = prelude.Document.id,
         list_member = M.DomainConfigurationSummary,
      }),
      nextMarker = schema.new({
         id = id.from(_N, "ListDomainConfigurationsOutput", "nextMarker"),
         type = "string",
         name = "nextMarker",
         target_id = prelude.String.id,
      }),
   },
})

M.ListFleetMetricsInput = schema.new({
   id = id.from(_N, "ListFleetMetricsRequest"),
   type = "structure",
   members = {
      nextToken = schema.new({
         id = id.from(_N, "ListFleetMetricsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListFleetMetricsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
   },
})

M.FleetMetricNameAndArn = schema.new({
   id = id.from(_N, "FleetMetricNameAndArn"),
   type = "structure",
   members = {
      metricName = schema.new({
         id = id.from(_N, "FleetMetricNameAndArn", "metricName"),
         type = "string",
         name = "metricName",
         target_id = prelude.String.id,
      }),
      metricArn = schema.new({
         id = id.from(_N, "FleetMetricNameAndArn", "metricArn"),
         type = "string",
         name = "metricArn",
         target_id = prelude.String.id,
      }),
   },
})

M.ListFleetMetricsOutput = schema.new({
   id = id.from(_N, "ListFleetMetricsResponse"),
   type = "structure",
   members = {
      fleetMetrics = schema.new({
         id = id.from(_N, "ListFleetMetricsOutput", "fleetMetrics"),
         type = "list",
         name = "fleetMetrics",
         target_id = prelude.Document.id,
         list_member = M.FleetMetricNameAndArn,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListFleetMetricsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListIndicesInput = schema.new({
   id = id.from(_N, "ListIndicesRequest"),
   type = "structure",
   members = {
      nextToken = schema.new({
         id = id.from(_N, "ListIndicesInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListIndicesInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
   },
})

M.ListIndicesOutput = schema.new({
   id = id.from(_N, "ListIndicesResponse"),
   type = "structure",
   members = {
      indexNames = schema.new({
         id = id.from(_N, "ListIndicesOutput", "indexNames"),
         type = "list",
         name = "indexNames",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListIndicesOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListJobExecutionsForJobInput = schema.new({
   id = id.from(_N, "ListJobExecutionsForJobRequest"),
   type = "structure",
   members = {
      jobId = schema.new({
         id = id.from(_N, "ListJobExecutionsForJobInput", "jobId"),
         type = "string",
         name = "jobId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      status = schema.new({
         id = id.from(_N, "ListJobExecutionsForJobInput", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "status" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListJobExecutionsForJobInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListJobExecutionsForJobInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
   },
})

M.JobExecutionSummary = schema.new({
   id = id.from(_N, "JobExecutionSummary"),
   type = "structure",
   members = {
      status = schema.new({
         id = id.from(_N, "JobExecutionSummary", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
      queuedAt = schema.new({
         id = id.from(_N, "JobExecutionSummary", "queuedAt"),
         type = "timestamp",
         name = "queuedAt",
         target_id = prelude.Timestamp.id,
      }),
      startedAt = schema.new({
         id = id.from(_N, "JobExecutionSummary", "startedAt"),
         type = "timestamp",
         name = "startedAt",
         target_id = prelude.Timestamp.id,
      }),
      lastUpdatedAt = schema.new({
         id = id.from(_N, "JobExecutionSummary", "lastUpdatedAt"),
         type = "timestamp",
         name = "lastUpdatedAt",
         target_id = prelude.Timestamp.id,
      }),
      executionNumber = schema.new({
         id = id.from(_N, "JobExecutionSummary", "executionNumber"),
         type = "long",
         name = "executionNumber",
         target_id = prelude.Long.id,
      }),
      retryAttempt = schema.new({
         id = id.from(_N, "JobExecutionSummary", "retryAttempt"),
         type = "integer",
         name = "retryAttempt",
         target_id = prelude.Integer.id,
      }),
   },
})

M.JobExecutionSummaryForJob = schema.new({
   id = id.from(_N, "JobExecutionSummaryForJob"),
   type = "structure",
   members = {
      thingArn = schema.new({
         id = id.from(_N, "JobExecutionSummaryForJob", "thingArn"),
         type = "string",
         name = "thingArn",
         target_id = prelude.String.id,
      }),
      jobExecutionSummary = schema.new({
         id = id.from(_N, "JobExecutionSummaryForJob", "jobExecutionSummary"),
         type = "structure",
         name = "jobExecutionSummary",
         target_id = id.from(_N, "JobExecutionSummary"),
         target = M.JobExecutionSummary,
      }),
   },
})

M.ListJobExecutionsForJobOutput = schema.new({
   id = id.from(_N, "ListJobExecutionsForJobResponse"),
   type = "structure",
   members = {
      executionSummaries = schema.new({
         id = id.from(_N, "ListJobExecutionsForJobOutput", "executionSummaries"),
         type = "list",
         name = "executionSummaries",
         target_id = prelude.Document.id,
         list_member = M.JobExecutionSummaryForJob,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListJobExecutionsForJobOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListJobExecutionsForThingInput = schema.new({
   id = id.from(_N, "ListJobExecutionsForThingRequest"),
   type = "structure",
   members = {
      thingName = schema.new({
         id = id.from(_N, "ListJobExecutionsForThingInput", "thingName"),
         type = "string",
         name = "thingName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      status = schema.new({
         id = id.from(_N, "ListJobExecutionsForThingInput", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "status" },
         },
      }),
      namespaceId = schema.new({
         id = id.from(_N, "ListJobExecutionsForThingInput", "namespaceId"),
         type = "string",
         name = "namespaceId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "namespaceId" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListJobExecutionsForThingInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListJobExecutionsForThingInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      jobId = schema.new({
         id = id.from(_N, "ListJobExecutionsForThingInput", "jobId"),
         type = "string",
         name = "jobId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "jobId" },
         },
      }),
   },
})

M.JobExecutionSummaryForThing = schema.new({
   id = id.from(_N, "JobExecutionSummaryForThing"),
   type = "structure",
   members = {
      jobId = schema.new({
         id = id.from(_N, "JobExecutionSummaryForThing", "jobId"),
         type = "string",
         name = "jobId",
         target_id = prelude.String.id,
      }),
      jobExecutionSummary = schema.new({
         id = id.from(_N, "JobExecutionSummaryForThing", "jobExecutionSummary"),
         type = "structure",
         name = "jobExecutionSummary",
         target_id = id.from(_N, "JobExecutionSummary"),
         target = M.JobExecutionSummary,
      }),
   },
})

M.ListJobExecutionsForThingOutput = schema.new({
   id = id.from(_N, "ListJobExecutionsForThingResponse"),
   type = "structure",
   members = {
      executionSummaries = schema.new({
         id = id.from(_N, "ListJobExecutionsForThingOutput", "executionSummaries"),
         type = "list",
         name = "executionSummaries",
         target_id = prelude.Document.id,
         list_member = M.JobExecutionSummaryForThing,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListJobExecutionsForThingOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListJobsInput = schema.new({
   id = id.from(_N, "ListJobsRequest"),
   type = "structure",
   members = {
      status = schema.new({
         id = id.from(_N, "ListJobsInput", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "status" },
         },
      }),
      targetSelection = schema.new({
         id = id.from(_N, "ListJobsInput", "targetSelection"),
         type = "string",
         name = "targetSelection",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "targetSelection" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListJobsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListJobsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      thingGroupName = schema.new({
         id = id.from(_N, "ListJobsInput", "thingGroupName"),
         type = "string",
         name = "thingGroupName",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "thingGroupName" },
         },
      }),
      thingGroupId = schema.new({
         id = id.from(_N, "ListJobsInput", "thingGroupId"),
         type = "string",
         name = "thingGroupId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "thingGroupId" },
         },
      }),
      namespaceId = schema.new({
         id = id.from(_N, "ListJobsInput", "namespaceId"),
         type = "string",
         name = "namespaceId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "namespaceId" },
         },
      }),
   },
})

M.JobSummary = schema.new({
   id = id.from(_N, "JobSummary"),
   type = "structure",
   members = {
      jobArn = schema.new({
         id = id.from(_N, "JobSummary", "jobArn"),
         type = "string",
         name = "jobArn",
         target_id = prelude.String.id,
      }),
      jobId = schema.new({
         id = id.from(_N, "JobSummary", "jobId"),
         type = "string",
         name = "jobId",
         target_id = prelude.String.id,
      }),
      thingGroupId = schema.new({
         id = id.from(_N, "JobSummary", "thingGroupId"),
         type = "string",
         name = "thingGroupId",
         target_id = prelude.String.id,
      }),
      targetSelection = schema.new({
         id = id.from(_N, "JobSummary", "targetSelection"),
         type = "string",
         name = "targetSelection",
         target_id = prelude.String.id,
      }),
      status = schema.new({
         id = id.from(_N, "JobSummary", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
      createdAt = schema.new({
         id = id.from(_N, "JobSummary", "createdAt"),
         type = "timestamp",
         name = "createdAt",
         target_id = prelude.Timestamp.id,
      }),
      lastUpdatedAt = schema.new({
         id = id.from(_N, "JobSummary", "lastUpdatedAt"),
         type = "timestamp",
         name = "lastUpdatedAt",
         target_id = prelude.Timestamp.id,
      }),
      completedAt = schema.new({
         id = id.from(_N, "JobSummary", "completedAt"),
         type = "timestamp",
         name = "completedAt",
         target_id = prelude.Timestamp.id,
      }),
      isConcurrent = schema.new({
         id = id.from(_N, "JobSummary", "isConcurrent"),
         type = "boolean",
         name = "isConcurrent",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.ListJobsOutput = schema.new({
   id = id.from(_N, "ListJobsResponse"),
   type = "structure",
   members = {
      jobs = schema.new({
         id = id.from(_N, "ListJobsOutput", "jobs"),
         type = "list",
         name = "jobs",
         target_id = prelude.Document.id,
         list_member = M.JobSummary,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListJobsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListJobTemplatesInput = schema.new({
   id = id.from(_N, "ListJobTemplatesRequest"),
   type = "structure",
   members = {
      maxResults = schema.new({
         id = id.from(_N, "ListJobTemplatesInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListJobTemplatesInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
   },
})

M.JobTemplateSummary = schema.new({
   id = id.from(_N, "JobTemplateSummary"),
   type = "structure",
   members = {
      jobTemplateArn = schema.new({
         id = id.from(_N, "JobTemplateSummary", "jobTemplateArn"),
         type = "string",
         name = "jobTemplateArn",
         target_id = prelude.String.id,
      }),
      jobTemplateId = schema.new({
         id = id.from(_N, "JobTemplateSummary", "jobTemplateId"),
         type = "string",
         name = "jobTemplateId",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "JobTemplateSummary", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      createdAt = schema.new({
         id = id.from(_N, "JobTemplateSummary", "createdAt"),
         type = "timestamp",
         name = "createdAt",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.ListJobTemplatesOutput = schema.new({
   id = id.from(_N, "ListJobTemplatesResponse"),
   type = "structure",
   members = {
      jobTemplates = schema.new({
         id = id.from(_N, "ListJobTemplatesOutput", "jobTemplates"),
         type = "list",
         name = "jobTemplates",
         target_id = prelude.Document.id,
         list_member = M.JobTemplateSummary,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListJobTemplatesOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListManagedJobTemplatesInput = schema.new({
   id = id.from(_N, "ListManagedJobTemplatesRequest"),
   type = "structure",
   members = {
      templateName = schema.new({
         id = id.from(_N, "ListManagedJobTemplatesInput", "templateName"),
         type = "string",
         name = "templateName",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "templateName" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListManagedJobTemplatesInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListManagedJobTemplatesInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
   },
})

M.ManagedJobTemplateSummary = schema.new({
   id = id.from(_N, "ManagedJobTemplateSummary"),
   type = "structure",
   members = {
      templateArn = schema.new({
         id = id.from(_N, "ManagedJobTemplateSummary", "templateArn"),
         type = "string",
         name = "templateArn",
         target_id = prelude.String.id,
      }),
      templateName = schema.new({
         id = id.from(_N, "ManagedJobTemplateSummary", "templateName"),
         type = "string",
         name = "templateName",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "ManagedJobTemplateSummary", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      environments = schema.new({
         id = id.from(_N, "ManagedJobTemplateSummary", "environments"),
         type = "list",
         name = "environments",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      templateVersion = schema.new({
         id = id.from(_N, "ManagedJobTemplateSummary", "templateVersion"),
         type = "string",
         name = "templateVersion",
         target_id = prelude.String.id,
      }),
   },
})

M.ListManagedJobTemplatesOutput = schema.new({
   id = id.from(_N, "ListManagedJobTemplatesResponse"),
   type = "structure",
   members = {
      managedJobTemplates = schema.new({
         id = id.from(_N, "ListManagedJobTemplatesOutput", "managedJobTemplates"),
         type = "list",
         name = "managedJobTemplates",
         target_id = prelude.Document.id,
         list_member = M.ManagedJobTemplateSummary,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListManagedJobTemplatesOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListMetricValuesInput = schema.new({
   id = id.from(_N, "ListMetricValuesRequest"),
   type = "structure",
   members = {
      thingName = schema.new({
         id = id.from(_N, "ListMetricValuesInput", "thingName"),
         type = "string",
         name = "thingName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "thingName" },
         },
      }),
      metricName = schema.new({
         id = id.from(_N, "ListMetricValuesInput", "metricName"),
         type = "string",
         name = "metricName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "metricName" },
         },
      }),
      dimensionName = schema.new({
         id = id.from(_N, "ListMetricValuesInput", "dimensionName"),
         type = "string",
         name = "dimensionName",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "dimensionName" },
         },
      }),
      dimensionValueOperator = schema.new({
         id = id.from(_N, "ListMetricValuesInput", "dimensionValueOperator"),
         type = "string",
         name = "dimensionValueOperator",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "dimensionValueOperator" },
         },
      }),
      startTime = schema.new({
         id = id.from(_N, "ListMetricValuesInput", "startTime"),
         type = "timestamp",
         name = "startTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "startTime" },
         },
      }),
      endTime = schema.new({
         id = id.from(_N, "ListMetricValuesInput", "endTime"),
         type = "timestamp",
         name = "endTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "endTime" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListMetricValuesInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListMetricValuesInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
   },
})

M.MetricDatum = schema.new({
   id = id.from(_N, "MetricDatum"),
   type = "structure",
   members = {
      timestamp = schema.new({
         id = id.from(_N, "MetricDatum", "timestamp"),
         type = "timestamp",
         name = "timestamp",
         target_id = prelude.Timestamp.id,
      }),
      value = schema.new({
         id = id.from(_N, "MetricDatum", "value"),
         type = "structure",
         name = "value",
         target_id = id.from(_N, "MetricValue"),
         target = M.MetricValue,
      }),
   },
})

M.ListMetricValuesOutput = schema.new({
   id = id.from(_N, "ListMetricValuesResponse"),
   type = "structure",
   members = {
      metricDatumList = schema.new({
         id = id.from(_N, "ListMetricValuesOutput", "metricDatumList"),
         type = "list",
         name = "metricDatumList",
         target_id = prelude.Document.id,
         list_member = M.MetricDatum,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListMetricValuesOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListMitigationActionsInput = schema.new({
   id = id.from(_N, "ListMitigationActionsRequest"),
   type = "structure",
   members = {
      actionType = schema.new({
         id = id.from(_N, "ListMitigationActionsInput", "actionType"),
         type = "string",
         name = "actionType",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "actionType" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListMitigationActionsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListMitigationActionsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
   },
})

M.MitigationActionIdentifier = schema.new({
   id = id.from(_N, "MitigationActionIdentifier"),
   type = "structure",
   members = {
      actionName = schema.new({
         id = id.from(_N, "MitigationActionIdentifier", "actionName"),
         type = "string",
         name = "actionName",
         target_id = prelude.String.id,
      }),
      actionArn = schema.new({
         id = id.from(_N, "MitigationActionIdentifier", "actionArn"),
         type = "string",
         name = "actionArn",
         target_id = prelude.String.id,
      }),
      creationDate = schema.new({
         id = id.from(_N, "MitigationActionIdentifier", "creationDate"),
         type = "timestamp",
         name = "creationDate",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.ListMitigationActionsOutput = schema.new({
   id = id.from(_N, "ListMitigationActionsResponse"),
   type = "structure",
   members = {
      actionIdentifiers = schema.new({
         id = id.from(_N, "ListMitigationActionsOutput", "actionIdentifiers"),
         type = "list",
         name = "actionIdentifiers",
         target_id = prelude.Document.id,
         list_member = M.MitigationActionIdentifier,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListMitigationActionsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListOTAUpdatesInput = schema.new({
   id = id.from(_N, "ListOTAUpdatesRequest"),
   type = "structure",
   members = {
      maxResults = schema.new({
         id = id.from(_N, "ListOTAUpdatesInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListOTAUpdatesInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      otaUpdateStatus = schema.new({
         id = id.from(_N, "ListOTAUpdatesInput", "otaUpdateStatus"),
         type = "string",
         name = "otaUpdateStatus",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "otaUpdateStatus" },
         },
      }),
   },
})

M.OTAUpdateSummary = schema.new({
   id = id.from(_N, "OTAUpdateSummary"),
   type = "structure",
   members = {
      otaUpdateId = schema.new({
         id = id.from(_N, "OTAUpdateSummary", "otaUpdateId"),
         type = "string",
         name = "otaUpdateId",
         target_id = prelude.String.id,
      }),
      otaUpdateArn = schema.new({
         id = id.from(_N, "OTAUpdateSummary", "otaUpdateArn"),
         type = "string",
         name = "otaUpdateArn",
         target_id = prelude.String.id,
      }),
      creationDate = schema.new({
         id = id.from(_N, "OTAUpdateSummary", "creationDate"),
         type = "timestamp",
         name = "creationDate",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.ListOTAUpdatesOutput = schema.new({
   id = id.from(_N, "ListOTAUpdatesResponse"),
   type = "structure",
   members = {
      otaUpdates = schema.new({
         id = id.from(_N, "ListOTAUpdatesOutput", "otaUpdates"),
         type = "list",
         name = "otaUpdates",
         target_id = prelude.Document.id,
         list_member = M.OTAUpdateSummary,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListOTAUpdatesOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListOutgoingCertificatesInput = schema.new({
   id = id.from(_N, "ListOutgoingCertificatesRequest"),
   type = "structure",
   members = {
      pageSize = schema.new({
         id = id.from(_N, "ListOutgoingCertificatesInput", "pageSize"),
         type = "integer",
         name = "pageSize",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "pageSize" },
         },
      }),
      marker = schema.new({
         id = id.from(_N, "ListOutgoingCertificatesInput", "marker"),
         type = "string",
         name = "marker",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "marker" },
         },
      }),
      ascendingOrder = schema.new({
         id = id.from(_N, "ListOutgoingCertificatesInput", "ascendingOrder"),
         type = "boolean",
         name = "ascendingOrder",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
            [traits.HTTP_QUERY] = { name = "isAscendingOrder" },
         },
      }),
   },
})

M.OutgoingCertificate = schema.new({
   id = id.from(_N, "OutgoingCertificate"),
   type = "structure",
   members = {
      certificateArn = schema.new({
         id = id.from(_N, "OutgoingCertificate", "certificateArn"),
         type = "string",
         name = "certificateArn",
         target_id = prelude.String.id,
      }),
      certificateId = schema.new({
         id = id.from(_N, "OutgoingCertificate", "certificateId"),
         type = "string",
         name = "certificateId",
         target_id = prelude.String.id,
      }),
      transferredTo = schema.new({
         id = id.from(_N, "OutgoingCertificate", "transferredTo"),
         type = "string",
         name = "transferredTo",
         target_id = prelude.String.id,
      }),
      transferDate = schema.new({
         id = id.from(_N, "OutgoingCertificate", "transferDate"),
         type = "timestamp",
         name = "transferDate",
         target_id = prelude.Timestamp.id,
      }),
      transferMessage = schema.new({
         id = id.from(_N, "OutgoingCertificate", "transferMessage"),
         type = "string",
         name = "transferMessage",
         target_id = prelude.String.id,
      }),
      creationDate = schema.new({
         id = id.from(_N, "OutgoingCertificate", "creationDate"),
         type = "timestamp",
         name = "creationDate",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.ListOutgoingCertificatesOutput = schema.new({
   id = id.from(_N, "ListOutgoingCertificatesResponse"),
   type = "structure",
   members = {
      outgoingCertificates = schema.new({
         id = id.from(_N, "ListOutgoingCertificatesOutput", "outgoingCertificates"),
         type = "list",
         name = "outgoingCertificates",
         target_id = prelude.Document.id,
         list_member = M.OutgoingCertificate,
      }),
      nextMarker = schema.new({
         id = id.from(_N, "ListOutgoingCertificatesOutput", "nextMarker"),
         type = "string",
         name = "nextMarker",
         target_id = prelude.String.id,
      }),
   },
})

M.ListPackagesInput = schema.new({
   id = id.from(_N, "ListPackagesRequest"),
   type = "structure",
   members = {
      maxResults = schema.new({
         id = id.from(_N, "ListPackagesInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListPackagesInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
   },
})

M.PackageSummary = schema.new({
   id = id.from(_N, "PackageSummary"),
   type = "structure",
   members = {
      packageName = schema.new({
         id = id.from(_N, "PackageSummary", "packageName"),
         type = "string",
         name = "packageName",
         target_id = prelude.String.id,
      }),
      defaultVersionName = schema.new({
         id = id.from(_N, "PackageSummary", "defaultVersionName"),
         type = "string",
         name = "defaultVersionName",
         target_id = prelude.String.id,
      }),
      creationDate = schema.new({
         id = id.from(_N, "PackageSummary", "creationDate"),
         type = "timestamp",
         name = "creationDate",
         target_id = prelude.Timestamp.id,
      }),
      lastModifiedDate = schema.new({
         id = id.from(_N, "PackageSummary", "lastModifiedDate"),
         type = "timestamp",
         name = "lastModifiedDate",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.ListPackagesOutput = schema.new({
   id = id.from(_N, "ListPackagesResponse"),
   type = "structure",
   members = {
      packageSummaries = schema.new({
         id = id.from(_N, "ListPackagesOutput", "packageSummaries"),
         type = "list",
         name = "packageSummaries",
         target_id = prelude.Document.id,
         list_member = M.PackageSummary,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListPackagesOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListPackageVersionsInput = schema.new({
   id = id.from(_N, "ListPackageVersionsRequest"),
   type = "structure",
   members = {
      packageName = schema.new({
         id = id.from(_N, "ListPackageVersionsInput", "packageName"),
         type = "string",
         name = "packageName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      status = schema.new({
         id = id.from(_N, "ListPackageVersionsInput", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "status" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListPackageVersionsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListPackageVersionsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
   },
})

M.PackageVersionSummary = schema.new({
   id = id.from(_N, "PackageVersionSummary"),
   type = "structure",
   members = {
      packageName = schema.new({
         id = id.from(_N, "PackageVersionSummary", "packageName"),
         type = "string",
         name = "packageName",
         target_id = prelude.String.id,
      }),
      versionName = schema.new({
         id = id.from(_N, "PackageVersionSummary", "versionName"),
         type = "string",
         name = "versionName",
         target_id = prelude.String.id,
      }),
      status = schema.new({
         id = id.from(_N, "PackageVersionSummary", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
      creationDate = schema.new({
         id = id.from(_N, "PackageVersionSummary", "creationDate"),
         type = "timestamp",
         name = "creationDate",
         target_id = prelude.Timestamp.id,
      }),
      lastModifiedDate = schema.new({
         id = id.from(_N, "PackageVersionSummary", "lastModifiedDate"),
         type = "timestamp",
         name = "lastModifiedDate",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.ListPackageVersionsOutput = schema.new({
   id = id.from(_N, "ListPackageVersionsResponse"),
   type = "structure",
   members = {
      packageVersionSummaries = schema.new({
         id = id.from(_N, "ListPackageVersionsOutput", "packageVersionSummaries"),
         type = "list",
         name = "packageVersionSummaries",
         target_id = prelude.Document.id,
         list_member = M.PackageVersionSummary,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListPackageVersionsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListPoliciesInput = schema.new({
   id = id.from(_N, "ListPoliciesRequest"),
   type = "structure",
   members = {
      marker = schema.new({
         id = id.from(_N, "ListPoliciesInput", "marker"),
         type = "string",
         name = "marker",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "marker" },
         },
      }),
      pageSize = schema.new({
         id = id.from(_N, "ListPoliciesInput", "pageSize"),
         type = "integer",
         name = "pageSize",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "pageSize" },
         },
      }),
      ascendingOrder = schema.new({
         id = id.from(_N, "ListPoliciesInput", "ascendingOrder"),
         type = "boolean",
         name = "ascendingOrder",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
            [traits.HTTP_QUERY] = { name = "isAscendingOrder" },
         },
      }),
   },
})

M.ListPoliciesOutput = schema.new({
   id = id.from(_N, "ListPoliciesResponse"),
   type = "structure",
   members = {
      policies = schema.new({
         id = id.from(_N, "ListPoliciesOutput", "policies"),
         type = "list",
         name = "policies",
         target_id = prelude.Document.id,
         list_member = M.Policy,
      }),
      nextMarker = schema.new({
         id = id.from(_N, "ListPoliciesOutput", "nextMarker"),
         type = "string",
         name = "nextMarker",
         target_id = prelude.String.id,
      }),
   },
})

M.ListPolicyPrincipalsInput = schema.new({
   id = id.from(_N, "ListPolicyPrincipalsRequest"),
   type = "structure",
   members = {
      policyName = schema.new({
         id = id.from(_N, "ListPolicyPrincipalsInput", "policyName"),
         type = "string",
         name = "policyName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_HEADER] = { name = "x-amzn-iot-policy" },
         },
      }),
      marker = schema.new({
         id = id.from(_N, "ListPolicyPrincipalsInput", "marker"),
         type = "string",
         name = "marker",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "marker" },
         },
      }),
      pageSize = schema.new({
         id = id.from(_N, "ListPolicyPrincipalsInput", "pageSize"),
         type = "integer",
         name = "pageSize",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "pageSize" },
         },
      }),
      ascendingOrder = schema.new({
         id = id.from(_N, "ListPolicyPrincipalsInput", "ascendingOrder"),
         type = "boolean",
         name = "ascendingOrder",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
            [traits.HTTP_QUERY] = { name = "isAscendingOrder" },
         },
      }),
   },
})

M.ListPolicyPrincipalsOutput = schema.new({
   id = id.from(_N, "ListPolicyPrincipalsResponse"),
   type = "structure",
   members = {
      principals = schema.new({
         id = id.from(_N, "ListPolicyPrincipalsOutput", "principals"),
         type = "list",
         name = "principals",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      nextMarker = schema.new({
         id = id.from(_N, "ListPolicyPrincipalsOutput", "nextMarker"),
         type = "string",
         name = "nextMarker",
         target_id = prelude.String.id,
      }),
   },
})

M.ListPolicyVersionsInput = schema.new({
   id = id.from(_N, "ListPolicyVersionsRequest"),
   type = "structure",
   members = {
      policyName = schema.new({
         id = id.from(_N, "ListPolicyVersionsInput", "policyName"),
         type = "string",
         name = "policyName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.PolicyVersion = schema.new({
   id = id.from(_N, "PolicyVersion"),
   type = "structure",
   members = {
      versionId = schema.new({
         id = id.from(_N, "PolicyVersion", "versionId"),
         type = "string",
         name = "versionId",
         target_id = prelude.String.id,
      }),
      isDefaultVersion = schema.new({
         id = id.from(_N, "PolicyVersion", "isDefaultVersion"),
         type = "boolean",
         name = "isDefaultVersion",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      createDate = schema.new({
         id = id.from(_N, "PolicyVersion", "createDate"),
         type = "timestamp",
         name = "createDate",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.ListPolicyVersionsOutput = schema.new({
   id = id.from(_N, "ListPolicyVersionsResponse"),
   type = "structure",
   members = {
      policyVersions = schema.new({
         id = id.from(_N, "ListPolicyVersionsOutput", "policyVersions"),
         type = "list",
         name = "policyVersions",
         target_id = prelude.Document.id,
         list_member = M.PolicyVersion,
      }),
   },
})

M.ListPrincipalPoliciesInput = schema.new({
   id = id.from(_N, "ListPrincipalPoliciesRequest"),
   type = "structure",
   members = {
      principal = schema.new({
         id = id.from(_N, "ListPrincipalPoliciesInput", "principal"),
         type = "string",
         name = "principal",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_HEADER] = { name = "x-amzn-iot-principal" },
         },
      }),
      marker = schema.new({
         id = id.from(_N, "ListPrincipalPoliciesInput", "marker"),
         type = "string",
         name = "marker",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "marker" },
         },
      }),
      pageSize = schema.new({
         id = id.from(_N, "ListPrincipalPoliciesInput", "pageSize"),
         type = "integer",
         name = "pageSize",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "pageSize" },
         },
      }),
      ascendingOrder = schema.new({
         id = id.from(_N, "ListPrincipalPoliciesInput", "ascendingOrder"),
         type = "boolean",
         name = "ascendingOrder",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
            [traits.HTTP_QUERY] = { name = "isAscendingOrder" },
         },
      }),
   },
})

M.ListPrincipalPoliciesOutput = schema.new({
   id = id.from(_N, "ListPrincipalPoliciesResponse"),
   type = "structure",
   members = {
      policies = schema.new({
         id = id.from(_N, "ListPrincipalPoliciesOutput", "policies"),
         type = "list",
         name = "policies",
         target_id = prelude.Document.id,
         list_member = M.Policy,
      }),
      nextMarker = schema.new({
         id = id.from(_N, "ListPrincipalPoliciesOutput", "nextMarker"),
         type = "string",
         name = "nextMarker",
         target_id = prelude.String.id,
      }),
   },
})

M.ListPrincipalThingsInput = schema.new({
   id = id.from(_N, "ListPrincipalThingsRequest"),
   type = "structure",
   members = {
      nextToken = schema.new({
         id = id.from(_N, "ListPrincipalThingsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListPrincipalThingsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      principal = schema.new({
         id = id.from(_N, "ListPrincipalThingsInput", "principal"),
         type = "string",
         name = "principal",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_HEADER] = { name = "x-amzn-principal" },
         },
      }),
   },
})

M.ListPrincipalThingsOutput = schema.new({
   id = id.from(_N, "ListPrincipalThingsResponse"),
   type = "structure",
   members = {
      things = schema.new({
         id = id.from(_N, "ListPrincipalThingsOutput", "things"),
         type = "list",
         name = "things",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListPrincipalThingsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListPrincipalThingsV2Input = schema.new({
   id = id.from(_N, "ListPrincipalThingsV2Request"),
   type = "structure",
   members = {
      nextToken = schema.new({
         id = id.from(_N, "ListPrincipalThingsV2Input", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListPrincipalThingsV2Input", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      principal = schema.new({
         id = id.from(_N, "ListPrincipalThingsV2Input", "principal"),
         type = "string",
         name = "principal",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_HEADER] = { name = "x-amzn-principal" },
         },
      }),
      thingPrincipalType = schema.new({
         id = id.from(_N, "ListPrincipalThingsV2Input", "thingPrincipalType"),
         type = "string",
         name = "thingPrincipalType",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "thingPrincipalType" },
         },
      }),
   },
})

M.PrincipalThingObject = schema.new({
   id = id.from(_N, "PrincipalThingObject"),
   type = "structure",
   members = {
      thingName = schema.new({
         id = id.from(_N, "PrincipalThingObject", "thingName"),
         type = "string",
         name = "thingName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      thingPrincipalType = schema.new({
         id = id.from(_N, "PrincipalThingObject", "thingPrincipalType"),
         type = "string",
         name = "thingPrincipalType",
         target_id = prelude.String.id,
      }),
   },
})

M.ListPrincipalThingsV2Output = schema.new({
   id = id.from(_N, "ListPrincipalThingsV2Response"),
   type = "structure",
   members = {
      principalThingObjects = schema.new({
         id = id.from(_N, "ListPrincipalThingsV2Output", "principalThingObjects"),
         type = "list",
         name = "principalThingObjects",
         target_id = prelude.Document.id,
         list_member = M.PrincipalThingObject,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListPrincipalThingsV2Output", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListProvisioningTemplatesInput = schema.new({
   id = id.from(_N, "ListProvisioningTemplatesRequest"),
   type = "structure",
   members = {
      maxResults = schema.new({
         id = id.from(_N, "ListProvisioningTemplatesInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListProvisioningTemplatesInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
   },
})

M.ProvisioningTemplateSummary = schema.new({
   id = id.from(_N, "ProvisioningTemplateSummary"),
   type = "structure",
   members = {
      templateArn = schema.new({
         id = id.from(_N, "ProvisioningTemplateSummary", "templateArn"),
         type = "string",
         name = "templateArn",
         target_id = prelude.String.id,
      }),
      templateName = schema.new({
         id = id.from(_N, "ProvisioningTemplateSummary", "templateName"),
         type = "string",
         name = "templateName",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "ProvisioningTemplateSummary", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      creationDate = schema.new({
         id = id.from(_N, "ProvisioningTemplateSummary", "creationDate"),
         type = "timestamp",
         name = "creationDate",
         target_id = prelude.Timestamp.id,
      }),
      lastModifiedDate = schema.new({
         id = id.from(_N, "ProvisioningTemplateSummary", "lastModifiedDate"),
         type = "timestamp",
         name = "lastModifiedDate",
         target_id = prelude.Timestamp.id,
      }),
      enabled = schema.new({
         id = id.from(_N, "ProvisioningTemplateSummary", "enabled"),
         type = "boolean",
         name = "enabled",
         target_id = prelude.Boolean.id,
      }),
      type = schema.new({
         id = id.from(_N, "ProvisioningTemplateSummary", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
      }),
   },
})

M.ListProvisioningTemplatesOutput = schema.new({
   id = id.from(_N, "ListProvisioningTemplatesResponse"),
   type = "structure",
   members = {
      templates = schema.new({
         id = id.from(_N, "ListProvisioningTemplatesOutput", "templates"),
         type = "list",
         name = "templates",
         target_id = prelude.Document.id,
         list_member = M.ProvisioningTemplateSummary,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListProvisioningTemplatesOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListProvisioningTemplateVersionsInput = schema.new({
   id = id.from(_N, "ListProvisioningTemplateVersionsRequest"),
   type = "structure",
   members = {
      templateName = schema.new({
         id = id.from(_N, "ListProvisioningTemplateVersionsInput", "templateName"),
         type = "string",
         name = "templateName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListProvisioningTemplateVersionsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListProvisioningTemplateVersionsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
   },
})

M.ProvisioningTemplateVersionSummary = schema.new({
   id = id.from(_N, "ProvisioningTemplateVersionSummary"),
   type = "structure",
   members = {
      versionId = schema.new({
         id = id.from(_N, "ProvisioningTemplateVersionSummary", "versionId"),
         type = "integer",
         name = "versionId",
         target_id = prelude.Integer.id,
      }),
      creationDate = schema.new({
         id = id.from(_N, "ProvisioningTemplateVersionSummary", "creationDate"),
         type = "timestamp",
         name = "creationDate",
         target_id = prelude.Timestamp.id,
      }),
      isDefaultVersion = schema.new({
         id = id.from(_N, "ProvisioningTemplateVersionSummary", "isDefaultVersion"),
         type = "boolean",
         name = "isDefaultVersion",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
   },
})

M.ListProvisioningTemplateVersionsOutput = schema.new({
   id = id.from(_N, "ListProvisioningTemplateVersionsResponse"),
   type = "structure",
   members = {
      versions = schema.new({
         id = id.from(_N, "ListProvisioningTemplateVersionsOutput", "versions"),
         type = "list",
         name = "versions",
         target_id = prelude.Document.id,
         list_member = M.ProvisioningTemplateVersionSummary,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListProvisioningTemplateVersionsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListRelatedResourcesForAuditFindingInput = schema.new({
   id = id.from(_N, "ListRelatedResourcesForAuditFindingRequest"),
   type = "structure",
   members = {
      findingId = schema.new({
         id = id.from(_N, "ListRelatedResourcesForAuditFindingInput", "findingId"),
         type = "string",
         name = "findingId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "findingId" },
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListRelatedResourcesForAuditFindingInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListRelatedResourcesForAuditFindingInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
   },
})

M.ListRelatedResourcesForAuditFindingOutput = schema.new({
   id = id.from(_N, "ListRelatedResourcesForAuditFindingResponse"),
   type = "structure",
   members = {
      relatedResources = schema.new({
         id = id.from(_N, "ListRelatedResourcesForAuditFindingOutput", "relatedResources"),
         type = "list",
         name = "relatedResources",
         target_id = prelude.Document.id,
         list_member = M.RelatedResource,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListRelatedResourcesForAuditFindingOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListRoleAliasesInput = schema.new({
   id = id.from(_N, "ListRoleAliasesRequest"),
   type = "structure",
   members = {
      pageSize = schema.new({
         id = id.from(_N, "ListRoleAliasesInput", "pageSize"),
         type = "integer",
         name = "pageSize",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "pageSize" },
         },
      }),
      marker = schema.new({
         id = id.from(_N, "ListRoleAliasesInput", "marker"),
         type = "string",
         name = "marker",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "marker" },
         },
      }),
      ascendingOrder = schema.new({
         id = id.from(_N, "ListRoleAliasesInput", "ascendingOrder"),
         type = "boolean",
         name = "ascendingOrder",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
            [traits.HTTP_QUERY] = { name = "isAscendingOrder" },
         },
      }),
   },
})

M.ListRoleAliasesOutput = schema.new({
   id = id.from(_N, "ListRoleAliasesResponse"),
   type = "structure",
   members = {
      roleAliases = schema.new({
         id = id.from(_N, "ListRoleAliasesOutput", "roleAliases"),
         type = "list",
         name = "roleAliases",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      nextMarker = schema.new({
         id = id.from(_N, "ListRoleAliasesOutput", "nextMarker"),
         type = "string",
         name = "nextMarker",
         target_id = prelude.String.id,
      }),
   },
})

M.ListSbomValidationResultsInput = schema.new({
   id = id.from(_N, "ListSbomValidationResultsRequest"),
   type = "structure",
   members = {
      packageName = schema.new({
         id = id.from(_N, "ListSbomValidationResultsInput", "packageName"),
         type = "string",
         name = "packageName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      versionName = schema.new({
         id = id.from(_N, "ListSbomValidationResultsInput", "versionName"),
         type = "string",
         name = "versionName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      validationResult = schema.new({
         id = id.from(_N, "ListSbomValidationResultsInput", "validationResult"),
         type = "string",
         name = "validationResult",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "validationResult" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListSbomValidationResultsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListSbomValidationResultsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
   },
})

M.SbomValidationResultSummary = schema.new({
   id = id.from(_N, "SbomValidationResultSummary"),
   type = "structure",
   members = {
      fileName = schema.new({
         id = id.from(_N, "SbomValidationResultSummary", "fileName"),
         type = "string",
         name = "fileName",
         target_id = prelude.String.id,
      }),
      validationResult = schema.new({
         id = id.from(_N, "SbomValidationResultSummary", "validationResult"),
         type = "string",
         name = "validationResult",
         target_id = prelude.String.id,
      }),
      errorCode = schema.new({
         id = id.from(_N, "SbomValidationResultSummary", "errorCode"),
         type = "string",
         name = "errorCode",
         target_id = prelude.String.id,
      }),
      errorMessage = schema.new({
         id = id.from(_N, "SbomValidationResultSummary", "errorMessage"),
         type = "string",
         name = "errorMessage",
         target_id = prelude.String.id,
      }),
   },
})

M.ListSbomValidationResultsOutput = schema.new({
   id = id.from(_N, "ListSbomValidationResultsResponse"),
   type = "structure",
   members = {
      validationResultSummaries = schema.new({
         id = id.from(_N, "ListSbomValidationResultsOutput", "validationResultSummaries"),
         type = "list",
         name = "validationResultSummaries",
         target_id = prelude.Document.id,
         list_member = M.SbomValidationResultSummary,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListSbomValidationResultsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListScheduledAuditsInput = schema.new({
   id = id.from(_N, "ListScheduledAuditsRequest"),
   type = "structure",
   members = {
      nextToken = schema.new({
         id = id.from(_N, "ListScheduledAuditsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListScheduledAuditsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
   },
})

M.ScheduledAuditMetadata = schema.new({
   id = id.from(_N, "ScheduledAuditMetadata"),
   type = "structure",
   members = {
      scheduledAuditName = schema.new({
         id = id.from(_N, "ScheduledAuditMetadata", "scheduledAuditName"),
         type = "string",
         name = "scheduledAuditName",
         target_id = prelude.String.id,
      }),
      scheduledAuditArn = schema.new({
         id = id.from(_N, "ScheduledAuditMetadata", "scheduledAuditArn"),
         type = "string",
         name = "scheduledAuditArn",
         target_id = prelude.String.id,
      }),
      frequency = schema.new({
         id = id.from(_N, "ScheduledAuditMetadata", "frequency"),
         type = "string",
         name = "frequency",
         target_id = prelude.String.id,
      }),
      dayOfMonth = schema.new({
         id = id.from(_N, "ScheduledAuditMetadata", "dayOfMonth"),
         type = "string",
         name = "dayOfMonth",
         target_id = prelude.String.id,
      }),
      dayOfWeek = schema.new({
         id = id.from(_N, "ScheduledAuditMetadata", "dayOfWeek"),
         type = "string",
         name = "dayOfWeek",
         target_id = prelude.String.id,
      }),
   },
})

M.ListScheduledAuditsOutput = schema.new({
   id = id.from(_N, "ListScheduledAuditsResponse"),
   type = "structure",
   members = {
      scheduledAudits = schema.new({
         id = id.from(_N, "ListScheduledAuditsOutput", "scheduledAudits"),
         type = "list",
         name = "scheduledAudits",
         target_id = prelude.Document.id,
         list_member = M.ScheduledAuditMetadata,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListScheduledAuditsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListSecurityProfilesInput = schema.new({
   id = id.from(_N, "ListSecurityProfilesRequest"),
   type = "structure",
   members = {
      nextToken = schema.new({
         id = id.from(_N, "ListSecurityProfilesInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListSecurityProfilesInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      dimensionName = schema.new({
         id = id.from(_N, "ListSecurityProfilesInput", "dimensionName"),
         type = "string",
         name = "dimensionName",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "dimensionName" },
         },
      }),
      metricName = schema.new({
         id = id.from(_N, "ListSecurityProfilesInput", "metricName"),
         type = "string",
         name = "metricName",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "metricName" },
         },
      }),
   },
})

M.SecurityProfileIdentifier = schema.new({
   id = id.from(_N, "SecurityProfileIdentifier"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "SecurityProfileIdentifier", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      arn = schema.new({
         id = id.from(_N, "SecurityProfileIdentifier", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ListSecurityProfilesOutput = schema.new({
   id = id.from(_N, "ListSecurityProfilesResponse"),
   type = "structure",
   members = {
      securityProfileIdentifiers = schema.new({
         id = id.from(_N, "ListSecurityProfilesOutput", "securityProfileIdentifiers"),
         type = "list",
         name = "securityProfileIdentifiers",
         target_id = prelude.Document.id,
         list_member = M.SecurityProfileIdentifier,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListSecurityProfilesOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListSecurityProfilesForTargetInput = schema.new({
   id = id.from(_N, "ListSecurityProfilesForTargetRequest"),
   type = "structure",
   members = {
      nextToken = schema.new({
         id = id.from(_N, "ListSecurityProfilesForTargetInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListSecurityProfilesForTargetInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      recursive = schema.new({
         id = id.from(_N, "ListSecurityProfilesForTargetInput", "recursive"),
         type = "boolean",
         name = "recursive",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
            [traits.HTTP_QUERY] = { name = "recursive" },
         },
      }),
      securityProfileTargetArn = schema.new({
         id = id.from(_N, "ListSecurityProfilesForTargetInput", "securityProfileTargetArn"),
         type = "string",
         name = "securityProfileTargetArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "securityProfileTargetArn" },
         },
      }),
   },
})

M.SecurityProfileTarget = schema.new({
   id = id.from(_N, "SecurityProfileTarget"),
   type = "structure",
   members = {
      arn = schema.new({
         id = id.from(_N, "SecurityProfileTarget", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.SecurityProfileTargetMapping = schema.new({
   id = id.from(_N, "SecurityProfileTargetMapping"),
   type = "structure",
   members = {
      securityProfileIdentifier = schema.new({
         id = id.from(_N, "SecurityProfileTargetMapping", "securityProfileIdentifier"),
         type = "structure",
         name = "securityProfileIdentifier",
         target_id = id.from(_N, "SecurityProfileIdentifier"),
         target = M.SecurityProfileIdentifier,
      }),
      target = schema.new({
         id = id.from(_N, "SecurityProfileTargetMapping", "target"),
         type = "structure",
         name = "target",
         target_id = id.from(_N, "SecurityProfileTarget"),
         target = M.SecurityProfileTarget,
      }),
   },
})

M.ListSecurityProfilesForTargetOutput = schema.new({
   id = id.from(_N, "ListSecurityProfilesForTargetResponse"),
   type = "structure",
   members = {
      securityProfileTargetMappings = schema.new({
         id = id.from(_N, "ListSecurityProfilesForTargetOutput", "securityProfileTargetMappings"),
         type = "list",
         name = "securityProfileTargetMappings",
         target_id = prelude.Document.id,
         list_member = M.SecurityProfileTargetMapping,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListSecurityProfilesForTargetOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListStreamsInput = schema.new({
   id = id.from(_N, "ListStreamsRequest"),
   type = "structure",
   members = {
      maxResults = schema.new({
         id = id.from(_N, "ListStreamsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListStreamsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      ascendingOrder = schema.new({
         id = id.from(_N, "ListStreamsInput", "ascendingOrder"),
         type = "boolean",
         name = "ascendingOrder",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
            [traits.HTTP_QUERY] = { name = "isAscendingOrder" },
         },
      }),
   },
})

M.StreamSummary = schema.new({
   id = id.from(_N, "StreamSummary"),
   type = "structure",
   members = {
      streamId = schema.new({
         id = id.from(_N, "StreamSummary", "streamId"),
         type = "string",
         name = "streamId",
         target_id = prelude.String.id,
      }),
      streamArn = schema.new({
         id = id.from(_N, "StreamSummary", "streamArn"),
         type = "string",
         name = "streamArn",
         target_id = prelude.String.id,
      }),
      streamVersion = schema.new({
         id = id.from(_N, "StreamSummary", "streamVersion"),
         type = "integer",
         name = "streamVersion",
         target_id = prelude.Integer.id,
      }),
      description = schema.new({
         id = id.from(_N, "StreamSummary", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
   },
})

M.ListStreamsOutput = schema.new({
   id = id.from(_N, "ListStreamsResponse"),
   type = "structure",
   members = {
      streams = schema.new({
         id = id.from(_N, "ListStreamsOutput", "streams"),
         type = "list",
         name = "streams",
         target_id = prelude.Document.id,
         list_member = M.StreamSummary,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListStreamsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
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
            [traits.HTTP_QUERY] = { name = "resourceArn" },
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListTagsForResourceInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
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
         type = "list",
         name = "tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListTagsForResourceOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListTargetsForPolicyInput = schema.new({
   id = id.from(_N, "ListTargetsForPolicyRequest"),
   type = "structure",
   members = {
      policyName = schema.new({
         id = id.from(_N, "ListTargetsForPolicyInput", "policyName"),
         type = "string",
         name = "policyName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      marker = schema.new({
         id = id.from(_N, "ListTargetsForPolicyInput", "marker"),
         type = "string",
         name = "marker",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "marker" },
         },
      }),
      pageSize = schema.new({
         id = id.from(_N, "ListTargetsForPolicyInput", "pageSize"),
         type = "integer",
         name = "pageSize",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "pageSize" },
         },
      }),
   },
})

M.ListTargetsForPolicyOutput = schema.new({
   id = id.from(_N, "ListTargetsForPolicyResponse"),
   type = "structure",
   members = {
      targets = schema.new({
         id = id.from(_N, "ListTargetsForPolicyOutput", "targets"),
         type = "list",
         name = "targets",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      nextMarker = schema.new({
         id = id.from(_N, "ListTargetsForPolicyOutput", "nextMarker"),
         type = "string",
         name = "nextMarker",
         target_id = prelude.String.id,
      }),
   },
})

M.ListTargetsForSecurityProfileInput = schema.new({
   id = id.from(_N, "ListTargetsForSecurityProfileRequest"),
   type = "structure",
   members = {
      securityProfileName = schema.new({
         id = id.from(_N, "ListTargetsForSecurityProfileInput", "securityProfileName"),
         type = "string",
         name = "securityProfileName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListTargetsForSecurityProfileInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListTargetsForSecurityProfileInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
   },
})

M.ListTargetsForSecurityProfileOutput = schema.new({
   id = id.from(_N, "ListTargetsForSecurityProfileResponse"),
   type = "structure",
   members = {
      securityProfileTargets = schema.new({
         id = id.from(_N, "ListTargetsForSecurityProfileOutput", "securityProfileTargets"),
         type = "list",
         name = "securityProfileTargets",
         target_id = prelude.Document.id,
         list_member = M.SecurityProfileTarget,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListTargetsForSecurityProfileOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListThingGroupsInput = schema.new({
   id = id.from(_N, "ListThingGroupsRequest"),
   type = "structure",
   members = {
      nextToken = schema.new({
         id = id.from(_N, "ListThingGroupsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListThingGroupsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      parentGroup = schema.new({
         id = id.from(_N, "ListThingGroupsInput", "parentGroup"),
         type = "string",
         name = "parentGroup",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "parentGroup" },
         },
      }),
      namePrefixFilter = schema.new({
         id = id.from(_N, "ListThingGroupsInput", "namePrefixFilter"),
         type = "string",
         name = "namePrefixFilter",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "namePrefixFilter" },
         },
      }),
      recursive = schema.new({
         id = id.from(_N, "ListThingGroupsInput", "recursive"),
         type = "boolean",
         name = "recursive",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "recursive" },
         },
      }),
   },
})

M.ListThingGroupsOutput = schema.new({
   id = id.from(_N, "ListThingGroupsResponse"),
   type = "structure",
   members = {
      thingGroups = schema.new({
         id = id.from(_N, "ListThingGroupsOutput", "thingGroups"),
         type = "list",
         name = "thingGroups",
         target_id = prelude.Document.id,
         list_member = M.GroupNameAndArn,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListThingGroupsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListThingGroupsForThingInput = schema.new({
   id = id.from(_N, "ListThingGroupsForThingRequest"),
   type = "structure",
   members = {
      thingName = schema.new({
         id = id.from(_N, "ListThingGroupsForThingInput", "thingName"),
         type = "string",
         name = "thingName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListThingGroupsForThingInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListThingGroupsForThingInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
   },
})

M.ListThingGroupsForThingOutput = schema.new({
   id = id.from(_N, "ListThingGroupsForThingResponse"),
   type = "structure",
   members = {
      thingGroups = schema.new({
         id = id.from(_N, "ListThingGroupsForThingOutput", "thingGroups"),
         type = "list",
         name = "thingGroups",
         target_id = prelude.Document.id,
         list_member = M.GroupNameAndArn,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListThingGroupsForThingOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListThingPrincipalsInput = schema.new({
   id = id.from(_N, "ListThingPrincipalsRequest"),
   type = "structure",
   members = {
      nextToken = schema.new({
         id = id.from(_N, "ListThingPrincipalsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListThingPrincipalsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      thingName = schema.new({
         id = id.from(_N, "ListThingPrincipalsInput", "thingName"),
         type = "string",
         name = "thingName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.ListThingPrincipalsOutput = schema.new({
   id = id.from(_N, "ListThingPrincipalsResponse"),
   type = "structure",
   members = {
      principals = schema.new({
         id = id.from(_N, "ListThingPrincipalsOutput", "principals"),
         type = "list",
         name = "principals",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListThingPrincipalsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListThingPrincipalsV2Input = schema.new({
   id = id.from(_N, "ListThingPrincipalsV2Request"),
   type = "structure",
   members = {
      nextToken = schema.new({
         id = id.from(_N, "ListThingPrincipalsV2Input", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListThingPrincipalsV2Input", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      thingName = schema.new({
         id = id.from(_N, "ListThingPrincipalsV2Input", "thingName"),
         type = "string",
         name = "thingName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      thingPrincipalType = schema.new({
         id = id.from(_N, "ListThingPrincipalsV2Input", "thingPrincipalType"),
         type = "string",
         name = "thingPrincipalType",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "thingPrincipalType" },
         },
      }),
   },
})

M.ThingPrincipalObject = schema.new({
   id = id.from(_N, "ThingPrincipalObject"),
   type = "structure",
   members = {
      principal = schema.new({
         id = id.from(_N, "ThingPrincipalObject", "principal"),
         type = "string",
         name = "principal",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      thingPrincipalType = schema.new({
         id = id.from(_N, "ThingPrincipalObject", "thingPrincipalType"),
         type = "string",
         name = "thingPrincipalType",
         target_id = prelude.String.id,
      }),
   },
})

M.ListThingPrincipalsV2Output = schema.new({
   id = id.from(_N, "ListThingPrincipalsV2Response"),
   type = "structure",
   members = {
      thingPrincipalObjects = schema.new({
         id = id.from(_N, "ListThingPrincipalsV2Output", "thingPrincipalObjects"),
         type = "list",
         name = "thingPrincipalObjects",
         target_id = prelude.Document.id,
         list_member = M.ThingPrincipalObject,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListThingPrincipalsV2Output", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListThingRegistrationTaskReportsInput = schema.new({
   id = id.from(_N, "ListThingRegistrationTaskReportsRequest"),
   type = "structure",
   members = {
      taskId = schema.new({
         id = id.from(_N, "ListThingRegistrationTaskReportsInput", "taskId"),
         type = "string",
         name = "taskId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      reportType = schema.new({
         id = id.from(_N, "ListThingRegistrationTaskReportsInput", "reportType"),
         type = "string",
         name = "reportType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "reportType" },
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListThingRegistrationTaskReportsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListThingRegistrationTaskReportsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
   },
})

M.ListThingRegistrationTaskReportsOutput = schema.new({
   id = id.from(_N, "ListThingRegistrationTaskReportsResponse"),
   type = "structure",
   members = {
      resourceLinks = schema.new({
         id = id.from(_N, "ListThingRegistrationTaskReportsOutput", "resourceLinks"),
         type = "list",
         name = "resourceLinks",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      reportType = schema.new({
         id = id.from(_N, "ListThingRegistrationTaskReportsOutput", "reportType"),
         type = "string",
         name = "reportType",
         target_id = prelude.String.id,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListThingRegistrationTaskReportsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListThingRegistrationTasksInput = schema.new({
   id = id.from(_N, "ListThingRegistrationTasksRequest"),
   type = "structure",
   members = {
      nextToken = schema.new({
         id = id.from(_N, "ListThingRegistrationTasksInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListThingRegistrationTasksInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      status = schema.new({
         id = id.from(_N, "ListThingRegistrationTasksInput", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "status" },
         },
      }),
   },
})

M.ListThingRegistrationTasksOutput = schema.new({
   id = id.from(_N, "ListThingRegistrationTasksResponse"),
   type = "structure",
   members = {
      taskIds = schema.new({
         id = id.from(_N, "ListThingRegistrationTasksOutput", "taskIds"),
         type = "list",
         name = "taskIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListThingRegistrationTasksOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListThingsInput = schema.new({
   id = id.from(_N, "ListThingsRequest"),
   type = "structure",
   members = {
      nextToken = schema.new({
         id = id.from(_N, "ListThingsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListThingsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      attributeName = schema.new({
         id = id.from(_N, "ListThingsInput", "attributeName"),
         type = "string",
         name = "attributeName",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "attributeName" },
         },
      }),
      attributeValue = schema.new({
         id = id.from(_N, "ListThingsInput", "attributeValue"),
         type = "string",
         name = "attributeValue",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "attributeValue" },
         },
      }),
      thingTypeName = schema.new({
         id = id.from(_N, "ListThingsInput", "thingTypeName"),
         type = "string",
         name = "thingTypeName",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "thingTypeName" },
         },
      }),
      usePrefixAttributeValue = schema.new({
         id = id.from(_N, "ListThingsInput", "usePrefixAttributeValue"),
         type = "boolean",
         name = "usePrefixAttributeValue",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
            [traits.HTTP_QUERY] = { name = "usePrefixAttributeValue" },
         },
      }),
   },
})

M.ThingAttribute = schema.new({
   id = id.from(_N, "ThingAttribute"),
   type = "structure",
   members = {
      thingName = schema.new({
         id = id.from(_N, "ThingAttribute", "thingName"),
         type = "string",
         name = "thingName",
         target_id = prelude.String.id,
      }),
      thingTypeName = schema.new({
         id = id.from(_N, "ThingAttribute", "thingTypeName"),
         type = "string",
         name = "thingTypeName",
         target_id = prelude.String.id,
      }),
      thingArn = schema.new({
         id = id.from(_N, "ThingAttribute", "thingArn"),
         type = "string",
         name = "thingArn",
         target_id = prelude.String.id,
      }),
      attributes = schema.new({
         id = id.from(_N, "ThingAttribute", "attributes"),
         type = "map",
         name = "attributes",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      version = schema.new({
         id = id.from(_N, "ThingAttribute", "version"),
         type = "long",
         name = "version",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
   },
})

M.ListThingsOutput = schema.new({
   id = id.from(_N, "ListThingsResponse"),
   type = "structure",
   members = {
      things = schema.new({
         id = id.from(_N, "ListThingsOutput", "things"),
         type = "list",
         name = "things",
         target_id = prelude.Document.id,
         list_member = M.ThingAttribute,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListThingsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListThingsInBillingGroupInput = schema.new({
   id = id.from(_N, "ListThingsInBillingGroupRequest"),
   type = "structure",
   members = {
      billingGroupName = schema.new({
         id = id.from(_N, "ListThingsInBillingGroupInput", "billingGroupName"),
         type = "string",
         name = "billingGroupName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListThingsInBillingGroupInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListThingsInBillingGroupInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
   },
})

M.ListThingsInBillingGroupOutput = schema.new({
   id = id.from(_N, "ListThingsInBillingGroupResponse"),
   type = "structure",
   members = {
      things = schema.new({
         id = id.from(_N, "ListThingsInBillingGroupOutput", "things"),
         type = "list",
         name = "things",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListThingsInBillingGroupOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListThingsInThingGroupInput = schema.new({
   id = id.from(_N, "ListThingsInThingGroupRequest"),
   type = "structure",
   members = {
      thingGroupName = schema.new({
         id = id.from(_N, "ListThingsInThingGroupInput", "thingGroupName"),
         type = "string",
         name = "thingGroupName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      recursive = schema.new({
         id = id.from(_N, "ListThingsInThingGroupInput", "recursive"),
         type = "boolean",
         name = "recursive",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
            [traits.HTTP_QUERY] = { name = "recursive" },
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListThingsInThingGroupInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListThingsInThingGroupInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
   },
})

M.ListThingsInThingGroupOutput = schema.new({
   id = id.from(_N, "ListThingsInThingGroupResponse"),
   type = "structure",
   members = {
      things = schema.new({
         id = id.from(_N, "ListThingsInThingGroupOutput", "things"),
         type = "list",
         name = "things",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListThingsInThingGroupOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListThingTypesInput = schema.new({
   id = id.from(_N, "ListThingTypesRequest"),
   type = "structure",
   members = {
      nextToken = schema.new({
         id = id.from(_N, "ListThingTypesInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListThingTypesInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      thingTypeName = schema.new({
         id = id.from(_N, "ListThingTypesInput", "thingTypeName"),
         type = "string",
         name = "thingTypeName",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "thingTypeName" },
         },
      }),
   },
})

M.ThingTypeDefinition = schema.new({
   id = id.from(_N, "ThingTypeDefinition"),
   type = "structure",
   members = {
      thingTypeName = schema.new({
         id = id.from(_N, "ThingTypeDefinition", "thingTypeName"),
         type = "string",
         name = "thingTypeName",
         target_id = prelude.String.id,
      }),
      thingTypeArn = schema.new({
         id = id.from(_N, "ThingTypeDefinition", "thingTypeArn"),
         type = "string",
         name = "thingTypeArn",
         target_id = prelude.String.id,
      }),
      thingTypeProperties = schema.new({
         id = id.from(_N, "ThingTypeDefinition", "thingTypeProperties"),
         type = "structure",
         name = "thingTypeProperties",
         target_id = id.from(_N, "ThingTypeProperties"),
         target = M.ThingTypeProperties,
      }),
      thingTypeMetadata = schema.new({
         id = id.from(_N, "ThingTypeDefinition", "thingTypeMetadata"),
         type = "structure",
         name = "thingTypeMetadata",
         target_id = id.from(_N, "ThingTypeMetadata"),
         target = M.ThingTypeMetadata,
      }),
   },
})

M.ListThingTypesOutput = schema.new({
   id = id.from(_N, "ListThingTypesResponse"),
   type = "structure",
   members = {
      thingTypes = schema.new({
         id = id.from(_N, "ListThingTypesOutput", "thingTypes"),
         type = "list",
         name = "thingTypes",
         target_id = prelude.Document.id,
         list_member = M.ThingTypeDefinition,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListThingTypesOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListTopicRuleDestinationsInput = schema.new({
   id = id.from(_N, "ListTopicRuleDestinationsRequest"),
   type = "structure",
   members = {
      maxResults = schema.new({
         id = id.from(_N, "ListTopicRuleDestinationsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListTopicRuleDestinationsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
   },
})

M.HttpUrlDestinationSummary = schema.new({
   id = id.from(_N, "HttpUrlDestinationSummary"),
   type = "structure",
   members = {
      confirmationUrl = schema.new({
         id = id.from(_N, "HttpUrlDestinationSummary", "confirmationUrl"),
         type = "string",
         name = "confirmationUrl",
         target_id = prelude.String.id,
      }),
   },
})

M.VpcDestinationSummary = schema.new({
   id = id.from(_N, "VpcDestinationSummary"),
   type = "structure",
   members = {
      subnetIds = schema.new({
         id = id.from(_N, "VpcDestinationSummary", "subnetIds"),
         type = "list",
         name = "subnetIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      securityGroups = schema.new({
         id = id.from(_N, "VpcDestinationSummary", "securityGroups"),
         type = "list",
         name = "securityGroups",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      vpcId = schema.new({
         id = id.from(_N, "VpcDestinationSummary", "vpcId"),
         type = "string",
         name = "vpcId",
         target_id = prelude.String.id,
      }),
      roleArn = schema.new({
         id = id.from(_N, "VpcDestinationSummary", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
      }),
   },
})

M.TopicRuleDestinationSummary = schema.new({
   id = id.from(_N, "TopicRuleDestinationSummary"),
   type = "structure",
   members = {
      arn = schema.new({
         id = id.from(_N, "TopicRuleDestinationSummary", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
      }),
      status = schema.new({
         id = id.from(_N, "TopicRuleDestinationSummary", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
      createdAt = schema.new({
         id = id.from(_N, "TopicRuleDestinationSummary", "createdAt"),
         type = "timestamp",
         name = "createdAt",
         target_id = prelude.Timestamp.id,
      }),
      lastUpdatedAt = schema.new({
         id = id.from(_N, "TopicRuleDestinationSummary", "lastUpdatedAt"),
         type = "timestamp",
         name = "lastUpdatedAt",
         target_id = prelude.Timestamp.id,
      }),
      statusReason = schema.new({
         id = id.from(_N, "TopicRuleDestinationSummary", "statusReason"),
         type = "string",
         name = "statusReason",
         target_id = prelude.String.id,
      }),
      httpUrlSummary = schema.new({
         id = id.from(_N, "TopicRuleDestinationSummary", "httpUrlSummary"),
         type = "structure",
         name = "httpUrlSummary",
         target_id = id.from(_N, "HttpUrlDestinationSummary"),
         target = M.HttpUrlDestinationSummary,
      }),
      vpcDestinationSummary = schema.new({
         id = id.from(_N, "TopicRuleDestinationSummary", "vpcDestinationSummary"),
         type = "structure",
         name = "vpcDestinationSummary",
         target_id = id.from(_N, "VpcDestinationSummary"),
         target = M.VpcDestinationSummary,
      }),
   },
})

M.ListTopicRuleDestinationsOutput = schema.new({
   id = id.from(_N, "ListTopicRuleDestinationsResponse"),
   type = "structure",
   members = {
      destinationSummaries = schema.new({
         id = id.from(_N, "ListTopicRuleDestinationsOutput", "destinationSummaries"),
         type = "list",
         name = "destinationSummaries",
         target_id = prelude.Document.id,
         list_member = M.TopicRuleDestinationSummary,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListTopicRuleDestinationsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListTopicRulesInput = schema.new({
   id = id.from(_N, "ListTopicRulesRequest"),
   type = "structure",
   members = {
      topic = schema.new({
         id = id.from(_N, "ListTopicRulesInput", "topic"),
         type = "string",
         name = "topic",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "topic" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListTopicRulesInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListTopicRulesInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      ruleDisabled = schema.new({
         id = id.from(_N, "ListTopicRulesInput", "ruleDisabled"),
         type = "boolean",
         name = "ruleDisabled",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "ruleDisabled" },
         },
      }),
   },
})

M.TopicRuleListItem = schema.new({
   id = id.from(_N, "TopicRuleListItem"),
   type = "structure",
   members = {
      ruleArn = schema.new({
         id = id.from(_N, "TopicRuleListItem", "ruleArn"),
         type = "string",
         name = "ruleArn",
         target_id = prelude.String.id,
      }),
      ruleName = schema.new({
         id = id.from(_N, "TopicRuleListItem", "ruleName"),
         type = "string",
         name = "ruleName",
         target_id = prelude.String.id,
      }),
      topicPattern = schema.new({
         id = id.from(_N, "TopicRuleListItem", "topicPattern"),
         type = "string",
         name = "topicPattern",
         target_id = prelude.String.id,
      }),
      createdAt = schema.new({
         id = id.from(_N, "TopicRuleListItem", "createdAt"),
         type = "timestamp",
         name = "createdAt",
         target_id = prelude.Timestamp.id,
      }),
      ruleDisabled = schema.new({
         id = id.from(_N, "TopicRuleListItem", "ruleDisabled"),
         type = "boolean",
         name = "ruleDisabled",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.ListTopicRulesOutput = schema.new({
   id = id.from(_N, "ListTopicRulesResponse"),
   type = "structure",
   members = {
      rules = schema.new({
         id = id.from(_N, "ListTopicRulesOutput", "rules"),
         type = "list",
         name = "rules",
         target_id = prelude.Document.id,
         list_member = M.TopicRuleListItem,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListTopicRulesOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListV2LoggingLevelsInput = schema.new({
   id = id.from(_N, "ListV2LoggingLevelsRequest"),
   type = "structure",
   members = {
      targetType = schema.new({
         id = id.from(_N, "ListV2LoggingLevelsInput", "targetType"),
         type = "string",
         name = "targetType",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "targetType" },
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListV2LoggingLevelsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListV2LoggingLevelsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
   },
})

M.LogTarget = schema.new({
   id = id.from(_N, "LogTarget"),
   type = "structure",
   members = {
      targetType = schema.new({
         id = id.from(_N, "LogTarget", "targetType"),
         type = "string",
         name = "targetType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      targetName = schema.new({
         id = id.from(_N, "LogTarget", "targetName"),
         type = "string",
         name = "targetName",
         target_id = prelude.String.id,
      }),
   },
})

M.LogTargetConfiguration = schema.new({
   id = id.from(_N, "LogTargetConfiguration"),
   type = "structure",
   members = {
      logTarget = schema.new({
         id = id.from(_N, "LogTargetConfiguration", "logTarget"),
         type = "structure",
         name = "logTarget",
         target_id = id.from(_N, "LogTarget"),
         target = M.LogTarget,
      }),
      logLevel = schema.new({
         id = id.from(_N, "LogTargetConfiguration", "logLevel"),
         type = "string",
         name = "logLevel",
         target_id = prelude.String.id,
      }),
   },
})

M.ListV2LoggingLevelsOutput = schema.new({
   id = id.from(_N, "ListV2LoggingLevelsResponse"),
   type = "structure",
   members = {
      logTargetConfigurations = schema.new({
         id = id.from(_N, "ListV2LoggingLevelsOutput", "logTargetConfigurations"),
         type = "list",
         name = "logTargetConfigurations",
         target_id = prelude.Document.id,
         list_member = M.LogTargetConfiguration,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListV2LoggingLevelsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListViolationEventsInput = schema.new({
   id = id.from(_N, "ListViolationEventsRequest"),
   type = "structure",
   members = {
      startTime = schema.new({
         id = id.from(_N, "ListViolationEventsInput", "startTime"),
         type = "timestamp",
         name = "startTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "startTime" },
         },
      }),
      endTime = schema.new({
         id = id.from(_N, "ListViolationEventsInput", "endTime"),
         type = "timestamp",
         name = "endTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "endTime" },
         },
      }),
      thingName = schema.new({
         id = id.from(_N, "ListViolationEventsInput", "thingName"),
         type = "string",
         name = "thingName",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "thingName" },
         },
      }),
      securityProfileName = schema.new({
         id = id.from(_N, "ListViolationEventsInput", "securityProfileName"),
         type = "string",
         name = "securityProfileName",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "securityProfileName" },
         },
      }),
      behaviorCriteriaType = schema.new({
         id = id.from(_N, "ListViolationEventsInput", "behaviorCriteriaType"),
         type = "string",
         name = "behaviorCriteriaType",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "behaviorCriteriaType" },
         },
      }),
      listSuppressedAlerts = schema.new({
         id = id.from(_N, "ListViolationEventsInput", "listSuppressedAlerts"),
         type = "boolean",
         name = "listSuppressedAlerts",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "listSuppressedAlerts" },
         },
      }),
      verificationState = schema.new({
         id = id.from(_N, "ListViolationEventsInput", "verificationState"),
         type = "string",
         name = "verificationState",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "verificationState" },
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListViolationEventsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListViolationEventsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
   },
})

M.ViolationEvent = schema.new({
   id = id.from(_N, "ViolationEvent"),
   type = "structure",
   members = {
      violationId = schema.new({
         id = id.from(_N, "ViolationEvent", "violationId"),
         type = "string",
         name = "violationId",
         target_id = prelude.String.id,
      }),
      thingName = schema.new({
         id = id.from(_N, "ViolationEvent", "thingName"),
         type = "string",
         name = "thingName",
         target_id = prelude.String.id,
      }),
      securityProfileName = schema.new({
         id = id.from(_N, "ViolationEvent", "securityProfileName"),
         type = "string",
         name = "securityProfileName",
         target_id = prelude.String.id,
      }),
      behavior = schema.new({
         id = id.from(_N, "ViolationEvent", "behavior"),
         type = "structure",
         name = "behavior",
         target_id = id.from(_N, "Behavior"),
         target = M.Behavior,
      }),
      metricValue = schema.new({
         id = id.from(_N, "ViolationEvent", "metricValue"),
         type = "structure",
         name = "metricValue",
         target_id = id.from(_N, "MetricValue"),
         target = M.MetricValue,
      }),
      violationEventAdditionalInfo = schema.new({
         id = id.from(_N, "ViolationEvent", "violationEventAdditionalInfo"),
         type = "structure",
         name = "violationEventAdditionalInfo",
         target_id = id.from(_N, "ViolationEventAdditionalInfo"),
         target = M.ViolationEventAdditionalInfo,
      }),
      violationEventType = schema.new({
         id = id.from(_N, "ViolationEvent", "violationEventType"),
         type = "string",
         name = "violationEventType",
         target_id = prelude.String.id,
      }),
      verificationState = schema.new({
         id = id.from(_N, "ViolationEvent", "verificationState"),
         type = "string",
         name = "verificationState",
         target_id = prelude.String.id,
      }),
      verificationStateDescription = schema.new({
         id = id.from(_N, "ViolationEvent", "verificationStateDescription"),
         type = "string",
         name = "verificationStateDescription",
         target_id = prelude.String.id,
      }),
      violationEventTime = schema.new({
         id = id.from(_N, "ViolationEvent", "violationEventTime"),
         type = "timestamp",
         name = "violationEventTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.ListViolationEventsOutput = schema.new({
   id = id.from(_N, "ListViolationEventsResponse"),
   type = "structure",
   members = {
      violationEvents = schema.new({
         id = id.from(_N, "ListViolationEventsOutput", "violationEvents"),
         type = "list",
         name = "violationEvents",
         target_id = prelude.Document.id,
         list_member = M.ViolationEvent,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListViolationEventsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.PutVerificationStateOnViolationInput = schema.new({
   id = id.from(_N, "PutVerificationStateOnViolationRequest"),
   type = "structure",
   members = {
      violationId = schema.new({
         id = id.from(_N, "PutVerificationStateOnViolationInput", "violationId"),
         type = "string",
         name = "violationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      verificationState = schema.new({
         id = id.from(_N, "PutVerificationStateOnViolationInput", "verificationState"),
         type = "string",
         name = "verificationState",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      verificationStateDescription = schema.new({
         id = id.from(_N, "PutVerificationStateOnViolationInput", "verificationStateDescription"),
         type = "string",
         name = "verificationStateDescription",
         target_id = prelude.String.id,
      }),
   },
})

M.PutVerificationStateOnViolationOutput = schema.new({
   id = id.from(_N, "PutVerificationStateOnViolationResponse"),
   type = "structure",
})

M.RegisterCACertificateInput = schema.new({
   id = id.from(_N, "RegisterCACertificateRequest"),
   type = "structure",
   members = {
      caCertificate = schema.new({
         id = id.from(_N, "RegisterCACertificateInput", "caCertificate"),
         type = "string",
         name = "caCertificate",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      verificationCertificate = schema.new({
         id = id.from(_N, "RegisterCACertificateInput", "verificationCertificate"),
         type = "string",
         name = "verificationCertificate",
         target_id = prelude.String.id,
      }),
      setAsActive = schema.new({
         id = id.from(_N, "RegisterCACertificateInput", "setAsActive"),
         type = "boolean",
         name = "setAsActive",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
            [traits.HTTP_QUERY] = { name = "setAsActive" },
         },
      }),
      allowAutoRegistration = schema.new({
         id = id.from(_N, "RegisterCACertificateInput", "allowAutoRegistration"),
         type = "boolean",
         name = "allowAutoRegistration",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
            [traits.HTTP_QUERY] = { name = "allowAutoRegistration" },
         },
      }),
      registrationConfig = schema.new({
         id = id.from(_N, "RegisterCACertificateInput", "registrationConfig"),
         type = "structure",
         name = "registrationConfig",
         target_id = id.from(_N, "RegistrationConfig"),
         target = M.RegistrationConfig,
      }),
      tags = schema.new({
         id = id.from(_N, "RegisterCACertificateInput", "tags"),
         type = "list",
         name = "tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
      certificateMode = schema.new({
         id = id.from(_N, "RegisterCACertificateInput", "certificateMode"),
         type = "string",
         name = "certificateMode",
         target_id = prelude.String.id,
      }),
   },
})

M.RegisterCACertificateOutput = schema.new({
   id = id.from(_N, "RegisterCACertificateResponse"),
   type = "structure",
   members = {
      certificateArn = schema.new({
         id = id.from(_N, "RegisterCACertificateOutput", "certificateArn"),
         type = "string",
         name = "certificateArn",
         target_id = prelude.String.id,
      }),
      certificateId = schema.new({
         id = id.from(_N, "RegisterCACertificateOutput", "certificateId"),
         type = "string",
         name = "certificateId",
         target_id = prelude.String.id,
      }),
   },
})

M.RegistrationCodeValidationException = schema.new({
   id = id.from(_N, "RegistrationCodeValidationException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "RegistrationCodeValidationException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.CertificateConflictException = schema.new({
   id = id.from(_N, "CertificateConflictException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "CertificateConflictException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.RegisterCertificateInput = schema.new({
   id = id.from(_N, "RegisterCertificateRequest"),
   type = "structure",
   members = {
      certificatePem = schema.new({
         id = id.from(_N, "RegisterCertificateInput", "certificatePem"),
         type = "string",
         name = "certificatePem",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      caCertificatePem = schema.new({
         id = id.from(_N, "RegisterCertificateInput", "caCertificatePem"),
         type = "string",
         name = "caCertificatePem",
         target_id = prelude.String.id,
      }),
      setAsActive = schema.new({
         id = id.from(_N, "RegisterCertificateInput", "setAsActive"),
         type = "boolean",
         name = "setAsActive",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "setAsActive" },
         },
      }),
      status = schema.new({
         id = id.from(_N, "RegisterCertificateInput", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
   },
})

M.RegisterCertificateOutput = schema.new({
   id = id.from(_N, "RegisterCertificateResponse"),
   type = "structure",
   members = {
      certificateArn = schema.new({
         id = id.from(_N, "RegisterCertificateOutput", "certificateArn"),
         type = "string",
         name = "certificateArn",
         target_id = prelude.String.id,
      }),
      certificateId = schema.new({
         id = id.from(_N, "RegisterCertificateOutput", "certificateId"),
         type = "string",
         name = "certificateId",
         target_id = prelude.String.id,
      }),
   },
})

M.RegisterCertificateWithoutCAInput = schema.new({
   id = id.from(_N, "RegisterCertificateWithoutCARequest"),
   type = "structure",
   members = {
      certificatePem = schema.new({
         id = id.from(_N, "RegisterCertificateWithoutCAInput", "certificatePem"),
         type = "string",
         name = "certificatePem",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      status = schema.new({
         id = id.from(_N, "RegisterCertificateWithoutCAInput", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
   },
})

M.RegisterCertificateWithoutCAOutput = schema.new({
   id = id.from(_N, "RegisterCertificateWithoutCAResponse"),
   type = "structure",
   members = {
      certificateArn = schema.new({
         id = id.from(_N, "RegisterCertificateWithoutCAOutput", "certificateArn"),
         type = "string",
         name = "certificateArn",
         target_id = prelude.String.id,
      }),
      certificateId = schema.new({
         id = id.from(_N, "RegisterCertificateWithoutCAOutput", "certificateId"),
         type = "string",
         name = "certificateId",
         target_id = prelude.String.id,
      }),
   },
})

M.RegisterThingInput = schema.new({
   id = id.from(_N, "RegisterThingRequest"),
   type = "structure",
   members = {
      templateBody = schema.new({
         id = id.from(_N, "RegisterThingInput", "templateBody"),
         type = "string",
         name = "templateBody",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      parameters = schema.new({
         id = id.from(_N, "RegisterThingInput", "parameters"),
         type = "map",
         name = "parameters",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.RegisterThingOutput = schema.new({
   id = id.from(_N, "RegisterThingResponse"),
   type = "structure",
   members = {
      certificatePem = schema.new({
         id = id.from(_N, "RegisterThingOutput", "certificatePem"),
         type = "string",
         name = "certificatePem",
         target_id = prelude.String.id,
      }),
      resourceArns = schema.new({
         id = id.from(_N, "RegisterThingOutput", "resourceArns"),
         type = "map",
         name = "resourceArns",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.ResourceRegistrationFailureException = schema.new({
   id = id.from(_N, "ResourceRegistrationFailureException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "ResourceRegistrationFailureException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.RejectCertificateTransferInput = schema.new({
   id = id.from(_N, "RejectCertificateTransferRequest"),
   type = "structure",
   members = {
      certificateId = schema.new({
         id = id.from(_N, "RejectCertificateTransferInput", "certificateId"),
         type = "string",
         name = "certificateId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      rejectReason = schema.new({
         id = id.from(_N, "RejectCertificateTransferInput", "rejectReason"),
         type = "string",
         name = "rejectReason",
         target_id = prelude.String.id,
      }),
   },
})

M.RejectCertificateTransferOutput = prelude.Unit

M.RemoveThingFromBillingGroupInput = schema.new({
   id = id.from(_N, "RemoveThingFromBillingGroupRequest"),
   type = "structure",
   members = {
      billingGroupName = schema.new({
         id = id.from(_N, "RemoveThingFromBillingGroupInput", "billingGroupName"),
         type = "string",
         name = "billingGroupName",
         target_id = prelude.String.id,
      }),
      billingGroupArn = schema.new({
         id = id.from(_N, "RemoveThingFromBillingGroupInput", "billingGroupArn"),
         type = "string",
         name = "billingGroupArn",
         target_id = prelude.String.id,
      }),
      thingName = schema.new({
         id = id.from(_N, "RemoveThingFromBillingGroupInput", "thingName"),
         type = "string",
         name = "thingName",
         target_id = prelude.String.id,
      }),
      thingArn = schema.new({
         id = id.from(_N, "RemoveThingFromBillingGroupInput", "thingArn"),
         type = "string",
         name = "thingArn",
         target_id = prelude.String.id,
      }),
   },
})

M.RemoveThingFromBillingGroupOutput = schema.new({
   id = id.from(_N, "RemoveThingFromBillingGroupResponse"),
   type = "structure",
})

M.RemoveThingFromThingGroupInput = schema.new({
   id = id.from(_N, "RemoveThingFromThingGroupRequest"),
   type = "structure",
   members = {
      thingGroupName = schema.new({
         id = id.from(_N, "RemoveThingFromThingGroupInput", "thingGroupName"),
         type = "string",
         name = "thingGroupName",
         target_id = prelude.String.id,
      }),
      thingGroupArn = schema.new({
         id = id.from(_N, "RemoveThingFromThingGroupInput", "thingGroupArn"),
         type = "string",
         name = "thingGroupArn",
         target_id = prelude.String.id,
      }),
      thingName = schema.new({
         id = id.from(_N, "RemoveThingFromThingGroupInput", "thingName"),
         type = "string",
         name = "thingName",
         target_id = prelude.String.id,
      }),
      thingArn = schema.new({
         id = id.from(_N, "RemoveThingFromThingGroupInput", "thingArn"),
         type = "string",
         name = "thingArn",
         target_id = prelude.String.id,
      }),
   },
})

M.RemoveThingFromThingGroupOutput = schema.new({
   id = id.from(_N, "RemoveThingFromThingGroupResponse"),
   type = "structure",
})

M.ReplaceTopicRuleInput = schema.new({
   id = id.from(_N, "ReplaceTopicRuleRequest"),
   type = "structure",
   members = {
      ruleName = schema.new({
         id = id.from(_N, "ReplaceTopicRuleInput", "ruleName"),
         type = "string",
         name = "ruleName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      topicRulePayload = schema.new({
         id = id.from(_N, "ReplaceTopicRuleInput", "topicRulePayload"),
         type = "structure",
         name = "topicRulePayload",
         target_id = id.from(_N, "TopicRulePayload"),
         target = M.TopicRulePayload,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.ReplaceTopicRuleOutput = prelude.Unit

M.SearchIndexInput = schema.new({
   id = id.from(_N, "SearchIndexRequest"),
   type = "structure",
   members = {
      indexName = schema.new({
         id = id.from(_N, "SearchIndexInput", "indexName"),
         type = "string",
         name = "indexName",
         target_id = prelude.String.id,
      }),
      queryString = schema.new({
         id = id.from(_N, "SearchIndexInput", "queryString"),
         type = "string",
         name = "queryString",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "SearchIndexInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
      maxResults = schema.new({
         id = id.from(_N, "SearchIndexInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
      }),
      queryVersion = schema.new({
         id = id.from(_N, "SearchIndexInput", "queryVersion"),
         type = "string",
         name = "queryVersion",
         target_id = prelude.String.id,
      }),
   },
})

M.ThingGroupDocument = schema.new({
   id = id.from(_N, "ThingGroupDocument"),
   type = "structure",
   members = {
      thingGroupName = schema.new({
         id = id.from(_N, "ThingGroupDocument", "thingGroupName"),
         type = "string",
         name = "thingGroupName",
         target_id = prelude.String.id,
      }),
      thingGroupId = schema.new({
         id = id.from(_N, "ThingGroupDocument", "thingGroupId"),
         type = "string",
         name = "thingGroupId",
         target_id = prelude.String.id,
      }),
      thingGroupDescription = schema.new({
         id = id.from(_N, "ThingGroupDocument", "thingGroupDescription"),
         type = "string",
         name = "thingGroupDescription",
         target_id = prelude.String.id,
      }),
      attributes = schema.new({
         id = id.from(_N, "ThingGroupDocument", "attributes"),
         type = "map",
         name = "attributes",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      parentGroupNames = schema.new({
         id = id.from(_N, "ThingGroupDocument", "parentGroupNames"),
         type = "list",
         name = "parentGroupNames",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.ThingConnectivity = schema.new({
   id = id.from(_N, "ThingConnectivity"),
   type = "structure",
   members = {
      connected = schema.new({
         id = id.from(_N, "ThingConnectivity", "connected"),
         type = "boolean",
         name = "connected",
         target_id = prelude.Boolean.id,
      }),
      timestamp = schema.new({
         id = id.from(_N, "ThingConnectivity", "timestamp"),
         type = "long",
         name = "timestamp",
         target_id = prelude.Long.id,
      }),
      disconnectReason = schema.new({
         id = id.from(_N, "ThingConnectivity", "disconnectReason"),
         type = "string",
         name = "disconnectReason",
         target_id = prelude.String.id,
      }),
   },
})

M.ThingDocument = schema.new({
   id = id.from(_N, "ThingDocument"),
   type = "structure",
   members = {
      thingName = schema.new({
         id = id.from(_N, "ThingDocument", "thingName"),
         type = "string",
         name = "thingName",
         target_id = prelude.String.id,
      }),
      thingId = schema.new({
         id = id.from(_N, "ThingDocument", "thingId"),
         type = "string",
         name = "thingId",
         target_id = prelude.String.id,
      }),
      thingTypeName = schema.new({
         id = id.from(_N, "ThingDocument", "thingTypeName"),
         type = "string",
         name = "thingTypeName",
         target_id = prelude.String.id,
      }),
      thingGroupNames = schema.new({
         id = id.from(_N, "ThingDocument", "thingGroupNames"),
         type = "list",
         name = "thingGroupNames",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      attributes = schema.new({
         id = id.from(_N, "ThingDocument", "attributes"),
         type = "map",
         name = "attributes",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      shadow = schema.new({
         id = id.from(_N, "ThingDocument", "shadow"),
         type = "string",
         name = "shadow",
         target_id = prelude.String.id,
      }),
      deviceDefender = schema.new({
         id = id.from(_N, "ThingDocument", "deviceDefender"),
         type = "string",
         name = "deviceDefender",
         target_id = prelude.String.id,
      }),
      connectivity = schema.new({
         id = id.from(_N, "ThingDocument", "connectivity"),
         type = "structure",
         name = "connectivity",
         target_id = id.from(_N, "ThingConnectivity"),
         target = M.ThingConnectivity,
      }),
   },
})

M.SearchIndexOutput = schema.new({
   id = id.from(_N, "SearchIndexResponse"),
   type = "structure",
   members = {
      nextToken = schema.new({
         id = id.from(_N, "SearchIndexOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
      things = schema.new({
         id = id.from(_N, "SearchIndexOutput", "things"),
         type = "list",
         name = "things",
         target_id = prelude.Document.id,
         list_member = M.ThingDocument,
      }),
      thingGroups = schema.new({
         id = id.from(_N, "SearchIndexOutput", "thingGroups"),
         type = "list",
         name = "thingGroups",
         target_id = prelude.Document.id,
         list_member = M.ThingGroupDocument,
      }),
   },
})

M.SetDefaultAuthorizerInput = schema.new({
   id = id.from(_N, "SetDefaultAuthorizerRequest"),
   type = "structure",
   members = {
      authorizerName = schema.new({
         id = id.from(_N, "SetDefaultAuthorizerInput", "authorizerName"),
         type = "string",
         name = "authorizerName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.SetDefaultAuthorizerOutput = schema.new({
   id = id.from(_N, "SetDefaultAuthorizerResponse"),
   type = "structure",
   members = {
      authorizerName = schema.new({
         id = id.from(_N, "SetDefaultAuthorizerOutput", "authorizerName"),
         type = "string",
         name = "authorizerName",
         target_id = prelude.String.id,
      }),
      authorizerArn = schema.new({
         id = id.from(_N, "SetDefaultAuthorizerOutput", "authorizerArn"),
         type = "string",
         name = "authorizerArn",
         target_id = prelude.String.id,
      }),
   },
})

M.SetDefaultPolicyVersionInput = schema.new({
   id = id.from(_N, "SetDefaultPolicyVersionRequest"),
   type = "structure",
   members = {
      policyName = schema.new({
         id = id.from(_N, "SetDefaultPolicyVersionInput", "policyName"),
         type = "string",
         name = "policyName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      policyVersionId = schema.new({
         id = id.from(_N, "SetDefaultPolicyVersionInput", "policyVersionId"),
         type = "string",
         name = "policyVersionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.SetDefaultPolicyVersionOutput = prelude.Unit

M.LoggingOptionsPayload = schema.new({
   id = id.from(_N, "LoggingOptionsPayload"),
   type = "structure",
   members = {
      roleArn = schema.new({
         id = id.from(_N, "LoggingOptionsPayload", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      logLevel = schema.new({
         id = id.from(_N, "LoggingOptionsPayload", "logLevel"),
         type = "string",
         name = "logLevel",
         target_id = prelude.String.id,
      }),
   },
})

M.SetLoggingOptionsInput = schema.new({
   id = id.from(_N, "SetLoggingOptionsRequest"),
   type = "structure",
   members = {
      loggingOptionsPayload = schema.new({
         id = id.from(_N, "SetLoggingOptionsInput", "loggingOptionsPayload"),
         type = "structure",
         name = "loggingOptionsPayload",
         target_id = id.from(_N, "LoggingOptionsPayload"),
         target = M.LoggingOptionsPayload,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.SetLoggingOptionsOutput = prelude.Unit

M.SetV2LoggingLevelInput = schema.new({
   id = id.from(_N, "SetV2LoggingLevelRequest"),
   type = "structure",
   members = {
      logTarget = schema.new({
         id = id.from(_N, "SetV2LoggingLevelInput", "logTarget"),
         type = "structure",
         name = "logTarget",
         target_id = id.from(_N, "LogTarget"),
         target = M.LogTarget,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      logLevel = schema.new({
         id = id.from(_N, "SetV2LoggingLevelInput", "logLevel"),
         type = "string",
         name = "logLevel",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.SetV2LoggingLevelOutput = prelude.Unit

M.SetV2LoggingOptionsInput = schema.new({
   id = id.from(_N, "SetV2LoggingOptionsRequest"),
   type = "structure",
   members = {
      roleArn = schema.new({
         id = id.from(_N, "SetV2LoggingOptionsInput", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
      }),
      defaultLogLevel = schema.new({
         id = id.from(_N, "SetV2LoggingOptionsInput", "defaultLogLevel"),
         type = "string",
         name = "defaultLogLevel",
         target_id = prelude.String.id,
      }),
      disableAllLogs = schema.new({
         id = id.from(_N, "SetV2LoggingOptionsInput", "disableAllLogs"),
         type = "boolean",
         name = "disableAllLogs",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      eventConfigurations = schema.new({
         id = id.from(_N, "SetV2LoggingOptionsInput", "eventConfigurations"),
         type = "list",
         name = "eventConfigurations",
         target_id = prelude.Document.id,
         list_member = M.LogEventConfiguration,
      }),
   },
})

M.SetV2LoggingOptionsOutput = prelude.Unit

M.StartAuditMitigationActionsTaskInput = schema.new({
   id = id.from(_N, "StartAuditMitigationActionsTaskRequest"),
   type = "structure",
   members = {
      taskId = schema.new({
         id = id.from(_N, "StartAuditMitigationActionsTaskInput", "taskId"),
         type = "string",
         name = "taskId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      target = schema.new({
         id = id.from(_N, "StartAuditMitigationActionsTaskInput", "target"),
         type = "structure",
         name = "target",
         target_id = id.from(_N, "AuditMitigationActionsTaskTarget"),
         target = M.AuditMitigationActionsTaskTarget,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      auditCheckToActionsMapping = schema.new({
         id = id.from(_N, "StartAuditMitigationActionsTaskInput", "auditCheckToActionsMapping"),
         type = "map",
         name = "auditCheckToActionsMapping",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = schema.new({ type = "list", list_member = prelude.String }),
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      clientRequestToken = schema.new({
         id = id.from(_N, "StartAuditMitigationActionsTaskInput", "clientRequestToken"),
         type = "string",
         name = "clientRequestToken",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
   },
})

M.StartAuditMitigationActionsTaskOutput = schema.new({
   id = id.from(_N, "StartAuditMitigationActionsTaskResponse"),
   type = "structure",
   members = {
      taskId = schema.new({
         id = id.from(_N, "StartAuditMitigationActionsTaskOutput", "taskId"),
         type = "string",
         name = "taskId",
         target_id = prelude.String.id,
      }),
   },
})

M.TaskAlreadyExistsException = schema.new({
   id = id.from(_N, "TaskAlreadyExistsException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "TaskAlreadyExistsException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.StartDetectMitigationActionsTaskInput = schema.new({
   id = id.from(_N, "StartDetectMitigationActionsTaskRequest"),
   type = "structure",
   members = {
      taskId = schema.new({
         id = id.from(_N, "StartDetectMitigationActionsTaskInput", "taskId"),
         type = "string",
         name = "taskId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      target = schema.new({
         id = id.from(_N, "StartDetectMitigationActionsTaskInput", "target"),
         type = "structure",
         name = "target",
         target_id = id.from(_N, "DetectMitigationActionsTaskTarget"),
         target = M.DetectMitigationActionsTaskTarget,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      actions = schema.new({
         id = id.from(_N, "StartDetectMitigationActionsTaskInput", "actions"),
         type = "list",
         name = "actions",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      violationEventOccurrenceRange = schema.new({
         id = id.from(_N, "StartDetectMitigationActionsTaskInput", "violationEventOccurrenceRange"),
         type = "structure",
         name = "violationEventOccurrenceRange",
         target_id = id.from(_N, "ViolationEventOccurrenceRange"),
         target = M.ViolationEventOccurrenceRange,
      }),
      includeOnlyActiveViolations = schema.new({
         id = id.from(_N, "StartDetectMitigationActionsTaskInput", "includeOnlyActiveViolations"),
         type = "boolean",
         name = "includeOnlyActiveViolations",
         target_id = prelude.Boolean.id,
      }),
      includeSuppressedAlerts = schema.new({
         id = id.from(_N, "StartDetectMitigationActionsTaskInput", "includeSuppressedAlerts"),
         type = "boolean",
         name = "includeSuppressedAlerts",
         target_id = prelude.Boolean.id,
      }),
      clientRequestToken = schema.new({
         id = id.from(_N, "StartDetectMitigationActionsTaskInput", "clientRequestToken"),
         type = "string",
         name = "clientRequestToken",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
   },
})

M.StartDetectMitigationActionsTaskOutput = schema.new({
   id = id.from(_N, "StartDetectMitigationActionsTaskResponse"),
   type = "structure",
   members = {
      taskId = schema.new({
         id = id.from(_N, "StartDetectMitigationActionsTaskOutput", "taskId"),
         type = "string",
         name = "taskId",
         target_id = prelude.String.id,
      }),
   },
})

M.StartOnDemandAuditTaskInput = schema.new({
   id = id.from(_N, "StartOnDemandAuditTaskRequest"),
   type = "structure",
   members = {
      targetCheckNames = schema.new({
         id = id.from(_N, "StartOnDemandAuditTaskInput", "targetCheckNames"),
         type = "list",
         name = "targetCheckNames",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.StartOnDemandAuditTaskOutput = schema.new({
   id = id.from(_N, "StartOnDemandAuditTaskResponse"),
   type = "structure",
   members = {
      taskId = schema.new({
         id = id.from(_N, "StartOnDemandAuditTaskOutput", "taskId"),
         type = "string",
         name = "taskId",
         target_id = prelude.String.id,
      }),
   },
})

M.StartThingRegistrationTaskInput = schema.new({
   id = id.from(_N, "StartThingRegistrationTaskRequest"),
   type = "structure",
   members = {
      templateBody = schema.new({
         id = id.from(_N, "StartThingRegistrationTaskInput", "templateBody"),
         type = "string",
         name = "templateBody",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      inputFileBucket = schema.new({
         id = id.from(_N, "StartThingRegistrationTaskInput", "inputFileBucket"),
         type = "string",
         name = "inputFileBucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      inputFileKey = schema.new({
         id = id.from(_N, "StartThingRegistrationTaskInput", "inputFileKey"),
         type = "string",
         name = "inputFileKey",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      roleArn = schema.new({
         id = id.from(_N, "StartThingRegistrationTaskInput", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.StartThingRegistrationTaskOutput = schema.new({
   id = id.from(_N, "StartThingRegistrationTaskResponse"),
   type = "structure",
   members = {
      taskId = schema.new({
         id = id.from(_N, "StartThingRegistrationTaskOutput", "taskId"),
         type = "string",
         name = "taskId",
         target_id = prelude.String.id,
      }),
   },
})

M.StopThingRegistrationTaskInput = schema.new({
   id = id.from(_N, "StopThingRegistrationTaskRequest"),
   type = "structure",
   members = {
      taskId = schema.new({
         id = id.from(_N, "StopThingRegistrationTaskInput", "taskId"),
         type = "string",
         name = "taskId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.StopThingRegistrationTaskOutput = schema.new({
   id = id.from(_N, "StopThingRegistrationTaskResponse"),
   type = "structure",
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
   id = id.from(_N, "TagResourceResponse"),
   type = "structure",
})

M.TestAuthorizationInput = schema.new({
   id = id.from(_N, "TestAuthorizationRequest"),
   type = "structure",
   members = {
      principal = schema.new({
         id = id.from(_N, "TestAuthorizationInput", "principal"),
         type = "string",
         name = "principal",
         target_id = prelude.String.id,
      }),
      cognitoIdentityPoolId = schema.new({
         id = id.from(_N, "TestAuthorizationInput", "cognitoIdentityPoolId"),
         type = "string",
         name = "cognitoIdentityPoolId",
         target_id = prelude.String.id,
      }),
      authInfos = schema.new({
         id = id.from(_N, "TestAuthorizationInput", "authInfos"),
         type = "list",
         name = "authInfos",
         target_id = prelude.Document.id,
         list_member = M.AuthInfo,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      clientId = schema.new({
         id = id.from(_N, "TestAuthorizationInput", "clientId"),
         type = "string",
         name = "clientId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "clientId" },
         },
      }),
      policyNamesToAdd = schema.new({
         id = id.from(_N, "TestAuthorizationInput", "policyNamesToAdd"),
         type = "list",
         name = "policyNamesToAdd",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      policyNamesToSkip = schema.new({
         id = id.from(_N, "TestAuthorizationInput", "policyNamesToSkip"),
         type = "list",
         name = "policyNamesToSkip",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.TestAuthorizationOutput = schema.new({
   id = id.from(_N, "TestAuthorizationResponse"),
   type = "structure",
   members = {
      authResults = schema.new({
         id = id.from(_N, "TestAuthorizationOutput", "authResults"),
         type = "list",
         name = "authResults",
         target_id = prelude.Document.id,
         list_member = M.AuthResult,
      }),
   },
})

M.InvalidResponseException = schema.new({
   id = id.from(_N, "InvalidResponseException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "InvalidResponseException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.HttpContext = schema.new({
   id = id.from(_N, "HttpContext"),
   type = "structure",
   members = {
      headers = schema.new({
         id = id.from(_N, "HttpContext", "headers"),
         type = "map",
         name = "headers",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      queryString = schema.new({
         id = id.from(_N, "HttpContext", "queryString"),
         type = "string",
         name = "queryString",
         target_id = prelude.String.id,
      }),
   },
})

M.MqttContext = schema.new({
   id = id.from(_N, "MqttContext"),
   type = "structure",
   members = {
      username = schema.new({
         id = id.from(_N, "MqttContext", "username"),
         type = "string",
         name = "username",
         target_id = prelude.String.id,
      }),
      password = schema.new({
         id = id.from(_N, "MqttContext", "password"),
         type = "blob",
         name = "password",
         target_id = prelude.Blob.id,
      }),
      clientId = schema.new({
         id = id.from(_N, "MqttContext", "clientId"),
         type = "string",
         name = "clientId",
         target_id = prelude.String.id,
      }),
   },
})

M.TlsContext = schema.new({
   id = id.from(_N, "TlsContext"),
   type = "structure",
   members = {
      serverName = schema.new({
         id = id.from(_N, "TlsContext", "serverName"),
         type = "string",
         name = "serverName",
         target_id = prelude.String.id,
      }),
   },
})

M.TestInvokeAuthorizerInput = schema.new({
   id = id.from(_N, "TestInvokeAuthorizerRequest"),
   type = "structure",
   members = {
      authorizerName = schema.new({
         id = id.from(_N, "TestInvokeAuthorizerInput", "authorizerName"),
         type = "string",
         name = "authorizerName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      token = schema.new({
         id = id.from(_N, "TestInvokeAuthorizerInput", "token"),
         type = "string",
         name = "token",
         target_id = prelude.String.id,
      }),
      tokenSignature = schema.new({
         id = id.from(_N, "TestInvokeAuthorizerInput", "tokenSignature"),
         type = "string",
         name = "tokenSignature",
         target_id = prelude.String.id,
      }),
      httpContext = schema.new({
         id = id.from(_N, "TestInvokeAuthorizerInput", "httpContext"),
         type = "structure",
         name = "httpContext",
         target_id = id.from(_N, "HttpContext"),
         target = M.HttpContext,
      }),
      mqttContext = schema.new({
         id = id.from(_N, "TestInvokeAuthorizerInput", "mqttContext"),
         type = "structure",
         name = "mqttContext",
         target_id = id.from(_N, "MqttContext"),
         target = M.MqttContext,
      }),
      tlsContext = schema.new({
         id = id.from(_N, "TestInvokeAuthorizerInput", "tlsContext"),
         type = "structure",
         name = "tlsContext",
         target_id = id.from(_N, "TlsContext"),
         target = M.TlsContext,
      }),
   },
})

M.TestInvokeAuthorizerOutput = schema.new({
   id = id.from(_N, "TestInvokeAuthorizerResponse"),
   type = "structure",
   members = {
      isAuthenticated = schema.new({
         id = id.from(_N, "TestInvokeAuthorizerOutput", "isAuthenticated"),
         type = "boolean",
         name = "isAuthenticated",
         target_id = prelude.Boolean.id,
      }),
      principalId = schema.new({
         id = id.from(_N, "TestInvokeAuthorizerOutput", "principalId"),
         type = "string",
         name = "principalId",
         target_id = prelude.String.id,
      }),
      policyDocuments = schema.new({
         id = id.from(_N, "TestInvokeAuthorizerOutput", "policyDocuments"),
         type = "list",
         name = "policyDocuments",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      refreshAfterInSeconds = schema.new({
         id = id.from(_N, "TestInvokeAuthorizerOutput", "refreshAfterInSeconds"),
         type = "integer",
         name = "refreshAfterInSeconds",
         target_id = prelude.Integer.id,
      }),
      disconnectAfterInSeconds = schema.new({
         id = id.from(_N, "TestInvokeAuthorizerOutput", "disconnectAfterInSeconds"),
         type = "integer",
         name = "disconnectAfterInSeconds",
         target_id = prelude.Integer.id,
      }),
   },
})

M.TransferCertificateInput = schema.new({
   id = id.from(_N, "TransferCertificateRequest"),
   type = "structure",
   members = {
      certificateId = schema.new({
         id = id.from(_N, "TransferCertificateInput", "certificateId"),
         type = "string",
         name = "certificateId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      targetAwsAccount = schema.new({
         id = id.from(_N, "TransferCertificateInput", "targetAwsAccount"),
         type = "string",
         name = "targetAwsAccount",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "targetAwsAccount" },
         },
      }),
      transferMessage = schema.new({
         id = id.from(_N, "TransferCertificateInput", "transferMessage"),
         type = "string",
         name = "transferMessage",
         target_id = prelude.String.id,
      }),
   },
})

M.TransferCertificateOutput = schema.new({
   id = id.from(_N, "TransferCertificateResponse"),
   type = "structure",
   members = {
      transferredCertificateArn = schema.new({
         id = id.from(_N, "TransferCertificateOutput", "transferredCertificateArn"),
         type = "string",
         name = "transferredCertificateArn",
         target_id = prelude.String.id,
      }),
   },
})

M.TransferConflictException = schema.new({
   id = id.from(_N, "TransferConflictException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "TransferConflictException", "message"),
         type = "string",
         name = "message",
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
   id = id.from(_N, "UntagResourceResponse"),
   type = "structure",
})

M.UpdateAccountAuditConfigurationInput = schema.new({
   id = id.from(_N, "UpdateAccountAuditConfigurationRequest"),
   type = "structure",
   members = {
      roleArn = schema.new({
         id = id.from(_N, "UpdateAccountAuditConfigurationInput", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
      }),
      auditNotificationTargetConfigurations = schema.new({
         id = id.from(_N, "UpdateAccountAuditConfigurationInput", "auditNotificationTargetConfigurations"),
         type = "map",
         name = "auditNotificationTargetConfigurations",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.AuditNotificationTarget,
      }),
      auditCheckConfigurations = schema.new({
         id = id.from(_N, "UpdateAccountAuditConfigurationInput", "auditCheckConfigurations"),
         type = "map",
         name = "auditCheckConfigurations",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.AuditCheckConfiguration,
      }),
   },
})

M.UpdateAccountAuditConfigurationOutput = schema.new({
   id = id.from(_N, "UpdateAccountAuditConfigurationResponse"),
   type = "structure",
})

M.UpdateAuditSuppressionInput = schema.new({
   id = id.from(_N, "UpdateAuditSuppressionRequest"),
   type = "structure",
   members = {
      checkName = schema.new({
         id = id.from(_N, "UpdateAuditSuppressionInput", "checkName"),
         type = "string",
         name = "checkName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      resourceIdentifier = schema.new({
         id = id.from(_N, "UpdateAuditSuppressionInput", "resourceIdentifier"),
         type = "structure",
         name = "resourceIdentifier",
         target_id = id.from(_N, "ResourceIdentifier"),
         target = M.ResourceIdentifier,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      expirationDate = schema.new({
         id = id.from(_N, "UpdateAuditSuppressionInput", "expirationDate"),
         type = "timestamp",
         name = "expirationDate",
         target_id = prelude.Timestamp.id,
      }),
      suppressIndefinitely = schema.new({
         id = id.from(_N, "UpdateAuditSuppressionInput", "suppressIndefinitely"),
         type = "boolean",
         name = "suppressIndefinitely",
         target_id = prelude.Boolean.id,
      }),
      description = schema.new({
         id = id.from(_N, "UpdateAuditSuppressionInput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateAuditSuppressionOutput = schema.new({
   id = id.from(_N, "UpdateAuditSuppressionResponse"),
   type = "structure",
})

M.UpdateAuthorizerInput = schema.new({
   id = id.from(_N, "UpdateAuthorizerRequest"),
   type = "structure",
   members = {
      authorizerName = schema.new({
         id = id.from(_N, "UpdateAuthorizerInput", "authorizerName"),
         type = "string",
         name = "authorizerName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      authorizerFunctionArn = schema.new({
         id = id.from(_N, "UpdateAuthorizerInput", "authorizerFunctionArn"),
         type = "string",
         name = "authorizerFunctionArn",
         target_id = prelude.String.id,
      }),
      tokenKeyName = schema.new({
         id = id.from(_N, "UpdateAuthorizerInput", "tokenKeyName"),
         type = "string",
         name = "tokenKeyName",
         target_id = prelude.String.id,
      }),
      tokenSigningPublicKeys = schema.new({
         id = id.from(_N, "UpdateAuthorizerInput", "tokenSigningPublicKeys"),
         type = "map",
         name = "tokenSigningPublicKeys",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      status = schema.new({
         id = id.from(_N, "UpdateAuthorizerInput", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
      enableCachingForHttp = schema.new({
         id = id.from(_N, "UpdateAuthorizerInput", "enableCachingForHttp"),
         type = "boolean",
         name = "enableCachingForHttp",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.UpdateAuthorizerOutput = schema.new({
   id = id.from(_N, "UpdateAuthorizerResponse"),
   type = "structure",
   members = {
      authorizerName = schema.new({
         id = id.from(_N, "UpdateAuthorizerOutput", "authorizerName"),
         type = "string",
         name = "authorizerName",
         target_id = prelude.String.id,
      }),
      authorizerArn = schema.new({
         id = id.from(_N, "UpdateAuthorizerOutput", "authorizerArn"),
         type = "string",
         name = "authorizerArn",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateBillingGroupInput = schema.new({
   id = id.from(_N, "UpdateBillingGroupRequest"),
   type = "structure",
   members = {
      billingGroupName = schema.new({
         id = id.from(_N, "UpdateBillingGroupInput", "billingGroupName"),
         type = "string",
         name = "billingGroupName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      billingGroupProperties = schema.new({
         id = id.from(_N, "UpdateBillingGroupInput", "billingGroupProperties"),
         type = "structure",
         name = "billingGroupProperties",
         target_id = id.from(_N, "BillingGroupProperties"),
         target = M.BillingGroupProperties,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      expectedVersion = schema.new({
         id = id.from(_N, "UpdateBillingGroupInput", "expectedVersion"),
         type = "long",
         name = "expectedVersion",
         target_id = prelude.Long.id,
      }),
   },
})

M.UpdateBillingGroupOutput = schema.new({
   id = id.from(_N, "UpdateBillingGroupResponse"),
   type = "structure",
   members = {
      version = schema.new({
         id = id.from(_N, "UpdateBillingGroupOutput", "version"),
         type = "long",
         name = "version",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
   },
})

M.UpdateCACertificateInput = schema.new({
   id = id.from(_N, "UpdateCACertificateRequest"),
   type = "structure",
   members = {
      certificateId = schema.new({
         id = id.from(_N, "UpdateCACertificateInput", "certificateId"),
         type = "string",
         name = "certificateId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      newStatus = schema.new({
         id = id.from(_N, "UpdateCACertificateInput", "newStatus"),
         type = "string",
         name = "newStatus",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "newStatus" },
         },
      }),
      newAutoRegistrationStatus = schema.new({
         id = id.from(_N, "UpdateCACertificateInput", "newAutoRegistrationStatus"),
         type = "string",
         name = "newAutoRegistrationStatus",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "newAutoRegistrationStatus" },
         },
      }),
      registrationConfig = schema.new({
         id = id.from(_N, "UpdateCACertificateInput", "registrationConfig"),
         type = "structure",
         name = "registrationConfig",
         target_id = id.from(_N, "RegistrationConfig"),
         target = M.RegistrationConfig,
      }),
      removeAutoRegistration = schema.new({
         id = id.from(_N, "UpdateCACertificateInput", "removeAutoRegistration"),
         type = "boolean",
         name = "removeAutoRegistration",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
   },
})

M.UpdateCACertificateOutput = prelude.Unit

M.UpdateCertificateInput = schema.new({
   id = id.from(_N, "UpdateCertificateRequest"),
   type = "structure",
   members = {
      certificateId = schema.new({
         id = id.from(_N, "UpdateCertificateInput", "certificateId"),
         type = "string",
         name = "certificateId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      newStatus = schema.new({
         id = id.from(_N, "UpdateCertificateInput", "newStatus"),
         type = "string",
         name = "newStatus",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "newStatus" },
         },
      }),
   },
})

M.UpdateCertificateOutput = prelude.Unit

M.UpdateCertificateProviderInput = schema.new({
   id = id.from(_N, "UpdateCertificateProviderRequest"),
   type = "structure",
   members = {
      certificateProviderName = schema.new({
         id = id.from(_N, "UpdateCertificateProviderInput", "certificateProviderName"),
         type = "string",
         name = "certificateProviderName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      lambdaFunctionArn = schema.new({
         id = id.from(_N, "UpdateCertificateProviderInput", "lambdaFunctionArn"),
         type = "string",
         name = "lambdaFunctionArn",
         target_id = prelude.String.id,
      }),
      accountDefaultForOperations = schema.new({
         id = id.from(_N, "UpdateCertificateProviderInput", "accountDefaultForOperations"),
         type = "list",
         name = "accountDefaultForOperations",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.UpdateCertificateProviderOutput = schema.new({
   id = id.from(_N, "UpdateCertificateProviderResponse"),
   type = "structure",
   members = {
      certificateProviderName = schema.new({
         id = id.from(_N, "UpdateCertificateProviderOutput", "certificateProviderName"),
         type = "string",
         name = "certificateProviderName",
         target_id = prelude.String.id,
      }),
      certificateProviderArn = schema.new({
         id = id.from(_N, "UpdateCertificateProviderOutput", "certificateProviderArn"),
         type = "string",
         name = "certificateProviderArn",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateCommandInput = schema.new({
   id = id.from(_N, "UpdateCommandRequest"),
   type = "structure",
   members = {
      commandId = schema.new({
         id = id.from(_N, "UpdateCommandInput", "commandId"),
         type = "string",
         name = "commandId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      displayName = schema.new({
         id = id.from(_N, "UpdateCommandInput", "displayName"),
         type = "string",
         name = "displayName",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "UpdateCommandInput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      deprecated = schema.new({
         id = id.from(_N, "UpdateCommandInput", "deprecated"),
         type = "boolean",
         name = "deprecated",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.UpdateCommandOutput = schema.new({
   id = id.from(_N, "UpdateCommandResponse"),
   type = "structure",
   members = {
      commandId = schema.new({
         id = id.from(_N, "UpdateCommandOutput", "commandId"),
         type = "string",
         name = "commandId",
         target_id = prelude.String.id,
      }),
      displayName = schema.new({
         id = id.from(_N, "UpdateCommandOutput", "displayName"),
         type = "string",
         name = "displayName",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "UpdateCommandOutput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      deprecated = schema.new({
         id = id.from(_N, "UpdateCommandOutput", "deprecated"),
         type = "boolean",
         name = "deprecated",
         target_id = prelude.Boolean.id,
      }),
      lastUpdatedAt = schema.new({
         id = id.from(_N, "UpdateCommandOutput", "lastUpdatedAt"),
         type = "timestamp",
         name = "lastUpdatedAt",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.UpdateCustomMetricInput = schema.new({
   id = id.from(_N, "UpdateCustomMetricRequest"),
   type = "structure",
   members = {
      metricName = schema.new({
         id = id.from(_N, "UpdateCustomMetricInput", "metricName"),
         type = "string",
         name = "metricName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      displayName = schema.new({
         id = id.from(_N, "UpdateCustomMetricInput", "displayName"),
         type = "string",
         name = "displayName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UpdateCustomMetricOutput = schema.new({
   id = id.from(_N, "UpdateCustomMetricResponse"),
   type = "structure",
   members = {
      metricName = schema.new({
         id = id.from(_N, "UpdateCustomMetricOutput", "metricName"),
         type = "string",
         name = "metricName",
         target_id = prelude.String.id,
      }),
      metricArn = schema.new({
         id = id.from(_N, "UpdateCustomMetricOutput", "metricArn"),
         type = "string",
         name = "metricArn",
         target_id = prelude.String.id,
      }),
      metricType = schema.new({
         id = id.from(_N, "UpdateCustomMetricOutput", "metricType"),
         type = "string",
         name = "metricType",
         target_id = prelude.String.id,
      }),
      displayName = schema.new({
         id = id.from(_N, "UpdateCustomMetricOutput", "displayName"),
         type = "string",
         name = "displayName",
         target_id = prelude.String.id,
      }),
      creationDate = schema.new({
         id = id.from(_N, "UpdateCustomMetricOutput", "creationDate"),
         type = "timestamp",
         name = "creationDate",
         target_id = prelude.Timestamp.id,
      }),
      lastModifiedDate = schema.new({
         id = id.from(_N, "UpdateCustomMetricOutput", "lastModifiedDate"),
         type = "timestamp",
         name = "lastModifiedDate",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.UpdateDimensionInput = schema.new({
   id = id.from(_N, "UpdateDimensionRequest"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "UpdateDimensionInput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      stringValues = schema.new({
         id = id.from(_N, "UpdateDimensionInput", "stringValues"),
         type = "list",
         name = "stringValues",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UpdateDimensionOutput = schema.new({
   id = id.from(_N, "UpdateDimensionResponse"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "UpdateDimensionOutput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      arn = schema.new({
         id = id.from(_N, "UpdateDimensionOutput", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
      }),
      type = schema.new({
         id = id.from(_N, "UpdateDimensionOutput", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
      }),
      stringValues = schema.new({
         id = id.from(_N, "UpdateDimensionOutput", "stringValues"),
         type = "list",
         name = "stringValues",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      creationDate = schema.new({
         id = id.from(_N, "UpdateDimensionOutput", "creationDate"),
         type = "timestamp",
         name = "creationDate",
         target_id = prelude.Timestamp.id,
      }),
      lastModifiedDate = schema.new({
         id = id.from(_N, "UpdateDimensionOutput", "lastModifiedDate"),
         type = "timestamp",
         name = "lastModifiedDate",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.UpdateDomainConfigurationInput = schema.new({
   id = id.from(_N, "UpdateDomainConfigurationRequest"),
   type = "structure",
   members = {
      domainConfigurationName = schema.new({
         id = id.from(_N, "UpdateDomainConfigurationInput", "domainConfigurationName"),
         type = "string",
         name = "domainConfigurationName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      authorizerConfig = schema.new({
         id = id.from(_N, "UpdateDomainConfigurationInput", "authorizerConfig"),
         type = "structure",
         name = "authorizerConfig",
         target_id = id.from(_N, "AuthorizerConfig"),
         target = M.AuthorizerConfig,
      }),
      domainConfigurationStatus = schema.new({
         id = id.from(_N, "UpdateDomainConfigurationInput", "domainConfigurationStatus"),
         type = "string",
         name = "domainConfigurationStatus",
         target_id = prelude.String.id,
      }),
      removeAuthorizerConfig = schema.new({
         id = id.from(_N, "UpdateDomainConfigurationInput", "removeAuthorizerConfig"),
         type = "boolean",
         name = "removeAuthorizerConfig",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      tlsConfig = schema.new({
         id = id.from(_N, "UpdateDomainConfigurationInput", "tlsConfig"),
         type = "structure",
         name = "tlsConfig",
         target_id = id.from(_N, "TlsConfig"),
         target = M.TlsConfig,
      }),
      serverCertificateConfig = schema.new({
         id = id.from(_N, "UpdateDomainConfigurationInput", "serverCertificateConfig"),
         type = "structure",
         name = "serverCertificateConfig",
         target_id = id.from(_N, "ServerCertificateConfig"),
         target = M.ServerCertificateConfig,
      }),
      authenticationType = schema.new({
         id = id.from(_N, "UpdateDomainConfigurationInput", "authenticationType"),
         type = "string",
         name = "authenticationType",
         target_id = prelude.String.id,
      }),
      applicationProtocol = schema.new({
         id = id.from(_N, "UpdateDomainConfigurationInput", "applicationProtocol"),
         type = "string",
         name = "applicationProtocol",
         target_id = prelude.String.id,
      }),
      clientCertificateConfig = schema.new({
         id = id.from(_N, "UpdateDomainConfigurationInput", "clientCertificateConfig"),
         type = "structure",
         name = "clientCertificateConfig",
         target_id = id.from(_N, "ClientCertificateConfig"),
         target = M.ClientCertificateConfig,
      }),
   },
})

M.UpdateDomainConfigurationOutput = schema.new({
   id = id.from(_N, "UpdateDomainConfigurationResponse"),
   type = "structure",
   members = {
      domainConfigurationName = schema.new({
         id = id.from(_N, "UpdateDomainConfigurationOutput", "domainConfigurationName"),
         type = "string",
         name = "domainConfigurationName",
         target_id = prelude.String.id,
      }),
      domainConfigurationArn = schema.new({
         id = id.from(_N, "UpdateDomainConfigurationOutput", "domainConfigurationArn"),
         type = "string",
         name = "domainConfigurationArn",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateDynamicThingGroupInput = schema.new({
   id = id.from(_N, "UpdateDynamicThingGroupRequest"),
   type = "structure",
   members = {
      thingGroupName = schema.new({
         id = id.from(_N, "UpdateDynamicThingGroupInput", "thingGroupName"),
         type = "string",
         name = "thingGroupName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      thingGroupProperties = schema.new({
         id = id.from(_N, "UpdateDynamicThingGroupInput", "thingGroupProperties"),
         type = "structure",
         name = "thingGroupProperties",
         target_id = id.from(_N, "ThingGroupProperties"),
         target = M.ThingGroupProperties,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      expectedVersion = schema.new({
         id = id.from(_N, "UpdateDynamicThingGroupInput", "expectedVersion"),
         type = "long",
         name = "expectedVersion",
         target_id = prelude.Long.id,
      }),
      indexName = schema.new({
         id = id.from(_N, "UpdateDynamicThingGroupInput", "indexName"),
         type = "string",
         name = "indexName",
         target_id = prelude.String.id,
      }),
      queryString = schema.new({
         id = id.from(_N, "UpdateDynamicThingGroupInput", "queryString"),
         type = "string",
         name = "queryString",
         target_id = prelude.String.id,
      }),
      queryVersion = schema.new({
         id = id.from(_N, "UpdateDynamicThingGroupInput", "queryVersion"),
         type = "string",
         name = "queryVersion",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateDynamicThingGroupOutput = schema.new({
   id = id.from(_N, "UpdateDynamicThingGroupResponse"),
   type = "structure",
   members = {
      version = schema.new({
         id = id.from(_N, "UpdateDynamicThingGroupOutput", "version"),
         type = "long",
         name = "version",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
   },
})

M.UpdateEncryptionConfigurationInput = schema.new({
   id = id.from(_N, "UpdateEncryptionConfigurationRequest"),
   type = "structure",
   members = {
      encryptionType = schema.new({
         id = id.from(_N, "UpdateEncryptionConfigurationInput", "encryptionType"),
         type = "string",
         name = "encryptionType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      kmsKeyArn = schema.new({
         id = id.from(_N, "UpdateEncryptionConfigurationInput", "kmsKeyArn"),
         type = "string",
         name = "kmsKeyArn",
         target_id = prelude.String.id,
      }),
      kmsAccessRoleArn = schema.new({
         id = id.from(_N, "UpdateEncryptionConfigurationInput", "kmsAccessRoleArn"),
         type = "string",
         name = "kmsAccessRoleArn",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateEncryptionConfigurationOutput = schema.new({
   id = id.from(_N, "UpdateEncryptionConfigurationResponse"),
   type = "structure",
})

M.UpdateEventConfigurationsInput = schema.new({
   id = id.from(_N, "UpdateEventConfigurationsRequest"),
   type = "structure",
   members = {
      eventConfigurations = schema.new({
         id = id.from(_N, "UpdateEventConfigurationsInput", "eventConfigurations"),
         type = "map",
         name = "eventConfigurations",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.Configuration,
      }),
   },
})

M.UpdateEventConfigurationsOutput = schema.new({
   id = id.from(_N, "UpdateEventConfigurationsResponse"),
   type = "structure",
})

M.UpdateFleetMetricInput = schema.new({
   id = id.from(_N, "UpdateFleetMetricRequest"),
   type = "structure",
   members = {
      metricName = schema.new({
         id = id.from(_N, "UpdateFleetMetricInput", "metricName"),
         type = "string",
         name = "metricName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      queryString = schema.new({
         id = id.from(_N, "UpdateFleetMetricInput", "queryString"),
         type = "string",
         name = "queryString",
         target_id = prelude.String.id,
      }),
      aggregationType = schema.new({
         id = id.from(_N, "UpdateFleetMetricInput", "aggregationType"),
         type = "structure",
         name = "aggregationType",
         target_id = id.from(_N, "AggregationType"),
         target = M.AggregationType,
      }),
      period = schema.new({
         id = id.from(_N, "UpdateFleetMetricInput", "period"),
         type = "integer",
         name = "period",
         target_id = prelude.Integer.id,
      }),
      aggregationField = schema.new({
         id = id.from(_N, "UpdateFleetMetricInput", "aggregationField"),
         type = "string",
         name = "aggregationField",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "UpdateFleetMetricInput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      queryVersion = schema.new({
         id = id.from(_N, "UpdateFleetMetricInput", "queryVersion"),
         type = "string",
         name = "queryVersion",
         target_id = prelude.String.id,
      }),
      indexName = schema.new({
         id = id.from(_N, "UpdateFleetMetricInput", "indexName"),
         type = "string",
         name = "indexName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      unit = schema.new({
         id = id.from(_N, "UpdateFleetMetricInput", "unit"),
         type = "string",
         name = "unit",
         target_id = prelude.String.id,
      }),
      expectedVersion = schema.new({
         id = id.from(_N, "UpdateFleetMetricInput", "expectedVersion"),
         type = "long",
         name = "expectedVersion",
         target_id = prelude.Long.id,
      }),
   },
})

M.UpdateFleetMetricOutput = prelude.Unit

M.UpdateIndexingConfigurationInput = schema.new({
   id = id.from(_N, "UpdateIndexingConfigurationRequest"),
   type = "structure",
   members = {
      thingIndexingConfiguration = schema.new({
         id = id.from(_N, "UpdateIndexingConfigurationInput", "thingIndexingConfiguration"),
         type = "structure",
         name = "thingIndexingConfiguration",
         target_id = id.from(_N, "ThingIndexingConfiguration"),
         target = M.ThingIndexingConfiguration,
      }),
      thingGroupIndexingConfiguration = schema.new({
         id = id.from(_N, "UpdateIndexingConfigurationInput", "thingGroupIndexingConfiguration"),
         type = "structure",
         name = "thingGroupIndexingConfiguration",
         target_id = id.from(_N, "ThingGroupIndexingConfiguration"),
         target = M.ThingGroupIndexingConfiguration,
      }),
   },
})

M.UpdateIndexingConfigurationOutput = schema.new({
   id = id.from(_N, "UpdateIndexingConfigurationResponse"),
   type = "structure",
})

M.UpdateJobInput = schema.new({
   id = id.from(_N, "UpdateJobRequest"),
   type = "structure",
   members = {
      jobId = schema.new({
         id = id.from(_N, "UpdateJobInput", "jobId"),
         type = "string",
         name = "jobId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      description = schema.new({
         id = id.from(_N, "UpdateJobInput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      presignedUrlConfig = schema.new({
         id = id.from(_N, "UpdateJobInput", "presignedUrlConfig"),
         type = "structure",
         name = "presignedUrlConfig",
         target_id = id.from(_N, "PresignedUrlConfig"),
         target = M.PresignedUrlConfig,
      }),
      jobExecutionsRolloutConfig = schema.new({
         id = id.from(_N, "UpdateJobInput", "jobExecutionsRolloutConfig"),
         type = "structure",
         name = "jobExecutionsRolloutConfig",
         target_id = id.from(_N, "JobExecutionsRolloutConfig"),
         target = M.JobExecutionsRolloutConfig,
      }),
      abortConfig = schema.new({
         id = id.from(_N, "UpdateJobInput", "abortConfig"),
         type = "structure",
         name = "abortConfig",
         target_id = id.from(_N, "AbortConfig"),
         target = M.AbortConfig,
      }),
      timeoutConfig = schema.new({
         id = id.from(_N, "UpdateJobInput", "timeoutConfig"),
         type = "structure",
         name = "timeoutConfig",
         target_id = id.from(_N, "TimeoutConfig"),
         target = M.TimeoutConfig,
      }),
      namespaceId = schema.new({
         id = id.from(_N, "UpdateJobInput", "namespaceId"),
         type = "string",
         name = "namespaceId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "namespaceId" },
         },
      }),
      jobExecutionsRetryConfig = schema.new({
         id = id.from(_N, "UpdateJobInput", "jobExecutionsRetryConfig"),
         type = "structure",
         name = "jobExecutionsRetryConfig",
         target_id = id.from(_N, "JobExecutionsRetryConfig"),
         target = M.JobExecutionsRetryConfig,
      }),
   },
})

M.UpdateJobOutput = prelude.Unit

M.UpdateMitigationActionInput = schema.new({
   id = id.from(_N, "UpdateMitigationActionRequest"),
   type = "structure",
   members = {
      actionName = schema.new({
         id = id.from(_N, "UpdateMitigationActionInput", "actionName"),
         type = "string",
         name = "actionName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      roleArn = schema.new({
         id = id.from(_N, "UpdateMitigationActionInput", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
      }),
      actionParams = schema.new({
         id = id.from(_N, "UpdateMitigationActionInput", "actionParams"),
         type = "structure",
         name = "actionParams",
         target_id = id.from(_N, "MitigationActionParams"),
         target = M.MitigationActionParams,
      }),
   },
})

M.UpdateMitigationActionOutput = schema.new({
   id = id.from(_N, "UpdateMitigationActionResponse"),
   type = "structure",
   members = {
      actionArn = schema.new({
         id = id.from(_N, "UpdateMitigationActionOutput", "actionArn"),
         type = "string",
         name = "actionArn",
         target_id = prelude.String.id,
      }),
      actionId = schema.new({
         id = id.from(_N, "UpdateMitigationActionOutput", "actionId"),
         type = "string",
         name = "actionId",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdatePackageInput = schema.new({
   id = id.from(_N, "UpdatePackageRequest"),
   type = "structure",
   members = {
      packageName = schema.new({
         id = id.from(_N, "UpdatePackageInput", "packageName"),
         type = "string",
         name = "packageName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      description = schema.new({
         id = id.from(_N, "UpdatePackageInput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      defaultVersionName = schema.new({
         id = id.from(_N, "UpdatePackageInput", "defaultVersionName"),
         type = "string",
         name = "defaultVersionName",
         target_id = prelude.String.id,
      }),
      unsetDefaultVersion = schema.new({
         id = id.from(_N, "UpdatePackageInput", "unsetDefaultVersion"),
         type = "boolean",
         name = "unsetDefaultVersion",
         target_id = prelude.Boolean.id,
      }),
      clientToken = schema.new({
         id = id.from(_N, "UpdatePackageInput", "clientToken"),
         type = "string",
         name = "clientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "clientToken" },
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
   },
})

M.UpdatePackageOutput = schema.new({
   id = id.from(_N, "UpdatePackageResponse"),
   type = "structure",
})

M.UpdatePackageConfigurationInput = schema.new({
   id = id.from(_N, "UpdatePackageConfigurationRequest"),
   type = "structure",
   members = {
      versionUpdateByJobsConfig = schema.new({
         id = id.from(_N, "UpdatePackageConfigurationInput", "versionUpdateByJobsConfig"),
         type = "structure",
         name = "versionUpdateByJobsConfig",
         target_id = id.from(_N, "VersionUpdateByJobsConfig"),
         target = M.VersionUpdateByJobsConfig,
      }),
      clientToken = schema.new({
         id = id.from(_N, "UpdatePackageConfigurationInput", "clientToken"),
         type = "string",
         name = "clientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "clientToken" },
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
   },
})

M.UpdatePackageConfigurationOutput = schema.new({
   id = id.from(_N, "UpdatePackageConfigurationResponse"),
   type = "structure",
})

M.UpdatePackageVersionInput = schema.new({
   id = id.from(_N, "UpdatePackageVersionRequest"),
   type = "structure",
   members = {
      packageName = schema.new({
         id = id.from(_N, "UpdatePackageVersionInput", "packageName"),
         type = "string",
         name = "packageName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      versionName = schema.new({
         id = id.from(_N, "UpdatePackageVersionInput", "versionName"),
         type = "string",
         name = "versionName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      description = schema.new({
         id = id.from(_N, "UpdatePackageVersionInput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      attributes = schema.new({
         id = id.from(_N, "UpdatePackageVersionInput", "attributes"),
         type = "map",
         name = "attributes",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      artifact = schema.new({
         id = id.from(_N, "UpdatePackageVersionInput", "artifact"),
         type = "structure",
         name = "artifact",
         target_id = id.from(_N, "PackageVersionArtifact"),
         target = M.PackageVersionArtifact,
      }),
      action = schema.new({
         id = id.from(_N, "UpdatePackageVersionInput", "action"),
         type = "string",
         name = "action",
         target_id = prelude.String.id,
      }),
      recipe = schema.new({
         id = id.from(_N, "UpdatePackageVersionInput", "recipe"),
         type = "string",
         name = "recipe",
         target_id = prelude.String.id,
      }),
      clientToken = schema.new({
         id = id.from(_N, "UpdatePackageVersionInput", "clientToken"),
         type = "string",
         name = "clientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "clientToken" },
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
   },
})

M.UpdatePackageVersionOutput = schema.new({
   id = id.from(_N, "UpdatePackageVersionResponse"),
   type = "structure",
})

M.UpdateProvisioningTemplateInput = schema.new({
   id = id.from(_N, "UpdateProvisioningTemplateRequest"),
   type = "structure",
   members = {
      templateName = schema.new({
         id = id.from(_N, "UpdateProvisioningTemplateInput", "templateName"),
         type = "string",
         name = "templateName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      description = schema.new({
         id = id.from(_N, "UpdateProvisioningTemplateInput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      enabled = schema.new({
         id = id.from(_N, "UpdateProvisioningTemplateInput", "enabled"),
         type = "boolean",
         name = "enabled",
         target_id = prelude.Boolean.id,
      }),
      defaultVersionId = schema.new({
         id = id.from(_N, "UpdateProvisioningTemplateInput", "defaultVersionId"),
         type = "integer",
         name = "defaultVersionId",
         target_id = prelude.Integer.id,
      }),
      provisioningRoleArn = schema.new({
         id = id.from(_N, "UpdateProvisioningTemplateInput", "provisioningRoleArn"),
         type = "string",
         name = "provisioningRoleArn",
         target_id = prelude.String.id,
      }),
      preProvisioningHook = schema.new({
         id = id.from(_N, "UpdateProvisioningTemplateInput", "preProvisioningHook"),
         type = "structure",
         name = "preProvisioningHook",
         target_id = id.from(_N, "ProvisioningHook"),
         target = M.ProvisioningHook,
      }),
      removePreProvisioningHook = schema.new({
         id = id.from(_N, "UpdateProvisioningTemplateInput", "removePreProvisioningHook"),
         type = "boolean",
         name = "removePreProvisioningHook",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.UpdateProvisioningTemplateOutput = schema.new({
   id = id.from(_N, "UpdateProvisioningTemplateResponse"),
   type = "structure",
})

M.UpdateRoleAliasInput = schema.new({
   id = id.from(_N, "UpdateRoleAliasRequest"),
   type = "structure",
   members = {
      roleAlias = schema.new({
         id = id.from(_N, "UpdateRoleAliasInput", "roleAlias"),
         type = "string",
         name = "roleAlias",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      roleArn = schema.new({
         id = id.from(_N, "UpdateRoleAliasInput", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
      }),
      credentialDurationSeconds = schema.new({
         id = id.from(_N, "UpdateRoleAliasInput", "credentialDurationSeconds"),
         type = "integer",
         name = "credentialDurationSeconds",
         target_id = prelude.Integer.id,
      }),
   },
})

M.UpdateRoleAliasOutput = schema.new({
   id = id.from(_N, "UpdateRoleAliasResponse"),
   type = "structure",
   members = {
      roleAlias = schema.new({
         id = id.from(_N, "UpdateRoleAliasOutput", "roleAlias"),
         type = "string",
         name = "roleAlias",
         target_id = prelude.String.id,
      }),
      roleAliasArn = schema.new({
         id = id.from(_N, "UpdateRoleAliasOutput", "roleAliasArn"),
         type = "string",
         name = "roleAliasArn",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateScheduledAuditInput = schema.new({
   id = id.from(_N, "UpdateScheduledAuditRequest"),
   type = "structure",
   members = {
      frequency = schema.new({
         id = id.from(_N, "UpdateScheduledAuditInput", "frequency"),
         type = "string",
         name = "frequency",
         target_id = prelude.String.id,
      }),
      dayOfMonth = schema.new({
         id = id.from(_N, "UpdateScheduledAuditInput", "dayOfMonth"),
         type = "string",
         name = "dayOfMonth",
         target_id = prelude.String.id,
      }),
      dayOfWeek = schema.new({
         id = id.from(_N, "UpdateScheduledAuditInput", "dayOfWeek"),
         type = "string",
         name = "dayOfWeek",
         target_id = prelude.String.id,
      }),
      targetCheckNames = schema.new({
         id = id.from(_N, "UpdateScheduledAuditInput", "targetCheckNames"),
         type = "list",
         name = "targetCheckNames",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      scheduledAuditName = schema.new({
         id = id.from(_N, "UpdateScheduledAuditInput", "scheduledAuditName"),
         type = "string",
         name = "scheduledAuditName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.UpdateScheduledAuditOutput = schema.new({
   id = id.from(_N, "UpdateScheduledAuditResponse"),
   type = "structure",
   members = {
      scheduledAuditArn = schema.new({
         id = id.from(_N, "UpdateScheduledAuditOutput", "scheduledAuditArn"),
         type = "string",
         name = "scheduledAuditArn",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateSecurityProfileInput = schema.new({
   id = id.from(_N, "UpdateSecurityProfileRequest"),
   type = "structure",
   members = {
      securityProfileName = schema.new({
         id = id.from(_N, "UpdateSecurityProfileInput", "securityProfileName"),
         type = "string",
         name = "securityProfileName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      securityProfileDescription = schema.new({
         id = id.from(_N, "UpdateSecurityProfileInput", "securityProfileDescription"),
         type = "string",
         name = "securityProfileDescription",
         target_id = prelude.String.id,
      }),
      behaviors = schema.new({
         id = id.from(_N, "UpdateSecurityProfileInput", "behaviors"),
         type = "list",
         name = "behaviors",
         target_id = prelude.Document.id,
         list_member = M.Behavior,
      }),
      alertTargets = schema.new({
         id = id.from(_N, "UpdateSecurityProfileInput", "alertTargets"),
         type = "map",
         name = "alertTargets",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.AlertTarget,
      }),
      additionalMetricsToRetain = schema.new({
         id = id.from(_N, "UpdateSecurityProfileInput", "additionalMetricsToRetain"),
         type = "list",
         name = "additionalMetricsToRetain",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      additionalMetricsToRetainV2 = schema.new({
         id = id.from(_N, "UpdateSecurityProfileInput", "additionalMetricsToRetainV2"),
         type = "list",
         name = "additionalMetricsToRetainV2",
         target_id = prelude.Document.id,
         list_member = M.MetricToRetain,
      }),
      deleteBehaviors = schema.new({
         id = id.from(_N, "UpdateSecurityProfileInput", "deleteBehaviors"),
         type = "boolean",
         name = "deleteBehaviors",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      deleteAlertTargets = schema.new({
         id = id.from(_N, "UpdateSecurityProfileInput", "deleteAlertTargets"),
         type = "boolean",
         name = "deleteAlertTargets",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      deleteAdditionalMetricsToRetain = schema.new({
         id = id.from(_N, "UpdateSecurityProfileInput", "deleteAdditionalMetricsToRetain"),
         type = "boolean",
         name = "deleteAdditionalMetricsToRetain",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      expectedVersion = schema.new({
         id = id.from(_N, "UpdateSecurityProfileInput", "expectedVersion"),
         type = "long",
         name = "expectedVersion",
         target_id = prelude.Long.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "expectedVersion" },
         },
      }),
      metricsExportConfig = schema.new({
         id = id.from(_N, "UpdateSecurityProfileInput", "metricsExportConfig"),
         type = "structure",
         name = "metricsExportConfig",
         target_id = id.from(_N, "MetricsExportConfig"),
         target = M.MetricsExportConfig,
      }),
      deleteMetricsExportConfig = schema.new({
         id = id.from(_N, "UpdateSecurityProfileInput", "deleteMetricsExportConfig"),
         type = "boolean",
         name = "deleteMetricsExportConfig",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
   },
})

M.UpdateSecurityProfileOutput = schema.new({
   id = id.from(_N, "UpdateSecurityProfileResponse"),
   type = "structure",
   members = {
      securityProfileName = schema.new({
         id = id.from(_N, "UpdateSecurityProfileOutput", "securityProfileName"),
         type = "string",
         name = "securityProfileName",
         target_id = prelude.String.id,
      }),
      securityProfileArn = schema.new({
         id = id.from(_N, "UpdateSecurityProfileOutput", "securityProfileArn"),
         type = "string",
         name = "securityProfileArn",
         target_id = prelude.String.id,
      }),
      securityProfileDescription = schema.new({
         id = id.from(_N, "UpdateSecurityProfileOutput", "securityProfileDescription"),
         type = "string",
         name = "securityProfileDescription",
         target_id = prelude.String.id,
      }),
      behaviors = schema.new({
         id = id.from(_N, "UpdateSecurityProfileOutput", "behaviors"),
         type = "list",
         name = "behaviors",
         target_id = prelude.Document.id,
         list_member = M.Behavior,
      }),
      alertTargets = schema.new({
         id = id.from(_N, "UpdateSecurityProfileOutput", "alertTargets"),
         type = "map",
         name = "alertTargets",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.AlertTarget,
      }),
      additionalMetricsToRetain = schema.new({
         id = id.from(_N, "UpdateSecurityProfileOutput", "additionalMetricsToRetain"),
         type = "list",
         name = "additionalMetricsToRetain",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      additionalMetricsToRetainV2 = schema.new({
         id = id.from(_N, "UpdateSecurityProfileOutput", "additionalMetricsToRetainV2"),
         type = "list",
         name = "additionalMetricsToRetainV2",
         target_id = prelude.Document.id,
         list_member = M.MetricToRetain,
      }),
      version = schema.new({
         id = id.from(_N, "UpdateSecurityProfileOutput", "version"),
         type = "long",
         name = "version",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      creationDate = schema.new({
         id = id.from(_N, "UpdateSecurityProfileOutput", "creationDate"),
         type = "timestamp",
         name = "creationDate",
         target_id = prelude.Timestamp.id,
      }),
      lastModifiedDate = schema.new({
         id = id.from(_N, "UpdateSecurityProfileOutput", "lastModifiedDate"),
         type = "timestamp",
         name = "lastModifiedDate",
         target_id = prelude.Timestamp.id,
      }),
      metricsExportConfig = schema.new({
         id = id.from(_N, "UpdateSecurityProfileOutput", "metricsExportConfig"),
         type = "structure",
         name = "metricsExportConfig",
         target_id = id.from(_N, "MetricsExportConfig"),
         target = M.MetricsExportConfig,
      }),
   },
})

M.UpdateStreamInput = schema.new({
   id = id.from(_N, "UpdateStreamRequest"),
   type = "structure",
   members = {
      streamId = schema.new({
         id = id.from(_N, "UpdateStreamInput", "streamId"),
         type = "string",
         name = "streamId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      description = schema.new({
         id = id.from(_N, "UpdateStreamInput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      files = schema.new({
         id = id.from(_N, "UpdateStreamInput", "files"),
         type = "list",
         name = "files",
         target_id = prelude.Document.id,
         list_member = M.StreamFile,
      }),
      roleArn = schema.new({
         id = id.from(_N, "UpdateStreamInput", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateStreamOutput = schema.new({
   id = id.from(_N, "UpdateStreamResponse"),
   type = "structure",
   members = {
      streamId = schema.new({
         id = id.from(_N, "UpdateStreamOutput", "streamId"),
         type = "string",
         name = "streamId",
         target_id = prelude.String.id,
      }),
      streamArn = schema.new({
         id = id.from(_N, "UpdateStreamOutput", "streamArn"),
         type = "string",
         name = "streamArn",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "UpdateStreamOutput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      streamVersion = schema.new({
         id = id.from(_N, "UpdateStreamOutput", "streamVersion"),
         type = "integer",
         name = "streamVersion",
         target_id = prelude.Integer.id,
      }),
   },
})

M.UpdateThingInput = schema.new({
   id = id.from(_N, "UpdateThingRequest"),
   type = "structure",
   members = {
      thingName = schema.new({
         id = id.from(_N, "UpdateThingInput", "thingName"),
         type = "string",
         name = "thingName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      thingTypeName = schema.new({
         id = id.from(_N, "UpdateThingInput", "thingTypeName"),
         type = "string",
         name = "thingTypeName",
         target_id = prelude.String.id,
      }),
      attributePayload = schema.new({
         id = id.from(_N, "UpdateThingInput", "attributePayload"),
         type = "structure",
         name = "attributePayload",
         target_id = id.from(_N, "AttributePayload"),
         target = M.AttributePayload,
      }),
      expectedVersion = schema.new({
         id = id.from(_N, "UpdateThingInput", "expectedVersion"),
         type = "long",
         name = "expectedVersion",
         target_id = prelude.Long.id,
      }),
      removeThingType = schema.new({
         id = id.from(_N, "UpdateThingInput", "removeThingType"),
         type = "boolean",
         name = "removeThingType",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
   },
})

M.UpdateThingOutput = schema.new({
   id = id.from(_N, "UpdateThingResponse"),
   type = "structure",
})

M.UpdateThingGroupInput = schema.new({
   id = id.from(_N, "UpdateThingGroupRequest"),
   type = "structure",
   members = {
      thingGroupName = schema.new({
         id = id.from(_N, "UpdateThingGroupInput", "thingGroupName"),
         type = "string",
         name = "thingGroupName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      thingGroupProperties = schema.new({
         id = id.from(_N, "UpdateThingGroupInput", "thingGroupProperties"),
         type = "structure",
         name = "thingGroupProperties",
         target_id = id.from(_N, "ThingGroupProperties"),
         target = M.ThingGroupProperties,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      expectedVersion = schema.new({
         id = id.from(_N, "UpdateThingGroupInput", "expectedVersion"),
         type = "long",
         name = "expectedVersion",
         target_id = prelude.Long.id,
      }),
   },
})

M.UpdateThingGroupOutput = schema.new({
   id = id.from(_N, "UpdateThingGroupResponse"),
   type = "structure",
   members = {
      version = schema.new({
         id = id.from(_N, "UpdateThingGroupOutput", "version"),
         type = "long",
         name = "version",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
   },
})

M.UpdateThingGroupsForThingInput = schema.new({
   id = id.from(_N, "UpdateThingGroupsForThingRequest"),
   type = "structure",
   members = {
      thingName = schema.new({
         id = id.from(_N, "UpdateThingGroupsForThingInput", "thingName"),
         type = "string",
         name = "thingName",
         target_id = prelude.String.id,
      }),
      thingGroupsToAdd = schema.new({
         id = id.from(_N, "UpdateThingGroupsForThingInput", "thingGroupsToAdd"),
         type = "list",
         name = "thingGroupsToAdd",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      thingGroupsToRemove = schema.new({
         id = id.from(_N, "UpdateThingGroupsForThingInput", "thingGroupsToRemove"),
         type = "list",
         name = "thingGroupsToRemove",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      overrideDynamicGroups = schema.new({
         id = id.from(_N, "UpdateThingGroupsForThingInput", "overrideDynamicGroups"),
         type = "boolean",
         name = "overrideDynamicGroups",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
   },
})

M.UpdateThingGroupsForThingOutput = schema.new({
   id = id.from(_N, "UpdateThingGroupsForThingResponse"),
   type = "structure",
})

M.UpdateThingTypeInput = schema.new({
   id = id.from(_N, "UpdateThingTypeRequest"),
   type = "structure",
   members = {
      thingTypeName = schema.new({
         id = id.from(_N, "UpdateThingTypeInput", "thingTypeName"),
         type = "string",
         name = "thingTypeName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      thingTypeProperties = schema.new({
         id = id.from(_N, "UpdateThingTypeInput", "thingTypeProperties"),
         type = "structure",
         name = "thingTypeProperties",
         target_id = id.from(_N, "ThingTypeProperties"),
         target = M.ThingTypeProperties,
      }),
   },
})

M.UpdateThingTypeOutput = schema.new({
   id = id.from(_N, "UpdateThingTypeResponse"),
   type = "structure",
})

M.UpdateTopicRuleDestinationInput = schema.new({
   id = id.from(_N, "UpdateTopicRuleDestinationRequest"),
   type = "structure",
   members = {
      arn = schema.new({
         id = id.from(_N, "UpdateTopicRuleDestinationInput", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      status = schema.new({
         id = id.from(_N, "UpdateTopicRuleDestinationInput", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UpdateTopicRuleDestinationOutput = schema.new({
   id = id.from(_N, "UpdateTopicRuleDestinationResponse"),
   type = "structure",
})

M.ValidateSecurityProfileBehaviorsInput = schema.new({
   id = id.from(_N, "ValidateSecurityProfileBehaviorsRequest"),
   type = "structure",
   members = {
      behaviors = schema.new({
         id = id.from(_N, "ValidateSecurityProfileBehaviorsInput", "behaviors"),
         type = "list",
         name = "behaviors",
         target_id = prelude.Document.id,
         list_member = M.Behavior,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ValidationError = schema.new({
   id = id.from(_N, "ValidationError"),
   type = "structure",
   members = {
      errorMessage = schema.new({
         id = id.from(_N, "ValidationError", "errorMessage"),
         type = "string",
         name = "errorMessage",
         target_id = prelude.String.id,
      }),
   },
})

M.ValidateSecurityProfileBehaviorsOutput = schema.new({
   id = id.from(_N, "ValidateSecurityProfileBehaviorsResponse"),
   type = "structure",
   members = {
      valid = schema.new({
         id = id.from(_N, "ValidateSecurityProfileBehaviorsOutput", "valid"),
         type = "boolean",
         name = "valid",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      validationErrors = schema.new({
         id = id.from(_N, "ValidateSecurityProfileBehaviorsOutput", "validationErrors"),
         type = "list",
         name = "validationErrors",
         target_id = prelude.Document.id,
         list_member = M.ValidationError,
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
   id = id.from("com.amazonaws.iot", "AWSIotService"),
   version = "2015-05-28",
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AcceptCertificateTransfer = schema.operation({
   id = id.from("com.amazonaws.iot", "AcceptCertificateTransfer"),
   input = M.AcceptCertificateTransferInput,
   output = M.AcceptCertificateTransferOutput,
   traits = {
      [traits.HTTP] = { method = "PATCH", path = "/accept-certificate-transfer/{certificateId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AddThingToBillingGroup = schema.operation({
   id = id.from("com.amazonaws.iot", "AddThingToBillingGroup"),
   input = M.AddThingToBillingGroupInput,
   output = M.AddThingToBillingGroupOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/billing-groups/addThingToBillingGroup" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AddThingToThingGroup = schema.operation({
   id = id.from("com.amazonaws.iot", "AddThingToThingGroup"),
   input = M.AddThingToThingGroupInput,
   output = M.AddThingToThingGroupOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/thing-groups/addThingToThingGroup" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AssociateSbomWithPackageVersion = schema.operation({
   id = id.from("com.amazonaws.iot", "AssociateSbomWithPackageVersion"),
   input = M.AssociateSbomWithPackageVersionInput,
   output = M.AssociateSbomWithPackageVersionOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/packages/{packageName}/versions/{versionName}/sbom" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AssociateTargetsWithJob = schema.operation({
   id = id.from("com.amazonaws.iot", "AssociateTargetsWithJob"),
   input = M.AssociateTargetsWithJobInput,
   output = M.AssociateTargetsWithJobOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/jobs/{jobId}/targets" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AttachPolicy = schema.operation({
   id = id.from("com.amazonaws.iot", "AttachPolicy"),
   input = M.AttachPolicyInput,
   output = M.AttachPolicyOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/target-policies/{policyName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AttachPrincipalPolicy = schema.operation({
   id = id.from("com.amazonaws.iot", "AttachPrincipalPolicy"),
   input = M.AttachPrincipalPolicyInput,
   output = M.AttachPrincipalPolicyOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/principal-policies/{policyName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AttachSecurityProfile = schema.operation({
   id = id.from("com.amazonaws.iot", "AttachSecurityProfile"),
   input = M.AttachSecurityProfileInput,
   output = M.AttachSecurityProfileOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/security-profiles/{securityProfileName}/targets" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AttachThingPrincipal = schema.operation({
   id = id.from("com.amazonaws.iot", "AttachThingPrincipal"),
   input = M.AttachThingPrincipalInput,
   output = M.AttachThingPrincipalOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/things/{thingName}/principals" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CancelAuditMitigationActionsTask = schema.operation({
   id = id.from("com.amazonaws.iot", "CancelAuditMitigationActionsTask"),
   input = M.CancelAuditMitigationActionsTaskInput,
   output = M.CancelAuditMitigationActionsTaskOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/audit/mitigationactions/tasks/{taskId}/cancel" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CancelAuditTask = schema.operation({
   id = id.from("com.amazonaws.iot", "CancelAuditTask"),
   input = M.CancelAuditTaskInput,
   output = M.CancelAuditTaskOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/audit/tasks/{taskId}/cancel" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CancelCertificateTransfer = schema.operation({
   id = id.from("com.amazonaws.iot", "CancelCertificateTransfer"),
   input = M.CancelCertificateTransferInput,
   output = M.CancelCertificateTransferOutput,
   traits = {
      [traits.HTTP] = { method = "PATCH", path = "/cancel-certificate-transfer/{certificateId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CancelDetectMitigationActionsTask = schema.operation({
   id = id.from("com.amazonaws.iot", "CancelDetectMitigationActionsTask"),
   input = M.CancelDetectMitigationActionsTaskInput,
   output = M.CancelDetectMitigationActionsTaskOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/detect/mitigationactions/tasks/{taskId}/cancel" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CancelJob = schema.operation({
   id = id.from("com.amazonaws.iot", "CancelJob"),
   input = M.CancelJobInput,
   output = M.CancelJobOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/jobs/{jobId}/cancel" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CancelJobExecution = schema.operation({
   id = id.from("com.amazonaws.iot", "CancelJobExecution"),
   input = M.CancelJobExecutionInput,
   output = M.CancelJobExecutionOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/things/{thingName}/jobs/{jobId}/cancel" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ClearDefaultAuthorizer = schema.operation({
   id = id.from("com.amazonaws.iot", "ClearDefaultAuthorizer"),
   input = M.ClearDefaultAuthorizerInput,
   output = M.ClearDefaultAuthorizerOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/default-authorizer" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ConfirmTopicRuleDestination = schema.operation({
   id = id.from("com.amazonaws.iot", "ConfirmTopicRuleDestination"),
   input = M.ConfirmTopicRuleDestinationInput,
   output = M.ConfirmTopicRuleDestinationOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/confirmdestination/{confirmationToken+}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateAuditSuppression = schema.operation({
   id = id.from("com.amazonaws.iot", "CreateAuditSuppression"),
   input = M.CreateAuditSuppressionInput,
   output = M.CreateAuditSuppressionOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/audit/suppressions/create" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateAuthorizer = schema.operation({
   id = id.from("com.amazonaws.iot", "CreateAuthorizer"),
   input = M.CreateAuthorizerInput,
   output = M.CreateAuthorizerOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/authorizer/{authorizerName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateBillingGroup = schema.operation({
   id = id.from("com.amazonaws.iot", "CreateBillingGroup"),
   input = M.CreateBillingGroupInput,
   output = M.CreateBillingGroupOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/billing-groups/{billingGroupName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateCertificateFromCsr = schema.operation({
   id = id.from("com.amazonaws.iot", "CreateCertificateFromCsr"),
   input = M.CreateCertificateFromCsrInput,
   output = M.CreateCertificateFromCsrOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/certificates" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateCertificateProvider = schema.operation({
   id = id.from("com.amazonaws.iot", "CreateCertificateProvider"),
   input = M.CreateCertificateProviderInput,
   output = M.CreateCertificateProviderOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/certificate-providers/{certificateProviderName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateCommand = schema.operation({
   id = id.from("com.amazonaws.iot", "CreateCommand"),
   input = M.CreateCommandInput,
   output = M.CreateCommandOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/commands/{commandId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateCustomMetric = schema.operation({
   id = id.from("com.amazonaws.iot", "CreateCustomMetric"),
   input = M.CreateCustomMetricInput,
   output = M.CreateCustomMetricOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/custom-metric/{metricName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateDimension = schema.operation({
   id = id.from("com.amazonaws.iot", "CreateDimension"),
   input = M.CreateDimensionInput,
   output = M.CreateDimensionOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/dimensions/{name}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateDomainConfiguration = schema.operation({
   id = id.from("com.amazonaws.iot", "CreateDomainConfiguration"),
   input = M.CreateDomainConfigurationInput,
   output = M.CreateDomainConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/domainConfigurations/{domainConfigurationName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateDynamicThingGroup = schema.operation({
   id = id.from("com.amazonaws.iot", "CreateDynamicThingGroup"),
   input = M.CreateDynamicThingGroupInput,
   output = M.CreateDynamicThingGroupOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/dynamic-thing-groups/{thingGroupName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateFleetMetric = schema.operation({
   id = id.from("com.amazonaws.iot", "CreateFleetMetric"),
   input = M.CreateFleetMetricInput,
   output = M.CreateFleetMetricOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/fleet-metric/{metricName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateJob = schema.operation({
   id = id.from("com.amazonaws.iot", "CreateJob"),
   input = M.CreateJobInput,
   output = M.CreateJobOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/jobs/{jobId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateJobTemplate = schema.operation({
   id = id.from("com.amazonaws.iot", "CreateJobTemplate"),
   input = M.CreateJobTemplateInput,
   output = M.CreateJobTemplateOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/job-templates/{jobTemplateId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateKeysAndCertificate = schema.operation({
   id = id.from("com.amazonaws.iot", "CreateKeysAndCertificate"),
   input = M.CreateKeysAndCertificateInput,
   output = M.CreateKeysAndCertificateOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/keys-and-certificate" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateMitigationAction = schema.operation({
   id = id.from("com.amazonaws.iot", "CreateMitigationAction"),
   input = M.CreateMitigationActionInput,
   output = M.CreateMitigationActionOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/mitigationactions/actions/{actionName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateOTAUpdate = schema.operation({
   id = id.from("com.amazonaws.iot", "CreateOTAUpdate"),
   input = M.CreateOTAUpdateInput,
   output = M.CreateOTAUpdateOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/otaUpdates/{otaUpdateId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreatePackage = schema.operation({
   id = id.from("com.amazonaws.iot", "CreatePackage"),
   input = M.CreatePackageInput,
   output = M.CreatePackageOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/packages/{packageName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreatePackageVersion = schema.operation({
   id = id.from("com.amazonaws.iot", "CreatePackageVersion"),
   input = M.CreatePackageVersionInput,
   output = M.CreatePackageVersionOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/packages/{packageName}/versions/{versionName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreatePolicy = schema.operation({
   id = id.from("com.amazonaws.iot", "CreatePolicy"),
   input = M.CreatePolicyInput,
   output = M.CreatePolicyOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/policies/{policyName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreatePolicyVersion = schema.operation({
   id = id.from("com.amazonaws.iot", "CreatePolicyVersion"),
   input = M.CreatePolicyVersionInput,
   output = M.CreatePolicyVersionOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/policies/{policyName}/version" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateProvisioningClaim = schema.operation({
   id = id.from("com.amazonaws.iot", "CreateProvisioningClaim"),
   input = M.CreateProvisioningClaimInput,
   output = M.CreateProvisioningClaimOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/provisioning-templates/{templateName}/provisioning-claim" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateProvisioningTemplate = schema.operation({
   id = id.from("com.amazonaws.iot", "CreateProvisioningTemplate"),
   input = M.CreateProvisioningTemplateInput,
   output = M.CreateProvisioningTemplateOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/provisioning-templates" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateProvisioningTemplateVersion = schema.operation({
   id = id.from("com.amazonaws.iot", "CreateProvisioningTemplateVersion"),
   input = M.CreateProvisioningTemplateVersionInput,
   output = M.CreateProvisioningTemplateVersionOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/provisioning-templates/{templateName}/versions" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateRoleAlias = schema.operation({
   id = id.from("com.amazonaws.iot", "CreateRoleAlias"),
   input = M.CreateRoleAliasInput,
   output = M.CreateRoleAliasOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/role-aliases/{roleAlias}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateScheduledAudit = schema.operation({
   id = id.from("com.amazonaws.iot", "CreateScheduledAudit"),
   input = M.CreateScheduledAuditInput,
   output = M.CreateScheduledAuditOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/audit/scheduledaudits/{scheduledAuditName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateSecurityProfile = schema.operation({
   id = id.from("com.amazonaws.iot", "CreateSecurityProfile"),
   input = M.CreateSecurityProfileInput,
   output = M.CreateSecurityProfileOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/security-profiles/{securityProfileName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateStream = schema.operation({
   id = id.from("com.amazonaws.iot", "CreateStream"),
   input = M.CreateStreamInput,
   output = M.CreateStreamOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/streams/{streamId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateThing = schema.operation({
   id = id.from("com.amazonaws.iot", "CreateThing"),
   input = M.CreateThingInput,
   output = M.CreateThingOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/things/{thingName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateThingGroup = schema.operation({
   id = id.from("com.amazonaws.iot", "CreateThingGroup"),
   input = M.CreateThingGroupInput,
   output = M.CreateThingGroupOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/thing-groups/{thingGroupName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateThingType = schema.operation({
   id = id.from("com.amazonaws.iot", "CreateThingType"),
   input = M.CreateThingTypeInput,
   output = M.CreateThingTypeOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/thing-types/{thingTypeName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateTopicRule = schema.operation({
   id = id.from("com.amazonaws.iot", "CreateTopicRule"),
   input = M.CreateTopicRuleInput,
   output = M.CreateTopicRuleOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/rules/{ruleName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateTopicRuleDestination = schema.operation({
   id = id.from("com.amazonaws.iot", "CreateTopicRuleDestination"),
   input = M.CreateTopicRuleDestinationInput,
   output = M.CreateTopicRuleDestinationOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/destinations" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteAccountAuditConfiguration = schema.operation({
   id = id.from("com.amazonaws.iot", "DeleteAccountAuditConfiguration"),
   input = M.DeleteAccountAuditConfigurationInput,
   output = M.DeleteAccountAuditConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/audit/configuration" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteAuditSuppression = schema.operation({
   id = id.from("com.amazonaws.iot", "DeleteAuditSuppression"),
   input = M.DeleteAuditSuppressionInput,
   output = M.DeleteAuditSuppressionOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/audit/suppressions/delete" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteAuthorizer = schema.operation({
   id = id.from("com.amazonaws.iot", "DeleteAuthorizer"),
   input = M.DeleteAuthorizerInput,
   output = M.DeleteAuthorizerOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/authorizer/{authorizerName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteBillingGroup = schema.operation({
   id = id.from("com.amazonaws.iot", "DeleteBillingGroup"),
   input = M.DeleteBillingGroupInput,
   output = M.DeleteBillingGroupOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/billing-groups/{billingGroupName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteCACertificate = schema.operation({
   id = id.from("com.amazonaws.iot", "DeleteCACertificate"),
   input = M.DeleteCACertificateInput,
   output = M.DeleteCACertificateOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/cacertificate/{certificateId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteCertificate = schema.operation({
   id = id.from("com.amazonaws.iot", "DeleteCertificate"),
   input = M.DeleteCertificateInput,
   output = M.DeleteCertificateOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/certificates/{certificateId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteCertificateProvider = schema.operation({
   id = id.from("com.amazonaws.iot", "DeleteCertificateProvider"),
   input = M.DeleteCertificateProviderInput,
   output = M.DeleteCertificateProviderOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/certificate-providers/{certificateProviderName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteCommand = schema.operation({
   id = id.from("com.amazonaws.iot", "DeleteCommand"),
   input = M.DeleteCommandInput,
   output = M.DeleteCommandOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/commands/{commandId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteCommandExecution = schema.operation({
   id = id.from("com.amazonaws.iot", "DeleteCommandExecution"),
   input = M.DeleteCommandExecutionInput,
   output = M.DeleteCommandExecutionOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/command-executions/{executionId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteCustomMetric = schema.operation({
   id = id.from("com.amazonaws.iot", "DeleteCustomMetric"),
   input = M.DeleteCustomMetricInput,
   output = M.DeleteCustomMetricOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/custom-metric/{metricName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteDimension = schema.operation({
   id = id.from("com.amazonaws.iot", "DeleteDimension"),
   input = M.DeleteDimensionInput,
   output = M.DeleteDimensionOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/dimensions/{name}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteDomainConfiguration = schema.operation({
   id = id.from("com.amazonaws.iot", "DeleteDomainConfiguration"),
   input = M.DeleteDomainConfigurationInput,
   output = M.DeleteDomainConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/domainConfigurations/{domainConfigurationName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteDynamicThingGroup = schema.operation({
   id = id.from("com.amazonaws.iot", "DeleteDynamicThingGroup"),
   input = M.DeleteDynamicThingGroupInput,
   output = M.DeleteDynamicThingGroupOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/dynamic-thing-groups/{thingGroupName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteFleetMetric = schema.operation({
   id = id.from("com.amazonaws.iot", "DeleteFleetMetric"),
   input = M.DeleteFleetMetricInput,
   output = M.DeleteFleetMetricOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/fleet-metric/{metricName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteJob = schema.operation({
   id = id.from("com.amazonaws.iot", "DeleteJob"),
   input = M.DeleteJobInput,
   output = M.DeleteJobOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/jobs/{jobId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteJobExecution = schema.operation({
   id = id.from("com.amazonaws.iot", "DeleteJobExecution"),
   input = M.DeleteJobExecutionInput,
   output = M.DeleteJobExecutionOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/things/{thingName}/jobs/{jobId}/executionNumber/{executionNumber}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteJobTemplate = schema.operation({
   id = id.from("com.amazonaws.iot", "DeleteJobTemplate"),
   input = M.DeleteJobTemplateInput,
   output = M.DeleteJobTemplateOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/job-templates/{jobTemplateId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteMitigationAction = schema.operation({
   id = id.from("com.amazonaws.iot", "DeleteMitigationAction"),
   input = M.DeleteMitigationActionInput,
   output = M.DeleteMitigationActionOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/mitigationactions/actions/{actionName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteOTAUpdate = schema.operation({
   id = id.from("com.amazonaws.iot", "DeleteOTAUpdate"),
   input = M.DeleteOTAUpdateInput,
   output = M.DeleteOTAUpdateOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/otaUpdates/{otaUpdateId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeletePackage = schema.operation({
   id = id.from("com.amazonaws.iot", "DeletePackage"),
   input = M.DeletePackageInput,
   output = M.DeletePackageOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/packages/{packageName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeletePackageVersion = schema.operation({
   id = id.from("com.amazonaws.iot", "DeletePackageVersion"),
   input = M.DeletePackageVersionInput,
   output = M.DeletePackageVersionOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/packages/{packageName}/versions/{versionName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeletePolicy = schema.operation({
   id = id.from("com.amazonaws.iot", "DeletePolicy"),
   input = M.DeletePolicyInput,
   output = M.DeletePolicyOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/policies/{policyName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeletePolicyVersion = schema.operation({
   id = id.from("com.amazonaws.iot", "DeletePolicyVersion"),
   input = M.DeletePolicyVersionInput,
   output = M.DeletePolicyVersionOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/policies/{policyName}/version/{policyVersionId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteProvisioningTemplate = schema.operation({
   id = id.from("com.amazonaws.iot", "DeleteProvisioningTemplate"),
   input = M.DeleteProvisioningTemplateInput,
   output = M.DeleteProvisioningTemplateOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/provisioning-templates/{templateName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteProvisioningTemplateVersion = schema.operation({
   id = id.from("com.amazonaws.iot", "DeleteProvisioningTemplateVersion"),
   input = M.DeleteProvisioningTemplateVersionInput,
   output = M.DeleteProvisioningTemplateVersionOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/provisioning-templates/{templateName}/versions/{versionId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteRegistrationCode = schema.operation({
   id = id.from("com.amazonaws.iot", "DeleteRegistrationCode"),
   input = M.DeleteRegistrationCodeInput,
   output = M.DeleteRegistrationCodeOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/registrationcode" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteRoleAlias = schema.operation({
   id = id.from("com.amazonaws.iot", "DeleteRoleAlias"),
   input = M.DeleteRoleAliasInput,
   output = M.DeleteRoleAliasOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/role-aliases/{roleAlias}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteScheduledAudit = schema.operation({
   id = id.from("com.amazonaws.iot", "DeleteScheduledAudit"),
   input = M.DeleteScheduledAuditInput,
   output = M.DeleteScheduledAuditOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/audit/scheduledaudits/{scheduledAuditName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteSecurityProfile = schema.operation({
   id = id.from("com.amazonaws.iot", "DeleteSecurityProfile"),
   input = M.DeleteSecurityProfileInput,
   output = M.DeleteSecurityProfileOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/security-profiles/{securityProfileName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteStream = schema.operation({
   id = id.from("com.amazonaws.iot", "DeleteStream"),
   input = M.DeleteStreamInput,
   output = M.DeleteStreamOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/streams/{streamId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteThing = schema.operation({
   id = id.from("com.amazonaws.iot", "DeleteThing"),
   input = M.DeleteThingInput,
   output = M.DeleteThingOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/things/{thingName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteThingGroup = schema.operation({
   id = id.from("com.amazonaws.iot", "DeleteThingGroup"),
   input = M.DeleteThingGroupInput,
   output = M.DeleteThingGroupOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/thing-groups/{thingGroupName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteThingType = schema.operation({
   id = id.from("com.amazonaws.iot", "DeleteThingType"),
   input = M.DeleteThingTypeInput,
   output = M.DeleteThingTypeOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/thing-types/{thingTypeName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteTopicRule = schema.operation({
   id = id.from("com.amazonaws.iot", "DeleteTopicRule"),
   input = M.DeleteTopicRuleInput,
   output = M.DeleteTopicRuleOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/rules/{ruleName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteTopicRuleDestination = schema.operation({
   id = id.from("com.amazonaws.iot", "DeleteTopicRuleDestination"),
   input = M.DeleteTopicRuleDestinationInput,
   output = M.DeleteTopicRuleDestinationOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/destinations/{arn+}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteV2LoggingLevel = schema.operation({
   id = id.from("com.amazonaws.iot", "DeleteV2LoggingLevel"),
   input = M.DeleteV2LoggingLevelInput,
   output = M.DeleteV2LoggingLevelOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/v2LoggingLevel" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeprecateThingType = schema.operation({
   id = id.from("com.amazonaws.iot", "DeprecateThingType"),
   input = M.DeprecateThingTypeInput,
   output = M.DeprecateThingTypeOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/thing-types/{thingTypeName}/deprecate" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeAccountAuditConfiguration = schema.operation({
   id = id.from("com.amazonaws.iot", "DescribeAccountAuditConfiguration"),
   input = M.DescribeAccountAuditConfigurationInput,
   output = M.DescribeAccountAuditConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/audit/configuration" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeAuditFinding = schema.operation({
   id = id.from("com.amazonaws.iot", "DescribeAuditFinding"),
   input = M.DescribeAuditFindingInput,
   output = M.DescribeAuditFindingOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/audit/findings/{findingId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeAuditMitigationActionsTask = schema.operation({
   id = id.from("com.amazonaws.iot", "DescribeAuditMitigationActionsTask"),
   input = M.DescribeAuditMitigationActionsTaskInput,
   output = M.DescribeAuditMitigationActionsTaskOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/audit/mitigationactions/tasks/{taskId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeAuditSuppression = schema.operation({
   id = id.from("com.amazonaws.iot", "DescribeAuditSuppression"),
   input = M.DescribeAuditSuppressionInput,
   output = M.DescribeAuditSuppressionOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/audit/suppressions/describe" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeAuditTask = schema.operation({
   id = id.from("com.amazonaws.iot", "DescribeAuditTask"),
   input = M.DescribeAuditTaskInput,
   output = M.DescribeAuditTaskOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/audit/tasks/{taskId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeAuthorizer = schema.operation({
   id = id.from("com.amazonaws.iot", "DescribeAuthorizer"),
   input = M.DescribeAuthorizerInput,
   output = M.DescribeAuthorizerOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/authorizer/{authorizerName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeBillingGroup = schema.operation({
   id = id.from("com.amazonaws.iot", "DescribeBillingGroup"),
   input = M.DescribeBillingGroupInput,
   output = M.DescribeBillingGroupOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/billing-groups/{billingGroupName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeCACertificate = schema.operation({
   id = id.from("com.amazonaws.iot", "DescribeCACertificate"),
   input = M.DescribeCACertificateInput,
   output = M.DescribeCACertificateOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/cacertificate/{certificateId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeCertificate = schema.operation({
   id = id.from("com.amazonaws.iot", "DescribeCertificate"),
   input = M.DescribeCertificateInput,
   output = M.DescribeCertificateOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/certificates/{certificateId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeCertificateProvider = schema.operation({
   id = id.from("com.amazonaws.iot", "DescribeCertificateProvider"),
   input = M.DescribeCertificateProviderInput,
   output = M.DescribeCertificateProviderOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/certificate-providers/{certificateProviderName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeCustomMetric = schema.operation({
   id = id.from("com.amazonaws.iot", "DescribeCustomMetric"),
   input = M.DescribeCustomMetricInput,
   output = M.DescribeCustomMetricOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/custom-metric/{metricName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeDefaultAuthorizer = schema.operation({
   id = id.from("com.amazonaws.iot", "DescribeDefaultAuthorizer"),
   input = M.DescribeDefaultAuthorizerInput,
   output = M.DescribeDefaultAuthorizerOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/default-authorizer" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeDetectMitigationActionsTask = schema.operation({
   id = id.from("com.amazonaws.iot", "DescribeDetectMitigationActionsTask"),
   input = M.DescribeDetectMitigationActionsTaskInput,
   output = M.DescribeDetectMitigationActionsTaskOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/detect/mitigationactions/tasks/{taskId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeDimension = schema.operation({
   id = id.from("com.amazonaws.iot", "DescribeDimension"),
   input = M.DescribeDimensionInput,
   output = M.DescribeDimensionOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/dimensions/{name}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeDomainConfiguration = schema.operation({
   id = id.from("com.amazonaws.iot", "DescribeDomainConfiguration"),
   input = M.DescribeDomainConfigurationInput,
   output = M.DescribeDomainConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/domainConfigurations/{domainConfigurationName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeEncryptionConfiguration = schema.operation({
   id = id.from("com.amazonaws.iot", "DescribeEncryptionConfiguration"),
   input = M.DescribeEncryptionConfigurationInput,
   output = M.DescribeEncryptionConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/encryption-configuration" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeEndpoint = schema.operation({
   id = id.from("com.amazonaws.iot", "DescribeEndpoint"),
   input = M.DescribeEndpointInput,
   output = M.DescribeEndpointOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/endpoint" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeEventConfigurations = schema.operation({
   id = id.from("com.amazonaws.iot", "DescribeEventConfigurations"),
   input = M.DescribeEventConfigurationsInput,
   output = M.DescribeEventConfigurationsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/event-configurations" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeFleetMetric = schema.operation({
   id = id.from("com.amazonaws.iot", "DescribeFleetMetric"),
   input = M.DescribeFleetMetricInput,
   output = M.DescribeFleetMetricOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/fleet-metric/{metricName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeIndex = schema.operation({
   id = id.from("com.amazonaws.iot", "DescribeIndex"),
   input = M.DescribeIndexInput,
   output = M.DescribeIndexOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/indices/{indexName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeJob = schema.operation({
   id = id.from("com.amazonaws.iot", "DescribeJob"),
   input = M.DescribeJobInput,
   output = M.DescribeJobOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/jobs/{jobId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeJobExecution = schema.operation({
   id = id.from("com.amazonaws.iot", "DescribeJobExecution"),
   input = M.DescribeJobExecutionInput,
   output = M.DescribeJobExecutionOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/things/{thingName}/jobs/{jobId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeJobTemplate = schema.operation({
   id = id.from("com.amazonaws.iot", "DescribeJobTemplate"),
   input = M.DescribeJobTemplateInput,
   output = M.DescribeJobTemplateOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/job-templates/{jobTemplateId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeManagedJobTemplate = schema.operation({
   id = id.from("com.amazonaws.iot", "DescribeManagedJobTemplate"),
   input = M.DescribeManagedJobTemplateInput,
   output = M.DescribeManagedJobTemplateOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/managed-job-templates/{templateName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeMitigationAction = schema.operation({
   id = id.from("com.amazonaws.iot", "DescribeMitigationAction"),
   input = M.DescribeMitigationActionInput,
   output = M.DescribeMitigationActionOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/mitigationactions/actions/{actionName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeProvisioningTemplate = schema.operation({
   id = id.from("com.amazonaws.iot", "DescribeProvisioningTemplate"),
   input = M.DescribeProvisioningTemplateInput,
   output = M.DescribeProvisioningTemplateOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/provisioning-templates/{templateName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeProvisioningTemplateVersion = schema.operation({
   id = id.from("com.amazonaws.iot", "DescribeProvisioningTemplateVersion"),
   input = M.DescribeProvisioningTemplateVersionInput,
   output = M.DescribeProvisioningTemplateVersionOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/provisioning-templates/{templateName}/versions/{versionId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeRoleAlias = schema.operation({
   id = id.from("com.amazonaws.iot", "DescribeRoleAlias"),
   input = M.DescribeRoleAliasInput,
   output = M.DescribeRoleAliasOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/role-aliases/{roleAlias}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeScheduledAudit = schema.operation({
   id = id.from("com.amazonaws.iot", "DescribeScheduledAudit"),
   input = M.DescribeScheduledAuditInput,
   output = M.DescribeScheduledAuditOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/audit/scheduledaudits/{scheduledAuditName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeSecurityProfile = schema.operation({
   id = id.from("com.amazonaws.iot", "DescribeSecurityProfile"),
   input = M.DescribeSecurityProfileInput,
   output = M.DescribeSecurityProfileOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/security-profiles/{securityProfileName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeStream = schema.operation({
   id = id.from("com.amazonaws.iot", "DescribeStream"),
   input = M.DescribeStreamInput,
   output = M.DescribeStreamOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/streams/{streamId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeThing = schema.operation({
   id = id.from("com.amazonaws.iot", "DescribeThing"),
   input = M.DescribeThingInput,
   output = M.DescribeThingOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/things/{thingName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeThingGroup = schema.operation({
   id = id.from("com.amazonaws.iot", "DescribeThingGroup"),
   input = M.DescribeThingGroupInput,
   output = M.DescribeThingGroupOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/thing-groups/{thingGroupName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeThingRegistrationTask = schema.operation({
   id = id.from("com.amazonaws.iot", "DescribeThingRegistrationTask"),
   input = M.DescribeThingRegistrationTaskInput,
   output = M.DescribeThingRegistrationTaskOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/thing-registration-tasks/{taskId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeThingType = schema.operation({
   id = id.from("com.amazonaws.iot", "DescribeThingType"),
   input = M.DescribeThingTypeInput,
   output = M.DescribeThingTypeOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/thing-types/{thingTypeName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DetachPolicy = schema.operation({
   id = id.from("com.amazonaws.iot", "DetachPolicy"),
   input = M.DetachPolicyInput,
   output = M.DetachPolicyOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/target-policies/{policyName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DetachPrincipalPolicy = schema.operation({
   id = id.from("com.amazonaws.iot", "DetachPrincipalPolicy"),
   input = M.DetachPrincipalPolicyInput,
   output = M.DetachPrincipalPolicyOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/principal-policies/{policyName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DetachSecurityProfile = schema.operation({
   id = id.from("com.amazonaws.iot", "DetachSecurityProfile"),
   input = M.DetachSecurityProfileInput,
   output = M.DetachSecurityProfileOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/security-profiles/{securityProfileName}/targets" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DetachThingPrincipal = schema.operation({
   id = id.from("com.amazonaws.iot", "DetachThingPrincipal"),
   input = M.DetachThingPrincipalInput,
   output = M.DetachThingPrincipalOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/things/{thingName}/principals" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DisableTopicRule = schema.operation({
   id = id.from("com.amazonaws.iot", "DisableTopicRule"),
   input = M.DisableTopicRuleInput,
   output = M.DisableTopicRuleOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/rules/{ruleName}/disable" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DisassociateSbomFromPackageVersion = schema.operation({
   id = id.from("com.amazonaws.iot", "DisassociateSbomFromPackageVersion"),
   input = M.DisassociateSbomFromPackageVersionInput,
   output = M.DisassociateSbomFromPackageVersionOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/packages/{packageName}/versions/{versionName}/sbom" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.EnableTopicRule = schema.operation({
   id = id.from("com.amazonaws.iot", "EnableTopicRule"),
   input = M.EnableTopicRuleInput,
   output = M.EnableTopicRuleOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/rules/{ruleName}/enable" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetBehaviorModelTrainingSummaries = schema.operation({
   id = id.from("com.amazonaws.iot", "GetBehaviorModelTrainingSummaries"),
   input = M.GetBehaviorModelTrainingSummariesInput,
   output = M.GetBehaviorModelTrainingSummariesOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/behavior-model-training/summaries" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetBucketsAggregation = schema.operation({
   id = id.from("com.amazonaws.iot", "GetBucketsAggregation"),
   input = M.GetBucketsAggregationInput,
   output = M.GetBucketsAggregationOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/indices/buckets" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetCardinality = schema.operation({
   id = id.from("com.amazonaws.iot", "GetCardinality"),
   input = M.GetCardinalityInput,
   output = M.GetCardinalityOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/indices/cardinality" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetCommand = schema.operation({
   id = id.from("com.amazonaws.iot", "GetCommand"),
   input = M.GetCommandInput,
   output = M.GetCommandOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/commands/{commandId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetCommandExecution = schema.operation({
   id = id.from("com.amazonaws.iot", "GetCommandExecution"),
   input = M.GetCommandExecutionInput,
   output = M.GetCommandExecutionOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/command-executions/{executionId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetEffectivePolicies = schema.operation({
   id = id.from("com.amazonaws.iot", "GetEffectivePolicies"),
   input = M.GetEffectivePoliciesInput,
   output = M.GetEffectivePoliciesOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/effective-policies" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetIndexingConfiguration = schema.operation({
   id = id.from("com.amazonaws.iot", "GetIndexingConfiguration"),
   input = M.GetIndexingConfigurationInput,
   output = M.GetIndexingConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/indexing/config" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetJobDocument = schema.operation({
   id = id.from("com.amazonaws.iot", "GetJobDocument"),
   input = M.GetJobDocumentInput,
   output = M.GetJobDocumentOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/jobs/{jobId}/job-document" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetLoggingOptions = schema.operation({
   id = id.from("com.amazonaws.iot", "GetLoggingOptions"),
   input = M.GetLoggingOptionsInput,
   output = M.GetLoggingOptionsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/loggingOptions" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetOTAUpdate = schema.operation({
   id = id.from("com.amazonaws.iot", "GetOTAUpdate"),
   input = M.GetOTAUpdateInput,
   output = M.GetOTAUpdateOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/otaUpdates/{otaUpdateId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetPackage = schema.operation({
   id = id.from("com.amazonaws.iot", "GetPackage"),
   input = M.GetPackageInput,
   output = M.GetPackageOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/packages/{packageName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetPackageConfiguration = schema.operation({
   id = id.from("com.amazonaws.iot", "GetPackageConfiguration"),
   input = M.GetPackageConfigurationInput,
   output = M.GetPackageConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/package-configuration" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetPackageVersion = schema.operation({
   id = id.from("com.amazonaws.iot", "GetPackageVersion"),
   input = M.GetPackageVersionInput,
   output = M.GetPackageVersionOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/packages/{packageName}/versions/{versionName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetPercentiles = schema.operation({
   id = id.from("com.amazonaws.iot", "GetPercentiles"),
   input = M.GetPercentilesInput,
   output = M.GetPercentilesOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/indices/percentiles" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetPolicy = schema.operation({
   id = id.from("com.amazonaws.iot", "GetPolicy"),
   input = M.GetPolicyInput,
   output = M.GetPolicyOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/policies/{policyName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetPolicyVersion = schema.operation({
   id = id.from("com.amazonaws.iot", "GetPolicyVersion"),
   input = M.GetPolicyVersionInput,
   output = M.GetPolicyVersionOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/policies/{policyName}/version/{policyVersionId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetRegistrationCode = schema.operation({
   id = id.from("com.amazonaws.iot", "GetRegistrationCode"),
   input = M.GetRegistrationCodeInput,
   output = M.GetRegistrationCodeOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/registrationcode" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetStatistics = schema.operation({
   id = id.from("com.amazonaws.iot", "GetStatistics"),
   input = M.GetStatisticsInput,
   output = M.GetStatisticsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/indices/statistics" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetThingConnectivityData = schema.operation({
   id = id.from("com.amazonaws.iot", "GetThingConnectivityData"),
   input = M.GetThingConnectivityDataInput,
   output = M.GetThingConnectivityDataOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/things/{thingName}/connectivity-data" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetTopicRule = schema.operation({
   id = id.from("com.amazonaws.iot", "GetTopicRule"),
   input = M.GetTopicRuleInput,
   output = M.GetTopicRuleOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/rules/{ruleName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetTopicRuleDestination = schema.operation({
   id = id.from("com.amazonaws.iot", "GetTopicRuleDestination"),
   input = M.GetTopicRuleDestinationInput,
   output = M.GetTopicRuleDestinationOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/destinations/{arn+}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetV2LoggingOptions = schema.operation({
   id = id.from("com.amazonaws.iot", "GetV2LoggingOptions"),
   input = M.GetV2LoggingOptionsInput,
   output = M.GetV2LoggingOptionsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v2LoggingOptions" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListActiveViolations = schema.operation({
   id = id.from("com.amazonaws.iot", "ListActiveViolations"),
   input = M.ListActiveViolationsInput,
   output = M.ListActiveViolationsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/active-violations" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListAttachedPolicies = schema.operation({
   id = id.from("com.amazonaws.iot", "ListAttachedPolicies"),
   input = M.ListAttachedPoliciesInput,
   output = M.ListAttachedPoliciesOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/attached-policies/{target}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListAuditFindings = schema.operation({
   id = id.from("com.amazonaws.iot", "ListAuditFindings"),
   input = M.ListAuditFindingsInput,
   output = M.ListAuditFindingsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/audit/findings" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListAuditMitigationActionsExecutions = schema.operation({
   id = id.from("com.amazonaws.iot", "ListAuditMitigationActionsExecutions"),
   input = M.ListAuditMitigationActionsExecutionsInput,
   output = M.ListAuditMitigationActionsExecutionsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/audit/mitigationactions/executions" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListAuditMitigationActionsTasks = schema.operation({
   id = id.from("com.amazonaws.iot", "ListAuditMitigationActionsTasks"),
   input = M.ListAuditMitigationActionsTasksInput,
   output = M.ListAuditMitigationActionsTasksOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/audit/mitigationactions/tasks" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListAuditSuppressions = schema.operation({
   id = id.from("com.amazonaws.iot", "ListAuditSuppressions"),
   input = M.ListAuditSuppressionsInput,
   output = M.ListAuditSuppressionsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/audit/suppressions/list" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListAuditTasks = schema.operation({
   id = id.from("com.amazonaws.iot", "ListAuditTasks"),
   input = M.ListAuditTasksInput,
   output = M.ListAuditTasksOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/audit/tasks" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListAuthorizers = schema.operation({
   id = id.from("com.amazonaws.iot", "ListAuthorizers"),
   input = M.ListAuthorizersInput,
   output = M.ListAuthorizersOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/authorizers" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListBillingGroups = schema.operation({
   id = id.from("com.amazonaws.iot", "ListBillingGroups"),
   input = M.ListBillingGroupsInput,
   output = M.ListBillingGroupsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/billing-groups" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListCACertificates = schema.operation({
   id = id.from("com.amazonaws.iot", "ListCACertificates"),
   input = M.ListCACertificatesInput,
   output = M.ListCACertificatesOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/cacertificates" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListCertificateProviders = schema.operation({
   id = id.from("com.amazonaws.iot", "ListCertificateProviders"),
   input = M.ListCertificateProvidersInput,
   output = M.ListCertificateProvidersOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/certificate-providers" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListCertificates = schema.operation({
   id = id.from("com.amazonaws.iot", "ListCertificates"),
   input = M.ListCertificatesInput,
   output = M.ListCertificatesOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/certificates" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListCertificatesByCA = schema.operation({
   id = id.from("com.amazonaws.iot", "ListCertificatesByCA"),
   input = M.ListCertificatesByCAInput,
   output = M.ListCertificatesByCAOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/certificates-by-ca/{caCertificateId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListCommandExecutions = schema.operation({
   id = id.from("com.amazonaws.iot", "ListCommandExecutions"),
   input = M.ListCommandExecutionsInput,
   output = M.ListCommandExecutionsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/command-executions" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListCommands = schema.operation({
   id = id.from("com.amazonaws.iot", "ListCommands"),
   input = M.ListCommandsInput,
   output = M.ListCommandsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/commands" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListCustomMetrics = schema.operation({
   id = id.from("com.amazonaws.iot", "ListCustomMetrics"),
   input = M.ListCustomMetricsInput,
   output = M.ListCustomMetricsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/custom-metrics" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListDetectMitigationActionsExecutions = schema.operation({
   id = id.from("com.amazonaws.iot", "ListDetectMitigationActionsExecutions"),
   input = M.ListDetectMitigationActionsExecutionsInput,
   output = M.ListDetectMitigationActionsExecutionsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/detect/mitigationactions/executions" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListDetectMitigationActionsTasks = schema.operation({
   id = id.from("com.amazonaws.iot", "ListDetectMitigationActionsTasks"),
   input = M.ListDetectMitigationActionsTasksInput,
   output = M.ListDetectMitigationActionsTasksOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/detect/mitigationactions/tasks" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListDimensions = schema.operation({
   id = id.from("com.amazonaws.iot", "ListDimensions"),
   input = M.ListDimensionsInput,
   output = M.ListDimensionsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/dimensions" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListDomainConfigurations = schema.operation({
   id = id.from("com.amazonaws.iot", "ListDomainConfigurations"),
   input = M.ListDomainConfigurationsInput,
   output = M.ListDomainConfigurationsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/domainConfigurations" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListFleetMetrics = schema.operation({
   id = id.from("com.amazonaws.iot", "ListFleetMetrics"),
   input = M.ListFleetMetricsInput,
   output = M.ListFleetMetricsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/fleet-metrics" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListIndices = schema.operation({
   id = id.from("com.amazonaws.iot", "ListIndices"),
   input = M.ListIndicesInput,
   output = M.ListIndicesOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/indices" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListJobExecutionsForJob = schema.operation({
   id = id.from("com.amazonaws.iot", "ListJobExecutionsForJob"),
   input = M.ListJobExecutionsForJobInput,
   output = M.ListJobExecutionsForJobOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/jobs/{jobId}/things" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListJobExecutionsForThing = schema.operation({
   id = id.from("com.amazonaws.iot", "ListJobExecutionsForThing"),
   input = M.ListJobExecutionsForThingInput,
   output = M.ListJobExecutionsForThingOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/things/{thingName}/jobs" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListJobs = schema.operation({
   id = id.from("com.amazonaws.iot", "ListJobs"),
   input = M.ListJobsInput,
   output = M.ListJobsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/jobs" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListJobTemplates = schema.operation({
   id = id.from("com.amazonaws.iot", "ListJobTemplates"),
   input = M.ListJobTemplatesInput,
   output = M.ListJobTemplatesOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/job-templates" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListManagedJobTemplates = schema.operation({
   id = id.from("com.amazonaws.iot", "ListManagedJobTemplates"),
   input = M.ListManagedJobTemplatesInput,
   output = M.ListManagedJobTemplatesOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/managed-job-templates" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListMetricValues = schema.operation({
   id = id.from("com.amazonaws.iot", "ListMetricValues"),
   input = M.ListMetricValuesInput,
   output = M.ListMetricValuesOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/metric-values" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListMitigationActions = schema.operation({
   id = id.from("com.amazonaws.iot", "ListMitigationActions"),
   input = M.ListMitigationActionsInput,
   output = M.ListMitigationActionsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/mitigationactions/actions" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListOTAUpdates = schema.operation({
   id = id.from("com.amazonaws.iot", "ListOTAUpdates"),
   input = M.ListOTAUpdatesInput,
   output = M.ListOTAUpdatesOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/otaUpdates" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListOutgoingCertificates = schema.operation({
   id = id.from("com.amazonaws.iot", "ListOutgoingCertificates"),
   input = M.ListOutgoingCertificatesInput,
   output = M.ListOutgoingCertificatesOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/certificates-out-going" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListPackages = schema.operation({
   id = id.from("com.amazonaws.iot", "ListPackages"),
   input = M.ListPackagesInput,
   output = M.ListPackagesOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/packages" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListPackageVersions = schema.operation({
   id = id.from("com.amazonaws.iot", "ListPackageVersions"),
   input = M.ListPackageVersionsInput,
   output = M.ListPackageVersionsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/packages/{packageName}/versions" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListPolicies = schema.operation({
   id = id.from("com.amazonaws.iot", "ListPolicies"),
   input = M.ListPoliciesInput,
   output = M.ListPoliciesOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/policies" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListPolicyPrincipals = schema.operation({
   id = id.from("com.amazonaws.iot", "ListPolicyPrincipals"),
   input = M.ListPolicyPrincipalsInput,
   output = M.ListPolicyPrincipalsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/policy-principals" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListPolicyVersions = schema.operation({
   id = id.from("com.amazonaws.iot", "ListPolicyVersions"),
   input = M.ListPolicyVersionsInput,
   output = M.ListPolicyVersionsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/policies/{policyName}/version" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListPrincipalPolicies = schema.operation({
   id = id.from("com.amazonaws.iot", "ListPrincipalPolicies"),
   input = M.ListPrincipalPoliciesInput,
   output = M.ListPrincipalPoliciesOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/principal-policies" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListPrincipalThings = schema.operation({
   id = id.from("com.amazonaws.iot", "ListPrincipalThings"),
   input = M.ListPrincipalThingsInput,
   output = M.ListPrincipalThingsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/principals/things" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListPrincipalThingsV2 = schema.operation({
   id = id.from("com.amazonaws.iot", "ListPrincipalThingsV2"),
   input = M.ListPrincipalThingsV2Input,
   output = M.ListPrincipalThingsV2Output,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/principals/things-v2" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListProvisioningTemplates = schema.operation({
   id = id.from("com.amazonaws.iot", "ListProvisioningTemplates"),
   input = M.ListProvisioningTemplatesInput,
   output = M.ListProvisioningTemplatesOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/provisioning-templates" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListProvisioningTemplateVersions = schema.operation({
   id = id.from("com.amazonaws.iot", "ListProvisioningTemplateVersions"),
   input = M.ListProvisioningTemplateVersionsInput,
   output = M.ListProvisioningTemplateVersionsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/provisioning-templates/{templateName}/versions" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListRelatedResourcesForAuditFinding = schema.operation({
   id = id.from("com.amazonaws.iot", "ListRelatedResourcesForAuditFinding"),
   input = M.ListRelatedResourcesForAuditFindingInput,
   output = M.ListRelatedResourcesForAuditFindingOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/audit/relatedResources" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListRoleAliases = schema.operation({
   id = id.from("com.amazonaws.iot", "ListRoleAliases"),
   input = M.ListRoleAliasesInput,
   output = M.ListRoleAliasesOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/role-aliases" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListSbomValidationResults = schema.operation({
   id = id.from("com.amazonaws.iot", "ListSbomValidationResults"),
   input = M.ListSbomValidationResultsInput,
   output = M.ListSbomValidationResultsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/packages/{packageName}/versions/{versionName}/sbom-validation-results" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListScheduledAudits = schema.operation({
   id = id.from("com.amazonaws.iot", "ListScheduledAudits"),
   input = M.ListScheduledAuditsInput,
   output = M.ListScheduledAuditsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/audit/scheduledaudits" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListSecurityProfiles = schema.operation({
   id = id.from("com.amazonaws.iot", "ListSecurityProfiles"),
   input = M.ListSecurityProfilesInput,
   output = M.ListSecurityProfilesOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/security-profiles" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListSecurityProfilesForTarget = schema.operation({
   id = id.from("com.amazonaws.iot", "ListSecurityProfilesForTarget"),
   input = M.ListSecurityProfilesForTargetInput,
   output = M.ListSecurityProfilesForTargetOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/security-profiles-for-target" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListStreams = schema.operation({
   id = id.from("com.amazonaws.iot", "ListStreams"),
   input = M.ListStreamsInput,
   output = M.ListStreamsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/streams" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListTagsForResource = schema.operation({
   id = id.from("com.amazonaws.iot", "ListTagsForResource"),
   input = M.ListTagsForResourceInput,
   output = M.ListTagsForResourceOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/tags" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListTargetsForPolicy = schema.operation({
   id = id.from("com.amazonaws.iot", "ListTargetsForPolicy"),
   input = M.ListTargetsForPolicyInput,
   output = M.ListTargetsForPolicyOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/policy-targets/{policyName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListTargetsForSecurityProfile = schema.operation({
   id = id.from("com.amazonaws.iot", "ListTargetsForSecurityProfile"),
   input = M.ListTargetsForSecurityProfileInput,
   output = M.ListTargetsForSecurityProfileOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/security-profiles/{securityProfileName}/targets" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListThingGroups = schema.operation({
   id = id.from("com.amazonaws.iot", "ListThingGroups"),
   input = M.ListThingGroupsInput,
   output = M.ListThingGroupsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/thing-groups" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListThingGroupsForThing = schema.operation({
   id = id.from("com.amazonaws.iot", "ListThingGroupsForThing"),
   input = M.ListThingGroupsForThingInput,
   output = M.ListThingGroupsForThingOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/things/{thingName}/thing-groups" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListThingPrincipals = schema.operation({
   id = id.from("com.amazonaws.iot", "ListThingPrincipals"),
   input = M.ListThingPrincipalsInput,
   output = M.ListThingPrincipalsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/things/{thingName}/principals" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListThingPrincipalsV2 = schema.operation({
   id = id.from("com.amazonaws.iot", "ListThingPrincipalsV2"),
   input = M.ListThingPrincipalsV2Input,
   output = M.ListThingPrincipalsV2Output,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/things/{thingName}/principals-v2" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListThingRegistrationTaskReports = schema.operation({
   id = id.from("com.amazonaws.iot", "ListThingRegistrationTaskReports"),
   input = M.ListThingRegistrationTaskReportsInput,
   output = M.ListThingRegistrationTaskReportsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/thing-registration-tasks/{taskId}/reports" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListThingRegistrationTasks = schema.operation({
   id = id.from("com.amazonaws.iot", "ListThingRegistrationTasks"),
   input = M.ListThingRegistrationTasksInput,
   output = M.ListThingRegistrationTasksOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/thing-registration-tasks" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListThings = schema.operation({
   id = id.from("com.amazonaws.iot", "ListThings"),
   input = M.ListThingsInput,
   output = M.ListThingsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/things" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListThingsInBillingGroup = schema.operation({
   id = id.from("com.amazonaws.iot", "ListThingsInBillingGroup"),
   input = M.ListThingsInBillingGroupInput,
   output = M.ListThingsInBillingGroupOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/billing-groups/{billingGroupName}/things" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListThingsInThingGroup = schema.operation({
   id = id.from("com.amazonaws.iot", "ListThingsInThingGroup"),
   input = M.ListThingsInThingGroupInput,
   output = M.ListThingsInThingGroupOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/thing-groups/{thingGroupName}/things" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListThingTypes = schema.operation({
   id = id.from("com.amazonaws.iot", "ListThingTypes"),
   input = M.ListThingTypesInput,
   output = M.ListThingTypesOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/thing-types" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListTopicRuleDestinations = schema.operation({
   id = id.from("com.amazonaws.iot", "ListTopicRuleDestinations"),
   input = M.ListTopicRuleDestinationsInput,
   output = M.ListTopicRuleDestinationsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/destinations" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListTopicRules = schema.operation({
   id = id.from("com.amazonaws.iot", "ListTopicRules"),
   input = M.ListTopicRulesInput,
   output = M.ListTopicRulesOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/rules" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListV2LoggingLevels = schema.operation({
   id = id.from("com.amazonaws.iot", "ListV2LoggingLevels"),
   input = M.ListV2LoggingLevelsInput,
   output = M.ListV2LoggingLevelsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v2LoggingLevel" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListViolationEvents = schema.operation({
   id = id.from("com.amazonaws.iot", "ListViolationEvents"),
   input = M.ListViolationEventsInput,
   output = M.ListViolationEventsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/violation-events" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.PutVerificationStateOnViolation = schema.operation({
   id = id.from("com.amazonaws.iot", "PutVerificationStateOnViolation"),
   input = M.PutVerificationStateOnViolationInput,
   output = M.PutVerificationStateOnViolationOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/violations/verification-state/{violationId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.RegisterCACertificate = schema.operation({
   id = id.from("com.amazonaws.iot", "RegisterCACertificate"),
   input = M.RegisterCACertificateInput,
   output = M.RegisterCACertificateOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/cacertificate" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.RegisterCertificate = schema.operation({
   id = id.from("com.amazonaws.iot", "RegisterCertificate"),
   input = M.RegisterCertificateInput,
   output = M.RegisterCertificateOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/certificate/register" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.RegisterCertificateWithoutCA = schema.operation({
   id = id.from("com.amazonaws.iot", "RegisterCertificateWithoutCA"),
   input = M.RegisterCertificateWithoutCAInput,
   output = M.RegisterCertificateWithoutCAOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/certificate/register-no-ca" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.RegisterThing = schema.operation({
   id = id.from("com.amazonaws.iot", "RegisterThing"),
   input = M.RegisterThingInput,
   output = M.RegisterThingOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/things" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.RejectCertificateTransfer = schema.operation({
   id = id.from("com.amazonaws.iot", "RejectCertificateTransfer"),
   input = M.RejectCertificateTransferInput,
   output = M.RejectCertificateTransferOutput,
   traits = {
      [traits.HTTP] = { method = "PATCH", path = "/reject-certificate-transfer/{certificateId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.RemoveThingFromBillingGroup = schema.operation({
   id = id.from("com.amazonaws.iot", "RemoveThingFromBillingGroup"),
   input = M.RemoveThingFromBillingGroupInput,
   output = M.RemoveThingFromBillingGroupOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/billing-groups/removeThingFromBillingGroup" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.RemoveThingFromThingGroup = schema.operation({
   id = id.from("com.amazonaws.iot", "RemoveThingFromThingGroup"),
   input = M.RemoveThingFromThingGroupInput,
   output = M.RemoveThingFromThingGroupOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/thing-groups/removeThingFromThingGroup" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ReplaceTopicRule = schema.operation({
   id = id.from("com.amazonaws.iot", "ReplaceTopicRule"),
   input = M.ReplaceTopicRuleInput,
   output = M.ReplaceTopicRuleOutput,
   traits = {
      [traits.HTTP] = { method = "PATCH", path = "/rules/{ruleName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.SearchIndex = schema.operation({
   id = id.from("com.amazonaws.iot", "SearchIndex"),
   input = M.SearchIndexInput,
   output = M.SearchIndexOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/indices/search" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.SetDefaultAuthorizer = schema.operation({
   id = id.from("com.amazonaws.iot", "SetDefaultAuthorizer"),
   input = M.SetDefaultAuthorizerInput,
   output = M.SetDefaultAuthorizerOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/default-authorizer" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.SetDefaultPolicyVersion = schema.operation({
   id = id.from("com.amazonaws.iot", "SetDefaultPolicyVersion"),
   input = M.SetDefaultPolicyVersionInput,
   output = M.SetDefaultPolicyVersionOutput,
   traits = {
      [traits.HTTP] = { method = "PATCH", path = "/policies/{policyName}/version/{policyVersionId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.SetLoggingOptions = schema.operation({
   id = id.from("com.amazonaws.iot", "SetLoggingOptions"),
   input = M.SetLoggingOptionsInput,
   output = M.SetLoggingOptionsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/loggingOptions" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.SetV2LoggingLevel = schema.operation({
   id = id.from("com.amazonaws.iot", "SetV2LoggingLevel"),
   input = M.SetV2LoggingLevelInput,
   output = M.SetV2LoggingLevelOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/v2LoggingLevel" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.SetV2LoggingOptions = schema.operation({
   id = id.from("com.amazonaws.iot", "SetV2LoggingOptions"),
   input = M.SetV2LoggingOptionsInput,
   output = M.SetV2LoggingOptionsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/v2LoggingOptions" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StartAuditMitigationActionsTask = schema.operation({
   id = id.from("com.amazonaws.iot", "StartAuditMitigationActionsTask"),
   input = M.StartAuditMitigationActionsTaskInput,
   output = M.StartAuditMitigationActionsTaskOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/audit/mitigationactions/tasks/{taskId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StartDetectMitigationActionsTask = schema.operation({
   id = id.from("com.amazonaws.iot", "StartDetectMitigationActionsTask"),
   input = M.StartDetectMitigationActionsTaskInput,
   output = M.StartDetectMitigationActionsTaskOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/detect/mitigationactions/tasks/{taskId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StartOnDemandAuditTask = schema.operation({
   id = id.from("com.amazonaws.iot", "StartOnDemandAuditTask"),
   input = M.StartOnDemandAuditTaskInput,
   output = M.StartOnDemandAuditTaskOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/audit/tasks" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StartThingRegistrationTask = schema.operation({
   id = id.from("com.amazonaws.iot", "StartThingRegistrationTask"),
   input = M.StartThingRegistrationTaskInput,
   output = M.StartThingRegistrationTaskOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/thing-registration-tasks" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StopThingRegistrationTask = schema.operation({
   id = id.from("com.amazonaws.iot", "StopThingRegistrationTask"),
   input = M.StopThingRegistrationTaskInput,
   output = M.StopThingRegistrationTaskOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/thing-registration-tasks/{taskId}/cancel" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.TagResource = schema.operation({
   id = id.from("com.amazonaws.iot", "TagResource"),
   input = M.TagResourceInput,
   output = M.TagResourceOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/tags" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.TestAuthorization = schema.operation({
   id = id.from("com.amazonaws.iot", "TestAuthorization"),
   input = M.TestAuthorizationInput,
   output = M.TestAuthorizationOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/test-authorization" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.TestInvokeAuthorizer = schema.operation({
   id = id.from("com.amazonaws.iot", "TestInvokeAuthorizer"),
   input = M.TestInvokeAuthorizerInput,
   output = M.TestInvokeAuthorizerOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/authorizer/{authorizerName}/test" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.TransferCertificate = schema.operation({
   id = id.from("com.amazonaws.iot", "TransferCertificate"),
   input = M.TransferCertificateInput,
   output = M.TransferCertificateOutput,
   traits = {
      [traits.HTTP] = { method = "PATCH", path = "/transfer-certificate/{certificateId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UntagResource = schema.operation({
   id = id.from("com.amazonaws.iot", "UntagResource"),
   input = M.UntagResourceInput,
   output = M.UntagResourceOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/untag" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateAccountAuditConfiguration = schema.operation({
   id = id.from("com.amazonaws.iot", "UpdateAccountAuditConfiguration"),
   input = M.UpdateAccountAuditConfigurationInput,
   output = M.UpdateAccountAuditConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "PATCH", path = "/audit/configuration" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateAuditSuppression = schema.operation({
   id = id.from("com.amazonaws.iot", "UpdateAuditSuppression"),
   input = M.UpdateAuditSuppressionInput,
   output = M.UpdateAuditSuppressionOutput,
   traits = {
      [traits.HTTP] = { method = "PATCH", path = "/audit/suppressions/update" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateAuthorizer = schema.operation({
   id = id.from("com.amazonaws.iot", "UpdateAuthorizer"),
   input = M.UpdateAuthorizerInput,
   output = M.UpdateAuthorizerOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/authorizer/{authorizerName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateBillingGroup = schema.operation({
   id = id.from("com.amazonaws.iot", "UpdateBillingGroup"),
   input = M.UpdateBillingGroupInput,
   output = M.UpdateBillingGroupOutput,
   traits = {
      [traits.HTTP] = { method = "PATCH", path = "/billing-groups/{billingGroupName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateCACertificate = schema.operation({
   id = id.from("com.amazonaws.iot", "UpdateCACertificate"),
   input = M.UpdateCACertificateInput,
   output = M.UpdateCACertificateOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/cacertificate/{certificateId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateCertificate = schema.operation({
   id = id.from("com.amazonaws.iot", "UpdateCertificate"),
   input = M.UpdateCertificateInput,
   output = M.UpdateCertificateOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/certificates/{certificateId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateCertificateProvider = schema.operation({
   id = id.from("com.amazonaws.iot", "UpdateCertificateProvider"),
   input = M.UpdateCertificateProviderInput,
   output = M.UpdateCertificateProviderOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/certificate-providers/{certificateProviderName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateCommand = schema.operation({
   id = id.from("com.amazonaws.iot", "UpdateCommand"),
   input = M.UpdateCommandInput,
   output = M.UpdateCommandOutput,
   traits = {
      [traits.HTTP] = { method = "PATCH", path = "/commands/{commandId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateCustomMetric = schema.operation({
   id = id.from("com.amazonaws.iot", "UpdateCustomMetric"),
   input = M.UpdateCustomMetricInput,
   output = M.UpdateCustomMetricOutput,
   traits = {
      [traits.HTTP] = { method = "PATCH", path = "/custom-metric/{metricName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateDimension = schema.operation({
   id = id.from("com.amazonaws.iot", "UpdateDimension"),
   input = M.UpdateDimensionInput,
   output = M.UpdateDimensionOutput,
   traits = {
      [traits.HTTP] = { method = "PATCH", path = "/dimensions/{name}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateDomainConfiguration = schema.operation({
   id = id.from("com.amazonaws.iot", "UpdateDomainConfiguration"),
   input = M.UpdateDomainConfigurationInput,
   output = M.UpdateDomainConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/domainConfigurations/{domainConfigurationName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateDynamicThingGroup = schema.operation({
   id = id.from("com.amazonaws.iot", "UpdateDynamicThingGroup"),
   input = M.UpdateDynamicThingGroupInput,
   output = M.UpdateDynamicThingGroupOutput,
   traits = {
      [traits.HTTP] = { method = "PATCH", path = "/dynamic-thing-groups/{thingGroupName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateEncryptionConfiguration = schema.operation({
   id = id.from("com.amazonaws.iot", "UpdateEncryptionConfiguration"),
   input = M.UpdateEncryptionConfigurationInput,
   output = M.UpdateEncryptionConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "PATCH", path = "/encryption-configuration" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateEventConfigurations = schema.operation({
   id = id.from("com.amazonaws.iot", "UpdateEventConfigurations"),
   input = M.UpdateEventConfigurationsInput,
   output = M.UpdateEventConfigurationsOutput,
   traits = {
      [traits.HTTP] = { method = "PATCH", path = "/event-configurations" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateFleetMetric = schema.operation({
   id = id.from("com.amazonaws.iot", "UpdateFleetMetric"),
   input = M.UpdateFleetMetricInput,
   output = M.UpdateFleetMetricOutput,
   traits = {
      [traits.HTTP] = { method = "PATCH", path = "/fleet-metric/{metricName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateIndexingConfiguration = schema.operation({
   id = id.from("com.amazonaws.iot", "UpdateIndexingConfiguration"),
   input = M.UpdateIndexingConfigurationInput,
   output = M.UpdateIndexingConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/indexing/config" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateJob = schema.operation({
   id = id.from("com.amazonaws.iot", "UpdateJob"),
   input = M.UpdateJobInput,
   output = M.UpdateJobOutput,
   traits = {
      [traits.HTTP] = { method = "PATCH", path = "/jobs/{jobId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateMitigationAction = schema.operation({
   id = id.from("com.amazonaws.iot", "UpdateMitigationAction"),
   input = M.UpdateMitigationActionInput,
   output = M.UpdateMitigationActionOutput,
   traits = {
      [traits.HTTP] = { method = "PATCH", path = "/mitigationactions/actions/{actionName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdatePackage = schema.operation({
   id = id.from("com.amazonaws.iot", "UpdatePackage"),
   input = M.UpdatePackageInput,
   output = M.UpdatePackageOutput,
   traits = {
      [traits.HTTP] = { method = "PATCH", path = "/packages/{packageName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdatePackageConfiguration = schema.operation({
   id = id.from("com.amazonaws.iot", "UpdatePackageConfiguration"),
   input = M.UpdatePackageConfigurationInput,
   output = M.UpdatePackageConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "PATCH", path = "/package-configuration" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdatePackageVersion = schema.operation({
   id = id.from("com.amazonaws.iot", "UpdatePackageVersion"),
   input = M.UpdatePackageVersionInput,
   output = M.UpdatePackageVersionOutput,
   traits = {
      [traits.HTTP] = { method = "PATCH", path = "/packages/{packageName}/versions/{versionName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateProvisioningTemplate = schema.operation({
   id = id.from("com.amazonaws.iot", "UpdateProvisioningTemplate"),
   input = M.UpdateProvisioningTemplateInput,
   output = M.UpdateProvisioningTemplateOutput,
   traits = {
      [traits.HTTP] = { method = "PATCH", path = "/provisioning-templates/{templateName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateRoleAlias = schema.operation({
   id = id.from("com.amazonaws.iot", "UpdateRoleAlias"),
   input = M.UpdateRoleAliasInput,
   output = M.UpdateRoleAliasOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/role-aliases/{roleAlias}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateScheduledAudit = schema.operation({
   id = id.from("com.amazonaws.iot", "UpdateScheduledAudit"),
   input = M.UpdateScheduledAuditInput,
   output = M.UpdateScheduledAuditOutput,
   traits = {
      [traits.HTTP] = { method = "PATCH", path = "/audit/scheduledaudits/{scheduledAuditName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateSecurityProfile = schema.operation({
   id = id.from("com.amazonaws.iot", "UpdateSecurityProfile"),
   input = M.UpdateSecurityProfileInput,
   output = M.UpdateSecurityProfileOutput,
   traits = {
      [traits.HTTP] = { method = "PATCH", path = "/security-profiles/{securityProfileName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateStream = schema.operation({
   id = id.from("com.amazonaws.iot", "UpdateStream"),
   input = M.UpdateStreamInput,
   output = M.UpdateStreamOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/streams/{streamId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateThing = schema.operation({
   id = id.from("com.amazonaws.iot", "UpdateThing"),
   input = M.UpdateThingInput,
   output = M.UpdateThingOutput,
   traits = {
      [traits.HTTP] = { method = "PATCH", path = "/things/{thingName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateThingGroup = schema.operation({
   id = id.from("com.amazonaws.iot", "UpdateThingGroup"),
   input = M.UpdateThingGroupInput,
   output = M.UpdateThingGroupOutput,
   traits = {
      [traits.HTTP] = { method = "PATCH", path = "/thing-groups/{thingGroupName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateThingGroupsForThing = schema.operation({
   id = id.from("com.amazonaws.iot", "UpdateThingGroupsForThing"),
   input = M.UpdateThingGroupsForThingInput,
   output = M.UpdateThingGroupsForThingOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/thing-groups/updateThingGroupsForThing" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateThingType = schema.operation({
   id = id.from("com.amazonaws.iot", "UpdateThingType"),
   input = M.UpdateThingTypeInput,
   output = M.UpdateThingTypeOutput,
   traits = {
      [traits.HTTP] = { method = "PATCH", path = "/thing-types/{thingTypeName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateTopicRuleDestination = schema.operation({
   id = id.from("com.amazonaws.iot", "UpdateTopicRuleDestination"),
   input = M.UpdateTopicRuleDestinationInput,
   output = M.UpdateTopicRuleDestinationOutput,
   traits = {
      [traits.HTTP] = { method = "PATCH", path = "/destinations" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ValidateSecurityProfileBehaviors = schema.operation({
   id = id.from("com.amazonaws.iot", "ValidateSecurityProfileBehaviors"),
   input = M.ValidateSecurityProfileBehaviorsInput,
   output = M.ValidateSecurityProfileBehaviorsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/security-profile-behaviors/validate" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

return M
