

local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.applicationdiscoveryservice"

local M = {}

M.ConfigurationIdList = schema.new({ type = "list", list_member = prelude.String })

M.DeleteAgents = schema.new({ type = "list", list_member = M.DeleteAgent })

M.BatchDeleteAgentErrors = schema.new({ type = "list", list_member = M.BatchDeleteAgentError })

M.ToDeleteIdentifierList = schema.new({ type = "list", list_member = prelude.String })

M.BatchDeleteImportDataErrorList = schema.new({ type = "list", list_member = M.BatchDeleteImportDataError })

M.TagSet = schema.new({ type = "list", list_member = M.Tag })

M.ApplicationIdsList = schema.new({ type = "list", list_member = prelude.String })

M.AgentIds = schema.new({ type = "list", list_member = prelude.String })

M.Filters = schema.new({ type = "list", list_member = M.Filter })

M.AgentsInfo = schema.new({ type = "list", list_member = M.AgentInfo })

M.DescribeConfigurationsAttributes = schema.new({ type = "list", list_member = M.DescribeConfigurationsAttribute })

M.ContinuousExportIds = schema.new({ type = "list", list_member = prelude.String })

M.ContinuousExportDescriptions = schema.new({ type = "list", list_member = M.ContinuousExportDescription })

M.ExportIds = schema.new({ type = "list", list_member = prelude.String })

M.ExportsInfo = schema.new({ type = "list", list_member = M.ExportInfo })

M.ExportFilters = schema.new({ type = "list", list_member = M.ExportFilter })

M.DescribeImportTasksFilterList = schema.new({ type = "list", list_member = M.ImportTaskFilter })

M.ImportTaskList = schema.new({ type = "list", list_member = M.ImportTask })

M.TagFilters = schema.new({ type = "list", list_member = M.TagFilter })

M.ConfigurationTagSet = schema.new({ type = "list", list_member = M.ConfigurationTag })

M.OrderByList = schema.new({ type = "list", list_member = M.OrderByElement })

M.Configurations = schema.new({ type = "list", list_member = M.Configuration })

M.NeighborDetailsList = schema.new({ type = "list", list_member = M.NeighborConnectionDetail })

M.SchemaStorageConfig = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.AgentConfigurationStatusList = schema.new({ type = "list", list_member = M.AgentConfigurationStatus })

M.ExportDataFormats = schema.new({ type = "list", list_member = prelude.String })

M.FailedConfigurationList = schema.new({ type = "list", list_member = M.FailedConfiguration })

M.DeletionWarningsList = schema.new({ type = "list", list_member = M.DeletionWarning })

M.DescribeConfigurationsAttribute = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.Configuration = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.FilterValues = schema.new({ type = "list", list_member = prelude.String })

M.AgentNetworkInfoList = schema.new({ type = "list", list_member = M.AgentNetworkInfo })

M.ImportTaskFilterValueList = schema.new({ type = "list", list_member = prelude.String })

M.ExcludedInstanceTypes = schema.new({ type = "list", list_member = prelude.String })

