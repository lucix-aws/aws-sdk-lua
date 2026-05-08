

local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.emrserverless"

local M = {}

M.TagMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.TagKeyList = schema.new({ type = "list", list_member = prelude.String })

M.ApplicationStateSet = schema.new({ type = "list", list_member = prelude.String })

M.ApplicationList = schema.new({ type = "list", list_member = M.ApplicationSummary })

M.InitialCapacityConfigMap = schema.new({ type = "map", map_key = prelude.String, map_value = M.InitialCapacityConfig })

M.WorkerTypeSpecificationInputMap = schema.new({ type = "map", map_key = prelude.String, map_value = M.WorkerTypeSpecificationInput })

M.ConfigurationList = schema.new({ type = "list", list_member = M.Configuration })

M.JobRunStateSet = schema.new({ type = "list", list_member = prelude.String })

M.JobRuns = schema.new({ type = "list", list_member = M.JobRunSummary })

M.JobRunAttempts = schema.new({ type = "list", list_member = M.JobRunAttemptSummary })

M.SessionStateSet = schema.new({ type = "list", list_member = prelude.String })

M.Sessions = schema.new({ type = "list", list_member = M.SessionSummary })

M.SubnetIds = schema.new({ type = "list", list_member = prelude.String })

M.SecurityGroupIds = schema.new({ type = "list", list_member = prelude.String })

M.EncryptionContext = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.WorkerTypeSpecificationMap = schema.new({ type = "map", map_key = prelude.String, map_value = M.WorkerTypeSpecification })

M.PolicyArnList = schema.new({ type = "list", list_member = prelude.String })

M.SensitivePropertiesMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.LogTypeMap = schema.new({ type = "map", map_key = prelude.String, map_value = M.LogTypeList })

M.EntryPointArguments = schema.new({ type = "list", list_member = prelude.String })

M.LogTypeList = schema.new({ type = "list", list_member = prelude.String })