M.AgentConfigurationStatus = schema.new({
   id = id.from(_N, "AgentConfigurationStatus"),
   type = "structure",
   members = {
      agentId = schema.new({
         id = id.from(_N, "AgentConfigurationStatus", "agentId"),
         type = "string",
         name = "agentId",
         target_id = prelude.String.id,
      }),
      operationSucceeded = schema.new({
         id = id.from(_N, "AgentConfigurationStatus", "operationSucceeded"),
         type = "boolean",
         name = "operationSucceeded",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      description = schema.new({
         id = id.from(_N, "AgentConfigurationStatus", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
   },
})

M.AgentNetworkInfo = schema.new({
   id = id.from(_N, "AgentNetworkInfo"),
   type = "structure",
   members = {
      ipAddress = schema.new({
         id = id.from(_N, "AgentNetworkInfo", "ipAddress"),
         type = "string",
         name = "ipAddress",
         target_id = prelude.String.id,
      }),
      macAddress = schema.new({
         id = id.from(_N, "AgentNetworkInfo", "macAddress"),
         type = "string",
         name = "macAddress",
         target_id = prelude.String.id,
      }),
   },
})

M.AgentInfo = schema.new({
   id = id.from(_N, "AgentInfo"),
   type = "structure",
   members = {
      agentId = schema.new({
         id = id.from(_N, "AgentInfo", "agentId"),
         type = "string",
         name = "agentId",
         target_id = prelude.String.id,
      }),
      hostName = schema.new({
         id = id.from(_N, "AgentInfo", "hostName"),
         type = "string",
         name = "hostName",
         target_id = prelude.String.id,
      }),
      agentNetworkInfoList = schema.new({
         id = id.from(_N, "AgentInfo", "agentNetworkInfoList"),
         type = "list",
         name = "agentNetworkInfoList",
         target_id = prelude.Document.id,
         list_member = M.AgentNetworkInfo,
      }),
      connectorId = schema.new({
         id = id.from(_N, "AgentInfo", "connectorId"),
         type = "string",
         name = "connectorId",
         target_id = prelude.String.id,
      }),
      version = schema.new({
         id = id.from(_N, "AgentInfo", "version"),
         type = "string",
         name = "version",
         target_id = prelude.String.id,
      }),
      health = schema.new({
         id = id.from(_N, "AgentInfo", "health"),
         type = "string",
         name = "health",
         target_id = prelude.String.id,
      }),
      lastHealthPingTime = schema.new({
         id = id.from(_N, "AgentInfo", "lastHealthPingTime"),
         type = "string",
         name = "lastHealthPingTime",
         target_id = prelude.String.id,
      }),
      collectionStatus = schema.new({
         id = id.from(_N, "AgentInfo", "collectionStatus"),
         type = "string",
         name = "collectionStatus",
         target_id = prelude.String.id,
      }),
      agentType = schema.new({
         id = id.from(_N, "AgentInfo", "agentType"),
         type = "string",
         name = "agentType",
         target_id = prelude.String.id,
      }),
      registeredTime = schema.new({
         id = id.from(_N, "AgentInfo", "registeredTime"),
         type = "string",
         name = "registeredTime",
         target_id = prelude.String.id,
      }),
   },
})

M.AssociateConfigurationItemsToApplicationInput = schema.new({
   id = id.from(_N, "AssociateConfigurationItemsToApplicationRequest"),
   type = "structure",
   members = {
      applicationConfigurationId = schema.new({
         id = id.from(_N, "AssociateConfigurationItemsToApplicationInput", "applicationConfigurationId"),
         type = "string",
         name = "applicationConfigurationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      configurationIds = schema.new({
         id = id.from(_N, "AssociateConfigurationItemsToApplicationInput", "configurationIds"),
         type = "list",
         name = "configurationIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AssociateConfigurationItemsToApplicationOutput = schema.new({
   id = id.from(_N, "AssociateConfigurationItemsToApplicationResponse"),
   type = "structure",
})

M.AuthorizationErrorException = schema.new({
   id = id.from(_N, "AuthorizationErrorException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "AuthorizationErrorException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.HomeRegionNotSetException = schema.new({
   id = id.from(_N, "HomeRegionNotSetException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "HomeRegionNotSetException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.InvalidParameterException = schema.new({
   id = id.from(_N, "InvalidParameterException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "InvalidParameterException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.InvalidParameterValueException = schema.new({
   id = id.from(_N, "InvalidParameterValueException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "InvalidParameterValueException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.ServerInternalErrorException = schema.new({
   id = id.from(_N, "ServerInternalErrorException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "server" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "ServerInternalErrorException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.DeleteAgent = schema.new({
   id = id.from(_N, "DeleteAgent"),
   type = "structure",
   members = {
      agentId = schema.new({
         id = id.from(_N, "DeleteAgent", "agentId"),
         type = "string",
         name = "agentId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      force = schema.new({
         id = id.from(_N, "DeleteAgent", "force"),
         type = "boolean",
         name = "force",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
   },
})

M.BatchDeleteAgentsInput = schema.new({
   id = id.from(_N, "BatchDeleteAgentsRequest"),
   type = "structure",
   members = {
      deleteAgents = schema.new({
         id = id.from(_N, "BatchDeleteAgentsInput", "deleteAgents"),
         type = "list",
         name = "deleteAgents",
         target_id = prelude.Document.id,
         list_member = M.DeleteAgent,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.BatchDeleteAgentError = schema.new({
   id = id.from(_N, "BatchDeleteAgentError"),
   type = "structure",
   members = {
      agentId = schema.new({
         id = id.from(_N, "BatchDeleteAgentError", "agentId"),
         type = "string",
         name = "agentId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      errorMessage = schema.new({
         id = id.from(_N, "BatchDeleteAgentError", "errorMessage"),
         type = "string",
         name = "errorMessage",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      errorCode = schema.new({
         id = id.from(_N, "BatchDeleteAgentError", "errorCode"),
         type = "string",
         name = "errorCode",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.BatchDeleteAgentsOutput = schema.new({
   id = id.from(_N, "BatchDeleteAgentsResponse"),
   type = "structure",
   members = {
      errors = schema.new({
         id = id.from(_N, "BatchDeleteAgentsOutput", "errors"),
         type = "list",
         name = "errors",
         target_id = prelude.Document.id,
         list_member = M.BatchDeleteAgentError,
      }),
   },
})

M.BatchDeleteImportDataInput = schema.new({
   id = id.from(_N, "BatchDeleteImportDataRequest"),
   type = "structure",
   members = {
      importTaskIds = schema.new({
         id = id.from(_N, "BatchDeleteImportDataInput", "importTaskIds"),
         type = "list",
         name = "importTaskIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      deleteHistory = schema.new({
         id = id.from(_N, "BatchDeleteImportDataInput", "deleteHistory"),
         type = "boolean",
         name = "deleteHistory",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
   },
})

M.BatchDeleteImportDataError = schema.new({
   id = id.from(_N, "BatchDeleteImportDataError"),
   type = "structure",
   members = {
      importTaskId = schema.new({
         id = id.from(_N, "BatchDeleteImportDataError", "importTaskId"),
         type = "string",
         name = "importTaskId",
         target_id = prelude.String.id,
      }),
      errorCode = schema.new({
         id = id.from(_N, "BatchDeleteImportDataError", "errorCode"),
         type = "string",
         name = "errorCode",
         target_id = prelude.String.id,
      }),
      errorDescription = schema.new({
         id = id.from(_N, "BatchDeleteImportDataError", "errorDescription"),
         type = "string",
         name = "errorDescription",
         target_id = prelude.String.id,
      }),
   },
})

M.BatchDeleteImportDataOutput = schema.new({
   id = id.from(_N, "BatchDeleteImportDataResponse"),
   type = "structure",
   members = {
      errors = schema.new({
         id = id.from(_N, "BatchDeleteImportDataOutput", "errors"),
         type = "list",
         name = "errors",
         target_id = prelude.Document.id,
         list_member = M.BatchDeleteImportDataError,
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
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      description = schema.new({
         id = id.from(_N, "CreateApplicationInput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      wave = schema.new({
         id = id.from(_N, "CreateApplicationInput", "wave"),
         type = "string",
         name = "wave",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateApplicationOutput = schema.new({
   id = id.from(_N, "CreateApplicationResponse"),
   type = "structure",
   members = {
      configurationId = schema.new({
         id = id.from(_N, "CreateApplicationOutput", "configurationId"),
         type = "string",
         name = "configurationId",
         target_id = prelude.String.id,
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
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      value = schema.new({
         id = id.from(_N, "Tag", "value"),
         type = "string",
         name = "value",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CreateTagsInput = schema.new({
   id = id.from(_N, "CreateTagsRequest"),
   type = "structure",
   members = {
      configurationIds = schema.new({
         id = id.from(_N, "CreateTagsInput", "configurationIds"),
         type = "list",
         name = "configurationIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      tags = schema.new({
         id = id.from(_N, "CreateTagsInput", "tags"),
         type = "list",
         name = "tags",
         target_id = prelude.Document.id,
         list_member = schema.new({ type = "structure", target = M.Tag, traits = { [traits.XML_NAME] = { name = "item" } } }),
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CreateTagsOutput = schema.new({
   id = id.from(_N, "CreateTagsResponse"),
   type = "structure",
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

M.DeleteApplicationsInput = schema.new({
   id = id.from(_N, "DeleteApplicationsRequest"),
   type = "structure",
   members = {
      configurationIds = schema.new({
         id = id.from(_N, "DeleteApplicationsInput", "configurationIds"),
         type = "list",
         name = "configurationIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteApplicationsOutput = schema.new({
   id = id.from(_N, "DeleteApplicationsResponse"),
   type = "structure",
})

M.DeleteTagsInput = schema.new({
   id = id.from(_N, "DeleteTagsRequest"),
   type = "structure",
   members = {
      configurationIds = schema.new({
         id = id.from(_N, "DeleteTagsInput", "configurationIds"),
         type = "list",
         name = "configurationIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      tags = schema.new({
         id = id.from(_N, "DeleteTagsInput", "tags"),
         type = "list",
         name = "tags",
         target_id = prelude.Document.id,
         list_member = schema.new({ type = "structure", target = M.Tag, traits = { [traits.XML_NAME] = { name = "item" } } }),
      }),
   },
})

M.DeleteTagsOutput = schema.new({
   id = id.from(_N, "DeleteTagsResponse"),
   type = "structure",
})

M.Filter = schema.new({
   id = id.from(_N, "Filter"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "Filter", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      values = schema.new({
         id = id.from(_N, "Filter", "values"),
         type = "list",
         name = "values",
         target_id = prelude.Document.id,
         list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "item" } } }),
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      condition = schema.new({
         id = id.from(_N, "Filter", "condition"),
         type = "string",
         name = "condition",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DescribeAgentsInput = schema.new({
   id = id.from(_N, "DescribeAgentsRequest"),
   type = "structure",
   members = {
      agentIds = schema.new({
         id = id.from(_N, "DescribeAgentsInput", "agentIds"),
         type = "list",
         name = "agentIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      filters = schema.new({
         id = id.from(_N, "DescribeAgentsInput", "filters"),
         type = "list",
         name = "filters",
         target_id = prelude.Document.id,
         list_member = M.Filter,
      }),
      maxResults = schema.new({
         id = id.from(_N, "DescribeAgentsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "DescribeAgentsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeAgentsOutput = schema.new({
   id = id.from(_N, "DescribeAgentsResponse"),
   type = "structure",
   members = {
      agentsInfo = schema.new({
         id = id.from(_N, "DescribeAgentsOutput", "agentsInfo"),
         type = "list",
         name = "agentsInfo",
         target_id = prelude.Document.id,
         list_member = M.AgentInfo,
      }),
      nextToken = schema.new({
         id = id.from(_N, "DescribeAgentsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeBatchDeleteConfigurationTaskInput = schema.new({
   id = id.from(_N, "DescribeBatchDeleteConfigurationTaskRequest"),
   type = "structure",
   members = {
      taskId = schema.new({
         id = id.from(_N, "DescribeBatchDeleteConfigurationTaskInput", "taskId"),
         type = "string",
         name = "taskId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeletionWarning = schema.new({
   id = id.from(_N, "DeletionWarning"),
   type = "structure",
   members = {
      configurationId = schema.new({
         id = id.from(_N, "DeletionWarning", "configurationId"),
         type = "string",
         name = "configurationId",
         target_id = prelude.String.id,
      }),
      warningCode = schema.new({
         id = id.from(_N, "DeletionWarning", "warningCode"),
         type = "integer",
         name = "warningCode",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      warningText = schema.new({
         id = id.from(_N, "DeletionWarning", "warningText"),
         type = "string",
         name = "warningText",
         target_id = prelude.String.id,
      }),
   },
})

M.FailedConfiguration = schema.new({
   id = id.from(_N, "FailedConfiguration"),
   type = "structure",
   members = {
      configurationId = schema.new({
         id = id.from(_N, "FailedConfiguration", "configurationId"),
         type = "string",
         name = "configurationId",
         target_id = prelude.String.id,
      }),
      errorStatusCode = schema.new({
         id = id.from(_N, "FailedConfiguration", "errorStatusCode"),
         type = "integer",
         name = "errorStatusCode",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      errorMessage = schema.new({
         id = id.from(_N, "FailedConfiguration", "errorMessage"),
         type = "string",
         name = "errorMessage",
         target_id = prelude.String.id,
      }),
   },
})

M.BatchDeleteConfigurationTask = schema.new({
   id = id.from(_N, "BatchDeleteConfigurationTask"),
   type = "structure",
   members = {
      taskId = schema.new({
         id = id.from(_N, "BatchDeleteConfigurationTask", "taskId"),
         type = "string",
         name = "taskId",
         target_id = prelude.String.id,
      }),
      status = schema.new({
         id = id.from(_N, "BatchDeleteConfigurationTask", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
      startTime = schema.new({
         id = id.from(_N, "BatchDeleteConfigurationTask", "startTime"),
         type = "timestamp",
         name = "startTime",
         target_id = prelude.Timestamp.id,
      }),
      endTime = schema.new({
         id = id.from(_N, "BatchDeleteConfigurationTask", "endTime"),
         type = "timestamp",
         name = "endTime",
         target_id = prelude.Timestamp.id,
      }),
      configurationType = schema.new({
         id = id.from(_N, "BatchDeleteConfigurationTask", "configurationType"),
         type = "string",
         name = "configurationType",
         target_id = prelude.String.id,
      }),
      requestedConfigurations = schema.new({
         id = id.from(_N, "BatchDeleteConfigurationTask", "requestedConfigurations"),
         type = "list",
         name = "requestedConfigurations",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      deletedConfigurations = schema.new({
         id = id.from(_N, "BatchDeleteConfigurationTask", "deletedConfigurations"),
         type = "list",
         name = "deletedConfigurations",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      failedConfigurations = schema.new({
         id = id.from(_N, "BatchDeleteConfigurationTask", "failedConfigurations"),
         type = "list",
         name = "failedConfigurations",
         target_id = prelude.Document.id,
         list_member = M.FailedConfiguration,
      }),
      deletionWarnings = schema.new({
         id = id.from(_N, "BatchDeleteConfigurationTask", "deletionWarnings"),
         type = "list",
         name = "deletionWarnings",
         target_id = prelude.Document.id,
         list_member = M.DeletionWarning,
      }),
   },
})

M.DescribeBatchDeleteConfigurationTaskOutput = schema.new({
   id = id.from(_N, "DescribeBatchDeleteConfigurationTaskResponse"),
   type = "structure",
   members = {
      task = schema.new({
         id = id.from(_N, "DescribeBatchDeleteConfigurationTaskOutput", "task"),
         type = "structure",
         name = "task",
         target_id = id.from(_N, "BatchDeleteConfigurationTask"),
         target = M.BatchDeleteConfigurationTask,
      }),
   },
})

M.DescribeConfigurationsInput = schema.new({
   id = id.from(_N, "DescribeConfigurationsRequest"),
   type = "structure",
   members = {
      configurationIds = schema.new({
         id = id.from(_N, "DescribeConfigurationsInput", "configurationIds"),
         type = "list",
         name = "configurationIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DescribeConfigurationsOutput = schema.new({
   id = id.from(_N, "DescribeConfigurationsResponse"),
   type = "structure",
   members = {
      configurations = schema.new({
         id = id.from(_N, "DescribeConfigurationsOutput", "configurations"),
         type = "list",
         name = "configurations",
         target_id = prelude.Document.id,
         list_member = M.DescribeConfigurationsAttribute,
      }),
   },
})

M.DescribeContinuousExportsInput = schema.new({
   id = id.from(_N, "DescribeContinuousExportsRequest"),
   type = "structure",
   members = {
      exportIds = schema.new({
         id = id.from(_N, "DescribeContinuousExportsInput", "exportIds"),
         type = "list",
         name = "exportIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      maxResults = schema.new({
         id = id.from(_N, "DescribeContinuousExportsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
      }),
      nextToken = schema.new({
         id = id.from(_N, "DescribeContinuousExportsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ContinuousExportDescription = schema.new({
   id = id.from(_N, "ContinuousExportDescription"),
   type = "structure",
   members = {
      exportId = schema.new({
         id = id.from(_N, "ContinuousExportDescription", "exportId"),
         type = "string",
         name = "exportId",
         target_id = prelude.String.id,
      }),
      status = schema.new({
         id = id.from(_N, "ContinuousExportDescription", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
      statusDetail = schema.new({
         id = id.from(_N, "ContinuousExportDescription", "statusDetail"),
         type = "string",
         name = "statusDetail",
         target_id = prelude.String.id,
      }),
      s3Bucket = schema.new({
         id = id.from(_N, "ContinuousExportDescription", "s3Bucket"),
         type = "string",
         name = "s3Bucket",
         target_id = prelude.String.id,
      }),
      startTime = schema.new({
         id = id.from(_N, "ContinuousExportDescription", "startTime"),
         type = "timestamp",
         name = "startTime",
         target_id = prelude.Timestamp.id,
      }),
      stopTime = schema.new({
         id = id.from(_N, "ContinuousExportDescription", "stopTime"),
         type = "timestamp",
         name = "stopTime",
         target_id = prelude.Timestamp.id,
      }),
      dataSource = schema.new({
         id = id.from(_N, "ContinuousExportDescription", "dataSource"),
         type = "string",
         name = "dataSource",
         target_id = prelude.String.id,
      }),
      schemaStorageConfig = schema.new({
         id = id.from(_N, "ContinuousExportDescription", "schemaStorageConfig"),
         type = "map",
         name = "schemaStorageConfig",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.DescribeContinuousExportsOutput = schema.new({
   id = id.from(_N, "DescribeContinuousExportsResponse"),
   type = "structure",
   members = {
      descriptions = schema.new({
         id = id.from(_N, "DescribeContinuousExportsOutput", "descriptions"),
         type = "list",
         name = "descriptions",
         target_id = prelude.Document.id,
         list_member = M.ContinuousExportDescription,
      }),
      nextToken = schema.new({
         id = id.from(_N, "DescribeContinuousExportsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.OperationNotPermittedException = schema.new({
   id = id.from(_N, "OperationNotPermittedException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "OperationNotPermittedException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeExportConfigurationsInput = schema.new({
   id = id.from(_N, "DescribeExportConfigurationsRequest"),
   type = "structure",
   members = {
      exportIds = schema.new({
         id = id.from(_N, "DescribeExportConfigurationsInput", "exportIds"),
         type = "list",
         name = "exportIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      maxResults = schema.new({
         id = id.from(_N, "DescribeExportConfigurationsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "DescribeExportConfigurationsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ExportInfo = schema.new({
   id = id.from(_N, "ExportInfo"),
   type = "structure",
   members = {
      exportId = schema.new({
         id = id.from(_N, "ExportInfo", "exportId"),
         type = "string",
         name = "exportId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      exportStatus = schema.new({
         id = id.from(_N, "ExportInfo", "exportStatus"),
         type = "string",
         name = "exportStatus",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      statusMessage = schema.new({
         id = id.from(_N, "ExportInfo", "statusMessage"),
         type = "string",
         name = "statusMessage",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      configurationsDownloadUrl = schema.new({
         id = id.from(_N, "ExportInfo", "configurationsDownloadUrl"),
         type = "string",
         name = "configurationsDownloadUrl",
         target_id = prelude.String.id,
      }),
      exportRequestTime = schema.new({
         id = id.from(_N, "ExportInfo", "exportRequestTime"),
         type = "timestamp",
         name = "exportRequestTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      isTruncated = schema.new({
         id = id.from(_N, "ExportInfo", "isTruncated"),
         type = "boolean",
         name = "isTruncated",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      requestedStartTime = schema.new({
         id = id.from(_N, "ExportInfo", "requestedStartTime"),
         type = "timestamp",
         name = "requestedStartTime",
         target_id = prelude.Timestamp.id,
      }),
      requestedEndTime = schema.new({
         id = id.from(_N, "ExportInfo", "requestedEndTime"),
         type = "timestamp",
         name = "requestedEndTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.DescribeExportConfigurationsOutput = schema.new({
   id = id.from(_N, "DescribeExportConfigurationsResponse"),
   type = "structure",
   members = {
      exportsInfo = schema.new({
         id = id.from(_N, "DescribeExportConfigurationsOutput", "exportsInfo"),
         type = "list",
         name = "exportsInfo",
         target_id = prelude.Document.id,
         list_member = M.ExportInfo,
      }),
      nextToken = schema.new({
         id = id.from(_N, "DescribeExportConfigurationsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ExportFilter = schema.new({
   id = id.from(_N, "ExportFilter"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "ExportFilter", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      values = schema.new({
         id = id.from(_N, "ExportFilter", "values"),
         type = "list",
         name = "values",
         target_id = prelude.Document.id,
         list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "item" } } }),
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      condition = schema.new({
         id = id.from(_N, "ExportFilter", "condition"),
         type = "string",
         name = "condition",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DescribeExportTasksInput = schema.new({
   id = id.from(_N, "DescribeExportTasksRequest"),
   type = "structure",
   members = {
      exportIds = schema.new({
         id = id.from(_N, "DescribeExportTasksInput", "exportIds"),
         type = "list",
         name = "exportIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      filters = schema.new({
         id = id.from(_N, "DescribeExportTasksInput", "filters"),
         type = "list",
         name = "filters",
         target_id = prelude.Document.id,
         list_member = M.ExportFilter,
      }),
      maxResults = schema.new({
         id = id.from(_N, "DescribeExportTasksInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "DescribeExportTasksInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeExportTasksOutput = schema.new({
   id = id.from(_N, "DescribeExportTasksResponse"),
   type = "structure",
   members = {
      exportsInfo = schema.new({
         id = id.from(_N, "DescribeExportTasksOutput", "exportsInfo"),
         type = "list",
         name = "exportsInfo",
         target_id = prelude.Document.id,
         list_member = M.ExportInfo,
      }),
      nextToken = schema.new({
         id = id.from(_N, "DescribeExportTasksOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ImportTaskFilter = schema.new({
   id = id.from(_N, "ImportTaskFilter"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "ImportTaskFilter", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      values = schema.new({
         id = id.from(_N, "ImportTaskFilter", "values"),
         type = "list",
         name = "values",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.DescribeImportTasksInput = schema.new({
   id = id.from(_N, "DescribeImportTasksRequest"),
   type = "structure",
   members = {
      filters = schema.new({
         id = id.from(_N, "DescribeImportTasksInput", "filters"),
         type = "list",
         name = "filters",
         target_id = prelude.Document.id,
         list_member = M.ImportTaskFilter,
      }),
      maxResults = schema.new({
         id = id.from(_N, "DescribeImportTasksInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
      }),
      nextToken = schema.new({
         id = id.from(_N, "DescribeImportTasksInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ImportTask = schema.new({
   id = id.from(_N, "ImportTask"),
   type = "structure",
   members = {
      importTaskId = schema.new({
         id = id.from(_N, "ImportTask", "importTaskId"),
         type = "string",
         name = "importTaskId",
         target_id = prelude.String.id,
      }),
      clientRequestToken = schema.new({
         id = id.from(_N, "ImportTask", "clientRequestToken"),
         type = "string",
         name = "clientRequestToken",
         target_id = prelude.String.id,
      }),
      name = schema.new({
         id = id.from(_N, "ImportTask", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      importUrl = schema.new({
         id = id.from(_N, "ImportTask", "importUrl"),
         type = "string",
         name = "importUrl",
         target_id = prelude.String.id,
      }),
      status = schema.new({
         id = id.from(_N, "ImportTask", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
      importRequestTime = schema.new({
         id = id.from(_N, "ImportTask", "importRequestTime"),
         type = "timestamp",
         name = "importRequestTime",
         target_id = prelude.Timestamp.id,
      }),
      importCompletionTime = schema.new({
         id = id.from(_N, "ImportTask", "importCompletionTime"),
         type = "timestamp",
         name = "importCompletionTime",
         target_id = prelude.Timestamp.id,
      }),
      importDeletedTime = schema.new({
         id = id.from(_N, "ImportTask", "importDeletedTime"),
         type = "timestamp",
         name = "importDeletedTime",
         target_id = prelude.Timestamp.id,
      }),
      fileClassification = schema.new({
         id = id.from(_N, "ImportTask", "fileClassification"),
         type = "string",
         name = "fileClassification",
         target_id = prelude.String.id,
      }),
      serverImportSuccess = schema.new({
         id = id.from(_N, "ImportTask", "serverImportSuccess"),
         type = "integer",
         name = "serverImportSuccess",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      serverImportFailure = schema.new({
         id = id.from(_N, "ImportTask", "serverImportFailure"),
         type = "integer",
         name = "serverImportFailure",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      applicationImportSuccess = schema.new({
         id = id.from(_N, "ImportTask", "applicationImportSuccess"),
         type = "integer",
         name = "applicationImportSuccess",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      applicationImportFailure = schema.new({
         id = id.from(_N, "ImportTask", "applicationImportFailure"),
         type = "integer",
         name = "applicationImportFailure",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      errorsAndFailedEntriesZip = schema.new({
         id = id.from(_N, "ImportTask", "errorsAndFailedEntriesZip"),
         type = "string",
         name = "errorsAndFailedEntriesZip",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeImportTasksOutput = schema.new({
   id = id.from(_N, "DescribeImportTasksResponse"),
   type = "structure",
   members = {
      nextToken = schema.new({
         id = id.from(_N, "DescribeImportTasksOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
      tasks = schema.new({
         id = id.from(_N, "DescribeImportTasksOutput", "tasks"),
         type = "list",
         name = "tasks",
         target_id = prelude.Document.id,
         list_member = M.ImportTask,
      }),
   },
})

M.TagFilter = schema.new({
   id = id.from(_N, "TagFilter"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "TagFilter", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      values = schema.new({
         id = id.from(_N, "TagFilter", "values"),
         type = "list",
         name = "values",
         target_id = prelude.Document.id,
         list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "item" } } }),
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DescribeTagsInput = schema.new({
   id = id.from(_N, "DescribeTagsRequest"),
   type = "structure",
   members = {
      filters = schema.new({
         id = id.from(_N, "DescribeTagsInput", "filters"),
         type = "list",
         name = "filters",
         target_id = prelude.Document.id,
         list_member = M.TagFilter,
      }),
      maxResults = schema.new({
         id = id.from(_N, "DescribeTagsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "DescribeTagsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ConfigurationTag = schema.new({
   id = id.from(_N, "ConfigurationTag"),
   type = "structure",
   members = {
      configurationType = schema.new({
         id = id.from(_N, "ConfigurationTag", "configurationType"),
         type = "string",
         name = "configurationType",
         target_id = prelude.String.id,
      }),
      configurationId = schema.new({
         id = id.from(_N, "ConfigurationTag", "configurationId"),
         type = "string",
         name = "configurationId",
         target_id = prelude.String.id,
      }),
      key = schema.new({
         id = id.from(_N, "ConfigurationTag", "key"),
         type = "string",
         name = "key",
         target_id = prelude.String.id,
      }),
      value = schema.new({
         id = id.from(_N, "ConfigurationTag", "value"),
         type = "string",
         name = "value",
         target_id = prelude.String.id,
      }),
      timeOfCreation = schema.new({
         id = id.from(_N, "ConfigurationTag", "timeOfCreation"),
         type = "timestamp",
         name = "timeOfCreation",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.DescribeTagsOutput = schema.new({
   id = id.from(_N, "DescribeTagsResponse"),
   type = "structure",
   members = {
      tags = schema.new({
         id = id.from(_N, "DescribeTagsOutput", "tags"),
         type = "list",
         name = "tags",
         target_id = prelude.Document.id,
         list_member = schema.new({ type = "structure", target = M.ConfigurationTag, traits = { [traits.XML_NAME] = { name = "item" } } }),
      }),
      nextToken = schema.new({
         id = id.from(_N, "DescribeTagsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.DisassociateConfigurationItemsFromApplicationInput = schema.new({
   id = id.from(_N, "DisassociateConfigurationItemsFromApplicationRequest"),
   type = "structure",
   members = {
      applicationConfigurationId = schema.new({
         id = id.from(_N, "DisassociateConfigurationItemsFromApplicationInput", "applicationConfigurationId"),
         type = "string",
         name = "applicationConfigurationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      configurationIds = schema.new({
         id = id.from(_N, "DisassociateConfigurationItemsFromApplicationInput", "configurationIds"),
         type = "list",
         name = "configurationIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DisassociateConfigurationItemsFromApplicationOutput = schema.new({
   id = id.from(_N, "DisassociateConfigurationItemsFromApplicationResponse"),
   type = "structure",
})

M.ExportConfigurationsInput = prelude.Unit

M.ExportConfigurationsOutput = schema.new({
   id = id.from(_N, "ExportConfigurationsResponse"),
   type = "structure",
   members = {
      exportId = schema.new({
         id = id.from(_N, "ExportConfigurationsOutput", "exportId"),
         type = "string",
         name = "exportId",
         target_id = prelude.String.id,
      }),
   },
})

M.GetDiscoverySummaryInput = schema.new({
   id = id.from(_N, "GetDiscoverySummaryRequest"),
   type = "structure",
})

M.CustomerAgentlessCollectorInfo = schema.new({
   id = id.from(_N, "CustomerAgentlessCollectorInfo"),
   type = "structure",
   members = {
      activeAgentlessCollectors = schema.new({
         id = id.from(_N, "CustomerAgentlessCollectorInfo", "activeAgentlessCollectors"),
         type = "integer",
         name = "activeAgentlessCollectors",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      healthyAgentlessCollectors = schema.new({
         id = id.from(_N, "CustomerAgentlessCollectorInfo", "healthyAgentlessCollectors"),
         type = "integer",
         name = "healthyAgentlessCollectors",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      denyListedAgentlessCollectors = schema.new({
         id = id.from(_N, "CustomerAgentlessCollectorInfo", "denyListedAgentlessCollectors"),
         type = "integer",
         name = "denyListedAgentlessCollectors",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      shutdownAgentlessCollectors = schema.new({
         id = id.from(_N, "CustomerAgentlessCollectorInfo", "shutdownAgentlessCollectors"),
         type = "integer",
         name = "shutdownAgentlessCollectors",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      unhealthyAgentlessCollectors = schema.new({
         id = id.from(_N, "CustomerAgentlessCollectorInfo", "unhealthyAgentlessCollectors"),
         type = "integer",
         name = "unhealthyAgentlessCollectors",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      totalAgentlessCollectors = schema.new({
         id = id.from(_N, "CustomerAgentlessCollectorInfo", "totalAgentlessCollectors"),
         type = "integer",
         name = "totalAgentlessCollectors",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      unknownAgentlessCollectors = schema.new({
         id = id.from(_N, "CustomerAgentlessCollectorInfo", "unknownAgentlessCollectors"),
         type = "integer",
         name = "unknownAgentlessCollectors",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
   },
})

M.CustomerAgentInfo = schema.new({
   id = id.from(_N, "CustomerAgentInfo"),
   type = "structure",
   members = {
      activeAgents = schema.new({
         id = id.from(_N, "CustomerAgentInfo", "activeAgents"),
         type = "integer",
         name = "activeAgents",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      healthyAgents = schema.new({
         id = id.from(_N, "CustomerAgentInfo", "healthyAgents"),
         type = "integer",
         name = "healthyAgents",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      blackListedAgents = schema.new({
         id = id.from(_N, "CustomerAgentInfo", "blackListedAgents"),
         type = "integer",
         name = "blackListedAgents",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      shutdownAgents = schema.new({
         id = id.from(_N, "CustomerAgentInfo", "shutdownAgents"),
         type = "integer",
         name = "shutdownAgents",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      unhealthyAgents = schema.new({
         id = id.from(_N, "CustomerAgentInfo", "unhealthyAgents"),
         type = "integer",
         name = "unhealthyAgents",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      totalAgents = schema.new({
         id = id.from(_N, "CustomerAgentInfo", "totalAgents"),
         type = "integer",
         name = "totalAgents",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      unknownAgents = schema.new({
         id = id.from(_N, "CustomerAgentInfo", "unknownAgents"),
         type = "integer",
         name = "unknownAgents",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
   },
})

M.CustomerConnectorInfo = schema.new({
   id = id.from(_N, "CustomerConnectorInfo"),
   type = "structure",
   members = {
      activeConnectors = schema.new({
         id = id.from(_N, "CustomerConnectorInfo", "activeConnectors"),
         type = "integer",
         name = "activeConnectors",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      healthyConnectors = schema.new({
         id = id.from(_N, "CustomerConnectorInfo", "healthyConnectors"),
         type = "integer",
         name = "healthyConnectors",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      blackListedConnectors = schema.new({
         id = id.from(_N, "CustomerConnectorInfo", "blackListedConnectors"),
         type = "integer",
         name = "blackListedConnectors",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      shutdownConnectors = schema.new({
         id = id.from(_N, "CustomerConnectorInfo", "shutdownConnectors"),
         type = "integer",
         name = "shutdownConnectors",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      unhealthyConnectors = schema.new({
         id = id.from(_N, "CustomerConnectorInfo", "unhealthyConnectors"),
         type = "integer",
         name = "unhealthyConnectors",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      totalConnectors = schema.new({
         id = id.from(_N, "CustomerConnectorInfo", "totalConnectors"),
         type = "integer",
         name = "totalConnectors",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      unknownConnectors = schema.new({
         id = id.from(_N, "CustomerConnectorInfo", "unknownConnectors"),
         type = "integer",
         name = "unknownConnectors",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
   },
})

M.CustomerMeCollectorInfo = schema.new({
   id = id.from(_N, "CustomerMeCollectorInfo"),
   type = "structure",
   members = {
      activeMeCollectors = schema.new({
         id = id.from(_N, "CustomerMeCollectorInfo", "activeMeCollectors"),
         type = "integer",
         name = "activeMeCollectors",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      healthyMeCollectors = schema.new({
         id = id.from(_N, "CustomerMeCollectorInfo", "healthyMeCollectors"),
         type = "integer",
         name = "healthyMeCollectors",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      denyListedMeCollectors = schema.new({
         id = id.from(_N, "CustomerMeCollectorInfo", "denyListedMeCollectors"),
         type = "integer",
         name = "denyListedMeCollectors",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      shutdownMeCollectors = schema.new({
         id = id.from(_N, "CustomerMeCollectorInfo", "shutdownMeCollectors"),
         type = "integer",
         name = "shutdownMeCollectors",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      unhealthyMeCollectors = schema.new({
         id = id.from(_N, "CustomerMeCollectorInfo", "unhealthyMeCollectors"),
         type = "integer",
         name = "unhealthyMeCollectors",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      totalMeCollectors = schema.new({
         id = id.from(_N, "CustomerMeCollectorInfo", "totalMeCollectors"),
         type = "integer",
         name = "totalMeCollectors",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      unknownMeCollectors = schema.new({
         id = id.from(_N, "CustomerMeCollectorInfo", "unknownMeCollectors"),
         type = "integer",
         name = "unknownMeCollectors",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
   },
})

M.GetDiscoverySummaryOutput = schema.new({
   id = id.from(_N, "GetDiscoverySummaryResponse"),
   type = "structure",
   members = {
      servers = schema.new({
         id = id.from(_N, "GetDiscoverySummaryOutput", "servers"),
         type = "long",
         name = "servers",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      applications = schema.new({
         id = id.from(_N, "GetDiscoverySummaryOutput", "applications"),
         type = "long",
         name = "applications",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      serversMappedToApplications = schema.new({
         id = id.from(_N, "GetDiscoverySummaryOutput", "serversMappedToApplications"),
         type = "long",
         name = "serversMappedToApplications",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      serversMappedtoTags = schema.new({
         id = id.from(_N, "GetDiscoverySummaryOutput", "serversMappedtoTags"),
         type = "long",
         name = "serversMappedtoTags",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      agentSummary = schema.new({
         id = id.from(_N, "GetDiscoverySummaryOutput", "agentSummary"),
         type = "structure",
         name = "agentSummary",
         target_id = id.from(_N, "CustomerAgentInfo"),
         target = M.CustomerAgentInfo,
      }),
      connectorSummary = schema.new({
         id = id.from(_N, "GetDiscoverySummaryOutput", "connectorSummary"),
         type = "structure",
         name = "connectorSummary",
         target_id = id.from(_N, "CustomerConnectorInfo"),
         target = M.CustomerConnectorInfo,
      }),
      meCollectorSummary = schema.new({
         id = id.from(_N, "GetDiscoverySummaryOutput", "meCollectorSummary"),
         type = "structure",
         name = "meCollectorSummary",
         target_id = id.from(_N, "CustomerMeCollectorInfo"),
         target = M.CustomerMeCollectorInfo,
      }),
      agentlessCollectorSummary = schema.new({
         id = id.from(_N, "GetDiscoverySummaryOutput", "agentlessCollectorSummary"),
         type = "structure",
         name = "agentlessCollectorSummary",
         target_id = id.from(_N, "CustomerAgentlessCollectorInfo"),
         target = M.CustomerAgentlessCollectorInfo,
      }),
   },
})

M.OrderByElement = schema.new({
   id = id.from(_N, "OrderByElement"),
   type = "structure",
   members = {
      fieldName = schema.new({
         id = id.from(_N, "OrderByElement", "fieldName"),
         type = "string",
         name = "fieldName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      sortOrder = schema.new({
         id = id.from(_N, "OrderByElement", "sortOrder"),
         type = "string",
         name = "sortOrder",
         target_id = prelude.String.id,
      }),
   },
})

M.ListConfigurationsInput = schema.new({
   id = id.from(_N, "ListConfigurationsRequest"),
   type = "structure",
   members = {
      configurationType = schema.new({
         id = id.from(_N, "ListConfigurationsInput", "configurationType"),
         type = "string",
         name = "configurationType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      filters = schema.new({
         id = id.from(_N, "ListConfigurationsInput", "filters"),
         type = "list",
         name = "filters",
         target_id = prelude.Document.id,
         list_member = M.Filter,
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListConfigurationsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListConfigurationsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
      orderBy = schema.new({
         id = id.from(_N, "ListConfigurationsInput", "orderBy"),
         type = "list",
         name = "orderBy",
         target_id = prelude.Document.id,
         list_member = M.OrderByElement,
      }),
   },
})

M.ListConfigurationsOutput = schema.new({
   id = id.from(_N, "ListConfigurationsResponse"),
   type = "structure",
   members = {
      configurations = schema.new({
         id = id.from(_N, "ListConfigurationsOutput", "configurations"),
         type = "list",
         name = "configurations",
         target_id = prelude.Document.id,
         list_member = M.Configuration,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListConfigurationsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListServerNeighborsInput = schema.new({
   id = id.from(_N, "ListServerNeighborsRequest"),
   type = "structure",
   members = {
      configurationId = schema.new({
         id = id.from(_N, "ListServerNeighborsInput", "configurationId"),
         type = "string",
         name = "configurationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      portInformationNeeded = schema.new({
         id = id.from(_N, "ListServerNeighborsInput", "portInformationNeeded"),
         type = "boolean",
         name = "portInformationNeeded",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      neighborConfigurationIds = schema.new({
         id = id.from(_N, "ListServerNeighborsInput", "neighborConfigurationIds"),
         type = "list",
         name = "neighborConfigurationIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListServerNeighborsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListServerNeighborsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.NeighborConnectionDetail = schema.new({
   id = id.from(_N, "NeighborConnectionDetail"),
   type = "structure",
   members = {
      sourceServerId = schema.new({
         id = id.from(_N, "NeighborConnectionDetail", "sourceServerId"),
         type = "string",
         name = "sourceServerId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      destinationServerId = schema.new({
         id = id.from(_N, "NeighborConnectionDetail", "destinationServerId"),
         type = "string",
         name = "destinationServerId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      destinationPort = schema.new({
         id = id.from(_N, "NeighborConnectionDetail", "destinationPort"),
         type = "integer",
         name = "destinationPort",
         target_id = prelude.Integer.id,
      }),
      transportProtocol = schema.new({
         id = id.from(_N, "NeighborConnectionDetail", "transportProtocol"),
         type = "string",
         name = "transportProtocol",
         target_id = prelude.String.id,
      }),
      connectionsCount = schema.new({
         id = id.from(_N, "NeighborConnectionDetail", "connectionsCount"),
         type = "long",
         name = "connectionsCount",
         target_id = prelude.Long.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
   },
})

M.ListServerNeighborsOutput = schema.new({
   id = id.from(_N, "ListServerNeighborsResponse"),
   type = "structure",
   members = {
      neighbors = schema.new({
         id = id.from(_N, "ListServerNeighborsOutput", "neighbors"),
         type = "list",
         name = "neighbors",
         target_id = prelude.Document.id,
         list_member = M.NeighborConnectionDetail,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListServerNeighborsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
      knownDependencyCount = schema.new({
         id = id.from(_N, "ListServerNeighborsOutput", "knownDependencyCount"),
         type = "long",
         name = "knownDependencyCount",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
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

M.StartBatchDeleteConfigurationTaskInput = schema.new({
   id = id.from(_N, "StartBatchDeleteConfigurationTaskRequest"),
   type = "structure",
   members = {
      configurationType = schema.new({
         id = id.from(_N, "StartBatchDeleteConfigurationTaskInput", "configurationType"),
         type = "string",
         name = "configurationType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      configurationIds = schema.new({
         id = id.from(_N, "StartBatchDeleteConfigurationTaskInput", "configurationIds"),
         type = "list",
         name = "configurationIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.StartBatchDeleteConfigurationTaskOutput = schema.new({
   id = id.from(_N, "StartBatchDeleteConfigurationTaskResponse"),
   type = "structure",
   members = {
      taskId = schema.new({
         id = id.from(_N, "StartBatchDeleteConfigurationTaskOutput", "taskId"),
         type = "string",
         name = "taskId",
         target_id = prelude.String.id,
      }),
   },
})

M.ConflictErrorException = schema.new({
   id = id.from(_N, "ConflictErrorException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "ConflictErrorException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.ResourceInUseException = schema.new({
   id = id.from(_N, "ResourceInUseException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "ResourceInUseException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.StartContinuousExportInput = schema.new({
   id = id.from(_N, "StartContinuousExportRequest"),
   type = "structure",
})

M.StartContinuousExportOutput = schema.new({
   id = id.from(_N, "StartContinuousExportResponse"),
   type = "structure",
   members = {
      exportId = schema.new({
         id = id.from(_N, "StartContinuousExportOutput", "exportId"),
         type = "string",
         name = "exportId",
         target_id = prelude.String.id,
      }),
      s3Bucket = schema.new({
         id = id.from(_N, "StartContinuousExportOutput", "s3Bucket"),
         type = "string",
         name = "s3Bucket",
         target_id = prelude.String.id,
      }),
      startTime = schema.new({
         id = id.from(_N, "StartContinuousExportOutput", "startTime"),
         type = "timestamp",
         name = "startTime",
         target_id = prelude.Timestamp.id,
      }),
      dataSource = schema.new({
         id = id.from(_N, "StartContinuousExportOutput", "dataSource"),
         type = "string",
         name = "dataSource",
         target_id = prelude.String.id,
      }),
      schemaStorageConfig = schema.new({
         id = id.from(_N, "StartContinuousExportOutput", "schemaStorageConfig"),
         type = "map",
         name = "schemaStorageConfig",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.StartDataCollectionByAgentIdsInput = schema.new({
   id = id.from(_N, "StartDataCollectionByAgentIdsRequest"),
   type = "structure",
   members = {
      agentIds = schema.new({
         id = id.from(_N, "StartDataCollectionByAgentIdsInput", "agentIds"),
         type = "list",
         name = "agentIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.StartDataCollectionByAgentIdsOutput = schema.new({
   id = id.from(_N, "StartDataCollectionByAgentIdsResponse"),
   type = "structure",
   members = {
      agentsConfigurationStatus = schema.new({
         id = id.from(_N, "StartDataCollectionByAgentIdsOutput", "agentsConfigurationStatus"),
         type = "list",
         name = "agentsConfigurationStatus",
         target_id = prelude.Document.id,
         list_member = M.AgentConfigurationStatus,
      }),
   },
})

M.UsageMetricBasis = schema.new({
   id = id.from(_N, "UsageMetricBasis"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "UsageMetricBasis", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      percentageAdjust = schema.new({
         id = id.from(_N, "UsageMetricBasis", "percentageAdjust"),
         type = "double",
         name = "percentageAdjust",
         target_id = prelude.Double.id,
      }),
   },
})

M.ReservedInstanceOptions = schema.new({
   id = id.from(_N, "ReservedInstanceOptions"),
   type = "structure",
   members = {
      purchasingOption = schema.new({
         id = id.from(_N, "ReservedInstanceOptions", "purchasingOption"),
         type = "string",
         name = "purchasingOption",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      offeringClass = schema.new({
         id = id.from(_N, "ReservedInstanceOptions", "offeringClass"),
         type = "string",
         name = "offeringClass",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      termLength = schema.new({
         id = id.from(_N, "ReservedInstanceOptions", "termLength"),
         type = "string",
         name = "termLength",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.Ec2RecommendationsExportPreferences = schema.new({
   id = id.from(_N, "Ec2RecommendationsExportPreferences"),
   type = "structure",
   members = {
      enabled = schema.new({
         id = id.from(_N, "Ec2RecommendationsExportPreferences", "enabled"),
         type = "boolean",
         name = "enabled",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      cpuPerformanceMetricBasis = schema.new({
         id = id.from(_N, "Ec2RecommendationsExportPreferences", "cpuPerformanceMetricBasis"),
         type = "structure",
         name = "cpuPerformanceMetricBasis",
         target_id = id.from(_N, "UsageMetricBasis"),
         target = M.UsageMetricBasis,
      }),
      ramPerformanceMetricBasis = schema.new({
         id = id.from(_N, "Ec2RecommendationsExportPreferences", "ramPerformanceMetricBasis"),
         type = "structure",
         name = "ramPerformanceMetricBasis",
         target_id = id.from(_N, "UsageMetricBasis"),
         target = M.UsageMetricBasis,
      }),
      tenancy = schema.new({
         id = id.from(_N, "Ec2RecommendationsExportPreferences", "tenancy"),
         type = "string",
         name = "tenancy",
         target_id = prelude.String.id,
      }),
      excludedInstanceTypes = schema.new({
         id = id.from(_N, "Ec2RecommendationsExportPreferences", "excludedInstanceTypes"),
         type = "list",
         name = "excludedInstanceTypes",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      preferredRegion = schema.new({
         id = id.from(_N, "Ec2RecommendationsExportPreferences", "preferredRegion"),
         type = "string",
         name = "preferredRegion",
         target_id = prelude.String.id,
      }),
      reservedInstanceOptions = schema.new({
         id = id.from(_N, "Ec2RecommendationsExportPreferences", "reservedInstanceOptions"),
         type = "structure",
         name = "reservedInstanceOptions",
         target_id = id.from(_N, "ReservedInstanceOptions"),
         target = M.ReservedInstanceOptions,
      }),
   },
})

M.ExportPreferences = schema.new({
   id = id.from(_N, "ExportPreferences"),
   type = "union",
   members = {
      ec2RecommendationsPreferences = schema.new({
         id = id.from(_N, "ExportPreferences", "ec2RecommendationsPreferences"),
         type = "structure",
         name = "ec2RecommendationsPreferences",
         target_id = id.from(_N, "Ec2RecommendationsExportPreferences"),
         target = M.Ec2RecommendationsExportPreferences,
      }),
   },
})

M.StartExportTaskInput = schema.new({
   id = id.from(_N, "StartExportTaskRequest"),
   type = "structure",
   members = {
      exportDataFormat = schema.new({
         id = id.from(_N, "StartExportTaskInput", "exportDataFormat"),
         type = "list",
         name = "exportDataFormat",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      filters = schema.new({
         id = id.from(_N, "StartExportTaskInput", "filters"),
         type = "list",
         name = "filters",
         target_id = prelude.Document.id,
         list_member = M.ExportFilter,
      }),
      startTime = schema.new({
         id = id.from(_N, "StartExportTaskInput", "startTime"),
         type = "timestamp",
         name = "startTime",
         target_id = prelude.Timestamp.id,
      }),
      endTime = schema.new({
         id = id.from(_N, "StartExportTaskInput", "endTime"),
         type = "timestamp",
         name = "endTime",
         target_id = prelude.Timestamp.id,
      }),
      preferences = schema.new({
         id = id.from(_N, "StartExportTaskInput", "preferences"),
         type = "union",
         name = "preferences",
         target_id = id.from(_N, "ExportPreferences"),
         target = M.ExportPreferences,
      }),
   },
})

M.StartExportTaskOutput = schema.new({
   id = id.from(_N, "StartExportTaskResponse"),
   type = "structure",
   members = {
      exportId = schema.new({
         id = id.from(_N, "StartExportTaskOutput", "exportId"),
         type = "string",
         name = "exportId",
         target_id = prelude.String.id,
      }),
   },
})

M.StartImportTaskInput = schema.new({
   id = id.from(_N, "StartImportTaskRequest"),
   type = "structure",
   members = {
      clientRequestToken = schema.new({
         id = id.from(_N, "StartImportTaskInput", "clientRequestToken"),
         type = "string",
         name = "clientRequestToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "StartImportTaskInput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      importUrl = schema.new({
         id = id.from(_N, "StartImportTaskInput", "importUrl"),
         type = "string",
         name = "importUrl",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.StartImportTaskOutput = schema.new({
   id = id.from(_N, "StartImportTaskResponse"),
   type = "structure",
   members = {
      task = schema.new({
         id = id.from(_N, "StartImportTaskOutput", "task"),
         type = "structure",
         name = "task",
         target_id = id.from(_N, "ImportTask"),
         target = M.ImportTask,
      }),
   },
})

M.StopContinuousExportInput = schema.new({
   id = id.from(_N, "StopContinuousExportRequest"),
   type = "structure",
   members = {
      exportId = schema.new({
         id = id.from(_N, "StopContinuousExportInput", "exportId"),
         type = "string",
         name = "exportId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.StopContinuousExportOutput = schema.new({
   id = id.from(_N, "StopContinuousExportResponse"),
   type = "structure",
   members = {
      startTime = schema.new({
         id = id.from(_N, "StopContinuousExportOutput", "startTime"),
         type = "timestamp",
         name = "startTime",
         target_id = prelude.Timestamp.id,
      }),
      stopTime = schema.new({
         id = id.from(_N, "StopContinuousExportOutput", "stopTime"),
         type = "timestamp",
         name = "stopTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.StopDataCollectionByAgentIdsInput = schema.new({
   id = id.from(_N, "StopDataCollectionByAgentIdsRequest"),
   type = "structure",
   members = {
      agentIds = schema.new({
         id = id.from(_N, "StopDataCollectionByAgentIdsInput", "agentIds"),
         type = "list",
         name = "agentIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.StopDataCollectionByAgentIdsOutput = schema.new({
   id = id.from(_N, "StopDataCollectionByAgentIdsResponse"),
   type = "structure",
   members = {
      agentsConfigurationStatus = schema.new({
         id = id.from(_N, "StopDataCollectionByAgentIdsOutput", "agentsConfigurationStatus"),
         type = "list",
         name = "agentsConfigurationStatus",
         target_id = prelude.Document.id,
         list_member = M.AgentConfigurationStatus,
      }),
   },
})

M.UpdateApplicationInput = schema.new({
   id = id.from(_N, "UpdateApplicationRequest"),
   type = "structure",
   members = {
      configurationId = schema.new({
         id = id.from(_N, "UpdateApplicationInput", "configurationId"),
         type = "string",
         name = "configurationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "UpdateApplicationInput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "UpdateApplicationInput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      wave = schema.new({
         id = id.from(_N, "UpdateApplicationInput", "wave"),
         type = "string",
         name = "wave",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateApplicationOutput = schema.new({
   id = id.from(_N, "UpdateApplicationResponse"),
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
   id = id.from("com.amazonaws.applicationdiscoveryservice", "AWSPoseidonService_V2015_11_01"),
   version = "2015-11-01",
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AssociateConfigurationItemsToApplication = schema.operation({
   id = id.from("com.amazonaws.applicationdiscoveryservice", "AssociateConfigurationItemsToApplication"),
   input = M.AssociateConfigurationItemsToApplicationInput,
   output = M.AssociateConfigurationItemsToApplicationOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.BatchDeleteAgents = schema.operation({
   id = id.from("com.amazonaws.applicationdiscoveryservice", "BatchDeleteAgents"),
   input = M.BatchDeleteAgentsInput,
   output = M.BatchDeleteAgentsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.BatchDeleteImportData = schema.operation({
   id = id.from("com.amazonaws.applicationdiscoveryservice", "BatchDeleteImportData"),
   input = M.BatchDeleteImportDataInput,
   output = M.BatchDeleteImportDataOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateApplication = schema.operation({
   id = id.from("com.amazonaws.applicationdiscoveryservice", "CreateApplication"),
   input = M.CreateApplicationInput,
   output = M.CreateApplicationOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateTags = schema.operation({
   id = id.from("com.amazonaws.applicationdiscoveryservice", "CreateTags"),
   input = M.CreateTagsInput,
   output = M.CreateTagsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteApplications = schema.operation({
   id = id.from("com.amazonaws.applicationdiscoveryservice", "DeleteApplications"),
   input = M.DeleteApplicationsInput,
   output = M.DeleteApplicationsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteTags = schema.operation({
   id = id.from("com.amazonaws.applicationdiscoveryservice", "DeleteTags"),
   input = M.DeleteTagsInput,
   output = M.DeleteTagsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeAgents = schema.operation({
   id = id.from("com.amazonaws.applicationdiscoveryservice", "DescribeAgents"),
   input = M.DescribeAgentsInput,
   output = M.DescribeAgentsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeBatchDeleteConfigurationTask = schema.operation({
   id = id.from("com.amazonaws.applicationdiscoveryservice", "DescribeBatchDeleteConfigurationTask"),
   input = M.DescribeBatchDeleteConfigurationTaskInput,
   output = M.DescribeBatchDeleteConfigurationTaskOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeConfigurations = schema.operation({
   id = id.from("com.amazonaws.applicationdiscoveryservice", "DescribeConfigurations"),
   input = M.DescribeConfigurationsInput,
   output = M.DescribeConfigurationsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeContinuousExports = schema.operation({
   id = id.from("com.amazonaws.applicationdiscoveryservice", "DescribeContinuousExports"),
   input = M.DescribeContinuousExportsInput,
   output = M.DescribeContinuousExportsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeExportConfigurations = schema.operation({
   id = id.from("com.amazonaws.applicationdiscoveryservice", "DescribeExportConfigurations"),
   input = M.DescribeExportConfigurationsInput,
   output = M.DescribeExportConfigurationsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeExportTasks = schema.operation({
   id = id.from("com.amazonaws.applicationdiscoveryservice", "DescribeExportTasks"),
   input = M.DescribeExportTasksInput,
   output = M.DescribeExportTasksOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeImportTasks = schema.operation({
   id = id.from("com.amazonaws.applicationdiscoveryservice", "DescribeImportTasks"),
   input = M.DescribeImportTasksInput,
   output = M.DescribeImportTasksOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeTags = schema.operation({
   id = id.from("com.amazonaws.applicationdiscoveryservice", "DescribeTags"),
   input = M.DescribeTagsInput,
   output = M.DescribeTagsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DisassociateConfigurationItemsFromApplication = schema.operation({
   id = id.from("com.amazonaws.applicationdiscoveryservice", "DisassociateConfigurationItemsFromApplication"),
   input = M.DisassociateConfigurationItemsFromApplicationInput,
   output = M.DisassociateConfigurationItemsFromApplicationOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ExportConfigurations = schema.operation({
   id = id.from("com.amazonaws.applicationdiscoveryservice", "ExportConfigurations"),
   input = M.ExportConfigurationsInput,
   output = M.ExportConfigurationsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetDiscoverySummary = schema.operation({
   id = id.from("com.amazonaws.applicationdiscoveryservice", "GetDiscoverySummary"),
   input = M.GetDiscoverySummaryInput,
   output = M.GetDiscoverySummaryOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListConfigurations = schema.operation({
   id = id.from("com.amazonaws.applicationdiscoveryservice", "ListConfigurations"),
   input = M.ListConfigurationsInput,
   output = M.ListConfigurationsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListServerNeighbors = schema.operation({
   id = id.from("com.amazonaws.applicationdiscoveryservice", "ListServerNeighbors"),
   input = M.ListServerNeighborsInput,
   output = M.ListServerNeighborsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StartBatchDeleteConfigurationTask = schema.operation({
   id = id.from("com.amazonaws.applicationdiscoveryservice", "StartBatchDeleteConfigurationTask"),
   input = M.StartBatchDeleteConfigurationTaskInput,
   output = M.StartBatchDeleteConfigurationTaskOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StartContinuousExport = schema.operation({
   id = id.from("com.amazonaws.applicationdiscoveryservice", "StartContinuousExport"),
   input = M.StartContinuousExportInput,
   output = M.StartContinuousExportOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StartDataCollectionByAgentIds = schema.operation({
   id = id.from("com.amazonaws.applicationdiscoveryservice", "StartDataCollectionByAgentIds"),
   input = M.StartDataCollectionByAgentIdsInput,
   output = M.StartDataCollectionByAgentIdsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StartExportTask = schema.operation({
   id = id.from("com.amazonaws.applicationdiscoveryservice", "StartExportTask"),
   input = M.StartExportTaskInput,
   output = M.StartExportTaskOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StartImportTask = schema.operation({
   id = id.from("com.amazonaws.applicationdiscoveryservice", "StartImportTask"),
   input = M.StartImportTaskInput,
   output = M.StartImportTaskOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StopContinuousExport = schema.operation({
   id = id.from("com.amazonaws.applicationdiscoveryservice", "StopContinuousExport"),
   input = M.StopContinuousExportInput,
   output = M.StopContinuousExportOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StopDataCollectionByAgentIds = schema.operation({
   id = id.from("com.amazonaws.applicationdiscoveryservice", "StopDataCollectionByAgentIds"),
   input = M.StopDataCollectionByAgentIdsInput,
   output = M.StopDataCollectionByAgentIdsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateApplication = schema.operation({
   id = id.from("com.amazonaws.applicationdiscoveryservice", "UpdateApplication"),
   input = M.UpdateApplicationInput,
   output = M.UpdateApplicationOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

return M