M.AutoStartConfig = schema.new({
   id = id.from(_N, "AutoStartConfig"),
   type = "structure",
   members = {
      enabled = schema.new({
         id = id.from(_N, "AutoStartConfig", "enabled"),
         type = "boolean",
         name = "enabled",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.AutoStopConfig = schema.new({
   id = id.from(_N, "AutoStopConfig"),
   type = "structure",
   members = {
      enabled = schema.new({
         id = id.from(_N, "AutoStopConfig", "enabled"),
         type = "boolean",
         name = "enabled",
         target_id = prelude.Boolean.id,
      }),
      idleTimeoutMinutes = schema.new({
         id = id.from(_N, "AutoStopConfig", "idleTimeoutMinutes"),
         type = "integer",
         name = "idleTimeoutMinutes",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = nil },
         },
      }),
   },
})

M.DiskEncryptionConfiguration = schema.new({
   id = id.from(_N, "DiskEncryptionConfiguration"),
   type = "structure",
   members = {
      encryptionContext = schema.new({
         id = id.from(_N, "DiskEncryptionConfiguration", "encryptionContext"),
         type = "map",
         name = "encryptionContext",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      encryptionKeyArn = schema.new({
         id = id.from(_N, "DiskEncryptionConfiguration", "encryptionKeyArn"),
         type = "string",
         name = "encryptionKeyArn",
         target_id = prelude.String.id,
      }),
   },
})

M.IdentityCenterConfiguration = schema.new({
   id = id.from(_N, "IdentityCenterConfiguration"),
   type = "structure",
   members = {
      identityCenterInstanceArn = schema.new({
         id = id.from(_N, "IdentityCenterConfiguration", "identityCenterInstanceArn"),
         type = "string",
         name = "identityCenterInstanceArn",
         target_id = prelude.String.id,
      }),
      identityCenterApplicationArn = schema.new({
         id = id.from(_N, "IdentityCenterConfiguration", "identityCenterApplicationArn"),
         type = "string",
         name = "identityCenterApplicationArn",
         target_id = prelude.String.id,
      }),
      userBackgroundSessionsEnabled = schema.new({
         id = id.from(_N, "IdentityCenterConfiguration", "userBackgroundSessionsEnabled"),
         type = "boolean",
         name = "userBackgroundSessionsEnabled",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.ImageConfiguration = schema.new({
   id = id.from(_N, "ImageConfiguration"),
   type = "structure",
   members = {
      imageUri = schema.new({
         id = id.from(_N, "ImageConfiguration", "imageUri"),
         type = "string",
         name = "imageUri",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      resolvedImageDigest = schema.new({
         id = id.from(_N, "ImageConfiguration", "resolvedImageDigest"),
         type = "string",
         name = "resolvedImageDigest",
         target_id = prelude.String.id,
      }),
   },
})

M.WorkerResourceConfig = schema.new({
   id = id.from(_N, "WorkerResourceConfig"),
   type = "structure",
   members = {
      cpu = schema.new({
         id = id.from(_N, "WorkerResourceConfig", "cpu"),
         type = "string",
         name = "cpu",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      memory = schema.new({
         id = id.from(_N, "WorkerResourceConfig", "memory"),
         type = "string",
         name = "memory",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      disk = schema.new({
         id = id.from(_N, "WorkerResourceConfig", "disk"),
         type = "string",
         name = "disk",
         target_id = prelude.String.id,
      }),
      diskType = schema.new({
         id = id.from(_N, "WorkerResourceConfig", "diskType"),
         type = "string",
         name = "diskType",
         target_id = prelude.String.id,
      }),
   },
})

M.InitialCapacityConfig = schema.new({
   id = id.from(_N, "InitialCapacityConfig"),
   type = "structure",
   members = {
      workerCount = schema.new({
         id = id.from(_N, "InitialCapacityConfig", "workerCount"),
         type = "long",
         name = "workerCount",
         target_id = prelude.Long.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      workerConfiguration = schema.new({
         id = id.from(_N, "InitialCapacityConfig", "workerConfiguration"),
         type = "structure",
         name = "workerConfiguration",
         target_id = id.from(_N, "WorkerResourceConfig"),
         target = M.WorkerResourceConfig,
      }),
   },
})

M.InteractiveConfiguration = schema.new({
   id = id.from(_N, "InteractiveConfiguration"),
   type = "structure",
   members = {
      studioEnabled = schema.new({
         id = id.from(_N, "InteractiveConfiguration", "studioEnabled"),
         type = "boolean",
         name = "studioEnabled",
         target_id = prelude.Boolean.id,
      }),
      livyEndpointEnabled = schema.new({
         id = id.from(_N, "InteractiveConfiguration", "livyEndpointEnabled"),
         type = "boolean",
         name = "livyEndpointEnabled",
         target_id = prelude.Boolean.id,
      }),
      sessionEnabled = schema.new({
         id = id.from(_N, "InteractiveConfiguration", "sessionEnabled"),
         type = "boolean",
         name = "sessionEnabled",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.JobLevelCostAllocationConfiguration = schema.new({
   id = id.from(_N, "JobLevelCostAllocationConfiguration"),
   type = "structure",
   members = {
      enabled = schema.new({
         id = id.from(_N, "JobLevelCostAllocationConfiguration", "enabled"),
         type = "boolean",
         name = "enabled",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.MaximumAllowedResources = schema.new({
   id = id.from(_N, "MaximumAllowedResources"),
   type = "structure",
   members = {
      cpu = schema.new({
         id = id.from(_N, "MaximumAllowedResources", "cpu"),
         type = "string",
         name = "cpu",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      memory = schema.new({
         id = id.from(_N, "MaximumAllowedResources", "memory"),
         type = "string",
         name = "memory",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      disk = schema.new({
         id = id.from(_N, "MaximumAllowedResources", "disk"),
         type = "string",
         name = "disk",
         target_id = prelude.String.id,
      }),
   },
})

M.CloudWatchLoggingConfiguration = schema.new({
   id = id.from(_N, "CloudWatchLoggingConfiguration"),
   type = "structure",
   members = {
      enabled = schema.new({
         id = id.from(_N, "CloudWatchLoggingConfiguration", "enabled"),
         type = "boolean",
         name = "enabled",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      logGroupName = schema.new({
         id = id.from(_N, "CloudWatchLoggingConfiguration", "logGroupName"),
         type = "string",
         name = "logGroupName",
         target_id = prelude.String.id,
      }),
      logStreamNamePrefix = schema.new({
         id = id.from(_N, "CloudWatchLoggingConfiguration", "logStreamNamePrefix"),
         type = "string",
         name = "logStreamNamePrefix",
         target_id = prelude.String.id,
      }),
      encryptionKeyArn = schema.new({
         id = id.from(_N, "CloudWatchLoggingConfiguration", "encryptionKeyArn"),
         type = "string",
         name = "encryptionKeyArn",
         target_id = prelude.String.id,
      }),
      logTypes = schema.new({
         id = id.from(_N, "CloudWatchLoggingConfiguration", "logTypes"),
         type = "map",
         name = "logTypes",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = schema.new({ type = "list", list_member = prelude.String }),
      }),
   },
})

M.ManagedPersistenceMonitoringConfiguration = schema.new({
   id = id.from(_N, "ManagedPersistenceMonitoringConfiguration"),
   type = "structure",
   members = {
      enabled = schema.new({
         id = id.from(_N, "ManagedPersistenceMonitoringConfiguration", "enabled"),
         type = "boolean",
         name = "enabled",
         target_id = prelude.Boolean.id,
      }),
      encryptionKeyArn = schema.new({
         id = id.from(_N, "ManagedPersistenceMonitoringConfiguration", "encryptionKeyArn"),
         type = "string",
         name = "encryptionKeyArn",
         target_id = prelude.String.id,
      }),
   },
})

M.PrometheusMonitoringConfiguration = schema.new({
   id = id.from(_N, "PrometheusMonitoringConfiguration"),
   type = "structure",
   members = {
      remoteWriteUrl = schema.new({
         id = id.from(_N, "PrometheusMonitoringConfiguration", "remoteWriteUrl"),
         type = "string",
         name = "remoteWriteUrl",
         target_id = prelude.String.id,
      }),
   },
})

M.S3MonitoringConfiguration = schema.new({
   id = id.from(_N, "S3MonitoringConfiguration"),
   type = "structure",
   members = {
      logUri = schema.new({
         id = id.from(_N, "S3MonitoringConfiguration", "logUri"),
         type = "string",
         name = "logUri",
         target_id = prelude.String.id,
      }),
      encryptionKeyArn = schema.new({
         id = id.from(_N, "S3MonitoringConfiguration", "encryptionKeyArn"),
         type = "string",
         name = "encryptionKeyArn",
         target_id = prelude.String.id,
      }),
   },
})

M.MonitoringConfiguration = schema.new({
   id = id.from(_N, "MonitoringConfiguration"),
   type = "structure",
   members = {
      s3MonitoringConfiguration = schema.new({
         id = id.from(_N, "MonitoringConfiguration", "s3MonitoringConfiguration"),
         type = "structure",
         name = "s3MonitoringConfiguration",
         target_id = id.from(_N, "S3MonitoringConfiguration"),
         target = M.S3MonitoringConfiguration,
      }),
      managedPersistenceMonitoringConfiguration = schema.new({
         id = id.from(_N, "MonitoringConfiguration", "managedPersistenceMonitoringConfiguration"),
         type = "structure",
         name = "managedPersistenceMonitoringConfiguration",
         target_id = id.from(_N, "ManagedPersistenceMonitoringConfiguration"),
         target = M.ManagedPersistenceMonitoringConfiguration,
      }),
      cloudWatchLoggingConfiguration = schema.new({
         id = id.from(_N, "MonitoringConfiguration", "cloudWatchLoggingConfiguration"),
         type = "structure",
         name = "cloudWatchLoggingConfiguration",
         target_id = id.from(_N, "CloudWatchLoggingConfiguration"),
         target = M.CloudWatchLoggingConfiguration,
      }),
      prometheusMonitoringConfiguration = schema.new({
         id = id.from(_N, "MonitoringConfiguration", "prometheusMonitoringConfiguration"),
         type = "structure",
         name = "prometheusMonitoringConfiguration",
         target_id = id.from(_N, "PrometheusMonitoringConfiguration"),
         target = M.PrometheusMonitoringConfiguration,
      }),
   },
})

M.NetworkConfiguration = schema.new({
   id = id.from(_N, "NetworkConfiguration"),
   type = "structure",
   members = {
      subnetIds = schema.new({
         id = id.from(_N, "NetworkConfiguration", "subnetIds"),
         type = "list",
         name = "subnetIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      securityGroupIds = schema.new({
         id = id.from(_N, "NetworkConfiguration", "securityGroupIds"),
         type = "list",
         name = "securityGroupIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.SchedulerConfiguration = schema.new({
   id = id.from(_N, "SchedulerConfiguration"),
   type = "structure",
   members = {
      queueTimeoutMinutes = schema.new({
         id = id.from(_N, "SchedulerConfiguration", "queueTimeoutMinutes"),
         type = "integer",
         name = "queueTimeoutMinutes",
         target_id = prelude.Integer.id,
      }),
      maxConcurrentRuns = schema.new({
         id = id.from(_N, "SchedulerConfiguration", "maxConcurrentRuns"),
         type = "integer",
         name = "maxConcurrentRuns",
         target_id = prelude.Integer.id,
      }),
   },
})

M.WorkerTypeSpecification = schema.new({
   id = id.from(_N, "WorkerTypeSpecification"),
   type = "structure",
   members = {
      imageConfiguration = schema.new({
         id = id.from(_N, "WorkerTypeSpecification", "imageConfiguration"),
         type = "structure",
         name = "imageConfiguration",
         target_id = id.from(_N, "ImageConfiguration"),
         target = M.ImageConfiguration,
      }),
   },
})

M.ApplicationSummary = schema.new({
   id = id.from(_N, "ApplicationSummary"),
   type = "structure",
   members = {
      id = schema.new({
         id = id.from(_N, "ApplicationSummary", "id"),
         type = "string",
         name = "id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "ApplicationSummary", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      arn = schema.new({
         id = id.from(_N, "ApplicationSummary", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      releaseLabel = schema.new({
         id = id.from(_N, "ApplicationSummary", "releaseLabel"),
         type = "string",
         name = "releaseLabel",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      type = schema.new({
         id = id.from(_N, "ApplicationSummary", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      state = schema.new({
         id = id.from(_N, "ApplicationSummary", "state"),
         type = "string",
         name = "state",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      stateDetails = schema.new({
         id = id.from(_N, "ApplicationSummary", "stateDetails"),
         type = "string",
         name = "stateDetails",
         target_id = prelude.String.id,
      }),
      createdAt = schema.new({
         id = id.from(_N, "ApplicationSummary", "createdAt"),
         type = "timestamp",
         name = "createdAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      updatedAt = schema.new({
         id = id.from(_N, "ApplicationSummary", "updatedAt"),
         type = "timestamp",
         name = "updatedAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      architecture = schema.new({
         id = id.from(_N, "ApplicationSummary", "architecture"),
         type = "string",
         name = "architecture",
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

M.IdentityCenterConfigurationInput = schema.new({
   id = id.from(_N, "IdentityCenterConfigurationInput"),
   type = "structure",
   members = {
      identityCenterInstanceArn = schema.new({
         id = id.from(_N, "IdentityCenterConfigurationInput", "identityCenterInstanceArn"),
         type = "string",
         name = "identityCenterInstanceArn",
         target_id = prelude.String.id,
      }),
      userBackgroundSessionsEnabled = schema.new({
         id = id.from(_N, "IdentityCenterConfigurationInput", "userBackgroundSessionsEnabled"),
         type = "boolean",
         name = "userBackgroundSessionsEnabled",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.ImageConfigurationInput = schema.new({
   id = id.from(_N, "ImageConfigurationInput"),
   type = "structure",
   members = {
      imageUri = schema.new({
         id = id.from(_N, "ImageConfigurationInput", "imageUri"),
         type = "string",
         name = "imageUri",
         target_id = prelude.String.id,
      }),
   },
})

M.WorkerTypeSpecificationInput = schema.new({
   id = id.from(_N, "WorkerTypeSpecificationInput"),
   type = "structure",
   members = {
      imageConfiguration = schema.new({
         id = id.from(_N, "WorkerTypeSpecificationInput", "imageConfiguration"),
         type = "structure",
         name = "imageConfiguration",
         target_id = id.from(_N, "ImageConfigurationInput"),
         target = M.ImageConfigurationInput,
      }),
   },
})

M.CreateApplicationOutput = schema.new({
   id = id.from(_N, "CreateApplicationResponse"),
   type = "structure",
   members = {
      applicationId = schema.new({
         id = id.from(_N, "CreateApplicationOutput", "applicationId"),
         type = "string",
         name = "applicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "CreateApplicationOutput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      arn = schema.new({
         id = id.from(_N, "CreateApplicationOutput", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
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

M.DeleteApplicationInput = schema.new({
   id = id.from(_N, "DeleteApplicationRequest"),
   type = "structure",
   members = {
      applicationId = schema.new({
         id = id.from(_N, "DeleteApplicationInput", "applicationId"),
         type = "string",
         name = "applicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteApplicationOutput = schema.new({
   id = id.from(_N, "DeleteApplicationResponse"),
   type = "structure",
})

M.GetApplicationInput = schema.new({
   id = id.from(_N, "GetApplicationRequest"),
   type = "structure",
   members = {
      applicationId = schema.new({
         id = id.from(_N, "GetApplicationInput", "applicationId"),
         type = "string",
         name = "applicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetResourceDashboardInput = schema.new({
   id = id.from(_N, "GetResourceDashboardRequest"),
   type = "structure",
   members = {
      applicationId = schema.new({
         id = id.from(_N, "GetResourceDashboardInput", "applicationId"),
         type = "string",
         name = "applicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      resourceId = schema.new({
         id = id.from(_N, "GetResourceDashboardInput", "resourceId"),
         type = "string",
         name = "resourceId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "resourceId" },
         },
      }),
      resourceType = schema.new({
         id = id.from(_N, "GetResourceDashboardInput", "resourceType"),
         type = "string",
         name = "resourceType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "resourceType" },
         },
      }),
   },
})

M.GetResourceDashboardOutput = schema.new({
   id = id.from(_N, "GetResourceDashboardResponse"),
   type = "structure",
   members = {
      url = schema.new({
         id = id.from(_N, "GetResourceDashboardOutput", "url"),
         type = "string",
         name = "url",
         target_id = prelude.String.id,
      }),
   },
})

M.ListApplicationsInput = schema.new({
   id = id.from(_N, "ListApplicationsRequest"),
   type = "structure",
   members = {
      nextToken = schema.new({
         id = id.from(_N, "ListApplicationsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListApplicationsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = nil },
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      states = schema.new({
         id = id.from(_N, "ListApplicationsInput", "states"),
         type = "list",
         name = "states",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.HTTP_QUERY] = { name = "states" },
         },
      }),
   },
})

M.ListApplicationsOutput = schema.new({
   id = id.from(_N, "ListApplicationsResponse"),
   type = "structure",
   members = {
      applications = schema.new({
         id = id.from(_N, "ListApplicationsOutput", "applications"),
         type = "list",
         name = "applications",
         target_id = prelude.Document.id,
         list_member = M.ApplicationSummary,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListApplicationsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
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
   },
})

M.StartApplicationInput = schema.new({
   id = id.from(_N, "StartApplicationRequest"),
   type = "structure",
   members = {
      applicationId = schema.new({
         id = id.from(_N, "StartApplicationInput", "applicationId"),
         type = "string",
         name = "applicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.StartApplicationOutput = schema.new({
   id = id.from(_N, "StartApplicationResponse"),
   type = "structure",
})

M.StopApplicationInput = schema.new({
   id = id.from(_N, "StopApplicationRequest"),
   type = "structure",
   members = {
      applicationId = schema.new({
         id = id.from(_N, "StopApplicationInput", "applicationId"),
         type = "string",
         name = "applicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.StopApplicationOutput = schema.new({
   id = id.from(_N, "StopApplicationResponse"),
   type = "structure",
})

M.CancelJobRunInput = schema.new({
   id = id.from(_N, "CancelJobRunRequest"),
   type = "structure",
   members = {
      applicationId = schema.new({
         id = id.from(_N, "CancelJobRunInput", "applicationId"),
         type = "string",
         name = "applicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      jobRunId = schema.new({
         id = id.from(_N, "CancelJobRunInput", "jobRunId"),
         type = "string",
         name = "jobRunId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      shutdownGracePeriodInSeconds = schema.new({
         id = id.from(_N, "CancelJobRunInput", "shutdownGracePeriodInSeconds"),
         type = "integer",
         name = "shutdownGracePeriodInSeconds",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = nil },
            [traits.HTTP_QUERY] = { name = "shutdownGracePeriodInSeconds" },
         },
      }),
   },
})

M.CancelJobRunOutput = schema.new({
   id = id.from(_N, "CancelJobRunResponse"),
   type = "structure",
   members = {
      applicationId = schema.new({
         id = id.from(_N, "CancelJobRunOutput", "applicationId"),
         type = "string",
         name = "applicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      jobRunId = schema.new({
         id = id.from(_N, "CancelJobRunOutput", "jobRunId"),
         type = "string",
         name = "jobRunId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetDashboardForJobRunInput = schema.new({
   id = id.from(_N, "GetDashboardForJobRunRequest"),
   type = "structure",
   members = {
      applicationId = schema.new({
         id = id.from(_N, "GetDashboardForJobRunInput", "applicationId"),
         type = "string",
         name = "applicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      jobRunId = schema.new({
         id = id.from(_N, "GetDashboardForJobRunInput", "jobRunId"),
         type = "string",
         name = "jobRunId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      attempt = schema.new({
         id = id.from(_N, "GetDashboardForJobRunInput", "attempt"),
         type = "integer",
         name = "attempt",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "attempt" },
         },
      }),
      accessSystemProfileLogs = schema.new({
         id = id.from(_N, "GetDashboardForJobRunInput", "accessSystemProfileLogs"),
         type = "boolean",
         name = "accessSystemProfileLogs",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "accessSystemProfileLogs" },
         },
      }),
   },
})

M.GetDashboardForJobRunOutput = schema.new({
   id = id.from(_N, "GetDashboardForJobRunResponse"),
   type = "structure",
   members = {
      url = schema.new({
         id = id.from(_N, "GetDashboardForJobRunOutput", "url"),
         type = "string",
         name = "url",
         target_id = prelude.String.id,
      }),
   },
})

M.GetJobRunInput = schema.new({
   id = id.from(_N, "GetJobRunRequest"),
   type = "structure",
   members = {
      applicationId = schema.new({
         id = id.from(_N, "GetJobRunInput", "applicationId"),
         type = "string",
         name = "applicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      jobRunId = schema.new({
         id = id.from(_N, "GetJobRunInput", "jobRunId"),
         type = "string",
         name = "jobRunId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      attempt = schema.new({
         id = id.from(_N, "GetJobRunInput", "attempt"),
         type = "integer",
         name = "attempt",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "attempt" },
         },
      }),
   },
})

M.ResourceUtilization = schema.new({
   id = id.from(_N, "ResourceUtilization"),
   type = "structure",
   members = {
      vCPUHour = schema.new({
         id = id.from(_N, "ResourceUtilization", "vCPUHour"),
         type = "double",
         name = "vCPUHour",
         target_id = prelude.Double.id,
      }),
      memoryGBHour = schema.new({
         id = id.from(_N, "ResourceUtilization", "memoryGBHour"),
         type = "double",
         name = "memoryGBHour",
         target_id = prelude.Double.id,
      }),
      storageGBHour = schema.new({
         id = id.from(_N, "ResourceUtilization", "storageGBHour"),
         type = "double",
         name = "storageGBHour",
         target_id = prelude.Double.id,
      }),
   },
})

M.JobRunExecutionIamPolicy = schema.new({
   id = id.from(_N, "JobRunExecutionIamPolicy"),
   type = "structure",
   members = {
      policy = schema.new({
         id = id.from(_N, "JobRunExecutionIamPolicy", "policy"),
         type = "string",
         name = "policy",
         target_id = prelude.String.id,
      }),
      policyArns = schema.new({
         id = id.from(_N, "JobRunExecutionIamPolicy", "policyArns"),
         type = "list",
         name = "policyArns",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.Hive = schema.new({
   id = id.from(_N, "Hive"),
   type = "structure",
   members = {
      query = schema.new({
         id = id.from(_N, "Hive", "query"),
         type = "string",
         name = "query",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      initQueryFile = schema.new({
         id = id.from(_N, "Hive", "initQueryFile"),
         type = "string",
         name = "initQueryFile",
         target_id = prelude.String.id,
      }),
      parameters = schema.new({
         id = id.from(_N, "Hive", "parameters"),
         type = "string",
         name = "parameters",
         target_id = prelude.String.id,
      }),
   },
})

M.SparkSubmit = schema.new({
   id = id.from(_N, "SparkSubmit"),
   type = "structure",
   members = {
      entryPoint = schema.new({
         id = id.from(_N, "SparkSubmit", "entryPoint"),
         type = "string",
         name = "entryPoint",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      entryPointArguments = schema.new({
         id = id.from(_N, "SparkSubmit", "entryPointArguments"),
         type = "list",
         name = "entryPointArguments",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      sparkSubmitParameters = schema.new({
         id = id.from(_N, "SparkSubmit", "sparkSubmitParameters"),
         type = "string",
         name = "sparkSubmitParameters",
         target_id = prelude.String.id,
      }),
   },
})

M.JobDriver = schema.new({
   id = id.from(_N, "JobDriver"),
   type = "union",
   members = {
      sparkSubmit = schema.new({
         id = id.from(_N, "JobDriver", "sparkSubmit"),
         type = "structure",
         name = "sparkSubmit",
         target_id = id.from(_N, "SparkSubmit"),
         target = M.SparkSubmit,
      }),
      hive = schema.new({
         id = id.from(_N, "JobDriver", "hive"),
         type = "structure",
         name = "hive",
         target_id = id.from(_N, "Hive"),
         target = M.Hive,
      }),
   },
})

M.RetryPolicy = schema.new({
   id = id.from(_N, "RetryPolicy"),
   type = "structure",
   members = {
      maxAttempts = schema.new({
         id = id.from(_N, "RetryPolicy", "maxAttempts"),
         type = "integer",
         name = "maxAttempts",
         target_id = prelude.Integer.id,
      }),
      maxFailedAttemptsPerHour = schema.new({
         id = id.from(_N, "RetryPolicy", "maxFailedAttemptsPerHour"),
         type = "integer",
         name = "maxFailedAttemptsPerHour",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = nil },
         },
      }),
   },
})

M.TotalResourceUtilization = schema.new({
   id = id.from(_N, "TotalResourceUtilization"),
   type = "structure",
   members = {
      vCPUHour = schema.new({
         id = id.from(_N, "TotalResourceUtilization", "vCPUHour"),
         type = "double",
         name = "vCPUHour",
         target_id = prelude.Double.id,
      }),
      memoryGBHour = schema.new({
         id = id.from(_N, "TotalResourceUtilization", "memoryGBHour"),
         type = "double",
         name = "memoryGBHour",
         target_id = prelude.Double.id,
      }),
      storageGBHour = schema.new({
         id = id.from(_N, "TotalResourceUtilization", "storageGBHour"),
         type = "double",
         name = "storageGBHour",
         target_id = prelude.Double.id,
      }),
   },
})

M.ListJobRunAttemptsInput = schema.new({
   id = id.from(_N, "ListJobRunAttemptsRequest"),
   type = "structure",
   members = {
      applicationId = schema.new({
         id = id.from(_N, "ListJobRunAttemptsInput", "applicationId"),
         type = "string",
         name = "applicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      jobRunId = schema.new({
         id = id.from(_N, "ListJobRunAttemptsInput", "jobRunId"),
         type = "string",
         name = "jobRunId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListJobRunAttemptsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListJobRunAttemptsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = nil },
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
   },
})

M.JobRunAttemptSummary = schema.new({
   id = id.from(_N, "JobRunAttemptSummary"),
   type = "structure",
   members = {
      applicationId = schema.new({
         id = id.from(_N, "JobRunAttemptSummary", "applicationId"),
         type = "string",
         name = "applicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      id = schema.new({
         id = id.from(_N, "JobRunAttemptSummary", "id"),
         type = "string",
         name = "id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "JobRunAttemptSummary", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      mode = schema.new({
         id = id.from(_N, "JobRunAttemptSummary", "mode"),
         type = "string",
         name = "mode",
         target_id = prelude.String.id,
      }),
      arn = schema.new({
         id = id.from(_N, "JobRunAttemptSummary", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      createdBy = schema.new({
         id = id.from(_N, "JobRunAttemptSummary", "createdBy"),
         type = "string",
         name = "createdBy",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      jobCreatedAt = schema.new({
         id = id.from(_N, "JobRunAttemptSummary", "jobCreatedAt"),
         type = "timestamp",
         name = "jobCreatedAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      createdAt = schema.new({
         id = id.from(_N, "JobRunAttemptSummary", "createdAt"),
         type = "timestamp",
         name = "createdAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      updatedAt = schema.new({
         id = id.from(_N, "JobRunAttemptSummary", "updatedAt"),
         type = "timestamp",
         name = "updatedAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      executionRole = schema.new({
         id = id.from(_N, "JobRunAttemptSummary", "executionRole"),
         type = "string",
         name = "executionRole",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      state = schema.new({
         id = id.from(_N, "JobRunAttemptSummary", "state"),
         type = "string",
         name = "state",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      stateDetails = schema.new({
         id = id.from(_N, "JobRunAttemptSummary", "stateDetails"),
         type = "string",
         name = "stateDetails",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      releaseLabel = schema.new({
         id = id.from(_N, "JobRunAttemptSummary", "releaseLabel"),
         type = "string",
         name = "releaseLabel",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      type = schema.new({
         id = id.from(_N, "JobRunAttemptSummary", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
      }),
      attempt = schema.new({
         id = id.from(_N, "JobRunAttemptSummary", "attempt"),
         type = "integer",
         name = "attempt",
         target_id = prelude.Integer.id,
      }),
   },
})

M.ListJobRunAttemptsOutput = schema.new({
   id = id.from(_N, "ListJobRunAttemptsResponse"),
   type = "structure",
   members = {
      jobRunAttempts = schema.new({
         id = id.from(_N, "ListJobRunAttemptsOutput", "jobRunAttempts"),
         type = "list",
         name = "jobRunAttempts",
         target_id = prelude.Document.id,
         list_member = M.JobRunAttemptSummary,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListJobRunAttemptsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListJobRunsInput = schema.new({
   id = id.from(_N, "ListJobRunsRequest"),
   type = "structure",
   members = {
      applicationId = schema.new({
         id = id.from(_N, "ListJobRunsInput", "applicationId"),
         type = "string",
         name = "applicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListJobRunsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListJobRunsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = nil },
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      createdAtAfter = schema.new({
         id = id.from(_N, "ListJobRunsInput", "createdAtAfter"),
         type = "timestamp",
         name = "createdAtAfter",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "createdAtAfter" },
         },
      }),
      createdAtBefore = schema.new({
         id = id.from(_N, "ListJobRunsInput", "createdAtBefore"),
         type = "timestamp",
         name = "createdAtBefore",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "createdAtBefore" },
         },
      }),
      states = schema.new({
         id = id.from(_N, "ListJobRunsInput", "states"),
         type = "list",
         name = "states",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.HTTP_QUERY] = { name = "states" },
         },
      }),
      mode = schema.new({
         id = id.from(_N, "ListJobRunsInput", "mode"),
         type = "string",
         name = "mode",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "mode" },
         },
      }),
   },
})

M.JobRunSummary = schema.new({
   id = id.from(_N, "JobRunSummary"),
   type = "structure",
   members = {
      applicationId = schema.new({
         id = id.from(_N, "JobRunSummary", "applicationId"),
         type = "string",
         name = "applicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      id = schema.new({
         id = id.from(_N, "JobRunSummary", "id"),
         type = "string",
         name = "id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "JobRunSummary", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      mode = schema.new({
         id = id.from(_N, "JobRunSummary", "mode"),
         type = "string",
         name = "mode",
         target_id = prelude.String.id,
      }),
      arn = schema.new({
         id = id.from(_N, "JobRunSummary", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      createdBy = schema.new({
         id = id.from(_N, "JobRunSummary", "createdBy"),
         type = "string",
         name = "createdBy",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      createdAt = schema.new({
         id = id.from(_N, "JobRunSummary", "createdAt"),
         type = "timestamp",
         name = "createdAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      updatedAt = schema.new({
         id = id.from(_N, "JobRunSummary", "updatedAt"),
         type = "timestamp",
         name = "updatedAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      executionRole = schema.new({
         id = id.from(_N, "JobRunSummary", "executionRole"),
         type = "string",
         name = "executionRole",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      state = schema.new({
         id = id.from(_N, "JobRunSummary", "state"),
         type = "string",
         name = "state",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      stateDetails = schema.new({
         id = id.from(_N, "JobRunSummary", "stateDetails"),
         type = "string",
         name = "stateDetails",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      releaseLabel = schema.new({
         id = id.from(_N, "JobRunSummary", "releaseLabel"),
         type = "string",
         name = "releaseLabel",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      type = schema.new({
         id = id.from(_N, "JobRunSummary", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
      }),
      attempt = schema.new({
         id = id.from(_N, "JobRunSummary", "attempt"),
         type = "integer",
         name = "attempt",
         target_id = prelude.Integer.id,
      }),
      attemptCreatedAt = schema.new({
         id = id.from(_N, "JobRunSummary", "attemptCreatedAt"),
         type = "timestamp",
         name = "attemptCreatedAt",
         target_id = prelude.Timestamp.id,
      }),
      attemptUpdatedAt = schema.new({
         id = id.from(_N, "JobRunSummary", "attemptUpdatedAt"),
         type = "timestamp",
         name = "attemptUpdatedAt",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.ListJobRunsOutput = schema.new({
   id = id.from(_N, "ListJobRunsResponse"),
   type = "structure",
   members = {
      jobRuns = schema.new({
         id = id.from(_N, "ListJobRunsOutput", "jobRuns"),
         type = "list",
         name = "jobRuns",
         target_id = prelude.Document.id,
         list_member = M.JobRunSummary,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListJobRunsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.StartJobRunOutput = schema.new({
   id = id.from(_N, "StartJobRunResponse"),
   type = "structure",
   members = {
      applicationId = schema.new({
         id = id.from(_N, "StartJobRunOutput", "applicationId"),
         type = "string",
         name = "applicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      jobRunId = schema.new({
         id = id.from(_N, "StartJobRunOutput", "jobRunId"),
         type = "string",
         name = "jobRunId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      arn = schema.new({
         id = id.from(_N, "StartJobRunOutput", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
         traits = {
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

M.GetSessionInput = schema.new({
   id = id.from(_N, "GetSessionRequest"),
   type = "structure",
   members = {
      applicationId = schema.new({
         id = id.from(_N, "GetSessionInput", "applicationId"),
         type = "string",
         name = "applicationId",
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

M.GetSessionEndpointInput = schema.new({
   id = id.from(_N, "GetSessionEndpointRequest"),
   type = "structure",
   members = {
      applicationId = schema.new({
         id = id.from(_N, "GetSessionEndpointInput", "applicationId"),
         type = "string",
         name = "applicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      sessionId = schema.new({
         id = id.from(_N, "GetSessionEndpointInput", "sessionId"),
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

M.GetSessionEndpointOutput = schema.new({
   id = id.from(_N, "GetSessionEndpointResponse"),
   type = "structure",
   members = {
      applicationId = schema.new({
         id = id.from(_N, "GetSessionEndpointOutput", "applicationId"),
         type = "string",
         name = "applicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      sessionId = schema.new({
         id = id.from(_N, "GetSessionEndpointOutput", "sessionId"),
         type = "string",
         name = "sessionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      endpoint = schema.new({
         id = id.from(_N, "GetSessionEndpointOutput", "endpoint"),
         type = "string",
         name = "endpoint",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      authToken = schema.new({
         id = id.from(_N, "GetSessionEndpointOutput", "authToken"),
         type = "string",
         name = "authToken",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      authTokenExpiresAt = schema.new({
         id = id.from(_N, "GetSessionEndpointOutput", "authTokenExpiresAt"),
         type = "timestamp",
         name = "authTokenExpiresAt",
         target_id = prelude.Timestamp.id,
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
      applicationId = schema.new({
         id = id.from(_N, "ListSessionsInput", "applicationId"),
         type = "string",
         name = "applicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
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
      maxResults = schema.new({
         id = id.from(_N, "ListSessionsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = nil },
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      states = schema.new({
         id = id.from(_N, "ListSessionsInput", "states"),
         type = "list",
         name = "states",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.HTTP_QUERY] = { name = "states" },
         },
      }),
      createdAtAfter = schema.new({
         id = id.from(_N, "ListSessionsInput", "createdAtAfter"),
         type = "timestamp",
         name = "createdAtAfter",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "createdAtAfter" },
         },
      }),
      createdAtBefore = schema.new({
         id = id.from(_N, "ListSessionsInput", "createdAtBefore"),
         type = "timestamp",
         name = "createdAtBefore",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "createdAtBefore" },
         },
      }),
   },
})

M.SessionSummary = schema.new({
   id = id.from(_N, "SessionSummary"),
   type = "structure",
   members = {
      applicationId = schema.new({
         id = id.from(_N, "SessionSummary", "applicationId"),
         type = "string",
         name = "applicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      sessionId = schema.new({
         id = id.from(_N, "SessionSummary", "sessionId"),
         type = "string",
         name = "sessionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      arn = schema.new({
         id = id.from(_N, "SessionSummary", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "SessionSummary", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      state = schema.new({
         id = id.from(_N, "SessionSummary", "state"),
         type = "string",
         name = "state",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      stateDetails = schema.new({
         id = id.from(_N, "SessionSummary", "stateDetails"),
         type = "string",
         name = "stateDetails",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      releaseLabel = schema.new({
         id = id.from(_N, "SessionSummary", "releaseLabel"),
         type = "string",
         name = "releaseLabel",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      executionRoleArn = schema.new({
         id = id.from(_N, "SessionSummary", "executionRoleArn"),
         type = "string",
         name = "executionRoleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      createdBy = schema.new({
         id = id.from(_N, "SessionSummary", "createdBy"),
         type = "string",
         name = "createdBy",
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
         },
      }),
      updatedAt = schema.new({
         id = id.from(_N, "SessionSummary", "updatedAt"),
         type = "timestamp",
         name = "updatedAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ListSessionsOutput = schema.new({
   id = id.from(_N, "ListSessionsResponse"),
   type = "structure",
   members = {
      sessions = schema.new({
         id = id.from(_N, "ListSessionsOutput", "sessions"),
         type = "list",
         name = "sessions",
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

M.StartSessionOutput = schema.new({
   id = id.from(_N, "StartSessionResponse"),
   type = "structure",
   members = {
      applicationId = schema.new({
         id = id.from(_N, "StartSessionOutput", "applicationId"),
         type = "string",
         name = "applicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      sessionId = schema.new({
         id = id.from(_N, "StartSessionOutput", "sessionId"),
         type = "string",
         name = "sessionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      arn = schema.new({
         id = id.from(_N, "StartSessionOutput", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.TerminateSessionInput = schema.new({
   id = id.from(_N, "TerminateSessionRequest"),
   type = "structure",
   members = {
      applicationId = schema.new({
         id = id.from(_N, "TerminateSessionInput", "applicationId"),
         type = "string",
         name = "applicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      sessionId = schema.new({
         id = id.from(_N, "TerminateSessionInput", "sessionId"),
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

M.TerminateSessionOutput = schema.new({
   id = id.from(_N, "TerminateSessionResponse"),
   type = "structure",
   members = {
      applicationId = schema.new({
         id = id.from(_N, "TerminateSessionOutput", "applicationId"),
         type = "string",
         name = "applicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      sessionId = schema.new({
         id = id.from(_N, "TerminateSessionOutput", "sessionId"),
         type = "string",
         name = "sessionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
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

M.Configuration = schema.new({
   id = id.from(_N, "Configuration"),
   type = "structure",
   members = {
      classification = schema.new({
         id = id.from(_N, "Configuration", "classification"),
         type = "string",
         name = "classification",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      properties = schema.new({
         id = id.from(_N, "Configuration", "properties"),
         type = "map",
         name = "properties",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      configurations = schema.new({
         id = id.from(_N, "Configuration", "configurations"),
         type = "list",
         name = "configurations",
         target_id = prelude.Document.id,
         list_member = M.Configuration,
      }),
   },
})

M.Application = schema.new({
   id = id.from(_N, "Application"),
   type = "structure",
   members = {
      applicationId = schema.new({
         id = id.from(_N, "Application", "applicationId"),
         type = "string",
         name = "applicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "Application", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      arn = schema.new({
         id = id.from(_N, "Application", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      releaseLabel = schema.new({
         id = id.from(_N, "Application", "releaseLabel"),
         type = "string",
         name = "releaseLabel",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      type = schema.new({
         id = id.from(_N, "Application", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      state = schema.new({
         id = id.from(_N, "Application", "state"),
         type = "string",
         name = "state",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      stateDetails = schema.new({
         id = id.from(_N, "Application", "stateDetails"),
         type = "string",
         name = "stateDetails",
         target_id = prelude.String.id,
      }),
      initialCapacity = schema.new({
         id = id.from(_N, "Application", "initialCapacity"),
         type = "map",
         name = "initialCapacity",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.InitialCapacityConfig,
      }),
      maximumCapacity = schema.new({
         id = id.from(_N, "Application", "maximumCapacity"),
         type = "structure",
         name = "maximumCapacity",
         target_id = id.from(_N, "MaximumAllowedResources"),
         target = M.MaximumAllowedResources,
      }),
      createdAt = schema.new({
         id = id.from(_N, "Application", "createdAt"),
         type = "timestamp",
         name = "createdAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      updatedAt = schema.new({
         id = id.from(_N, "Application", "updatedAt"),
         type = "timestamp",
         name = "updatedAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      tags = schema.new({
         id = id.from(_N, "Application", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      autoStartConfiguration = schema.new({
         id = id.from(_N, "Application", "autoStartConfiguration"),
         type = "structure",
         name = "autoStartConfiguration",
         target_id = id.from(_N, "AutoStartConfig"),
         target = M.AutoStartConfig,
      }),
      autoStopConfiguration = schema.new({
         id = id.from(_N, "Application", "autoStopConfiguration"),
         type = "structure",
         name = "autoStopConfiguration",
         target_id = id.from(_N, "AutoStopConfig"),
         target = M.AutoStopConfig,
      }),
      networkConfiguration = schema.new({
         id = id.from(_N, "Application", "networkConfiguration"),
         type = "structure",
         name = "networkConfiguration",
         target_id = id.from(_N, "NetworkConfiguration"),
         target = M.NetworkConfiguration,
      }),
      architecture = schema.new({
         id = id.from(_N, "Application", "architecture"),
         type = "string",
         name = "architecture",
         target_id = prelude.String.id,
      }),
      imageConfiguration = schema.new({
         id = id.from(_N, "Application", "imageConfiguration"),
         type = "structure",
         name = "imageConfiguration",
         target_id = id.from(_N, "ImageConfiguration"),
         target = M.ImageConfiguration,
      }),
      workerTypeSpecifications = schema.new({
         id = id.from(_N, "Application", "workerTypeSpecifications"),
         type = "map",
         name = "workerTypeSpecifications",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.WorkerTypeSpecification,
      }),
      runtimeConfiguration = schema.new({
         id = id.from(_N, "Application", "runtimeConfiguration"),
         type = "list",
         name = "runtimeConfiguration",
         target_id = prelude.Document.id,
         list_member = M.Configuration,
      }),
      monitoringConfiguration = schema.new({
         id = id.from(_N, "Application", "monitoringConfiguration"),
         type = "structure",
         name = "monitoringConfiguration",
         target_id = id.from(_N, "MonitoringConfiguration"),
         target = M.MonitoringConfiguration,
      }),
      diskEncryptionConfiguration = schema.new({
         id = id.from(_N, "Application", "diskEncryptionConfiguration"),
         type = "structure",
         name = "diskEncryptionConfiguration",
         target_id = id.from(_N, "DiskEncryptionConfiguration"),
         target = M.DiskEncryptionConfiguration,
      }),
      interactiveConfiguration = schema.new({
         id = id.from(_N, "Application", "interactiveConfiguration"),
         type = "structure",
         name = "interactiveConfiguration",
         target_id = id.from(_N, "InteractiveConfiguration"),
         target = M.InteractiveConfiguration,
      }),
      schedulerConfiguration = schema.new({
         id = id.from(_N, "Application", "schedulerConfiguration"),
         type = "structure",
         name = "schedulerConfiguration",
         target_id = id.from(_N, "SchedulerConfiguration"),
         target = M.SchedulerConfiguration,
      }),
      identityCenterConfiguration = schema.new({
         id = id.from(_N, "Application", "identityCenterConfiguration"),
         type = "structure",
         name = "identityCenterConfiguration",
         target_id = id.from(_N, "IdentityCenterConfiguration"),
         target = M.IdentityCenterConfiguration,
      }),
      jobLevelCostAllocationConfiguration = schema.new({
         id = id.from(_N, "Application", "jobLevelCostAllocationConfiguration"),
         type = "structure",
         name = "jobLevelCostAllocationConfiguration",
         target_id = id.from(_N, "JobLevelCostAllocationConfiguration"),
         target = M.JobLevelCostAllocationConfiguration,
      }),
   },
})

M.ConfigurationOverrides = schema.new({
   id = id.from(_N, "ConfigurationOverrides"),
   type = "structure",
   members = {
      applicationConfiguration = schema.new({
         id = id.from(_N, "ConfigurationOverrides", "applicationConfiguration"),
         type = "list",
         name = "applicationConfiguration",
         target_id = prelude.Document.id,
         list_member = M.Configuration,
      }),
      monitoringConfiguration = schema.new({
         id = id.from(_N, "ConfigurationOverrides", "monitoringConfiguration"),
         type = "structure",
         name = "monitoringConfiguration",
         target_id = id.from(_N, "MonitoringConfiguration"),
         target = M.MonitoringConfiguration,
      }),
      diskEncryptionConfiguration = schema.new({
         id = id.from(_N, "ConfigurationOverrides", "diskEncryptionConfiguration"),
         type = "structure",
         name = "diskEncryptionConfiguration",
         target_id = id.from(_N, "DiskEncryptionConfiguration"),
         target = M.DiskEncryptionConfiguration,
      }),
   },
})

M.CreateApplicationInput = schema.new({
   id = id.from(_N, "CreateApplicationRequest"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "CreateApplicationInput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      releaseLabel = schema.new({
         id = id.from(_N, "CreateApplicationInput", "releaseLabel"),
         type = "string",
         name = "releaseLabel",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      type = schema.new({
         id = id.from(_N, "CreateApplicationInput", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      clientToken = schema.new({
         id = id.from(_N, "CreateApplicationInput", "clientToken"),
         type = "string",
         name = "clientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      initialCapacity = schema.new({
         id = id.from(_N, "CreateApplicationInput", "initialCapacity"),
         type = "map",
         name = "initialCapacity",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.InitialCapacityConfig,
      }),
      maximumCapacity = schema.new({
         id = id.from(_N, "CreateApplicationInput", "maximumCapacity"),
         type = "structure",
         name = "maximumCapacity",
         target_id = id.from(_N, "MaximumAllowedResources"),
         target = M.MaximumAllowedResources,
      }),
      tags = schema.new({
         id = id.from(_N, "CreateApplicationInput", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      autoStartConfiguration = schema.new({
         id = id.from(_N, "CreateApplicationInput", "autoStartConfiguration"),
         type = "structure",
         name = "autoStartConfiguration",
         target_id = id.from(_N, "AutoStartConfig"),
         target = M.AutoStartConfig,
      }),
      autoStopConfiguration = schema.new({
         id = id.from(_N, "CreateApplicationInput", "autoStopConfiguration"),
         type = "structure",
         name = "autoStopConfiguration",
         target_id = id.from(_N, "AutoStopConfig"),
         target = M.AutoStopConfig,
      }),
      networkConfiguration = schema.new({
         id = id.from(_N, "CreateApplicationInput", "networkConfiguration"),
         type = "structure",
         name = "networkConfiguration",
         target_id = id.from(_N, "NetworkConfiguration"),
         target = M.NetworkConfiguration,
      }),
      architecture = schema.new({
         id = id.from(_N, "CreateApplicationInput", "architecture"),
         type = "string",
         name = "architecture",
         target_id = prelude.String.id,
      }),
      imageConfiguration = schema.new({
         id = id.from(_N, "CreateApplicationInput", "imageConfiguration"),
         type = "structure",
         name = "imageConfiguration",
         target_id = id.from(_N, "ImageConfigurationInput"),
         target = M.ImageConfigurationInput,
      }),
      workerTypeSpecifications = schema.new({
         id = id.from(_N, "CreateApplicationInput", "workerTypeSpecifications"),
         type = "map",
         name = "workerTypeSpecifications",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.WorkerTypeSpecificationInput,
      }),
      runtimeConfiguration = schema.new({
         id = id.from(_N, "CreateApplicationInput", "runtimeConfiguration"),
         type = "list",
         name = "runtimeConfiguration",
         target_id = prelude.Document.id,
         list_member = M.Configuration,
      }),
      monitoringConfiguration = schema.new({
         id = id.from(_N, "CreateApplicationInput", "monitoringConfiguration"),
         type = "structure",
         name = "monitoringConfiguration",
         target_id = id.from(_N, "MonitoringConfiguration"),
         target = M.MonitoringConfiguration,
      }),
      diskEncryptionConfiguration = schema.new({
         id = id.from(_N, "CreateApplicationInput", "diskEncryptionConfiguration"),
         type = "structure",
         name = "diskEncryptionConfiguration",
         target_id = id.from(_N, "DiskEncryptionConfiguration"),
         target = M.DiskEncryptionConfiguration,
      }),
      interactiveConfiguration = schema.new({
         id = id.from(_N, "CreateApplicationInput", "interactiveConfiguration"),
         type = "structure",
         name = "interactiveConfiguration",
         target_id = id.from(_N, "InteractiveConfiguration"),
         target = M.InteractiveConfiguration,
      }),
      schedulerConfiguration = schema.new({
         id = id.from(_N, "CreateApplicationInput", "schedulerConfiguration"),
         type = "structure",
         name = "schedulerConfiguration",
         target_id = id.from(_N, "SchedulerConfiguration"),
         target = M.SchedulerConfiguration,
      }),
      identityCenterConfiguration = schema.new({
         id = id.from(_N, "CreateApplicationInput", "identityCenterConfiguration"),
         type = "structure",
         name = "identityCenterConfiguration",
         target_id = id.from(_N, "IdentityCenterConfigurationInput"),
         target = M.IdentityCenterConfigurationInput,
      }),
      jobLevelCostAllocationConfiguration = schema.new({
         id = id.from(_N, "CreateApplicationInput", "jobLevelCostAllocationConfiguration"),
         type = "structure",
         name = "jobLevelCostAllocationConfiguration",
         target_id = id.from(_N, "JobLevelCostAllocationConfiguration"),
         target = M.JobLevelCostAllocationConfiguration,
      }),
   },
})

M.SessionConfigurationOverrides = schema.new({
   id = id.from(_N, "SessionConfigurationOverrides"),
   type = "structure",
   members = {
      runtimeConfiguration = schema.new({
         id = id.from(_N, "SessionConfigurationOverrides", "runtimeConfiguration"),
         type = "list",
         name = "runtimeConfiguration",
         target_id = prelude.Document.id,
         list_member = M.Configuration,
      }),
   },
})

M.UpdateApplicationInput = schema.new({
   id = id.from(_N, "UpdateApplicationRequest"),
   type = "structure",
   members = {
      applicationId = schema.new({
         id = id.from(_N, "UpdateApplicationInput", "applicationId"),
         type = "string",
         name = "applicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      clientToken = schema.new({
         id = id.from(_N, "UpdateApplicationInput", "clientToken"),
         type = "string",
         name = "clientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      initialCapacity = schema.new({
         id = id.from(_N, "UpdateApplicationInput", "initialCapacity"),
         type = "map",
         name = "initialCapacity",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.InitialCapacityConfig,
      }),
      maximumCapacity = schema.new({
         id = id.from(_N, "UpdateApplicationInput", "maximumCapacity"),
         type = "structure",
         name = "maximumCapacity",
         target_id = id.from(_N, "MaximumAllowedResources"),
         target = M.MaximumAllowedResources,
      }),
      autoStartConfiguration = schema.new({
         id = id.from(_N, "UpdateApplicationInput", "autoStartConfiguration"),
         type = "structure",
         name = "autoStartConfiguration",
         target_id = id.from(_N, "AutoStartConfig"),
         target = M.AutoStartConfig,
      }),
      autoStopConfiguration = schema.new({
         id = id.from(_N, "UpdateApplicationInput", "autoStopConfiguration"),
         type = "structure",
         name = "autoStopConfiguration",
         target_id = id.from(_N, "AutoStopConfig"),
         target = M.AutoStopConfig,
      }),
      networkConfiguration = schema.new({
         id = id.from(_N, "UpdateApplicationInput", "networkConfiguration"),
         type = "structure",
         name = "networkConfiguration",
         target_id = id.from(_N, "NetworkConfiguration"),
         target = M.NetworkConfiguration,
      }),
      architecture = schema.new({
         id = id.from(_N, "UpdateApplicationInput", "architecture"),
         type = "string",
         name = "architecture",
         target_id = prelude.String.id,
      }),
      imageConfiguration = schema.new({
         id = id.from(_N, "UpdateApplicationInput", "imageConfiguration"),
         type = "structure",
         name = "imageConfiguration",
         target_id = id.from(_N, "ImageConfigurationInput"),
         target = M.ImageConfigurationInput,
      }),
      workerTypeSpecifications = schema.new({
         id = id.from(_N, "UpdateApplicationInput", "workerTypeSpecifications"),
         type = "map",
         name = "workerTypeSpecifications",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.WorkerTypeSpecificationInput,
      }),
      interactiveConfiguration = schema.new({
         id = id.from(_N, "UpdateApplicationInput", "interactiveConfiguration"),
         type = "structure",
         name = "interactiveConfiguration",
         target_id = id.from(_N, "InteractiveConfiguration"),
         target = M.InteractiveConfiguration,
      }),
      releaseLabel = schema.new({
         id = id.from(_N, "UpdateApplicationInput", "releaseLabel"),
         type = "string",
         name = "releaseLabel",
         target_id = prelude.String.id,
      }),
      runtimeConfiguration = schema.new({
         id = id.from(_N, "UpdateApplicationInput", "runtimeConfiguration"),
         type = "list",
         name = "runtimeConfiguration",
         target_id = prelude.Document.id,
         list_member = M.Configuration,
      }),
      monitoringConfiguration = schema.new({
         id = id.from(_N, "UpdateApplicationInput", "monitoringConfiguration"),
         type = "structure",
         name = "monitoringConfiguration",
         target_id = id.from(_N, "MonitoringConfiguration"),
         target = M.MonitoringConfiguration,
      }),
      diskEncryptionConfiguration = schema.new({
         id = id.from(_N, "UpdateApplicationInput", "diskEncryptionConfiguration"),
         type = "structure",
         name = "diskEncryptionConfiguration",
         target_id = id.from(_N, "DiskEncryptionConfiguration"),
         target = M.DiskEncryptionConfiguration,
      }),
      schedulerConfiguration = schema.new({
         id = id.from(_N, "UpdateApplicationInput", "schedulerConfiguration"),
         type = "structure",
         name = "schedulerConfiguration",
         target_id = id.from(_N, "SchedulerConfiguration"),
         target = M.SchedulerConfiguration,
      }),
      identityCenterConfiguration = schema.new({
         id = id.from(_N, "UpdateApplicationInput", "identityCenterConfiguration"),
         type = "structure",
         name = "identityCenterConfiguration",
         target_id = id.from(_N, "IdentityCenterConfigurationInput"),
         target = M.IdentityCenterConfigurationInput,
      }),
      jobLevelCostAllocationConfiguration = schema.new({
         id = id.from(_N, "UpdateApplicationInput", "jobLevelCostAllocationConfiguration"),
         type = "structure",
         name = "jobLevelCostAllocationConfiguration",
         target_id = id.from(_N, "JobLevelCostAllocationConfiguration"),
         target = M.JobLevelCostAllocationConfiguration,
      }),
   },
})

M.GetApplicationOutput = schema.new({
   id = id.from(_N, "GetApplicationResponse"),
   type = "structure",
   members = {
      application = schema.new({
         id = id.from(_N, "GetApplicationOutput", "application"),
         type = "structure",
         name = "application",
         target_id = id.from(_N, "Application"),
         target = M.Application,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.JobRun = schema.new({
   id = id.from(_N, "JobRun"),
   type = "structure",
   members = {
      applicationId = schema.new({
         id = id.from(_N, "JobRun", "applicationId"),
         type = "string",
         name = "applicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      jobRunId = schema.new({
         id = id.from(_N, "JobRun", "jobRunId"),
         type = "string",
         name = "jobRunId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "JobRun", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      arn = schema.new({
         id = id.from(_N, "JobRun", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      createdBy = schema.new({
         id = id.from(_N, "JobRun", "createdBy"),
         type = "string",
         name = "createdBy",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      createdAt = schema.new({
         id = id.from(_N, "JobRun", "createdAt"),
         type = "timestamp",
         name = "createdAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      updatedAt = schema.new({
         id = id.from(_N, "JobRun", "updatedAt"),
         type = "timestamp",
         name = "updatedAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      executionRole = schema.new({
         id = id.from(_N, "JobRun", "executionRole"),
         type = "string",
         name = "executionRole",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      executionIamPolicy = schema.new({
         id = id.from(_N, "JobRun", "executionIamPolicy"),
         type = "structure",
         name = "executionIamPolicy",
         target_id = id.from(_N, "JobRunExecutionIamPolicy"),
         target = M.JobRunExecutionIamPolicy,
      }),
      state = schema.new({
         id = id.from(_N, "JobRun", "state"),
         type = "string",
         name = "state",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      stateDetails = schema.new({
         id = id.from(_N, "JobRun", "stateDetails"),
         type = "string",
         name = "stateDetails",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      releaseLabel = schema.new({
         id = id.from(_N, "JobRun", "releaseLabel"),
         type = "string",
         name = "releaseLabel",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      configurationOverrides = schema.new({
         id = id.from(_N, "JobRun", "configurationOverrides"),
         type = "structure",
         name = "configurationOverrides",
         target_id = id.from(_N, "ConfigurationOverrides"),
         target = M.ConfigurationOverrides,
      }),
      jobDriver = schema.new({
         id = id.from(_N, "JobRun", "jobDriver"),
         type = "union",
         name = "jobDriver",
         target_id = id.from(_N, "JobDriver"),
         target = M.JobDriver,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      tags = schema.new({
         id = id.from(_N, "JobRun", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      totalResourceUtilization = schema.new({
         id = id.from(_N, "JobRun", "totalResourceUtilization"),
         type = "structure",
         name = "totalResourceUtilization",
         target_id = id.from(_N, "TotalResourceUtilization"),
         target = M.TotalResourceUtilization,
      }),
      networkConfiguration = schema.new({
         id = id.from(_N, "JobRun", "networkConfiguration"),
         type = "structure",
         name = "networkConfiguration",
         target_id = id.from(_N, "NetworkConfiguration"),
         target = M.NetworkConfiguration,
      }),
      totalExecutionDurationSeconds = schema.new({
         id = id.from(_N, "JobRun", "totalExecutionDurationSeconds"),
         type = "integer",
         name = "totalExecutionDurationSeconds",
         target_id = prelude.Integer.id,
      }),
      executionTimeoutMinutes = schema.new({
         id = id.from(_N, "JobRun", "executionTimeoutMinutes"),
         type = "long",
         name = "executionTimeoutMinutes",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = nil },
         },
      }),
      billedResourceUtilization = schema.new({
         id = id.from(_N, "JobRun", "billedResourceUtilization"),
         type = "structure",
         name = "billedResourceUtilization",
         target_id = id.from(_N, "ResourceUtilization"),
         target = M.ResourceUtilization,
      }),
      mode = schema.new({
         id = id.from(_N, "JobRun", "mode"),
         type = "string",
         name = "mode",
         target_id = prelude.String.id,
      }),
      retryPolicy = schema.new({
         id = id.from(_N, "JobRun", "retryPolicy"),
         type = "structure",
         name = "retryPolicy",
         target_id = id.from(_N, "RetryPolicy"),
         target = M.RetryPolicy,
      }),
      attempt = schema.new({
         id = id.from(_N, "JobRun", "attempt"),
         type = "integer",
         name = "attempt",
         target_id = prelude.Integer.id,
      }),
      attemptCreatedAt = schema.new({
         id = id.from(_N, "JobRun", "attemptCreatedAt"),
         type = "timestamp",
         name = "attemptCreatedAt",
         target_id = prelude.Timestamp.id,
      }),
      attemptUpdatedAt = schema.new({
         id = id.from(_N, "JobRun", "attemptUpdatedAt"),
         type = "timestamp",
         name = "attemptUpdatedAt",
         target_id = prelude.Timestamp.id,
      }),
      startedAt = schema.new({
         id = id.from(_N, "JobRun", "startedAt"),
         type = "timestamp",
         name = "startedAt",
         target_id = prelude.Timestamp.id,
      }),
      endedAt = schema.new({
         id = id.from(_N, "JobRun", "endedAt"),
         type = "timestamp",
         name = "endedAt",
         target_id = prelude.Timestamp.id,
      }),
      queuedDurationMilliseconds = schema.new({
         id = id.from(_N, "JobRun", "queuedDurationMilliseconds"),
         type = "long",
         name = "queuedDurationMilliseconds",
         target_id = prelude.Long.id,
      }),
   },
})

M.Session = schema.new({
   id = id.from(_N, "Session"),
   type = "structure",
   members = {
      applicationId = schema.new({
         id = id.from(_N, "Session", "applicationId"),
         type = "string",
         name = "applicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      sessionId = schema.new({
         id = id.from(_N, "Session", "sessionId"),
         type = "string",
         name = "sessionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      arn = schema.new({
         id = id.from(_N, "Session", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "Session", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      state = schema.new({
         id = id.from(_N, "Session", "state"),
         type = "string",
         name = "state",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      stateDetails = schema.new({
         id = id.from(_N, "Session", "stateDetails"),
         type = "string",
         name = "stateDetails",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      releaseLabel = schema.new({
         id = id.from(_N, "Session", "releaseLabel"),
         type = "string",
         name = "releaseLabel",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      executionRoleArn = schema.new({
         id = id.from(_N, "Session", "executionRoleArn"),
         type = "string",
         name = "executionRoleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      createdBy = schema.new({
         id = id.from(_N, "Session", "createdBy"),
         type = "string",
         name = "createdBy",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      createdAt = schema.new({
         id = id.from(_N, "Session", "createdAt"),
         type = "timestamp",
         name = "createdAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      updatedAt = schema.new({
         id = id.from(_N, "Session", "updatedAt"),
         type = "timestamp",
         name = "updatedAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      startedAt = schema.new({
         id = id.from(_N, "Session", "startedAt"),
         type = "timestamp",
         name = "startedAt",
         target_id = prelude.Timestamp.id,
      }),
      endedAt = schema.new({
         id = id.from(_N, "Session", "endedAt"),
         type = "timestamp",
         name = "endedAt",
         target_id = prelude.Timestamp.id,
      }),
      idleSince = schema.new({
         id = id.from(_N, "Session", "idleSince"),
         type = "timestamp",
         name = "idleSince",
         target_id = prelude.Timestamp.id,
      }),
      configurationOverrides = schema.new({
         id = id.from(_N, "Session", "configurationOverrides"),
         type = "structure",
         name = "configurationOverrides",
         target_id = id.from(_N, "SessionConfigurationOverrides"),
         target = M.SessionConfigurationOverrides,
      }),
      networkConfiguration = schema.new({
         id = id.from(_N, "Session", "networkConfiguration"),
         type = "structure",
         name = "networkConfiguration",
         target_id = id.from(_N, "NetworkConfiguration"),
         target = M.NetworkConfiguration,
      }),
      idleTimeoutMinutes = schema.new({
         id = id.from(_N, "Session", "idleTimeoutMinutes"),
         type = "long",
         name = "idleTimeoutMinutes",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = nil },
         },
      }),
      tags = schema.new({
         id = id.from(_N, "Session", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      totalResourceUtilization = schema.new({
         id = id.from(_N, "Session", "totalResourceUtilization"),
         type = "structure",
         name = "totalResourceUtilization",
         target_id = id.from(_N, "TotalResourceUtilization"),
         target = M.TotalResourceUtilization,
      }),
      billedResourceUtilization = schema.new({
         id = id.from(_N, "Session", "billedResourceUtilization"),
         type = "structure",
         name = "billedResourceUtilization",
         target_id = id.from(_N, "ResourceUtilization"),
         target = M.ResourceUtilization,
      }),
      totalExecutionDurationSeconds = schema.new({
         id = id.from(_N, "Session", "totalExecutionDurationSeconds"),
         type = "long",
         name = "totalExecutionDurationSeconds",
         target_id = prelude.Long.id,
      }),
   },
})

M.StartJobRunInput = schema.new({
   id = id.from(_N, "StartJobRunRequest"),
   type = "structure",
   members = {
      applicationId = schema.new({
         id = id.from(_N, "StartJobRunInput", "applicationId"),
         type = "string",
         name = "applicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      clientToken = schema.new({
         id = id.from(_N, "StartJobRunInput", "clientToken"),
         type = "string",
         name = "clientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      executionRoleArn = schema.new({
         id = id.from(_N, "StartJobRunInput", "executionRoleArn"),
         type = "string",
         name = "executionRoleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      executionIamPolicy = schema.new({
         id = id.from(_N, "StartJobRunInput", "executionIamPolicy"),
         type = "structure",
         name = "executionIamPolicy",
         target_id = id.from(_N, "JobRunExecutionIamPolicy"),
         target = M.JobRunExecutionIamPolicy,
      }),
      jobDriver = schema.new({
         id = id.from(_N, "StartJobRunInput", "jobDriver"),
         type = "union",
         name = "jobDriver",
         target_id = id.from(_N, "JobDriver"),
         target = M.JobDriver,
      }),
      configurationOverrides = schema.new({
         id = id.from(_N, "StartJobRunInput", "configurationOverrides"),
         type = "structure",
         name = "configurationOverrides",
         target_id = id.from(_N, "ConfigurationOverrides"),
         target = M.ConfigurationOverrides,
      }),
      tags = schema.new({
         id = id.from(_N, "StartJobRunInput", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      executionTimeoutMinutes = schema.new({
         id = id.from(_N, "StartJobRunInput", "executionTimeoutMinutes"),
         type = "long",
         name = "executionTimeoutMinutes",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = nil },
         },
      }),
      name = schema.new({
         id = id.from(_N, "StartJobRunInput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      mode = schema.new({
         id = id.from(_N, "StartJobRunInput", "mode"),
         type = "string",
         name = "mode",
         target_id = prelude.String.id,
      }),
      retryPolicy = schema.new({
         id = id.from(_N, "StartJobRunInput", "retryPolicy"),
         type = "structure",
         name = "retryPolicy",
         target_id = id.from(_N, "RetryPolicy"),
         target = M.RetryPolicy,
      }),
   },
})

M.StartSessionInput = schema.new({
   id = id.from(_N, "StartSessionRequest"),
   type = "structure",
   members = {
      applicationId = schema.new({
         id = id.from(_N, "StartSessionInput", "applicationId"),
         type = "string",
         name = "applicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      clientToken = schema.new({
         id = id.from(_N, "StartSessionInput", "clientToken"),
         type = "string",
         name = "clientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      executionRoleArn = schema.new({
         id = id.from(_N, "StartSessionInput", "executionRoleArn"),
         type = "string",
         name = "executionRoleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      configurationOverrides = schema.new({
         id = id.from(_N, "StartSessionInput", "configurationOverrides"),
         type = "structure",
         name = "configurationOverrides",
         target_id = id.from(_N, "SessionConfigurationOverrides"),
         target = M.SessionConfigurationOverrides,
      }),
      tags = schema.new({
         id = id.from(_N, "StartSessionInput", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      idleTimeoutMinutes = schema.new({
         id = id.from(_N, "StartSessionInput", "idleTimeoutMinutes"),
         type = "long",
         name = "idleTimeoutMinutes",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = nil },
         },
      }),
      name = schema.new({
         id = id.from(_N, "StartSessionInput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateApplicationOutput = schema.new({
   id = id.from(_N, "UpdateApplicationResponse"),
   type = "structure",
   members = {
      application = schema.new({
         id = id.from(_N, "UpdateApplicationOutput", "application"),
         type = "structure",
         name = "application",
         target_id = id.from(_N, "Application"),
         target = M.Application,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetJobRunOutput = schema.new({
   id = id.from(_N, "GetJobRunResponse"),
   type = "structure",
   members = {
      jobRun = schema.new({
         id = id.from(_N, "GetJobRunOutput", "jobRun"),
         type = "structure",
         name = "jobRun",
         target_id = id.from(_N, "JobRun"),
         target = M.JobRun,
         traits = {
            [traits.REQUIRED] = {},
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
         target_id = id.from(_N, "Session"),
         target = M.Session,
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
   id = id.from("com.amazonaws.emrserverless", "AwsToledoWebService"),
   version = "2021-07-13",
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CancelJobRun = schema.operation({
   id = id.from("com.amazonaws.emrserverless", "CancelJobRun"),
   input = M.CancelJobRunInput,
   output = M.CancelJobRunOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/applications/{applicationId}/jobruns/{jobRunId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateApplication = schema.operation({
   id = id.from("com.amazonaws.emrserverless", "CreateApplication"),
   input = M.CreateApplicationInput,
   output = M.CreateApplicationOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/applications" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteApplication = schema.operation({
   id = id.from("com.amazonaws.emrserverless", "DeleteApplication"),
   input = M.DeleteApplicationInput,
   output = M.DeleteApplicationOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/applications/{applicationId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetApplication = schema.operation({
   id = id.from("com.amazonaws.emrserverless", "GetApplication"),
   input = M.GetApplicationInput,
   output = M.GetApplicationOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/applications/{applicationId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetDashboardForJobRun = schema.operation({
   id = id.from("com.amazonaws.emrserverless", "GetDashboardForJobRun"),
   input = M.GetDashboardForJobRunInput,
   output = M.GetDashboardForJobRunOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/applications/{applicationId}/jobruns/{jobRunId}/dashboard" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetJobRun = schema.operation({
   id = id.from("com.amazonaws.emrserverless", "GetJobRun"),
   input = M.GetJobRunInput,
   output = M.GetJobRunOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/applications/{applicationId}/jobruns/{jobRunId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetResourceDashboard = schema.operation({
   id = id.from("com.amazonaws.emrserverless", "GetResourceDashboard"),
   input = M.GetResourceDashboardInput,
   output = M.GetResourceDashboardOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/applications/{applicationId}/dashboard" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetSession = schema.operation({
   id = id.from("com.amazonaws.emrserverless", "GetSession"),
   input = M.GetSessionInput,
   output = M.GetSessionOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/applications/{applicationId}/sessions/{sessionId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetSessionEndpoint = schema.operation({
   id = id.from("com.amazonaws.emrserverless", "GetSessionEndpoint"),
   input = M.GetSessionEndpointInput,
   output = M.GetSessionEndpointOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/applications/{applicationId}/sessions/{sessionId}/endpoint" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListApplications = schema.operation({
   id = id.from("com.amazonaws.emrserverless", "ListApplications"),
   input = M.ListApplicationsInput,
   output = M.ListApplicationsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/applications" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListJobRunAttempts = schema.operation({
   id = id.from("com.amazonaws.emrserverless", "ListJobRunAttempts"),
   input = M.ListJobRunAttemptsInput,
   output = M.ListJobRunAttemptsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/applications/{applicationId}/jobruns/{jobRunId}/attempts" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListJobRuns = schema.operation({
   id = id.from("com.amazonaws.emrserverless", "ListJobRuns"),
   input = M.ListJobRunsInput,
   output = M.ListJobRunsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/applications/{applicationId}/jobruns" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListSessions = schema.operation({
   id = id.from("com.amazonaws.emrserverless", "ListSessions"),
   input = M.ListSessionsInput,
   output = M.ListSessionsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/applications/{applicationId}/sessions" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListTagsForResource = schema.operation({
   id = id.from("com.amazonaws.emrserverless", "ListTagsForResource"),
   input = M.ListTagsForResourceInput,
   output = M.ListTagsForResourceOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/tags/{resourceArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StartApplication = schema.operation({
   id = id.from("com.amazonaws.emrserverless", "StartApplication"),
   input = M.StartApplicationInput,
   output = M.StartApplicationOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/applications/{applicationId}/start" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StartJobRun = schema.operation({
   id = id.from("com.amazonaws.emrserverless", "StartJobRun"),
   input = M.StartJobRunInput,
   output = M.StartJobRunOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/applications/{applicationId}/jobruns" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StartSession = schema.operation({
   id = id.from("com.amazonaws.emrserverless", "StartSession"),
   input = M.StartSessionInput,
   output = M.StartSessionOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/applications/{applicationId}/sessions" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StopApplication = schema.operation({
   id = id.from("com.amazonaws.emrserverless", "StopApplication"),
   input = M.StopApplicationInput,
   output = M.StopApplicationOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/applications/{applicationId}/stop" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.TagResource = schema.operation({
   id = id.from("com.amazonaws.emrserverless", "TagResource"),
   input = M.TagResourceInput,
   output = M.TagResourceOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/tags/{resourceArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.TerminateSession = schema.operation({
   id = id.from("com.amazonaws.emrserverless", "TerminateSession"),
   input = M.TerminateSessionInput,
   output = M.TerminateSessionOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/applications/{applicationId}/sessions/{sessionId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UntagResource = schema.operation({
   id = id.from("com.amazonaws.emrserverless", "UntagResource"),
   input = M.UntagResourceInput,
   output = M.UntagResourceOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/tags/{resourceArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateApplication = schema.operation({
   id = id.from("com.amazonaws.emrserverless", "UpdateApplication"),
   input = M.UpdateApplicationInput,
   output = M.UpdateApplicationOutput,
   traits = {
      [traits.HTTP] = { method = "PATCH", path = "/applications/{applicationId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

return M
