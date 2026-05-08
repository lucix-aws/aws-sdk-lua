

local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.opensearch"

local M = {}

M.DirectQueryOpenSearchARNList = schema.new({ type = "list", list_member = prelude.String })

M.TagList = schema.new({ type = "list", list_member = M.Tag })

M.PackageIDList = schema.new({ type = "list", list_member = prelude.String })

M.PackageDetailsForAssociationList = schema.new({ type = "list", list_member = M.PackageDetailsForAssociation })

M.DomainPackageDetailsList = schema.new({ type = "list", list_member = M.DomainPackageDetails })

M.GUIDList = schema.new({ type = "list", list_member = prelude.String })

M.CancelledChangePropertyList = schema.new({ type = "list", list_member = M.CancelledChangeProperty })

M.DataSources = schema.new({ type = "list", list_member = M.DataSource })

M.AppConfigs = schema.new({ type = "list", list_member = M.AppConfig })

M.AdvancedOptions = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.LogPublishingOptions = schema.new({ type = "map", map_key = prelude.String, map_value = M.LogPublishingOption })

M.AutoTuneList = schema.new({ type = "list", list_member = M.AutoTune })

M.EnvironmentInfoList = schema.new({ type = "list", list_member = M.EnvironmentInfo })

M.DomainNodesStatusList = schema.new({ type = "list", list_member = M.DomainNodesStatus })

M.DomainNameList = schema.new({ type = "list", list_member = prelude.String })

M.DomainStatusList = schema.new({ type = "list", list_member = M.DomainStatus })

M.FilterList = schema.new({ type = "list", list_member = M.Filter })

M.InboundConnections = schema.new({ type = "list", list_member = M.InboundConnection })

M.InsightFieldList = schema.new({ type = "list", list_member = M.InsightField })

M.LimitsByRole = schema.new({ type = "map", map_key = prelude.String, map_value = M.Limits })

M.OutboundConnections = schema.new({ type = "list", list_member = M.OutboundConnection })

M.DescribePackagesFilterList = schema.new({ type = "list", list_member = M.DescribePackagesFilter })

M.PackageDetailsList = schema.new({ type = "list", list_member = M.PackageDetails })

M.ReservedInstanceOfferingList = schema.new({ type = "list", list_member = M.ReservedInstanceOffering })

M.ReservedInstanceList = schema.new({ type = "list", list_member = M.ReservedInstance })

M.VpcEndpointIdList = schema.new({ type = "list", list_member = prelude.String })

M.VpcEndpoints = schema.new({ type = "list", list_member = M.VpcEndpoint })

M.VpcEndpointErrorList = schema.new({ type = "list", list_member = M.VpcEndpointError })

M.CapabilityFailures = schema.new({ type = "list", list_member = M.CapabilityFailure })

M.CompatibleVersionsList = schema.new({ type = "list", list_member = M.CompatibleVersionsMap })

M.PackageVersionHistoryList = schema.new({ type = "list", list_member = M.PackageVersionHistory })

M.UpgradeHistoryList = schema.new({ type = "list", list_member = M.UpgradeHistory })

M.ApplicationStatuses = schema.new({ type = "list", list_member = prelude.String })

M.ApplicationSummaries = schema.new({ type = "list", list_member = M.ApplicationSummary })

M.DataSourceList = schema.new({ type = "list", list_member = M.DataSourceDetails })

M.DirectQueryDataSourceList = schema.new({ type = "list", list_member = M.DirectQueryDataSource })

M.DomainMaintenanceList = schema.new({ type = "list", list_member = M.DomainMaintenanceDetails })

M.DomainInfoList = schema.new({ type = "list", list_member = M.DomainInfo })

M.InsightList = schema.new({ type = "list", list_member = M.Insight })

M.InstanceTypeDetailsList = schema.new({ type = "list", list_member = M.InstanceTypeDetails })

M.ScheduledActionsList = schema.new({ type = "list", list_member = M.ScheduledAction })

M.VersionList = schema.new({ type = "list", list_member = prelude.String })

M.AuthorizedPrincipalList = schema.new({ type = "list", list_member = M.AuthorizedPrincipal })

M.VpcEndpointSummaryList = schema.new({ type = "list", list_member = M.VpcEndpointSummary })

M.StringList = schema.new({ type = "list", list_member = prelude.String })

M.PackageUserList = schema.new({ type = "list", list_member = prelude.String })

M.SlotList = schema.new({ type = "list", list_member = prelude.Long })

M.RegionsList = schema.new({ type = "list", list_member = prelude.String })

M.NodeOptionsList = schema.new({ type = "list", list_member = M.NodeOption })

M.AutoTuneMaintenanceScheduleList = schema.new({ type = "list", list_member = M.AutoTuneMaintenanceSchedule })

M.EndpointsMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.ModifyingPropertiesList = schema.new({ type = "list", list_member = M.ModifyingProperties })

M.ChangeProgressStageList = schema.new({ type = "list", list_member = M.ChangeProgressStage })

M.ValidationFailures = schema.new({ type = "list", list_member = M.ValidationFailure })

M.AvailabilityZoneInfoList = schema.new({ type = "list", list_member = M.AvailabilityZoneInfo })

M.ValueStringList = schema.new({ type = "list", list_member = prelude.String })

M.StorageTypeList = schema.new({ type = "list", list_member = M.StorageType })

M.AdditionalLimitList = schema.new({ type = "list", list_member = M.AdditionalLimit })

M.DescribePackagesFilterValues = schema.new({ type = "list", list_member = prelude.String })

M.RecurringChargeList = schema.new({ type = "list", list_member = M.RecurringCharge })

M.UpgradeStepsList = schema.new({ type = "list", list_member = M.UpgradeStepItem })

M.InstanceRoleList = schema.new({ type = "list", list_member = prelude.String })

M.AvailabilityZoneList = schema.new({ type = "list", list_member = prelude.String })

M.StorageTypeLimitList = schema.new({ type = "list", list_member = M.StorageTypeLimit })

M.LimitValueList = schema.new({ type = "list", list_member = prelude.String })

M.Issues = schema.new({ type = "list", list_member = prelude.String })

M.AcceptInboundConnectionInput = schema.new({
   id = id.from(_N, "AcceptInboundConnectionRequest"),
   type = "structure",
   members = {
      ConnectionId = schema.new({
         id = id.from(_N, "AcceptInboundConnectionInput", "ConnectionId"),
         type = "string",
         name = "ConnectionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.InboundConnectionStatus = schema.new({
   id = id.from(_N, "InboundConnectionStatus"),
   type = "structure",
   members = {
      StatusCode = schema.new({
         id = id.from(_N, "InboundConnectionStatus", "StatusCode"),
         type = "string",
         name = "StatusCode",
         target_id = prelude.String.id,
      }),
      Message = schema.new({
         id = id.from(_N, "InboundConnectionStatus", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.AWSDomainInformation = schema.new({
   id = id.from(_N, "AWSDomainInformation"),
   type = "structure",
   members = {
      OwnerId = schema.new({
         id = id.from(_N, "AWSDomainInformation", "OwnerId"),
         type = "string",
         name = "OwnerId",
         target_id = prelude.String.id,
      }),
      DomainName = schema.new({
         id = id.from(_N, "AWSDomainInformation", "DomainName"),
         type = "string",
         name = "DomainName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Region = schema.new({
         id = id.from(_N, "AWSDomainInformation", "Region"),
         type = "string",
         name = "Region",
         target_id = prelude.String.id,
      }),
   },
})

M.DomainInformationContainer = schema.new({
   id = id.from(_N, "DomainInformationContainer"),
   type = "structure",
   members = {
      AWSDomainInformation = schema.new({
         id = id.from(_N, "DomainInformationContainer", "AWSDomainInformation"),
         type = "structure",
         name = "AWSDomainInformation",
         target_id = id.from(_N, "AWSDomainInformation"),
         target = M.AWSDomainInformation,
      }),
   },
})

M.InboundConnection = schema.new({
   id = id.from(_N, "InboundConnection"),
   type = "structure",
   members = {
      LocalDomainInfo = schema.new({
         id = id.from(_N, "InboundConnection", "LocalDomainInfo"),
         type = "structure",
         name = "LocalDomainInfo",
         target_id = id.from(_N, "DomainInformationContainer"),
         target = M.DomainInformationContainer,
      }),
      RemoteDomainInfo = schema.new({
         id = id.from(_N, "InboundConnection", "RemoteDomainInfo"),
         type = "structure",
         name = "RemoteDomainInfo",
         target_id = id.from(_N, "DomainInformationContainer"),
         target = M.DomainInformationContainer,
      }),
      ConnectionId = schema.new({
         id = id.from(_N, "InboundConnection", "ConnectionId"),
         type = "string",
         name = "ConnectionId",
         target_id = prelude.String.id,
      }),
      ConnectionStatus = schema.new({
         id = id.from(_N, "InboundConnection", "ConnectionStatus"),
         type = "structure",
         name = "ConnectionStatus",
         target_id = id.from(_N, "InboundConnectionStatus"),
         target = M.InboundConnectionStatus,
      }),
      ConnectionMode = schema.new({
         id = id.from(_N, "InboundConnection", "ConnectionMode"),
         type = "string",
         name = "ConnectionMode",
         target_id = prelude.String.id,
      }),
   },
})

M.AcceptInboundConnectionOutput = schema.new({
   id = id.from(_N, "AcceptInboundConnectionResponse"),
   type = "structure",
   members = {
      Connection = schema.new({
         id = id.from(_N, "AcceptInboundConnectionOutput", "Connection"),
         type = "structure",
         name = "Connection",
         target_id = id.from(_N, "InboundConnection"),
         target = M.InboundConnection,
      }),
   },
})

M.DisabledOperationException = schema.new({
   id = id.from(_N, "DisabledOperationException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "DisabledOperationException", "message"),
         type = "string",
         name = "message",
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

M.OptionStatus = schema.new({
   id = id.from(_N, "OptionStatus"),
   type = "structure",
   members = {
      CreationDate = schema.new({
         id = id.from(_N, "OptionStatus", "CreationDate"),
         type = "timestamp",
         name = "CreationDate",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      UpdateDate = schema.new({
         id = id.from(_N, "OptionStatus", "UpdateDate"),
         type = "timestamp",
         name = "UpdateDate",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      UpdateVersion = schema.new({
         id = id.from(_N, "OptionStatus", "UpdateVersion"),
         type = "integer",
         name = "UpdateVersion",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      State = schema.new({
         id = id.from(_N, "OptionStatus", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      PendingDeletion = schema.new({
         id = id.from(_N, "OptionStatus", "PendingDeletion"),
         type = "boolean",
         name = "PendingDeletion",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.AccessPoliciesStatus = schema.new({
   id = id.from(_N, "AccessPoliciesStatus"),
   type = "structure",
   members = {
      Options = schema.new({
         id = id.from(_N, "AccessPoliciesStatus", "Options"),
         type = "string",
         name = "Options",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Status = schema.new({
         id = id.from(_N, "AccessPoliciesStatus", "Status"),
         type = "structure",
         name = "Status",
         target_id = id.from(_N, "OptionStatus"),
         target = M.OptionStatus,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.S3GlueDataCatalog = schema.new({
   id = id.from(_N, "S3GlueDataCatalog"),
   type = "structure",
   members = {
      RoleArn = schema.new({
         id = id.from(_N, "S3GlueDataCatalog", "RoleArn"),
         type = "string",
         name = "RoleArn",
         target_id = prelude.String.id,
      }),
   },
})

M.DataSourceType = schema.new({
   id = id.from(_N, "DataSourceType"),
   type = "union",
   members = {
      S3GlueDataCatalog = schema.new({
         id = id.from(_N, "DataSourceType", "S3GlueDataCatalog"),
         type = "structure",
         name = "S3GlueDataCatalog",
         target_id = id.from(_N, "S3GlueDataCatalog"),
         target = M.S3GlueDataCatalog,
      }),
   },
})

M.AddDataSourceInput = schema.new({
   id = id.from(_N, "AddDataSourceRequest"),
   type = "structure",
   members = {
      DomainName = schema.new({
         id = id.from(_N, "AddDataSourceInput", "DomainName"),
         type = "string",
         name = "DomainName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Name = schema.new({
         id = id.from(_N, "AddDataSourceInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DataSourceType = schema.new({
         id = id.from(_N, "AddDataSourceInput", "DataSourceType"),
         type = "union",
         name = "DataSourceType",
         target_id = id.from(_N, "DataSourceType"),
         target = M.DataSourceType,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Description = schema.new({
         id = id.from(_N, "AddDataSourceInput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
   },
})

M.AddDataSourceOutput = schema.new({
   id = id.from(_N, "AddDataSourceResponse"),
   type = "structure",
   members = {
      Message = schema.new({
         id = id.from(_N, "AddDataSourceOutput", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.BaseException = schema.new({
   id = id.from(_N, "BaseException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "BaseException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.DependencyFailureException = schema.new({
   id = id.from(_N, "DependencyFailureException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "DependencyFailureException", "message"),
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

M.CloudWatchDirectQueryDataSource = schema.new({
   id = id.from(_N, "CloudWatchDirectQueryDataSource"),
   type = "structure",
   members = {
      RoleArn = schema.new({
         id = id.from(_N, "CloudWatchDirectQueryDataSource", "RoleArn"),
         type = "string",
         name = "RoleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.PrometheusDirectQueryDataSource = schema.new({
   id = id.from(_N, "PrometheusDirectQueryDataSource"),
   type = "structure",
   members = {
      RoleArn = schema.new({
         id = id.from(_N, "PrometheusDirectQueryDataSource", "RoleArn"),
         type = "string",
         name = "RoleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      WorkspaceArn = schema.new({
         id = id.from(_N, "PrometheusDirectQueryDataSource", "WorkspaceArn"),
         type = "string",
         name = "WorkspaceArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.SecurityLakeDirectQueryDataSource = schema.new({
   id = id.from(_N, "SecurityLakeDirectQueryDataSource"),
   type = "structure",
   members = {
      RoleArn = schema.new({
         id = id.from(_N, "SecurityLakeDirectQueryDataSource", "RoleArn"),
         type = "string",
         name = "RoleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DirectQueryDataSourceType = schema.new({
   id = id.from(_N, "DirectQueryDataSourceType"),
   type = "union",
   members = {
      CloudWatchLog = schema.new({
         id = id.from(_N, "DirectQueryDataSourceType", "CloudWatchLog"),
         type = "structure",
         name = "CloudWatchLog",
         target_id = id.from(_N, "CloudWatchDirectQueryDataSource"),
         target = M.CloudWatchDirectQueryDataSource,
      }),
      SecurityLake = schema.new({
         id = id.from(_N, "DirectQueryDataSourceType", "SecurityLake"),
         type = "structure",
         name = "SecurityLake",
         target_id = id.from(_N, "SecurityLakeDirectQueryDataSource"),
         target = M.SecurityLakeDirectQueryDataSource,
      }),
      Prometheus = schema.new({
         id = id.from(_N, "DirectQueryDataSourceType", "Prometheus"),
         type = "structure",
         name = "Prometheus",
         target_id = id.from(_N, "PrometheusDirectQueryDataSource"),
         target = M.PrometheusDirectQueryDataSource,
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

M.AddDirectQueryDataSourceInput = schema.new({
   id = id.from(_N, "AddDirectQueryDataSourceRequest"),
   type = "structure",
   members = {
      DataSourceName = schema.new({
         id = id.from(_N, "AddDirectQueryDataSourceInput", "DataSourceName"),
         type = "string",
         name = "DataSourceName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DataSourceType = schema.new({
         id = id.from(_N, "AddDirectQueryDataSourceInput", "DataSourceType"),
         type = "union",
         name = "DataSourceType",
         target_id = id.from(_N, "DirectQueryDataSourceType"),
         target = M.DirectQueryDataSourceType,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Description = schema.new({
         id = id.from(_N, "AddDirectQueryDataSourceInput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      OpenSearchArns = schema.new({
         id = id.from(_N, "AddDirectQueryDataSourceInput", "OpenSearchArns"),
         type = "list",
         name = "OpenSearchArns",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      DataSourceAccessPolicy = schema.new({
         id = id.from(_N, "AddDirectQueryDataSourceInput", "DataSourceAccessPolicy"),
         type = "string",
         name = "DataSourceAccessPolicy",
         target_id = prelude.String.id,
      }),
      TagList = schema.new({
         id = id.from(_N, "AddDirectQueryDataSourceInput", "TagList"),
         type = "list",
         name = "TagList",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
   },
})

M.AddDirectQueryDataSourceOutput = schema.new({
   id = id.from(_N, "AddDirectQueryDataSourceResponse"),
   type = "structure",
   members = {
      DataSourceArn = schema.new({
         id = id.from(_N, "AddDirectQueryDataSourceOutput", "DataSourceArn"),
         type = "string",
         name = "DataSourceArn",
         target_id = prelude.String.id,
      }),
   },
})

M.AdditionalLimit = schema.new({
   id = id.from(_N, "AdditionalLimit"),
   type = "structure",
   members = {
      LimitName = schema.new({
         id = id.from(_N, "AdditionalLimit", "LimitName"),
         type = "string",
         name = "LimitName",
         target_id = prelude.String.id,
      }),
      LimitValues = schema.new({
         id = id.from(_N, "AdditionalLimit", "LimitValues"),
         type = "list",
         name = "LimitValues",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.AddTagsInput = schema.new({
   id = id.from(_N, "AddTagsRequest"),
   type = "structure",
   members = {
      ARN = schema.new({
         id = id.from(_N, "AddTagsInput", "ARN"),
         type = "string",
         name = "ARN",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      TagList = schema.new({
         id = id.from(_N, "AddTagsInput", "TagList"),
         type = "list",
         name = "TagList",
         target_id = prelude.Document.id,
         list_member = M.Tag,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AddTagsOutput = prelude.Unit

M.AdvancedOptionsStatus = schema.new({
   id = id.from(_N, "AdvancedOptionsStatus"),
   type = "structure",
   members = {
      Options = schema.new({
         id = id.from(_N, "AdvancedOptionsStatus", "Options"),
         type = "map",
         name = "Options",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Status = schema.new({
         id = id.from(_N, "AdvancedOptionsStatus", "Status"),
         type = "structure",
         name = "Status",
         target_id = id.from(_N, "OptionStatus"),
         target = M.OptionStatus,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.IAMFederationOptionsOutput = schema.new({
   id = id.from(_N, "IAMFederationOptionsOutput"),
   type = "structure",
   members = {
      Enabled = schema.new({
         id = id.from(_N, "IAMFederationOptionsOutput", "Enabled"),
         type = "boolean",
         name = "Enabled",
         target_id = prelude.Boolean.id,
      }),
      SubjectKey = schema.new({
         id = id.from(_N, "IAMFederationOptionsOutput", "SubjectKey"),
         type = "string",
         name = "SubjectKey",
         target_id = prelude.String.id,
      }),
      RolesKey = schema.new({
         id = id.from(_N, "IAMFederationOptionsOutput", "RolesKey"),
         type = "string",
         name = "RolesKey",
         target_id = prelude.String.id,
      }),
   },
})

M.JWTOptionsOutput = schema.new({
   id = id.from(_N, "JWTOptionsOutput"),
   type = "structure",
   members = {
      Enabled = schema.new({
         id = id.from(_N, "JWTOptionsOutput", "Enabled"),
         type = "boolean",
         name = "Enabled",
         target_id = prelude.Boolean.id,
      }),
      SubjectKey = schema.new({
         id = id.from(_N, "JWTOptionsOutput", "SubjectKey"),
         type = "string",
         name = "SubjectKey",
         target_id = prelude.String.id,
      }),
      RolesKey = schema.new({
         id = id.from(_N, "JWTOptionsOutput", "RolesKey"),
         type = "string",
         name = "RolesKey",
         target_id = prelude.String.id,
      }),
      JwksUrl = schema.new({
         id = id.from(_N, "JWTOptionsOutput", "JwksUrl"),
         type = "string",
         name = "JwksUrl",
         target_id = prelude.String.id,
      }),
      PublicKey = schema.new({
         id = id.from(_N, "JWTOptionsOutput", "PublicKey"),
         type = "string",
         name = "PublicKey",
         target_id = prelude.String.id,
      }),
   },
})

M.SAMLIdp = schema.new({
   id = id.from(_N, "SAMLIdp"),
   type = "structure",
   members = {
      MetadataContent = schema.new({
         id = id.from(_N, "SAMLIdp", "MetadataContent"),
         type = "string",
         name = "MetadataContent",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      EntityId = schema.new({
         id = id.from(_N, "SAMLIdp", "EntityId"),
         type = "string",
         name = "EntityId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.SAMLOptionsOutput = schema.new({
   id = id.from(_N, "SAMLOptionsOutput"),
   type = "structure",
   members = {
      Enabled = schema.new({
         id = id.from(_N, "SAMLOptionsOutput", "Enabled"),
         type = "boolean",
         name = "Enabled",
         target_id = prelude.Boolean.id,
      }),
      Idp = schema.new({
         id = id.from(_N, "SAMLOptionsOutput", "Idp"),
         type = "structure",
         name = "Idp",
         target_id = id.from(_N, "SAMLIdp"),
         target = M.SAMLIdp,
      }),
      SubjectKey = schema.new({
         id = id.from(_N, "SAMLOptionsOutput", "SubjectKey"),
         type = "string",
         name = "SubjectKey",
         target_id = prelude.String.id,
      }),
      RolesKey = schema.new({
         id = id.from(_N, "SAMLOptionsOutput", "RolesKey"),
         type = "string",
         name = "RolesKey",
         target_id = prelude.String.id,
      }),
      SessionTimeoutMinutes = schema.new({
         id = id.from(_N, "SAMLOptionsOutput", "SessionTimeoutMinutes"),
         type = "integer",
         name = "SessionTimeoutMinutes",
         target_id = prelude.Integer.id,
      }),
   },
})

M.AdvancedSecurityOptions = schema.new({
   id = id.from(_N, "AdvancedSecurityOptions"),
   type = "structure",
   members = {
      Enabled = schema.new({
         id = id.from(_N, "AdvancedSecurityOptions", "Enabled"),
         type = "boolean",
         name = "Enabled",
         target_id = prelude.Boolean.id,
      }),
      InternalUserDatabaseEnabled = schema.new({
         id = id.from(_N, "AdvancedSecurityOptions", "InternalUserDatabaseEnabled"),
         type = "boolean",
         name = "InternalUserDatabaseEnabled",
         target_id = prelude.Boolean.id,
      }),
      SAMLOptions = schema.new({
         id = id.from(_N, "AdvancedSecurityOptions", "SAMLOptions"),
         type = "structure",
         name = "SAMLOptions",
         target_id = id.from(_N, "SAMLOptionsOutput"),
         target = M.SAMLOptionsOutput,
      }),
      JWTOptions = schema.new({
         id = id.from(_N, "AdvancedSecurityOptions", "JWTOptions"),
         type = "structure",
         name = "JWTOptions",
         target_id = id.from(_N, "JWTOptionsOutput"),
         target = M.JWTOptionsOutput,
      }),
      IAMFederationOptions = schema.new({
         id = id.from(_N, "AdvancedSecurityOptions", "IAMFederationOptions"),
         type = "structure",
         name = "IAMFederationOptions",
         target_id = id.from(_N, "IAMFederationOptionsOutput"),
         target = M.IAMFederationOptionsOutput,
      }),
      AnonymousAuthDisableDate = schema.new({
         id = id.from(_N, "AdvancedSecurityOptions", "AnonymousAuthDisableDate"),
         type = "timestamp",
         name = "AnonymousAuthDisableDate",
         target_id = prelude.Timestamp.id,
      }),
      AnonymousAuthEnabled = schema.new({
         id = id.from(_N, "AdvancedSecurityOptions", "AnonymousAuthEnabled"),
         type = "boolean",
         name = "AnonymousAuthEnabled",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.IAMFederationOptionsInput = schema.new({
   id = id.from(_N, "IAMFederationOptionsInput"),
   type = "structure",
   members = {
      Enabled = schema.new({
         id = id.from(_N, "IAMFederationOptionsInput", "Enabled"),
         type = "boolean",
         name = "Enabled",
         target_id = prelude.Boolean.id,
      }),
      SubjectKey = schema.new({
         id = id.from(_N, "IAMFederationOptionsInput", "SubjectKey"),
         type = "string",
         name = "SubjectKey",
         target_id = prelude.String.id,
      }),
      RolesKey = schema.new({
         id = id.from(_N, "IAMFederationOptionsInput", "RolesKey"),
         type = "string",
         name = "RolesKey",
         target_id = prelude.String.id,
      }),
   },
})

M.JWTOptionsInput = schema.new({
   id = id.from(_N, "JWTOptionsInput"),
   type = "structure",
   members = {
      Enabled = schema.new({
         id = id.from(_N, "JWTOptionsInput", "Enabled"),
         type = "boolean",
         name = "Enabled",
         target_id = prelude.Boolean.id,
      }),
      SubjectKey = schema.new({
         id = id.from(_N, "JWTOptionsInput", "SubjectKey"),
         type = "string",
         name = "SubjectKey",
         target_id = prelude.String.id,
      }),
      RolesKey = schema.new({
         id = id.from(_N, "JWTOptionsInput", "RolesKey"),
         type = "string",
         name = "RolesKey",
         target_id = prelude.String.id,
      }),
      JwksUrl = schema.new({
         id = id.from(_N, "JWTOptionsInput", "JwksUrl"),
         type = "string",
         name = "JwksUrl",
         target_id = prelude.String.id,
      }),
      PublicKey = schema.new({
         id = id.from(_N, "JWTOptionsInput", "PublicKey"),
         type = "string",
         name = "PublicKey",
         target_id = prelude.String.id,
      }),
   },
})

M.MasterUserOptions = schema.new({
   id = id.from(_N, "MasterUserOptions"),
   type = "structure",
   members = {
      MasterUserARN = schema.new({
         id = id.from(_N, "MasterUserOptions", "MasterUserARN"),
         type = "string",
         name = "MasterUserARN",
         target_id = prelude.String.id,
      }),
      MasterUserName = schema.new({
         id = id.from(_N, "MasterUserOptions", "MasterUserName"),
         type = "string",
         name = "MasterUserName",
         target_id = prelude.String.id,
      }),
      MasterUserPassword = schema.new({
         id = id.from(_N, "MasterUserOptions", "MasterUserPassword"),
         type = "string",
         name = "MasterUserPassword",
         target_id = prelude.String.id,
      }),
   },
})

M.SAMLOptionsInput = schema.new({
   id = id.from(_N, "SAMLOptionsInput"),
   type = "structure",
   members = {
      Enabled = schema.new({
         id = id.from(_N, "SAMLOptionsInput", "Enabled"),
         type = "boolean",
         name = "Enabled",
         target_id = prelude.Boolean.id,
      }),
      Idp = schema.new({
         id = id.from(_N, "SAMLOptionsInput", "Idp"),
         type = "structure",
         name = "Idp",
         target_id = id.from(_N, "SAMLIdp"),
         target = M.SAMLIdp,
      }),
      MasterUserName = schema.new({
         id = id.from(_N, "SAMLOptionsInput", "MasterUserName"),
         type = "string",
         name = "MasterUserName",
         target_id = prelude.String.id,
      }),
      MasterBackendRole = schema.new({
         id = id.from(_N, "SAMLOptionsInput", "MasterBackendRole"),
         type = "string",
         name = "MasterBackendRole",
         target_id = prelude.String.id,
      }),
      SubjectKey = schema.new({
         id = id.from(_N, "SAMLOptionsInput", "SubjectKey"),
         type = "string",
         name = "SubjectKey",
         target_id = prelude.String.id,
      }),
      RolesKey = schema.new({
         id = id.from(_N, "SAMLOptionsInput", "RolesKey"),
         type = "string",
         name = "RolesKey",
         target_id = prelude.String.id,
      }),
      SessionTimeoutMinutes = schema.new({
         id = id.from(_N, "SAMLOptionsInput", "SessionTimeoutMinutes"),
         type = "integer",
         name = "SessionTimeoutMinutes",
         target_id = prelude.Integer.id,
      }),
   },
})

M.AdvancedSecurityOptionsInput = schema.new({
   id = id.from(_N, "AdvancedSecurityOptionsInput"),
   type = "structure",
   members = {
      Enabled = schema.new({
         id = id.from(_N, "AdvancedSecurityOptionsInput", "Enabled"),
         type = "boolean",
         name = "Enabled",
         target_id = prelude.Boolean.id,
      }),
      InternalUserDatabaseEnabled = schema.new({
         id = id.from(_N, "AdvancedSecurityOptionsInput", "InternalUserDatabaseEnabled"),
         type = "boolean",
         name = "InternalUserDatabaseEnabled",
         target_id = prelude.Boolean.id,
      }),
      MasterUserOptions = schema.new({
         id = id.from(_N, "AdvancedSecurityOptionsInput", "MasterUserOptions"),
         type = "structure",
         name = "MasterUserOptions",
         target_id = id.from(_N, "MasterUserOptions"),
         target = M.MasterUserOptions,
      }),
      SAMLOptions = schema.new({
         id = id.from(_N, "AdvancedSecurityOptionsInput", "SAMLOptions"),
         type = "structure",
         name = "SAMLOptions",
         target_id = id.from(_N, "SAMLOptionsInput"),
         target = M.SAMLOptionsInput,
      }),
      JWTOptions = schema.new({
         id = id.from(_N, "AdvancedSecurityOptionsInput", "JWTOptions"),
         type = "structure",
         name = "JWTOptions",
         target_id = id.from(_N, "JWTOptionsInput"),
         target = M.JWTOptionsInput,
      }),
      IAMFederationOptions = schema.new({
         id = id.from(_N, "AdvancedSecurityOptionsInput", "IAMFederationOptions"),
         type = "structure",
         name = "IAMFederationOptions",
         target_id = id.from(_N, "IAMFederationOptionsInput"),
         target = M.IAMFederationOptionsInput,
      }),
      AnonymousAuthEnabled = schema.new({
         id = id.from(_N, "AdvancedSecurityOptionsInput", "AnonymousAuthEnabled"),
         type = "boolean",
         name = "AnonymousAuthEnabled",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.AdvancedSecurityOptionsStatus = schema.new({
   id = id.from(_N, "AdvancedSecurityOptionsStatus"),
   type = "structure",
   members = {
      Options = schema.new({
         id = id.from(_N, "AdvancedSecurityOptionsStatus", "Options"),
         type = "structure",
         name = "Options",
         target_id = id.from(_N, "AdvancedSecurityOptions"),
         target = M.AdvancedSecurityOptions,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Status = schema.new({
         id = id.from(_N, "AdvancedSecurityOptionsStatus", "Status"),
         type = "structure",
         name = "Status",
         target_id = id.from(_N, "OptionStatus"),
         target = M.OptionStatus,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AIConfig = schema.new({
   id = id.from(_N, "AIConfig"),
   type = "structure",
})

M.NaturalLanguageQueryGenerationOptionsInput = schema.new({
   id = id.from(_N, "NaturalLanguageQueryGenerationOptionsInput"),
   type = "structure",
   members = {
      DesiredState = schema.new({
         id = id.from(_N, "NaturalLanguageQueryGenerationOptionsInput", "DesiredState"),
         type = "string",
         name = "DesiredState",
         target_id = prelude.String.id,
      }),
   },
})

M.S3VectorsEngine = schema.new({
   id = id.from(_N, "S3VectorsEngine"),
   type = "structure",
   members = {
      Enabled = schema.new({
         id = id.from(_N, "S3VectorsEngine", "Enabled"),
         type = "boolean",
         name = "Enabled",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.ServerlessVectorAcceleration = schema.new({
   id = id.from(_N, "ServerlessVectorAcceleration"),
   type = "structure",
   members = {
      Enabled = schema.new({
         id = id.from(_N, "ServerlessVectorAcceleration", "Enabled"),
         type = "boolean",
         name = "Enabled",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.AIMLOptionsInput = schema.new({
   id = id.from(_N, "AIMLOptionsInput"),
   type = "structure",
   members = {
      NaturalLanguageQueryGenerationOptions = schema.new({
         id = id.from(_N, "AIMLOptionsInput", "NaturalLanguageQueryGenerationOptions"),
         type = "structure",
         name = "NaturalLanguageQueryGenerationOptions",
         target_id = id.from(_N, "NaturalLanguageQueryGenerationOptionsInput"),
         target = M.NaturalLanguageQueryGenerationOptionsInput,
      }),
      S3VectorsEngine = schema.new({
         id = id.from(_N, "AIMLOptionsInput", "S3VectorsEngine"),
         type = "structure",
         name = "S3VectorsEngine",
         target_id = id.from(_N, "S3VectorsEngine"),
         target = M.S3VectorsEngine,
      }),
      ServerlessVectorAcceleration = schema.new({
         id = id.from(_N, "AIMLOptionsInput", "ServerlessVectorAcceleration"),
         type = "structure",
         name = "ServerlessVectorAcceleration",
         target_id = id.from(_N, "ServerlessVectorAcceleration"),
         target = M.ServerlessVectorAcceleration,
      }),
   },
})

M.NaturalLanguageQueryGenerationOptionsOutput = schema.new({
   id = id.from(_N, "NaturalLanguageQueryGenerationOptionsOutput"),
   type = "structure",
   members = {
      DesiredState = schema.new({
         id = id.from(_N, "NaturalLanguageQueryGenerationOptionsOutput", "DesiredState"),
         type = "string",
         name = "DesiredState",
         target_id = prelude.String.id,
      }),
      CurrentState = schema.new({
         id = id.from(_N, "NaturalLanguageQueryGenerationOptionsOutput", "CurrentState"),
         type = "string",
         name = "CurrentState",
         target_id = prelude.String.id,
      }),
   },
})

M.AIMLOptionsOutput = schema.new({
   id = id.from(_N, "AIMLOptionsOutput"),
   type = "structure",
   members = {
      NaturalLanguageQueryGenerationOptions = schema.new({
         id = id.from(_N, "AIMLOptionsOutput", "NaturalLanguageQueryGenerationOptions"),
         type = "structure",
         name = "NaturalLanguageQueryGenerationOptions",
         target_id = id.from(_N, "NaturalLanguageQueryGenerationOptionsOutput"),
         target = M.NaturalLanguageQueryGenerationOptionsOutput,
      }),
      S3VectorsEngine = schema.new({
         id = id.from(_N, "AIMLOptionsOutput", "S3VectorsEngine"),
         type = "structure",
         name = "S3VectorsEngine",
         target_id = id.from(_N, "S3VectorsEngine"),
         target = M.S3VectorsEngine,
      }),
      ServerlessVectorAcceleration = schema.new({
         id = id.from(_N, "AIMLOptionsOutput", "ServerlessVectorAcceleration"),
         type = "structure",
         name = "ServerlessVectorAcceleration",
         target_id = id.from(_N, "ServerlessVectorAcceleration"),
         target = M.ServerlessVectorAcceleration,
      }),
   },
})

M.AIMLOptionsStatus = schema.new({
   id = id.from(_N, "AIMLOptionsStatus"),
   type = "structure",
   members = {
      Options = schema.new({
         id = id.from(_N, "AIMLOptionsStatus", "Options"),
         type = "structure",
         name = "Options",
         target_id = id.from(_N, "AIMLOptionsOutput"),
         target = M.AIMLOptionsOutput,
      }),
      Status = schema.new({
         id = id.from(_N, "AIMLOptionsStatus", "Status"),
         type = "structure",
         name = "Status",
         target_id = id.from(_N, "OptionStatus"),
         target = M.OptionStatus,
      }),
   },
})

M.KeyStoreAccessOption = schema.new({
   id = id.from(_N, "KeyStoreAccessOption"),
   type = "structure",
   members = {
      KeyAccessRoleArn = schema.new({
         id = id.from(_N, "KeyStoreAccessOption", "KeyAccessRoleArn"),
         type = "string",
         name = "KeyAccessRoleArn",
         target_id = prelude.String.id,
      }),
      KeyStoreAccessEnabled = schema.new({
         id = id.from(_N, "KeyStoreAccessOption", "KeyStoreAccessEnabled"),
         type = "boolean",
         name = "KeyStoreAccessEnabled",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.PackageAssociationConfiguration = schema.new({
   id = id.from(_N, "PackageAssociationConfiguration"),
   type = "structure",
   members = {
      KeyStoreAccessOption = schema.new({
         id = id.from(_N, "PackageAssociationConfiguration", "KeyStoreAccessOption"),
         type = "structure",
         name = "KeyStoreAccessOption",
         target_id = id.from(_N, "KeyStoreAccessOption"),
         target = M.KeyStoreAccessOption,
      }),
   },
})

M.AssociatePackageInput = schema.new({
   id = id.from(_N, "AssociatePackageRequest"),
   type = "structure",
   members = {
      PackageID = schema.new({
         id = id.from(_N, "AssociatePackageInput", "PackageID"),
         type = "string",
         name = "PackageID",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      DomainName = schema.new({
         id = id.from(_N, "AssociatePackageInput", "DomainName"),
         type = "string",
         name = "DomainName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      PrerequisitePackageIDList = schema.new({
         id = id.from(_N, "AssociatePackageInput", "PrerequisitePackageIDList"),
         type = "list",
         name = "PrerequisitePackageIDList",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      AssociationConfiguration = schema.new({
         id = id.from(_N, "AssociatePackageInput", "AssociationConfiguration"),
         type = "structure",
         name = "AssociationConfiguration",
         target_id = id.from(_N, "PackageAssociationConfiguration"),
         target = M.PackageAssociationConfiguration,
      }),
   },
})

M.ErrorDetails = schema.new({
   id = id.from(_N, "ErrorDetails"),
   type = "structure",
   members = {
      ErrorType = schema.new({
         id = id.from(_N, "ErrorDetails", "ErrorType"),
         type = "string",
         name = "ErrorType",
         target_id = prelude.String.id,
      }),
      ErrorMessage = schema.new({
         id = id.from(_N, "ErrorDetails", "ErrorMessage"),
         type = "string",
         name = "ErrorMessage",
         target_id = prelude.String.id,
      }),
   },
})

M.DomainPackageDetails = schema.new({
   id = id.from(_N, "DomainPackageDetails"),
   type = "structure",
   members = {
      PackageID = schema.new({
         id = id.from(_N, "DomainPackageDetails", "PackageID"),
         type = "string",
         name = "PackageID",
         target_id = prelude.String.id,
      }),
      PackageName = schema.new({
         id = id.from(_N, "DomainPackageDetails", "PackageName"),
         type = "string",
         name = "PackageName",
         target_id = prelude.String.id,
      }),
      PackageType = schema.new({
         id = id.from(_N, "DomainPackageDetails", "PackageType"),
         type = "string",
         name = "PackageType",
         target_id = prelude.String.id,
      }),
      LastUpdated = schema.new({
         id = id.from(_N, "DomainPackageDetails", "LastUpdated"),
         type = "timestamp",
         name = "LastUpdated",
         target_id = prelude.Timestamp.id,
      }),
      DomainName = schema.new({
         id = id.from(_N, "DomainPackageDetails", "DomainName"),
         type = "string",
         name = "DomainName",
         target_id = prelude.String.id,
      }),
      DomainPackageStatus = schema.new({
         id = id.from(_N, "DomainPackageDetails", "DomainPackageStatus"),
         type = "string",
         name = "DomainPackageStatus",
         target_id = prelude.String.id,
      }),
      PackageVersion = schema.new({
         id = id.from(_N, "DomainPackageDetails", "PackageVersion"),
         type = "string",
         name = "PackageVersion",
         target_id = prelude.String.id,
      }),
      PrerequisitePackageIDList = schema.new({
         id = id.from(_N, "DomainPackageDetails", "PrerequisitePackageIDList"),
         type = "list",
         name = "PrerequisitePackageIDList",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      ReferencePath = schema.new({
         id = id.from(_N, "DomainPackageDetails", "ReferencePath"),
         type = "string",
         name = "ReferencePath",
         target_id = prelude.String.id,
      }),
      ErrorDetails = schema.new({
         id = id.from(_N, "DomainPackageDetails", "ErrorDetails"),
         type = "structure",
         name = "ErrorDetails",
         target_id = id.from(_N, "ErrorDetails"),
         target = M.ErrorDetails,
      }),
      AssociationConfiguration = schema.new({
         id = id.from(_N, "DomainPackageDetails", "AssociationConfiguration"),
         type = "structure",
         name = "AssociationConfiguration",
         target_id = id.from(_N, "PackageAssociationConfiguration"),
         target = M.PackageAssociationConfiguration,
      }),
   },
})

M.AssociatePackageOutput = schema.new({
   id = id.from(_N, "AssociatePackageResponse"),
   type = "structure",
   members = {
      DomainPackageDetails = schema.new({
         id = id.from(_N, "AssociatePackageOutput", "DomainPackageDetails"),
         type = "structure",
         name = "DomainPackageDetails",
         target_id = id.from(_N, "DomainPackageDetails"),
         target = M.DomainPackageDetails,
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

M.PackageDetailsForAssociation = schema.new({
   id = id.from(_N, "PackageDetailsForAssociation"),
   type = "structure",
   members = {
      PackageID = schema.new({
         id = id.from(_N, "PackageDetailsForAssociation", "PackageID"),
         type = "string",
         name = "PackageID",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      PrerequisitePackageIDList = schema.new({
         id = id.from(_N, "PackageDetailsForAssociation", "PrerequisitePackageIDList"),
         type = "list",
         name = "PrerequisitePackageIDList",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      AssociationConfiguration = schema.new({
         id = id.from(_N, "PackageDetailsForAssociation", "AssociationConfiguration"),
         type = "structure",
         name = "AssociationConfiguration",
         target_id = id.from(_N, "PackageAssociationConfiguration"),
         target = M.PackageAssociationConfiguration,
      }),
   },
})

M.AssociatePackagesInput = schema.new({
   id = id.from(_N, "AssociatePackagesRequest"),
   type = "structure",
   members = {
      PackageList = schema.new({
         id = id.from(_N, "AssociatePackagesInput", "PackageList"),
         type = "list",
         name = "PackageList",
         target_id = prelude.Document.id,
         list_member = M.PackageDetailsForAssociation,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DomainName = schema.new({
         id = id.from(_N, "AssociatePackagesInput", "DomainName"),
         type = "string",
         name = "DomainName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AssociatePackagesOutput = schema.new({
   id = id.from(_N, "AssociatePackagesResponse"),
   type = "structure",
   members = {
      DomainPackageDetailsList = schema.new({
         id = id.from(_N, "AssociatePackagesOutput", "DomainPackageDetailsList"),
         type = "list",
         name = "DomainPackageDetailsList",
         target_id = prelude.Document.id,
         list_member = M.DomainPackageDetails,
      }),
   },
})

M.ServiceOptions = schema.new({
   id = id.from(_N, "ServiceOptions"),
   type = "structure",
   members = {
      SupportedRegions = schema.new({
         id = id.from(_N, "ServiceOptions", "SupportedRegions"),
         type = "list",
         name = "SupportedRegions",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.AuthorizeVpcEndpointAccessInput = schema.new({
   id = id.from(_N, "AuthorizeVpcEndpointAccessRequest"),
   type = "structure",
   members = {
      DomainName = schema.new({
         id = id.from(_N, "AuthorizeVpcEndpointAccessInput", "DomainName"),
         type = "string",
         name = "DomainName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Account = schema.new({
         id = id.from(_N, "AuthorizeVpcEndpointAccessInput", "Account"),
         type = "string",
         name = "Account",
         target_id = prelude.String.id,
      }),
      Service = schema.new({
         id = id.from(_N, "AuthorizeVpcEndpointAccessInput", "Service"),
         type = "string",
         name = "Service",
         target_id = prelude.String.id,
      }),
      ServiceOptions = schema.new({
         id = id.from(_N, "AuthorizeVpcEndpointAccessInput", "ServiceOptions"),
         type = "structure",
         name = "ServiceOptions",
         target_id = id.from(_N, "ServiceOptions"),
         target = M.ServiceOptions,
      }),
   },
})

M.AuthorizedPrincipal = schema.new({
   id = id.from(_N, "AuthorizedPrincipal"),
   type = "structure",
   members = {
      PrincipalType = schema.new({
         id = id.from(_N, "AuthorizedPrincipal", "PrincipalType"),
         type = "string",
         name = "PrincipalType",
         target_id = prelude.String.id,
      }),
      Principal = schema.new({
         id = id.from(_N, "AuthorizedPrincipal", "Principal"),
         type = "string",
         name = "Principal",
         target_id = prelude.String.id,
      }),
      ServiceOptions = schema.new({
         id = id.from(_N, "AuthorizedPrincipal", "ServiceOptions"),
         type = "structure",
         name = "ServiceOptions",
         target_id = id.from(_N, "ServiceOptions"),
         target = M.ServiceOptions,
      }),
   },
})

M.AuthorizeVpcEndpointAccessOutput = schema.new({
   id = id.from(_N, "AuthorizeVpcEndpointAccessResponse"),
   type = "structure",
   members = {
      AuthorizedPrincipal = schema.new({
         id = id.from(_N, "AuthorizeVpcEndpointAccessOutput", "AuthorizedPrincipal"),
         type = "structure",
         name = "AuthorizedPrincipal",
         target_id = id.from(_N, "AuthorizedPrincipal"),
         target = M.AuthorizedPrincipal,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CancelDomainConfigChangeInput = schema.new({
   id = id.from(_N, "CancelDomainConfigChangeRequest"),
   type = "structure",
   members = {
      DomainName = schema.new({
         id = id.from(_N, "CancelDomainConfigChangeInput", "DomainName"),
         type = "string",
         name = "DomainName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      DryRun = schema.new({
         id = id.from(_N, "CancelDomainConfigChangeInput", "DryRun"),
         type = "boolean",
         name = "DryRun",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.CancelledChangeProperty = schema.new({
   id = id.from(_N, "CancelledChangeProperty"),
   type = "structure",
   members = {
      PropertyName = schema.new({
         id = id.from(_N, "CancelledChangeProperty", "PropertyName"),
         type = "string",
         name = "PropertyName",
         target_id = prelude.String.id,
      }),
      CancelledValue = schema.new({
         id = id.from(_N, "CancelledChangeProperty", "CancelledValue"),
         type = "string",
         name = "CancelledValue",
         target_id = prelude.String.id,
      }),
      ActiveValue = schema.new({
         id = id.from(_N, "CancelledChangeProperty", "ActiveValue"),
         type = "string",
         name = "ActiveValue",
         target_id = prelude.String.id,
      }),
   },
})

M.CancelDomainConfigChangeOutput = schema.new({
   id = id.from(_N, "CancelDomainConfigChangeResponse"),
   type = "structure",
   members = {
      CancelledChangeIds = schema.new({
         id = id.from(_N, "CancelDomainConfigChangeOutput", "CancelledChangeIds"),
         type = "list",
         name = "CancelledChangeIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      CancelledChangeProperties = schema.new({
         id = id.from(_N, "CancelDomainConfigChangeOutput", "CancelledChangeProperties"),
         type = "list",
         name = "CancelledChangeProperties",
         target_id = prelude.Document.id,
         list_member = M.CancelledChangeProperty,
      }),
      DryRun = schema.new({
         id = id.from(_N, "CancelDomainConfigChangeOutput", "DryRun"),
         type = "boolean",
         name = "DryRun",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.CancelServiceSoftwareUpdateInput = schema.new({
   id = id.from(_N, "CancelServiceSoftwareUpdateRequest"),
   type = "structure",
   members = {
      DomainName = schema.new({
         id = id.from(_N, "CancelServiceSoftwareUpdateInput", "DomainName"),
         type = "string",
         name = "DomainName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ServiceSoftwareOptions = schema.new({
   id = id.from(_N, "ServiceSoftwareOptions"),
   type = "structure",
   members = {
      CurrentVersion = schema.new({
         id = id.from(_N, "ServiceSoftwareOptions", "CurrentVersion"),
         type = "string",
         name = "CurrentVersion",
         target_id = prelude.String.id,
      }),
      NewVersion = schema.new({
         id = id.from(_N, "ServiceSoftwareOptions", "NewVersion"),
         type = "string",
         name = "NewVersion",
         target_id = prelude.String.id,
      }),
      UpdateAvailable = schema.new({
         id = id.from(_N, "ServiceSoftwareOptions", "UpdateAvailable"),
         type = "boolean",
         name = "UpdateAvailable",
         target_id = prelude.Boolean.id,
      }),
      Cancellable = schema.new({
         id = id.from(_N, "ServiceSoftwareOptions", "Cancellable"),
         type = "boolean",
         name = "Cancellable",
         target_id = prelude.Boolean.id,
      }),
      UpdateStatus = schema.new({
         id = id.from(_N, "ServiceSoftwareOptions", "UpdateStatus"),
         type = "string",
         name = "UpdateStatus",
         target_id = prelude.String.id,
      }),
      Description = schema.new({
         id = id.from(_N, "ServiceSoftwareOptions", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      AutomatedUpdateDate = schema.new({
         id = id.from(_N, "ServiceSoftwareOptions", "AutomatedUpdateDate"),
         type = "timestamp",
         name = "AutomatedUpdateDate",
         target_id = prelude.Timestamp.id,
      }),
      OptionalDeployment = schema.new({
         id = id.from(_N, "ServiceSoftwareOptions", "OptionalDeployment"),
         type = "boolean",
         name = "OptionalDeployment",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.CancelServiceSoftwareUpdateOutput = schema.new({
   id = id.from(_N, "CancelServiceSoftwareUpdateResponse"),
   type = "structure",
   members = {
      ServiceSoftwareOptions = schema.new({
         id = id.from(_N, "CancelServiceSoftwareUpdateOutput", "ServiceSoftwareOptions"),
         type = "structure",
         name = "ServiceSoftwareOptions",
         target_id = id.from(_N, "ServiceSoftwareOptions"),
         target = M.ServiceSoftwareOptions,
      }),
   },
})

M.AppConfig = schema.new({
   id = id.from(_N, "AppConfig"),
   type = "structure",
   members = {
      key = schema.new({
         id = id.from(_N, "AppConfig", "key"),
         type = "string",
         name = "key",
         target_id = prelude.String.id,
      }),
      value = schema.new({
         id = id.from(_N, "AppConfig", "value"),
         type = "string",
         name = "value",
         target_id = prelude.String.id,
      }),
   },
})

M.DataSource = schema.new({
   id = id.from(_N, "DataSource"),
   type = "structure",
   members = {
      dataSourceArn = schema.new({
         id = id.from(_N, "DataSource", "dataSourceArn"),
         type = "string",
         name = "dataSourceArn",
         target_id = prelude.String.id,
      }),
      dataSourceDescription = schema.new({
         id = id.from(_N, "DataSource", "dataSourceDescription"),
         type = "string",
         name = "dataSourceDescription",
         target_id = prelude.String.id,
      }),
      iamRoleForDataSourceArn = schema.new({
         id = id.from(_N, "DataSource", "iamRoleForDataSourceArn"),
         type = "string",
         name = "iamRoleForDataSourceArn",
         target_id = prelude.String.id,
      }),
   },
})

M.IamIdentityCenterOptionsInput = schema.new({
   id = id.from(_N, "IamIdentityCenterOptionsInput"),
   type = "structure",
   members = {
      enabled = schema.new({
         id = id.from(_N, "IamIdentityCenterOptionsInput", "enabled"),
         type = "boolean",
         name = "enabled",
         target_id = prelude.Boolean.id,
      }),
      iamIdentityCenterInstanceArn = schema.new({
         id = id.from(_N, "IamIdentityCenterOptionsInput", "iamIdentityCenterInstanceArn"),
         type = "string",
         name = "iamIdentityCenterInstanceArn",
         target_id = prelude.String.id,
      }),
      iamRoleForIdentityCenterApplicationArn = schema.new({
         id = id.from(_N, "IamIdentityCenterOptionsInput", "iamRoleForIdentityCenterApplicationArn"),
         type = "string",
         name = "iamRoleForIdentityCenterApplicationArn",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateApplicationInput = schema.new({
   id = id.from(_N, "CreateApplicationRequest"),
   type = "structure",
   members = {
      clientToken = schema.new({
         id = id.from(_N, "CreateApplicationInput", "clientToken"),
         type = "string",
         name = "clientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "CreateApplicationInput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      dataSources = schema.new({
         id = id.from(_N, "CreateApplicationInput", "dataSources"),
         type = "list",
         name = "dataSources",
         target_id = prelude.Document.id,
         list_member = M.DataSource,
      }),
      iamIdentityCenterOptions = schema.new({
         id = id.from(_N, "CreateApplicationInput", "iamIdentityCenterOptions"),
         type = "structure",
         name = "iamIdentityCenterOptions",
         target_id = id.from(_N, "IamIdentityCenterOptionsInput"),
         target = M.IamIdentityCenterOptionsInput,
      }),
      appConfigs = schema.new({
         id = id.from(_N, "CreateApplicationInput", "appConfigs"),
         type = "list",
         name = "appConfigs",
         target_id = prelude.Document.id,
         list_member = M.AppConfig,
      }),
      tagList = schema.new({
         id = id.from(_N, "CreateApplicationInput", "tagList"),
         type = "list",
         name = "tagList",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
      kmsKeyArn = schema.new({
         id = id.from(_N, "CreateApplicationInput", "kmsKeyArn"),
         type = "string",
         name = "kmsKeyArn",
         target_id = prelude.String.id,
      }),
   },
})

M.IamIdentityCenterOptions = schema.new({
   id = id.from(_N, "IamIdentityCenterOptions"),
   type = "structure",
   members = {
      enabled = schema.new({
         id = id.from(_N, "IamIdentityCenterOptions", "enabled"),
         type = "boolean",
         name = "enabled",
         target_id = prelude.Boolean.id,
      }),
      iamIdentityCenterInstanceArn = schema.new({
         id = id.from(_N, "IamIdentityCenterOptions", "iamIdentityCenterInstanceArn"),
         type = "string",
         name = "iamIdentityCenterInstanceArn",
         target_id = prelude.String.id,
      }),
      iamRoleForIdentityCenterApplicationArn = schema.new({
         id = id.from(_N, "IamIdentityCenterOptions", "iamRoleForIdentityCenterApplicationArn"),
         type = "string",
         name = "iamRoleForIdentityCenterApplicationArn",
         target_id = prelude.String.id,
      }),
      iamIdentityCenterApplicationArn = schema.new({
         id = id.from(_N, "IamIdentityCenterOptions", "iamIdentityCenterApplicationArn"),
         type = "string",
         name = "iamIdentityCenterApplicationArn",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateApplicationOutput = schema.new({
   id = id.from(_N, "CreateApplicationResponse"),
   type = "structure",
   members = {
      id = schema.new({
         id = id.from(_N, "CreateApplicationOutput", "id"),
         type = "string",
         name = "id",
         target_id = prelude.String.id,
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
      }),
      dataSources = schema.new({
         id = id.from(_N, "CreateApplicationOutput", "dataSources"),
         type = "list",
         name = "dataSources",
         target_id = prelude.Document.id,
         list_member = M.DataSource,
      }),
      iamIdentityCenterOptions = schema.new({
         id = id.from(_N, "CreateApplicationOutput", "iamIdentityCenterOptions"),
         type = "structure",
         name = "iamIdentityCenterOptions",
         target_id = id.from(_N, "IamIdentityCenterOptions"),
         target = M.IamIdentityCenterOptions,
      }),
      appConfigs = schema.new({
         id = id.from(_N, "CreateApplicationOutput", "appConfigs"),
         type = "list",
         name = "appConfigs",
         target_id = prelude.Document.id,
         list_member = M.AppConfig,
      }),
      tagList = schema.new({
         id = id.from(_N, "CreateApplicationOutput", "tagList"),
         type = "list",
         name = "tagList",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
      createdAt = schema.new({
         id = id.from(_N, "CreateApplicationOutput", "createdAt"),
         type = "timestamp",
         name = "createdAt",
         target_id = prelude.Timestamp.id,
      }),
      kmsKeyArn = schema.new({
         id = id.from(_N, "CreateApplicationOutput", "kmsKeyArn"),
         type = "string",
         name = "kmsKeyArn",
         target_id = prelude.String.id,
      }),
   },
})

M.Duration = schema.new({
   id = id.from(_N, "Duration"),
   type = "structure",
   members = {
      Value = schema.new({
         id = id.from(_N, "Duration", "Value"),
         type = "long",
         name = "Value",
         target_id = prelude.Long.id,
      }),
      Unit = schema.new({
         id = id.from(_N, "Duration", "Unit"),
         type = "string",
         name = "Unit",
         target_id = prelude.String.id,
      }),
   },
})

M.AutoTuneMaintenanceSchedule = schema.new({
   id = id.from(_N, "AutoTuneMaintenanceSchedule"),
   type = "structure",
   members = {
      StartAt = schema.new({
         id = id.from(_N, "AutoTuneMaintenanceSchedule", "StartAt"),
         type = "timestamp",
         name = "StartAt",
         target_id = prelude.Timestamp.id,
      }),
      Duration = schema.new({
         id = id.from(_N, "AutoTuneMaintenanceSchedule", "Duration"),
         type = "structure",
         name = "Duration",
         target_id = id.from(_N, "Duration"),
         target = M.Duration,
      }),
      CronExpressionForRecurrence = schema.new({
         id = id.from(_N, "AutoTuneMaintenanceSchedule", "CronExpressionForRecurrence"),
         type = "string",
         name = "CronExpressionForRecurrence",
         target_id = prelude.String.id,
      }),
   },
})

M.AutoTuneOptionsInput = schema.new({
   id = id.from(_N, "AutoTuneOptionsInput"),
   type = "structure",
   members = {
      DesiredState = schema.new({
         id = id.from(_N, "AutoTuneOptionsInput", "DesiredState"),
         type = "string",
         name = "DesiredState",
         target_id = prelude.String.id,
      }),
      MaintenanceSchedules = schema.new({
         id = id.from(_N, "AutoTuneOptionsInput", "MaintenanceSchedules"),
         type = "list",
         name = "MaintenanceSchedules",
         target_id = prelude.Document.id,
         list_member = M.AutoTuneMaintenanceSchedule,
      }),
      UseOffPeakWindow = schema.new({
         id = id.from(_N, "AutoTuneOptionsInput", "UseOffPeakWindow"),
         type = "boolean",
         name = "UseOffPeakWindow",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.ColdStorageOptions = schema.new({
   id = id.from(_N, "ColdStorageOptions"),
   type = "structure",
   members = {
      Enabled = schema.new({
         id = id.from(_N, "ColdStorageOptions", "Enabled"),
         type = "boolean",
         name = "Enabled",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.NodeConfig = schema.new({
   id = id.from(_N, "NodeConfig"),
   type = "structure",
   members = {
      Enabled = schema.new({
         id = id.from(_N, "NodeConfig", "Enabled"),
         type = "boolean",
         name = "Enabled",
         target_id = prelude.Boolean.id,
      }),
      Type = schema.new({
         id = id.from(_N, "NodeConfig", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
      }),
      Count = schema.new({
         id = id.from(_N, "NodeConfig", "Count"),
         type = "integer",
         name = "Count",
         target_id = prelude.Integer.id,
      }),
   },
})

M.NodeOption = schema.new({
   id = id.from(_N, "NodeOption"),
   type = "structure",
   members = {
      NodeType = schema.new({
         id = id.from(_N, "NodeOption", "NodeType"),
         type = "string",
         name = "NodeType",
         target_id = prelude.String.id,
      }),
      NodeConfig = schema.new({
         id = id.from(_N, "NodeOption", "NodeConfig"),
         type = "structure",
         name = "NodeConfig",
         target_id = id.from(_N, "NodeConfig"),
         target = M.NodeConfig,
      }),
   },
})

M.ZoneAwarenessConfig = schema.new({
   id = id.from(_N, "ZoneAwarenessConfig"),
   type = "structure",
   members = {
      AvailabilityZoneCount = schema.new({
         id = id.from(_N, "ZoneAwarenessConfig", "AvailabilityZoneCount"),
         type = "integer",
         name = "AvailabilityZoneCount",
         target_id = prelude.Integer.id,
      }),
   },
})

M.ClusterConfig = schema.new({
   id = id.from(_N, "ClusterConfig"),
   type = "structure",
   members = {
      InstanceType = schema.new({
         id = id.from(_N, "ClusterConfig", "InstanceType"),
         type = "string",
         name = "InstanceType",
         target_id = prelude.String.id,
      }),
      InstanceCount = schema.new({
         id = id.from(_N, "ClusterConfig", "InstanceCount"),
         type = "integer",
         name = "InstanceCount",
         target_id = prelude.Integer.id,
      }),
      DedicatedMasterEnabled = schema.new({
         id = id.from(_N, "ClusterConfig", "DedicatedMasterEnabled"),
         type = "boolean",
         name = "DedicatedMasterEnabled",
         target_id = prelude.Boolean.id,
      }),
      ZoneAwarenessEnabled = schema.new({
         id = id.from(_N, "ClusterConfig", "ZoneAwarenessEnabled"),
         type = "boolean",
         name = "ZoneAwarenessEnabled",
         target_id = prelude.Boolean.id,
      }),
      ZoneAwarenessConfig = schema.new({
         id = id.from(_N, "ClusterConfig", "ZoneAwarenessConfig"),
         type = "structure",
         name = "ZoneAwarenessConfig",
         target_id = id.from(_N, "ZoneAwarenessConfig"),
         target = M.ZoneAwarenessConfig,
      }),
      DedicatedMasterType = schema.new({
         id = id.from(_N, "ClusterConfig", "DedicatedMasterType"),
         type = "string",
         name = "DedicatedMasterType",
         target_id = prelude.String.id,
      }),
      DedicatedMasterCount = schema.new({
         id = id.from(_N, "ClusterConfig", "DedicatedMasterCount"),
         type = "integer",
         name = "DedicatedMasterCount",
         target_id = prelude.Integer.id,
      }),
      WarmEnabled = schema.new({
         id = id.from(_N, "ClusterConfig", "WarmEnabled"),
         type = "boolean",
         name = "WarmEnabled",
         target_id = prelude.Boolean.id,
      }),
      WarmType = schema.new({
         id = id.from(_N, "ClusterConfig", "WarmType"),
         type = "string",
         name = "WarmType",
         target_id = prelude.String.id,
      }),
      WarmCount = schema.new({
         id = id.from(_N, "ClusterConfig", "WarmCount"),
         type = "integer",
         name = "WarmCount",
         target_id = prelude.Integer.id,
      }),
      ColdStorageOptions = schema.new({
         id = id.from(_N, "ClusterConfig", "ColdStorageOptions"),
         type = "structure",
         name = "ColdStorageOptions",
         target_id = id.from(_N, "ColdStorageOptions"),
         target = M.ColdStorageOptions,
      }),
      MultiAZWithStandbyEnabled = schema.new({
         id = id.from(_N, "ClusterConfig", "MultiAZWithStandbyEnabled"),
         type = "boolean",
         name = "MultiAZWithStandbyEnabled",
         target_id = prelude.Boolean.id,
      }),
      NodeOptions = schema.new({
         id = id.from(_N, "ClusterConfig", "NodeOptions"),
         type = "list",
         name = "NodeOptions",
         target_id = prelude.Document.id,
         list_member = M.NodeOption,
      }),
   },
})

M.CognitoOptions = schema.new({
   id = id.from(_N, "CognitoOptions"),
   type = "structure",
   members = {
      Enabled = schema.new({
         id = id.from(_N, "CognitoOptions", "Enabled"),
         type = "boolean",
         name = "Enabled",
         target_id = prelude.Boolean.id,
      }),
      UserPoolId = schema.new({
         id = id.from(_N, "CognitoOptions", "UserPoolId"),
         type = "string",
         name = "UserPoolId",
         target_id = prelude.String.id,
      }),
      IdentityPoolId = schema.new({
         id = id.from(_N, "CognitoOptions", "IdentityPoolId"),
         type = "string",
         name = "IdentityPoolId",
         target_id = prelude.String.id,
      }),
      RoleArn = schema.new({
         id = id.from(_N, "CognitoOptions", "RoleArn"),
         type = "string",
         name = "RoleArn",
         target_id = prelude.String.id,
      }),
   },
})

M.DeploymentStrategyOptions = schema.new({
   id = id.from(_N, "DeploymentStrategyOptions"),
   type = "structure",
   members = {
      DeploymentStrategy = schema.new({
         id = id.from(_N, "DeploymentStrategyOptions", "DeploymentStrategy"),
         type = "string",
         name = "DeploymentStrategy",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DomainEndpointOptions = schema.new({
   id = id.from(_N, "DomainEndpointOptions"),
   type = "structure",
   members = {
      EnforceHTTPS = schema.new({
         id = id.from(_N, "DomainEndpointOptions", "EnforceHTTPS"),
         type = "boolean",
         name = "EnforceHTTPS",
         target_id = prelude.Boolean.id,
      }),
      TLSSecurityPolicy = schema.new({
         id = id.from(_N, "DomainEndpointOptions", "TLSSecurityPolicy"),
         type = "string",
         name = "TLSSecurityPolicy",
         target_id = prelude.String.id,
      }),
      CustomEndpointEnabled = schema.new({
         id = id.from(_N, "DomainEndpointOptions", "CustomEndpointEnabled"),
         type = "boolean",
         name = "CustomEndpointEnabled",
         target_id = prelude.Boolean.id,
      }),
      CustomEndpoint = schema.new({
         id = id.from(_N, "DomainEndpointOptions", "CustomEndpoint"),
         type = "string",
         name = "CustomEndpoint",
         target_id = prelude.String.id,
      }),
      CustomEndpointCertificateArn = schema.new({
         id = id.from(_N, "DomainEndpointOptions", "CustomEndpointCertificateArn"),
         type = "string",
         name = "CustomEndpointCertificateArn",
         target_id = prelude.String.id,
      }),
   },
})

M.EBSOptions = schema.new({
   id = id.from(_N, "EBSOptions"),
   type = "structure",
   members = {
      EBSEnabled = schema.new({
         id = id.from(_N, "EBSOptions", "EBSEnabled"),
         type = "boolean",
         name = "EBSEnabled",
         target_id = prelude.Boolean.id,
      }),
      VolumeType = schema.new({
         id = id.from(_N, "EBSOptions", "VolumeType"),
         type = "string",
         name = "VolumeType",
         target_id = prelude.String.id,
      }),
      VolumeSize = schema.new({
         id = id.from(_N, "EBSOptions", "VolumeSize"),
         type = "integer",
         name = "VolumeSize",
         target_id = prelude.Integer.id,
      }),
      Iops = schema.new({
         id = id.from(_N, "EBSOptions", "Iops"),
         type = "integer",
         name = "Iops",
         target_id = prelude.Integer.id,
      }),
      Throughput = schema.new({
         id = id.from(_N, "EBSOptions", "Throughput"),
         type = "integer",
         name = "Throughput",
         target_id = prelude.Integer.id,
      }),
   },
})

M.EncryptionAtRestOptions = schema.new({
   id = id.from(_N, "EncryptionAtRestOptions"),
   type = "structure",
   members = {
      Enabled = schema.new({
         id = id.from(_N, "EncryptionAtRestOptions", "Enabled"),
         type = "boolean",
         name = "Enabled",
         target_id = prelude.Boolean.id,
      }),
      KmsKeyId = schema.new({
         id = id.from(_N, "EncryptionAtRestOptions", "KmsKeyId"),
         type = "string",
         name = "KmsKeyId",
         target_id = prelude.String.id,
      }),
   },
})

M.IdentityCenterOptionsInput = schema.new({
   id = id.from(_N, "IdentityCenterOptionsInput"),
   type = "structure",
   members = {
      EnabledAPIAccess = schema.new({
         id = id.from(_N, "IdentityCenterOptionsInput", "EnabledAPIAccess"),
         type = "boolean",
         name = "EnabledAPIAccess",
         target_id = prelude.Boolean.id,
      }),
      IdentityCenterInstanceARN = schema.new({
         id = id.from(_N, "IdentityCenterOptionsInput", "IdentityCenterInstanceARN"),
         type = "string",
         name = "IdentityCenterInstanceARN",
         target_id = prelude.String.id,
      }),
      IdentityCenterInstanceRegion = schema.new({
         id = id.from(_N, "IdentityCenterOptionsInput", "IdentityCenterInstanceRegion"),
         type = "string",
         name = "IdentityCenterInstanceRegion",
         target_id = prelude.String.id,
      }),
      SubjectKey = schema.new({
         id = id.from(_N, "IdentityCenterOptionsInput", "SubjectKey"),
         type = "string",
         name = "SubjectKey",
         target_id = prelude.String.id,
      }),
      RolesKey = schema.new({
         id = id.from(_N, "IdentityCenterOptionsInput", "RolesKey"),
         type = "string",
         name = "RolesKey",
         target_id = prelude.String.id,
      }),
   },
})

M.LogPublishingOption = schema.new({
   id = id.from(_N, "LogPublishingOption"),
   type = "structure",
   members = {
      CloudWatchLogsLogGroupArn = schema.new({
         id = id.from(_N, "LogPublishingOption", "CloudWatchLogsLogGroupArn"),
         type = "string",
         name = "CloudWatchLogsLogGroupArn",
         target_id = prelude.String.id,
      }),
      Enabled = schema.new({
         id = id.from(_N, "LogPublishingOption", "Enabled"),
         type = "boolean",
         name = "Enabled",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.NodeToNodeEncryptionOptions = schema.new({
   id = id.from(_N, "NodeToNodeEncryptionOptions"),
   type = "structure",
   members = {
      Enabled = schema.new({
         id = id.from(_N, "NodeToNodeEncryptionOptions", "Enabled"),
         type = "boolean",
         name = "Enabled",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.WindowStartTime = schema.new({
   id = id.from(_N, "WindowStartTime"),
   type = "structure",
   members = {
      Hours = schema.new({
         id = id.from(_N, "WindowStartTime", "Hours"),
         type = "long",
         name = "Hours",
         target_id = prelude.Long.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      Minutes = schema.new({
         id = id.from(_N, "WindowStartTime", "Minutes"),
         type = "long",
         name = "Minutes",
         target_id = prelude.Long.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
   },
})

M.OffPeakWindow = schema.new({
   id = id.from(_N, "OffPeakWindow"),
   type = "structure",
   members = {
      WindowStartTime = schema.new({
         id = id.from(_N, "OffPeakWindow", "WindowStartTime"),
         type = "structure",
         name = "WindowStartTime",
         target_id = id.from(_N, "WindowStartTime"),
         target = M.WindowStartTime,
      }),
   },
})

M.OffPeakWindowOptions = schema.new({
   id = id.from(_N, "OffPeakWindowOptions"),
   type = "structure",
   members = {
      Enabled = schema.new({
         id = id.from(_N, "OffPeakWindowOptions", "Enabled"),
         type = "boolean",
         name = "Enabled",
         target_id = prelude.Boolean.id,
      }),
      OffPeakWindow = schema.new({
         id = id.from(_N, "OffPeakWindowOptions", "OffPeakWindow"),
         type = "structure",
         name = "OffPeakWindow",
         target_id = id.from(_N, "OffPeakWindow"),
         target = M.OffPeakWindow,
      }),
   },
})

M.SnapshotOptions = schema.new({
   id = id.from(_N, "SnapshotOptions"),
   type = "structure",
   members = {
      AutomatedSnapshotStartHour = schema.new({
         id = id.from(_N, "SnapshotOptions", "AutomatedSnapshotStartHour"),
         type = "integer",
         name = "AutomatedSnapshotStartHour",
         target_id = prelude.Integer.id,
      }),
   },
})

M.SoftwareUpdateOptions = schema.new({
   id = id.from(_N, "SoftwareUpdateOptions"),
   type = "structure",
   members = {
      AutoSoftwareUpdateEnabled = schema.new({
         id = id.from(_N, "SoftwareUpdateOptions", "AutoSoftwareUpdateEnabled"),
         type = "boolean",
         name = "AutoSoftwareUpdateEnabled",
         target_id = prelude.Boolean.id,
      }),
      UseLatestServiceSoftwareForBlueGreen = schema.new({
         id = id.from(_N, "SoftwareUpdateOptions", "UseLatestServiceSoftwareForBlueGreen"),
         type = "boolean",
         name = "UseLatestServiceSoftwareForBlueGreen",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.VPCOptions = schema.new({
   id = id.from(_N, "VPCOptions"),
   type = "structure",
   members = {
      SubnetIds = schema.new({
         id = id.from(_N, "VPCOptions", "SubnetIds"),
         type = "list",
         name = "SubnetIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      SecurityGroupIds = schema.new({
         id = id.from(_N, "VPCOptions", "SecurityGroupIds"),
         type = "list",
         name = "SecurityGroupIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      EgressEnabled = schema.new({
         id = id.from(_N, "VPCOptions", "EgressEnabled"),
         type = "boolean",
         name = "EgressEnabled",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.CreateDomainInput = schema.new({
   id = id.from(_N, "CreateDomainRequest"),
   type = "structure",
   members = {
      DomainName = schema.new({
         id = id.from(_N, "CreateDomainInput", "DomainName"),
         type = "string",
         name = "DomainName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      EngineVersion = schema.new({
         id = id.from(_N, "CreateDomainInput", "EngineVersion"),
         type = "string",
         name = "EngineVersion",
         target_id = prelude.String.id,
      }),
      ClusterConfig = schema.new({
         id = id.from(_N, "CreateDomainInput", "ClusterConfig"),
         type = "structure",
         name = "ClusterConfig",
         target_id = id.from(_N, "ClusterConfig"),
         target = M.ClusterConfig,
      }),
      EBSOptions = schema.new({
         id = id.from(_N, "CreateDomainInput", "EBSOptions"),
         type = "structure",
         name = "EBSOptions",
         target_id = id.from(_N, "EBSOptions"),
         target = M.EBSOptions,
      }),
      AccessPolicies = schema.new({
         id = id.from(_N, "CreateDomainInput", "AccessPolicies"),
         type = "string",
         name = "AccessPolicies",
         target_id = prelude.String.id,
      }),
      IPAddressType = schema.new({
         id = id.from(_N, "CreateDomainInput", "IPAddressType"),
         type = "string",
         name = "IPAddressType",
         target_id = prelude.String.id,
      }),
      SnapshotOptions = schema.new({
         id = id.from(_N, "CreateDomainInput", "SnapshotOptions"),
         type = "structure",
         name = "SnapshotOptions",
         target_id = id.from(_N, "SnapshotOptions"),
         target = M.SnapshotOptions,
      }),
      VPCOptions = schema.new({
         id = id.from(_N, "CreateDomainInput", "VPCOptions"),
         type = "structure",
         name = "VPCOptions",
         target_id = id.from(_N, "VPCOptions"),
         target = M.VPCOptions,
      }),
      CognitoOptions = schema.new({
         id = id.from(_N, "CreateDomainInput", "CognitoOptions"),
         type = "structure",
         name = "CognitoOptions",
         target_id = id.from(_N, "CognitoOptions"),
         target = M.CognitoOptions,
      }),
      EncryptionAtRestOptions = schema.new({
         id = id.from(_N, "CreateDomainInput", "EncryptionAtRestOptions"),
         type = "structure",
         name = "EncryptionAtRestOptions",
         target_id = id.from(_N, "EncryptionAtRestOptions"),
         target = M.EncryptionAtRestOptions,
      }),
      NodeToNodeEncryptionOptions = schema.new({
         id = id.from(_N, "CreateDomainInput", "NodeToNodeEncryptionOptions"),
         type = "structure",
         name = "NodeToNodeEncryptionOptions",
         target_id = id.from(_N, "NodeToNodeEncryptionOptions"),
         target = M.NodeToNodeEncryptionOptions,
      }),
      AdvancedOptions = schema.new({
         id = id.from(_N, "CreateDomainInput", "AdvancedOptions"),
         type = "map",
         name = "AdvancedOptions",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      LogPublishingOptions = schema.new({
         id = id.from(_N, "CreateDomainInput", "LogPublishingOptions"),
         type = "map",
         name = "LogPublishingOptions",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.LogPublishingOption,
      }),
      DomainEndpointOptions = schema.new({
         id = id.from(_N, "CreateDomainInput", "DomainEndpointOptions"),
         type = "structure",
         name = "DomainEndpointOptions",
         target_id = id.from(_N, "DomainEndpointOptions"),
         target = M.DomainEndpointOptions,
      }),
      AdvancedSecurityOptions = schema.new({
         id = id.from(_N, "CreateDomainInput", "AdvancedSecurityOptions"),
         type = "structure",
         name = "AdvancedSecurityOptions",
         target_id = id.from(_N, "AdvancedSecurityOptionsInput"),
         target = M.AdvancedSecurityOptionsInput,
      }),
      IdentityCenterOptions = schema.new({
         id = id.from(_N, "CreateDomainInput", "IdentityCenterOptions"),
         type = "structure",
         name = "IdentityCenterOptions",
         target_id = id.from(_N, "IdentityCenterOptionsInput"),
         target = M.IdentityCenterOptionsInput,
      }),
      TagList = schema.new({
         id = id.from(_N, "CreateDomainInput", "TagList"),
         type = "list",
         name = "TagList",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
      AutoTuneOptions = schema.new({
         id = id.from(_N, "CreateDomainInput", "AutoTuneOptions"),
         type = "structure",
         name = "AutoTuneOptions",
         target_id = id.from(_N, "AutoTuneOptionsInput"),
         target = M.AutoTuneOptionsInput,
      }),
      OffPeakWindowOptions = schema.new({
         id = id.from(_N, "CreateDomainInput", "OffPeakWindowOptions"),
         type = "structure",
         name = "OffPeakWindowOptions",
         target_id = id.from(_N, "OffPeakWindowOptions"),
         target = M.OffPeakWindowOptions,
      }),
      SoftwareUpdateOptions = schema.new({
         id = id.from(_N, "CreateDomainInput", "SoftwareUpdateOptions"),
         type = "structure",
         name = "SoftwareUpdateOptions",
         target_id = id.from(_N, "SoftwareUpdateOptions"),
         target = M.SoftwareUpdateOptions,
      }),
      AIMLOptions = schema.new({
         id = id.from(_N, "CreateDomainInput", "AIMLOptions"),
         type = "structure",
         name = "AIMLOptions",
         target_id = id.from(_N, "AIMLOptionsInput"),
         target = M.AIMLOptionsInput,
      }),
      DeploymentStrategyOptions = schema.new({
         id = id.from(_N, "CreateDomainInput", "DeploymentStrategyOptions"),
         type = "structure",
         name = "DeploymentStrategyOptions",
         target_id = id.from(_N, "DeploymentStrategyOptions"),
         target = M.DeploymentStrategyOptions,
      }),
   },
})

M.AutoTuneOptionsOutput = schema.new({
   id = id.from(_N, "AutoTuneOptionsOutput"),
   type = "structure",
   members = {
      State = schema.new({
         id = id.from(_N, "AutoTuneOptionsOutput", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
      }),
      ErrorMessage = schema.new({
         id = id.from(_N, "AutoTuneOptionsOutput", "ErrorMessage"),
         type = "string",
         name = "ErrorMessage",
         target_id = prelude.String.id,
      }),
      UseOffPeakWindow = schema.new({
         id = id.from(_N, "AutoTuneOptionsOutput", "UseOffPeakWindow"),
         type = "boolean",
         name = "UseOffPeakWindow",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.ChangeProgressDetails = schema.new({
   id = id.from(_N, "ChangeProgressDetails"),
   type = "structure",
   members = {
      ChangeId = schema.new({
         id = id.from(_N, "ChangeProgressDetails", "ChangeId"),
         type = "string",
         name = "ChangeId",
         target_id = prelude.String.id,
      }),
      Message = schema.new({
         id = id.from(_N, "ChangeProgressDetails", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
      ConfigChangeStatus = schema.new({
         id = id.from(_N, "ChangeProgressDetails", "ConfigChangeStatus"),
         type = "string",
         name = "ConfigChangeStatus",
         target_id = prelude.String.id,
      }),
      InitiatedBy = schema.new({
         id = id.from(_N, "ChangeProgressDetails", "InitiatedBy"),
         type = "string",
         name = "InitiatedBy",
         target_id = prelude.String.id,
      }),
      StartTime = schema.new({
         id = id.from(_N, "ChangeProgressDetails", "StartTime"),
         type = "timestamp",
         name = "StartTime",
         target_id = prelude.Timestamp.id,
      }),
      LastUpdatedTime = schema.new({
         id = id.from(_N, "ChangeProgressDetails", "LastUpdatedTime"),
         type = "timestamp",
         name = "LastUpdatedTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.IdentityCenterOptions = schema.new({
   id = id.from(_N, "IdentityCenterOptions"),
   type = "structure",
   members = {
      EnabledAPIAccess = schema.new({
         id = id.from(_N, "IdentityCenterOptions", "EnabledAPIAccess"),
         type = "boolean",
         name = "EnabledAPIAccess",
         target_id = prelude.Boolean.id,
      }),
      IdentityCenterInstanceARN = schema.new({
         id = id.from(_N, "IdentityCenterOptions", "IdentityCenterInstanceARN"),
         type = "string",
         name = "IdentityCenterInstanceARN",
         target_id = prelude.String.id,
      }),
      IdentityCenterInstanceRegion = schema.new({
         id = id.from(_N, "IdentityCenterOptions", "IdentityCenterInstanceRegion"),
         type = "string",
         name = "IdentityCenterInstanceRegion",
         target_id = prelude.String.id,
      }),
      SubjectKey = schema.new({
         id = id.from(_N, "IdentityCenterOptions", "SubjectKey"),
         type = "string",
         name = "SubjectKey",
         target_id = prelude.String.id,
      }),
      RolesKey = schema.new({
         id = id.from(_N, "IdentityCenterOptions", "RolesKey"),
         type = "string",
         name = "RolesKey",
         target_id = prelude.String.id,
      }),
      IdentityCenterApplicationARN = schema.new({
         id = id.from(_N, "IdentityCenterOptions", "IdentityCenterApplicationARN"),
         type = "string",
         name = "IdentityCenterApplicationARN",
         target_id = prelude.String.id,
      }),
      IdentityStoreId = schema.new({
         id = id.from(_N, "IdentityCenterOptions", "IdentityStoreId"),
         type = "string",
         name = "IdentityStoreId",
         target_id = prelude.String.id,
      }),
   },
})

M.ModifyingProperties = schema.new({
   id = id.from(_N, "ModifyingProperties"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "ModifyingProperties", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      ActiveValue = schema.new({
         id = id.from(_N, "ModifyingProperties", "ActiveValue"),
         type = "string",
         name = "ActiveValue",
         target_id = prelude.String.id,
      }),
      PendingValue = schema.new({
         id = id.from(_N, "ModifyingProperties", "PendingValue"),
         type = "string",
         name = "PendingValue",
         target_id = prelude.String.id,
      }),
      ValueType = schema.new({
         id = id.from(_N, "ModifyingProperties", "ValueType"),
         type = "string",
         name = "ValueType",
         target_id = prelude.String.id,
      }),
   },
})

M.VPCDerivedInfo = schema.new({
   id = id.from(_N, "VPCDerivedInfo"),
   type = "structure",
   members = {
      VPCId = schema.new({
         id = id.from(_N, "VPCDerivedInfo", "VPCId"),
         type = "string",
         name = "VPCId",
         target_id = prelude.String.id,
      }),
      SubnetIds = schema.new({
         id = id.from(_N, "VPCDerivedInfo", "SubnetIds"),
         type = "list",
         name = "SubnetIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      AvailabilityZones = schema.new({
         id = id.from(_N, "VPCDerivedInfo", "AvailabilityZones"),
         type = "list",
         name = "AvailabilityZones",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      SecurityGroupIds = schema.new({
         id = id.from(_N, "VPCDerivedInfo", "SecurityGroupIds"),
         type = "list",
         name = "SecurityGroupIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      EgressEnabled = schema.new({
         id = id.from(_N, "VPCDerivedInfo", "EgressEnabled"),
         type = "boolean",
         name = "EgressEnabled",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.DomainStatus = schema.new({
   id = id.from(_N, "DomainStatus"),
   type = "structure",
   members = {
      DomainId = schema.new({
         id = id.from(_N, "DomainStatus", "DomainId"),
         type = "string",
         name = "DomainId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DomainName = schema.new({
         id = id.from(_N, "DomainStatus", "DomainName"),
         type = "string",
         name = "DomainName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ARN = schema.new({
         id = id.from(_N, "DomainStatus", "ARN"),
         type = "string",
         name = "ARN",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Created = schema.new({
         id = id.from(_N, "DomainStatus", "Created"),
         type = "boolean",
         name = "Created",
         target_id = prelude.Boolean.id,
      }),
      Deleted = schema.new({
         id = id.from(_N, "DomainStatus", "Deleted"),
         type = "boolean",
         name = "Deleted",
         target_id = prelude.Boolean.id,
      }),
      Endpoint = schema.new({
         id = id.from(_N, "DomainStatus", "Endpoint"),
         type = "string",
         name = "Endpoint",
         target_id = prelude.String.id,
      }),
      EndpointV2 = schema.new({
         id = id.from(_N, "DomainStatus", "EndpointV2"),
         type = "string",
         name = "EndpointV2",
         target_id = prelude.String.id,
      }),
      Endpoints = schema.new({
         id = id.from(_N, "DomainStatus", "Endpoints"),
         type = "map",
         name = "Endpoints",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      DomainEndpointV2HostedZoneId = schema.new({
         id = id.from(_N, "DomainStatus", "DomainEndpointV2HostedZoneId"),
         type = "string",
         name = "DomainEndpointV2HostedZoneId",
         target_id = prelude.String.id,
      }),
      Processing = schema.new({
         id = id.from(_N, "DomainStatus", "Processing"),
         type = "boolean",
         name = "Processing",
         target_id = prelude.Boolean.id,
      }),
      UpgradeProcessing = schema.new({
         id = id.from(_N, "DomainStatus", "UpgradeProcessing"),
         type = "boolean",
         name = "UpgradeProcessing",
         target_id = prelude.Boolean.id,
      }),
      EngineVersion = schema.new({
         id = id.from(_N, "DomainStatus", "EngineVersion"),
         type = "string",
         name = "EngineVersion",
         target_id = prelude.String.id,
      }),
      ClusterConfig = schema.new({
         id = id.from(_N, "DomainStatus", "ClusterConfig"),
         type = "structure",
         name = "ClusterConfig",
         target_id = id.from(_N, "ClusterConfig"),
         target = M.ClusterConfig,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      EBSOptions = schema.new({
         id = id.from(_N, "DomainStatus", "EBSOptions"),
         type = "structure",
         name = "EBSOptions",
         target_id = id.from(_N, "EBSOptions"),
         target = M.EBSOptions,
      }),
      AccessPolicies = schema.new({
         id = id.from(_N, "DomainStatus", "AccessPolicies"),
         type = "string",
         name = "AccessPolicies",
         target_id = prelude.String.id,
      }),
      IPAddressType = schema.new({
         id = id.from(_N, "DomainStatus", "IPAddressType"),
         type = "string",
         name = "IPAddressType",
         target_id = prelude.String.id,
      }),
      SnapshotOptions = schema.new({
         id = id.from(_N, "DomainStatus", "SnapshotOptions"),
         type = "structure",
         name = "SnapshotOptions",
         target_id = id.from(_N, "SnapshotOptions"),
         target = M.SnapshotOptions,
      }),
      VPCOptions = schema.new({
         id = id.from(_N, "DomainStatus", "VPCOptions"),
         type = "structure",
         name = "VPCOptions",
         target_id = id.from(_N, "VPCDerivedInfo"),
         target = M.VPCDerivedInfo,
      }),
      CognitoOptions = schema.new({
         id = id.from(_N, "DomainStatus", "CognitoOptions"),
         type = "structure",
         name = "CognitoOptions",
         target_id = id.from(_N, "CognitoOptions"),
         target = M.CognitoOptions,
      }),
      EncryptionAtRestOptions = schema.new({
         id = id.from(_N, "DomainStatus", "EncryptionAtRestOptions"),
         type = "structure",
         name = "EncryptionAtRestOptions",
         target_id = id.from(_N, "EncryptionAtRestOptions"),
         target = M.EncryptionAtRestOptions,
      }),
      NodeToNodeEncryptionOptions = schema.new({
         id = id.from(_N, "DomainStatus", "NodeToNodeEncryptionOptions"),
         type = "structure",
         name = "NodeToNodeEncryptionOptions",
         target_id = id.from(_N, "NodeToNodeEncryptionOptions"),
         target = M.NodeToNodeEncryptionOptions,
      }),
      AdvancedOptions = schema.new({
         id = id.from(_N, "DomainStatus", "AdvancedOptions"),
         type = "map",
         name = "AdvancedOptions",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      LogPublishingOptions = schema.new({
         id = id.from(_N, "DomainStatus", "LogPublishingOptions"),
         type = "map",
         name = "LogPublishingOptions",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.LogPublishingOption,
      }),
      ServiceSoftwareOptions = schema.new({
         id = id.from(_N, "DomainStatus", "ServiceSoftwareOptions"),
         type = "structure",
         name = "ServiceSoftwareOptions",
         target_id = id.from(_N, "ServiceSoftwareOptions"),
         target = M.ServiceSoftwareOptions,
      }),
      DomainEndpointOptions = schema.new({
         id = id.from(_N, "DomainStatus", "DomainEndpointOptions"),
         type = "structure",
         name = "DomainEndpointOptions",
         target_id = id.from(_N, "DomainEndpointOptions"),
         target = M.DomainEndpointOptions,
      }),
      AdvancedSecurityOptions = schema.new({
         id = id.from(_N, "DomainStatus", "AdvancedSecurityOptions"),
         type = "structure",
         name = "AdvancedSecurityOptions",
         target_id = id.from(_N, "AdvancedSecurityOptions"),
         target = M.AdvancedSecurityOptions,
      }),
      IdentityCenterOptions = schema.new({
         id = id.from(_N, "DomainStatus", "IdentityCenterOptions"),
         type = "structure",
         name = "IdentityCenterOptions",
         target_id = id.from(_N, "IdentityCenterOptions"),
         target = M.IdentityCenterOptions,
      }),
      AutoTuneOptions = schema.new({
         id = id.from(_N, "DomainStatus", "AutoTuneOptions"),
         type = "structure",
         name = "AutoTuneOptions",
         target_id = id.from(_N, "AutoTuneOptionsOutput"),
         target = M.AutoTuneOptionsOutput,
      }),
      ChangeProgressDetails = schema.new({
         id = id.from(_N, "DomainStatus", "ChangeProgressDetails"),
         type = "structure",
         name = "ChangeProgressDetails",
         target_id = id.from(_N, "ChangeProgressDetails"),
         target = M.ChangeProgressDetails,
      }),
      OffPeakWindowOptions = schema.new({
         id = id.from(_N, "DomainStatus", "OffPeakWindowOptions"),
         type = "structure",
         name = "OffPeakWindowOptions",
         target_id = id.from(_N, "OffPeakWindowOptions"),
         target = M.OffPeakWindowOptions,
      }),
      SoftwareUpdateOptions = schema.new({
         id = id.from(_N, "DomainStatus", "SoftwareUpdateOptions"),
         type = "structure",
         name = "SoftwareUpdateOptions",
         target_id = id.from(_N, "SoftwareUpdateOptions"),
         target = M.SoftwareUpdateOptions,
      }),
      DomainProcessingStatus = schema.new({
         id = id.from(_N, "DomainStatus", "DomainProcessingStatus"),
         type = "string",
         name = "DomainProcessingStatus",
         target_id = prelude.String.id,
      }),
      ModifyingProperties = schema.new({
         id = id.from(_N, "DomainStatus", "ModifyingProperties"),
         type = "list",
         name = "ModifyingProperties",
         target_id = prelude.Document.id,
         list_member = M.ModifyingProperties,
      }),
      AIMLOptions = schema.new({
         id = id.from(_N, "DomainStatus", "AIMLOptions"),
         type = "structure",
         name = "AIMLOptions",
         target_id = id.from(_N, "AIMLOptionsOutput"),
         target = M.AIMLOptionsOutput,
      }),
      DeploymentStrategyOptions = schema.new({
         id = id.from(_N, "DomainStatus", "DeploymentStrategyOptions"),
         type = "structure",
         name = "DeploymentStrategyOptions",
         target_id = id.from(_N, "DeploymentStrategyOptions"),
         target = M.DeploymentStrategyOptions,
      }),
   },
})

M.CreateDomainOutput = schema.new({
   id = id.from(_N, "CreateDomainResponse"),
   type = "structure",
   members = {
      DomainStatus = schema.new({
         id = id.from(_N, "CreateDomainOutput", "DomainStatus"),
         type = "structure",
         name = "DomainStatus",
         target_id = id.from(_N, "DomainStatus"),
         target = M.DomainStatus,
      }),
   },
})

M.InvalidTypeException = schema.new({
   id = id.from(_N, "InvalidTypeException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "InvalidTypeException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
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
   },
})

M.CreateIndexInput = schema.new({
   id = id.from(_N, "CreateIndexRequest"),
   type = "structure",
   members = {
      DomainName = schema.new({
         id = id.from(_N, "CreateIndexInput", "DomainName"),
         type = "string",
         name = "DomainName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      IndexName = schema.new({
         id = id.from(_N, "CreateIndexInput", "IndexName"),
         type = "string",
         name = "IndexName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      IndexSchema = schema.new({
         id = id.from(_N, "CreateIndexInput", "IndexSchema"),
         type = "document",
         name = "IndexSchema",
         target_id = prelude.Document.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CreateIndexOutput = schema.new({
   id = id.from(_N, "CreateIndexResponse"),
   type = "structure",
   members = {
      Status = schema.new({
         id = id.from(_N, "CreateIndexOutput", "Status"),
         type = "string",
         name = "Status",
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
      }),
   },
})

M.CrossClusterSearchConnectionProperties = schema.new({
   id = id.from(_N, "CrossClusterSearchConnectionProperties"),
   type = "structure",
   members = {
      SkipUnavailable = schema.new({
         id = id.from(_N, "CrossClusterSearchConnectionProperties", "SkipUnavailable"),
         type = "string",
         name = "SkipUnavailable",
         target_id = prelude.String.id,
      }),
   },
})

M.ConnectionProperties = schema.new({
   id = id.from(_N, "ConnectionProperties"),
   type = "structure",
   members = {
      Endpoint = schema.new({
         id = id.from(_N, "ConnectionProperties", "Endpoint"),
         type = "string",
         name = "Endpoint",
         target_id = prelude.String.id,
      }),
      CrossClusterSearch = schema.new({
         id = id.from(_N, "ConnectionProperties", "CrossClusterSearch"),
         type = "structure",
         name = "CrossClusterSearch",
         target_id = id.from(_N, "CrossClusterSearchConnectionProperties"),
         target = M.CrossClusterSearchConnectionProperties,
      }),
   },
})

M.CreateOutboundConnectionInput = schema.new({
   id = id.from(_N, "CreateOutboundConnectionRequest"),
   type = "structure",
   members = {
      LocalDomainInfo = schema.new({
         id = id.from(_N, "CreateOutboundConnectionInput", "LocalDomainInfo"),
         type = "structure",
         name = "LocalDomainInfo",
         target_id = id.from(_N, "DomainInformationContainer"),
         target = M.DomainInformationContainer,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RemoteDomainInfo = schema.new({
         id = id.from(_N, "CreateOutboundConnectionInput", "RemoteDomainInfo"),
         type = "structure",
         name = "RemoteDomainInfo",
         target_id = id.from(_N, "DomainInformationContainer"),
         target = M.DomainInformationContainer,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ConnectionAlias = schema.new({
         id = id.from(_N, "CreateOutboundConnectionInput", "ConnectionAlias"),
         type = "string",
         name = "ConnectionAlias",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ConnectionMode = schema.new({
         id = id.from(_N, "CreateOutboundConnectionInput", "ConnectionMode"),
         type = "string",
         name = "ConnectionMode",
         target_id = prelude.String.id,
      }),
      ConnectionProperties = schema.new({
         id = id.from(_N, "CreateOutboundConnectionInput", "ConnectionProperties"),
         type = "structure",
         name = "ConnectionProperties",
         target_id = id.from(_N, "ConnectionProperties"),
         target = M.ConnectionProperties,
      }),
   },
})

M.OutboundConnectionStatus = schema.new({
   id = id.from(_N, "OutboundConnectionStatus"),
   type = "structure",
   members = {
      StatusCode = schema.new({
         id = id.from(_N, "OutboundConnectionStatus", "StatusCode"),
         type = "string",
         name = "StatusCode",
         target_id = prelude.String.id,
      }),
      Message = schema.new({
         id = id.from(_N, "OutboundConnectionStatus", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateOutboundConnectionOutput = schema.new({
   id = id.from(_N, "CreateOutboundConnectionResponse"),
   type = "structure",
   members = {
      LocalDomainInfo = schema.new({
         id = id.from(_N, "CreateOutboundConnectionOutput", "LocalDomainInfo"),
         type = "structure",
         name = "LocalDomainInfo",
         target_id = id.from(_N, "DomainInformationContainer"),
         target = M.DomainInformationContainer,
      }),
      RemoteDomainInfo = schema.new({
         id = id.from(_N, "CreateOutboundConnectionOutput", "RemoteDomainInfo"),
         type = "structure",
         name = "RemoteDomainInfo",
         target_id = id.from(_N, "DomainInformationContainer"),
         target = M.DomainInformationContainer,
      }),
      ConnectionAlias = schema.new({
         id = id.from(_N, "CreateOutboundConnectionOutput", "ConnectionAlias"),
         type = "string",
         name = "ConnectionAlias",
         target_id = prelude.String.id,
      }),
      ConnectionStatus = schema.new({
         id = id.from(_N, "CreateOutboundConnectionOutput", "ConnectionStatus"),
         type = "structure",
         name = "ConnectionStatus",
         target_id = id.from(_N, "OutboundConnectionStatus"),
         target = M.OutboundConnectionStatus,
      }),
      ConnectionId = schema.new({
         id = id.from(_N, "CreateOutboundConnectionOutput", "ConnectionId"),
         type = "string",
         name = "ConnectionId",
         target_id = prelude.String.id,
      }),
      ConnectionMode = schema.new({
         id = id.from(_N, "CreateOutboundConnectionOutput", "ConnectionMode"),
         type = "string",
         name = "ConnectionMode",
         target_id = prelude.String.id,
      }),
      ConnectionProperties = schema.new({
         id = id.from(_N, "CreateOutboundConnectionOutput", "ConnectionProperties"),
         type = "structure",
         name = "ConnectionProperties",
         target_id = id.from(_N, "ConnectionProperties"),
         target = M.ConnectionProperties,
      }),
   },
})

M.PackageConfiguration = schema.new({
   id = id.from(_N, "PackageConfiguration"),
   type = "structure",
   members = {
      LicenseRequirement = schema.new({
         id = id.from(_N, "PackageConfiguration", "LicenseRequirement"),
         type = "string",
         name = "LicenseRequirement",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      LicenseFilepath = schema.new({
         id = id.from(_N, "PackageConfiguration", "LicenseFilepath"),
         type = "string",
         name = "LicenseFilepath",
         target_id = prelude.String.id,
      }),
      ConfigurationRequirement = schema.new({
         id = id.from(_N, "PackageConfiguration", "ConfigurationRequirement"),
         type = "string",
         name = "ConfigurationRequirement",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RequiresRestartForConfigurationUpdate = schema.new({
         id = id.from(_N, "PackageConfiguration", "RequiresRestartForConfigurationUpdate"),
         type = "boolean",
         name = "RequiresRestartForConfigurationUpdate",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.PackageEncryptionOptions = schema.new({
   id = id.from(_N, "PackageEncryptionOptions"),
   type = "structure",
   members = {
      KmsKeyIdentifier = schema.new({
         id = id.from(_N, "PackageEncryptionOptions", "KmsKeyIdentifier"),
         type = "string",
         name = "KmsKeyIdentifier",
         target_id = prelude.String.id,
      }),
      EncryptionEnabled = schema.new({
         id = id.from(_N, "PackageEncryptionOptions", "EncryptionEnabled"),
         type = "boolean",
         name = "EncryptionEnabled",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.PackageSource = schema.new({
   id = id.from(_N, "PackageSource"),
   type = "structure",
   members = {
      S3BucketName = schema.new({
         id = id.from(_N, "PackageSource", "S3BucketName"),
         type = "string",
         name = "S3BucketName",
         target_id = prelude.String.id,
      }),
      S3Key = schema.new({
         id = id.from(_N, "PackageSource", "S3Key"),
         type = "string",
         name = "S3Key",
         target_id = prelude.String.id,
      }),
   },
})

M.PackageVendingOptions = schema.new({
   id = id.from(_N, "PackageVendingOptions"),
   type = "structure",
   members = {
      VendingEnabled = schema.new({
         id = id.from(_N, "PackageVendingOptions", "VendingEnabled"),
         type = "boolean",
         name = "VendingEnabled",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CreatePackageInput = schema.new({
   id = id.from(_N, "CreatePackageRequest"),
   type = "structure",
   members = {
      PackageName = schema.new({
         id = id.from(_N, "CreatePackageInput", "PackageName"),
         type = "string",
         name = "PackageName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      PackageType = schema.new({
         id = id.from(_N, "CreatePackageInput", "PackageType"),
         type = "string",
         name = "PackageType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      PackageDescription = schema.new({
         id = id.from(_N, "CreatePackageInput", "PackageDescription"),
         type = "string",
         name = "PackageDescription",
         target_id = prelude.String.id,
      }),
      PackageSource = schema.new({
         id = id.from(_N, "CreatePackageInput", "PackageSource"),
         type = "structure",
         name = "PackageSource",
         target_id = id.from(_N, "PackageSource"),
         target = M.PackageSource,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      PackageConfiguration = schema.new({
         id = id.from(_N, "CreatePackageInput", "PackageConfiguration"),
         type = "structure",
         name = "PackageConfiguration",
         target_id = id.from(_N, "PackageConfiguration"),
         target = M.PackageConfiguration,
      }),
      EngineVersion = schema.new({
         id = id.from(_N, "CreatePackageInput", "EngineVersion"),
         type = "string",
         name = "EngineVersion",
         target_id = prelude.String.id,
      }),
      PackageVendingOptions = schema.new({
         id = id.from(_N, "CreatePackageInput", "PackageVendingOptions"),
         type = "structure",
         name = "PackageVendingOptions",
         target_id = id.from(_N, "PackageVendingOptions"),
         target = M.PackageVendingOptions,
      }),
      PackageEncryptionOptions = schema.new({
         id = id.from(_N, "CreatePackageInput", "PackageEncryptionOptions"),
         type = "structure",
         name = "PackageEncryptionOptions",
         target_id = id.from(_N, "PackageEncryptionOptions"),
         target = M.PackageEncryptionOptions,
      }),
   },
})

M.PluginProperties = schema.new({
   id = id.from(_N, "PluginProperties"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "PluginProperties", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Description = schema.new({
         id = id.from(_N, "PluginProperties", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      Version = schema.new({
         id = id.from(_N, "PluginProperties", "Version"),
         type = "string",
         name = "Version",
         target_id = prelude.String.id,
      }),
      ClassName = schema.new({
         id = id.from(_N, "PluginProperties", "ClassName"),
         type = "string",
         name = "ClassName",
         target_id = prelude.String.id,
      }),
      UncompressedSizeInBytes = schema.new({
         id = id.from(_N, "PluginProperties", "UncompressedSizeInBytes"),
         type = "long",
         name = "UncompressedSizeInBytes",
         target_id = prelude.Long.id,
      }),
   },
})

M.PackageDetails = schema.new({
   id = id.from(_N, "PackageDetails"),
   type = "structure",
   members = {
      PackageID = schema.new({
         id = id.from(_N, "PackageDetails", "PackageID"),
         type = "string",
         name = "PackageID",
         target_id = prelude.String.id,
      }),
      PackageName = schema.new({
         id = id.from(_N, "PackageDetails", "PackageName"),
         type = "string",
         name = "PackageName",
         target_id = prelude.String.id,
      }),
      PackageType = schema.new({
         id = id.from(_N, "PackageDetails", "PackageType"),
         type = "string",
         name = "PackageType",
         target_id = prelude.String.id,
      }),
      PackageDescription = schema.new({
         id = id.from(_N, "PackageDetails", "PackageDescription"),
         type = "string",
         name = "PackageDescription",
         target_id = prelude.String.id,
      }),
      PackageStatus = schema.new({
         id = id.from(_N, "PackageDetails", "PackageStatus"),
         type = "string",
         name = "PackageStatus",
         target_id = prelude.String.id,
      }),
      CreatedAt = schema.new({
         id = id.from(_N, "PackageDetails", "CreatedAt"),
         type = "timestamp",
         name = "CreatedAt",
         target_id = prelude.Timestamp.id,
      }),
      LastUpdatedAt = schema.new({
         id = id.from(_N, "PackageDetails", "LastUpdatedAt"),
         type = "timestamp",
         name = "LastUpdatedAt",
         target_id = prelude.Timestamp.id,
      }),
      AvailablePackageVersion = schema.new({
         id = id.from(_N, "PackageDetails", "AvailablePackageVersion"),
         type = "string",
         name = "AvailablePackageVersion",
         target_id = prelude.String.id,
      }),
      ErrorDetails = schema.new({
         id = id.from(_N, "PackageDetails", "ErrorDetails"),
         type = "structure",
         name = "ErrorDetails",
         target_id = id.from(_N, "ErrorDetails"),
         target = M.ErrorDetails,
      }),
      EngineVersion = schema.new({
         id = id.from(_N, "PackageDetails", "EngineVersion"),
         type = "string",
         name = "EngineVersion",
         target_id = prelude.String.id,
      }),
      AvailablePluginProperties = schema.new({
         id = id.from(_N, "PackageDetails", "AvailablePluginProperties"),
         type = "structure",
         name = "AvailablePluginProperties",
         target_id = id.from(_N, "PluginProperties"),
         target = M.PluginProperties,
      }),
      AvailablePackageConfiguration = schema.new({
         id = id.from(_N, "PackageDetails", "AvailablePackageConfiguration"),
         type = "structure",
         name = "AvailablePackageConfiguration",
         target_id = id.from(_N, "PackageConfiguration"),
         target = M.PackageConfiguration,
      }),
      AllowListedUserList = schema.new({
         id = id.from(_N, "PackageDetails", "AllowListedUserList"),
         type = "list",
         name = "AllowListedUserList",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      PackageOwner = schema.new({
         id = id.from(_N, "PackageDetails", "PackageOwner"),
         type = "string",
         name = "PackageOwner",
         target_id = prelude.String.id,
      }),
      PackageVendingOptions = schema.new({
         id = id.from(_N, "PackageDetails", "PackageVendingOptions"),
         type = "structure",
         name = "PackageVendingOptions",
         target_id = id.from(_N, "PackageVendingOptions"),
         target = M.PackageVendingOptions,
      }),
      PackageEncryptionOptions = schema.new({
         id = id.from(_N, "PackageDetails", "PackageEncryptionOptions"),
         type = "structure",
         name = "PackageEncryptionOptions",
         target_id = id.from(_N, "PackageEncryptionOptions"),
         target = M.PackageEncryptionOptions,
      }),
   },
})

M.CreatePackageOutput = schema.new({
   id = id.from(_N, "CreatePackageResponse"),
   type = "structure",
   members = {
      PackageDetails = schema.new({
         id = id.from(_N, "CreatePackageOutput", "PackageDetails"),
         type = "structure",
         name = "PackageDetails",
         target_id = id.from(_N, "PackageDetails"),
         target = M.PackageDetails,
      }),
   },
})

M.CreateVpcEndpointInput = schema.new({
   id = id.from(_N, "CreateVpcEndpointRequest"),
   type = "structure",
   members = {
      DomainArn = schema.new({
         id = id.from(_N, "CreateVpcEndpointInput", "DomainArn"),
         type = "string",
         name = "DomainArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      VpcOptions = schema.new({
         id = id.from(_N, "CreateVpcEndpointInput", "VpcOptions"),
         type = "structure",
         name = "VpcOptions",
         target_id = id.from(_N, "VPCOptions"),
         target = M.VPCOptions,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ClientToken = schema.new({
         id = id.from(_N, "CreateVpcEndpointInput", "ClientToken"),
         type = "string",
         name = "ClientToken",
         target_id = prelude.String.id,
      }),
   },
})

M.VpcEndpoint = schema.new({
   id = id.from(_N, "VpcEndpoint"),
   type = "structure",
   members = {
      VpcEndpointId = schema.new({
         id = id.from(_N, "VpcEndpoint", "VpcEndpointId"),
         type = "string",
         name = "VpcEndpointId",
         target_id = prelude.String.id,
      }),
      VpcEndpointOwner = schema.new({
         id = id.from(_N, "VpcEndpoint", "VpcEndpointOwner"),
         type = "string",
         name = "VpcEndpointOwner",
         target_id = prelude.String.id,
      }),
      DomainArn = schema.new({
         id = id.from(_N, "VpcEndpoint", "DomainArn"),
         type = "string",
         name = "DomainArn",
         target_id = prelude.String.id,
      }),
      VpcOptions = schema.new({
         id = id.from(_N, "VpcEndpoint", "VpcOptions"),
         type = "structure",
         name = "VpcOptions",
         target_id = id.from(_N, "VPCDerivedInfo"),
         target = M.VPCDerivedInfo,
      }),
      Status = schema.new({
         id = id.from(_N, "VpcEndpoint", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      Endpoint = schema.new({
         id = id.from(_N, "VpcEndpoint", "Endpoint"),
         type = "string",
         name = "Endpoint",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateVpcEndpointOutput = schema.new({
   id = id.from(_N, "CreateVpcEndpointResponse"),
   type = "structure",
   members = {
      VpcEndpoint = schema.new({
         id = id.from(_N, "CreateVpcEndpointOutput", "VpcEndpoint"),
         type = "structure",
         name = "VpcEndpoint",
         target_id = id.from(_N, "VpcEndpoint"),
         target = M.VpcEndpoint,
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
      id = schema.new({
         id = id.from(_N, "DeleteApplicationInput", "id"),
         type = "string",
         name = "id",
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

M.DeleteDataSourceInput = schema.new({
   id = id.from(_N, "DeleteDataSourceRequest"),
   type = "structure",
   members = {
      DomainName = schema.new({
         id = id.from(_N, "DeleteDataSourceInput", "DomainName"),
         type = "string",
         name = "DomainName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Name = schema.new({
         id = id.from(_N, "DeleteDataSourceInput", "Name"),
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

M.DeleteDataSourceOutput = schema.new({
   id = id.from(_N, "DeleteDataSourceResponse"),
   type = "structure",
   members = {
      Message = schema.new({
         id = id.from(_N, "DeleteDataSourceOutput", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.DeleteDirectQueryDataSourceInput = schema.new({
   id = id.from(_N, "DeleteDirectQueryDataSourceRequest"),
   type = "structure",
   members = {
      DataSourceName = schema.new({
         id = id.from(_N, "DeleteDirectQueryDataSourceInput", "DataSourceName"),
         type = "string",
         name = "DataSourceName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteDirectQueryDataSourceOutput = prelude.Unit

M.DeleteDomainInput = schema.new({
   id = id.from(_N, "DeleteDomainRequest"),
   type = "structure",
   members = {
      DomainName = schema.new({
         id = id.from(_N, "DeleteDomainInput", "DomainName"),
         type = "string",
         name = "DomainName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteDomainOutput = schema.new({
   id = id.from(_N, "DeleteDomainResponse"),
   type = "structure",
   members = {
      DomainStatus = schema.new({
         id = id.from(_N, "DeleteDomainOutput", "DomainStatus"),
         type = "structure",
         name = "DomainStatus",
         target_id = id.from(_N, "DomainStatus"),
         target = M.DomainStatus,
      }),
   },
})

M.DeleteInboundConnectionInput = schema.new({
   id = id.from(_N, "DeleteInboundConnectionRequest"),
   type = "structure",
   members = {
      ConnectionId = schema.new({
         id = id.from(_N, "DeleteInboundConnectionInput", "ConnectionId"),
         type = "string",
         name = "ConnectionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteInboundConnectionOutput = schema.new({
   id = id.from(_N, "DeleteInboundConnectionResponse"),
   type = "structure",
   members = {
      Connection = schema.new({
         id = id.from(_N, "DeleteInboundConnectionOutput", "Connection"),
         type = "structure",
         name = "Connection",
         target_id = id.from(_N, "InboundConnection"),
         target = M.InboundConnection,
      }),
   },
})

M.DeleteIndexInput = schema.new({
   id = id.from(_N, "DeleteIndexRequest"),
   type = "structure",
   members = {
      DomainName = schema.new({
         id = id.from(_N, "DeleteIndexInput", "DomainName"),
         type = "string",
         name = "DomainName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      IndexName = schema.new({
         id = id.from(_N, "DeleteIndexInput", "IndexName"),
         type = "string",
         name = "IndexName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteIndexOutput = schema.new({
   id = id.from(_N, "DeleteIndexResponse"),
   type = "structure",
   members = {
      Status = schema.new({
         id = id.from(_N, "DeleteIndexOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteOutboundConnectionInput = schema.new({
   id = id.from(_N, "DeleteOutboundConnectionRequest"),
   type = "structure",
   members = {
      ConnectionId = schema.new({
         id = id.from(_N, "DeleteOutboundConnectionInput", "ConnectionId"),
         type = "string",
         name = "ConnectionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.OutboundConnection = schema.new({
   id = id.from(_N, "OutboundConnection"),
   type = "structure",
   members = {
      LocalDomainInfo = schema.new({
         id = id.from(_N, "OutboundConnection", "LocalDomainInfo"),
         type = "structure",
         name = "LocalDomainInfo",
         target_id = id.from(_N, "DomainInformationContainer"),
         target = M.DomainInformationContainer,
      }),
      RemoteDomainInfo = schema.new({
         id = id.from(_N, "OutboundConnection", "RemoteDomainInfo"),
         type = "structure",
         name = "RemoteDomainInfo",
         target_id = id.from(_N, "DomainInformationContainer"),
         target = M.DomainInformationContainer,
      }),
      ConnectionId = schema.new({
         id = id.from(_N, "OutboundConnection", "ConnectionId"),
         type = "string",
         name = "ConnectionId",
         target_id = prelude.String.id,
      }),
      ConnectionAlias = schema.new({
         id = id.from(_N, "OutboundConnection", "ConnectionAlias"),
         type = "string",
         name = "ConnectionAlias",
         target_id = prelude.String.id,
      }),
      ConnectionStatus = schema.new({
         id = id.from(_N, "OutboundConnection", "ConnectionStatus"),
         type = "structure",
         name = "ConnectionStatus",
         target_id = id.from(_N, "OutboundConnectionStatus"),
         target = M.OutboundConnectionStatus,
      }),
      ConnectionMode = schema.new({
         id = id.from(_N, "OutboundConnection", "ConnectionMode"),
         type = "string",
         name = "ConnectionMode",
         target_id = prelude.String.id,
      }),
      ConnectionProperties = schema.new({
         id = id.from(_N, "OutboundConnection", "ConnectionProperties"),
         type = "structure",
         name = "ConnectionProperties",
         target_id = id.from(_N, "ConnectionProperties"),
         target = M.ConnectionProperties,
      }),
   },
})

M.DeleteOutboundConnectionOutput = schema.new({
   id = id.from(_N, "DeleteOutboundConnectionResponse"),
   type = "structure",
   members = {
      Connection = schema.new({
         id = id.from(_N, "DeleteOutboundConnectionOutput", "Connection"),
         type = "structure",
         name = "Connection",
         target_id = id.from(_N, "OutboundConnection"),
         target = M.OutboundConnection,
      }),
   },
})

M.DeletePackageInput = schema.new({
   id = id.from(_N, "DeletePackageRequest"),
   type = "structure",
   members = {
      PackageID = schema.new({
         id = id.from(_N, "DeletePackageInput", "PackageID"),
         type = "string",
         name = "PackageID",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeletePackageOutput = schema.new({
   id = id.from(_N, "DeletePackageResponse"),
   type = "structure",
   members = {
      PackageDetails = schema.new({
         id = id.from(_N, "DeletePackageOutput", "PackageDetails"),
         type = "structure",
         name = "PackageDetails",
         target_id = id.from(_N, "PackageDetails"),
         target = M.PackageDetails,
      }),
   },
})

M.DeleteVpcEndpointInput = schema.new({
   id = id.from(_N, "DeleteVpcEndpointRequest"),
   type = "structure",
   members = {
      VpcEndpointId = schema.new({
         id = id.from(_N, "DeleteVpcEndpointInput", "VpcEndpointId"),
         type = "string",
         name = "VpcEndpointId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.VpcEndpointSummary = schema.new({
   id = id.from(_N, "VpcEndpointSummary"),
   type = "structure",
   members = {
      VpcEndpointId = schema.new({
         id = id.from(_N, "VpcEndpointSummary", "VpcEndpointId"),
         type = "string",
         name = "VpcEndpointId",
         target_id = prelude.String.id,
      }),
      VpcEndpointOwner = schema.new({
         id = id.from(_N, "VpcEndpointSummary", "VpcEndpointOwner"),
         type = "string",
         name = "VpcEndpointOwner",
         target_id = prelude.String.id,
      }),
      DomainArn = schema.new({
         id = id.from(_N, "VpcEndpointSummary", "DomainArn"),
         type = "string",
         name = "DomainArn",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "VpcEndpointSummary", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
   },
})

M.DeleteVpcEndpointOutput = schema.new({
   id = id.from(_N, "DeleteVpcEndpointResponse"),
   type = "structure",
   members = {
      VpcEndpointSummary = schema.new({
         id = id.from(_N, "DeleteVpcEndpointOutput", "VpcEndpointSummary"),
         type = "structure",
         name = "VpcEndpointSummary",
         target_id = id.from(_N, "VpcEndpointSummary"),
         target = M.VpcEndpointSummary,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeregisterCapabilityInput = schema.new({
   id = id.from(_N, "DeregisterCapabilityRequest"),
   type = "structure",
   members = {
      applicationId = schema.new({
         id = id.from(_N, "DeregisterCapabilityInput", "applicationId"),
         type = "string",
         name = "applicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      capabilityName = schema.new({
         id = id.from(_N, "DeregisterCapabilityInput", "capabilityName"),
         type = "string",
         name = "capabilityName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeregisterCapabilityOutput = schema.new({
   id = id.from(_N, "DeregisterCapabilityResponse"),
   type = "structure",
   members = {
      status = schema.new({
         id = id.from(_N, "DeregisterCapabilityOutput", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeDomainInput = schema.new({
   id = id.from(_N, "DescribeDomainRequest"),
   type = "structure",
   members = {
      DomainName = schema.new({
         id = id.from(_N, "DescribeDomainInput", "DomainName"),
         type = "string",
         name = "DomainName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DescribeDomainOutput = schema.new({
   id = id.from(_N, "DescribeDomainResponse"),
   type = "structure",
   members = {
      DomainStatus = schema.new({
         id = id.from(_N, "DescribeDomainOutput", "DomainStatus"),
         type = "structure",
         name = "DomainStatus",
         target_id = id.from(_N, "DomainStatus"),
         target = M.DomainStatus,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DescribeDomainAutoTunesInput = schema.new({
   id = id.from(_N, "DescribeDomainAutoTunesRequest"),
   type = "structure",
   members = {
      DomainName = schema.new({
         id = id.from(_N, "DescribeDomainAutoTunesInput", "DomainName"),
         type = "string",
         name = "DomainName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "DescribeDomainAutoTunesInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "DescribeDomainAutoTunesInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
   },
})

M.ScheduledAutoTuneDetails = schema.new({
   id = id.from(_N, "ScheduledAutoTuneDetails"),
   type = "structure",
   members = {
      Date = schema.new({
         id = id.from(_N, "ScheduledAutoTuneDetails", "Date"),
         type = "timestamp",
         name = "Date",
         target_id = prelude.Timestamp.id,
      }),
      ActionType = schema.new({
         id = id.from(_N, "ScheduledAutoTuneDetails", "ActionType"),
         type = "string",
         name = "ActionType",
         target_id = prelude.String.id,
      }),
      Action = schema.new({
         id = id.from(_N, "ScheduledAutoTuneDetails", "Action"),
         type = "string",
         name = "Action",
         target_id = prelude.String.id,
      }),
      Severity = schema.new({
         id = id.from(_N, "ScheduledAutoTuneDetails", "Severity"),
         type = "string",
         name = "Severity",
         target_id = prelude.String.id,
      }),
   },
})

M.AutoTuneDetails = schema.new({
   id = id.from(_N, "AutoTuneDetails"),
   type = "structure",
   members = {
      ScheduledAutoTuneDetails = schema.new({
         id = id.from(_N, "AutoTuneDetails", "ScheduledAutoTuneDetails"),
         type = "structure",
         name = "ScheduledAutoTuneDetails",
         target_id = id.from(_N, "ScheduledAutoTuneDetails"),
         target = M.ScheduledAutoTuneDetails,
      }),
   },
})

M.AutoTune = schema.new({
   id = id.from(_N, "AutoTune"),
   type = "structure",
   members = {
      AutoTuneType = schema.new({
         id = id.from(_N, "AutoTune", "AutoTuneType"),
         type = "string",
         name = "AutoTuneType",
         target_id = prelude.String.id,
      }),
      AutoTuneDetails = schema.new({
         id = id.from(_N, "AutoTune", "AutoTuneDetails"),
         type = "structure",
         name = "AutoTuneDetails",
         target_id = id.from(_N, "AutoTuneDetails"),
         target = M.AutoTuneDetails,
      }),
   },
})

M.DescribeDomainAutoTunesOutput = schema.new({
   id = id.from(_N, "DescribeDomainAutoTunesResponse"),
   type = "structure",
   members = {
      AutoTunes = schema.new({
         id = id.from(_N, "DescribeDomainAutoTunesOutput", "AutoTunes"),
         type = "list",
         name = "AutoTunes",
         target_id = prelude.Document.id,
         list_member = M.AutoTune,
      }),
      NextToken = schema.new({
         id = id.from(_N, "DescribeDomainAutoTunesOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeDomainChangeProgressInput = schema.new({
   id = id.from(_N, "DescribeDomainChangeProgressRequest"),
   type = "structure",
   members = {
      DomainName = schema.new({
         id = id.from(_N, "DescribeDomainChangeProgressInput", "DomainName"),
         type = "string",
         name = "DomainName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ChangeId = schema.new({
         id = id.from(_N, "DescribeDomainChangeProgressInput", "ChangeId"),
         type = "string",
         name = "ChangeId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "changeid" },
         },
      }),
   },
})

M.ChangeProgressStage = schema.new({
   id = id.from(_N, "ChangeProgressStage"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "ChangeProgressStage", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "ChangeProgressStage", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      Description = schema.new({
         id = id.from(_N, "ChangeProgressStage", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      LastUpdated = schema.new({
         id = id.from(_N, "ChangeProgressStage", "LastUpdated"),
         type = "timestamp",
         name = "LastUpdated",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.ChangeProgressStatusDetails = schema.new({
   id = id.from(_N, "ChangeProgressStatusDetails"),
   type = "structure",
   members = {
      ChangeId = schema.new({
         id = id.from(_N, "ChangeProgressStatusDetails", "ChangeId"),
         type = "string",
         name = "ChangeId",
         target_id = prelude.String.id,
      }),
      StartTime = schema.new({
         id = id.from(_N, "ChangeProgressStatusDetails", "StartTime"),
         type = "timestamp",
         name = "StartTime",
         target_id = prelude.Timestamp.id,
      }),
      Status = schema.new({
         id = id.from(_N, "ChangeProgressStatusDetails", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      PendingProperties = schema.new({
         id = id.from(_N, "ChangeProgressStatusDetails", "PendingProperties"),
         type = "list",
         name = "PendingProperties",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      CompletedProperties = schema.new({
         id = id.from(_N, "ChangeProgressStatusDetails", "CompletedProperties"),
         type = "list",
         name = "CompletedProperties",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      TotalNumberOfStages = schema.new({
         id = id.from(_N, "ChangeProgressStatusDetails", "TotalNumberOfStages"),
         type = "integer",
         name = "TotalNumberOfStages",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      ChangeProgressStages = schema.new({
         id = id.from(_N, "ChangeProgressStatusDetails", "ChangeProgressStages"),
         type = "list",
         name = "ChangeProgressStages",
         target_id = prelude.Document.id,
         list_member = M.ChangeProgressStage,
      }),
      LastUpdatedTime = schema.new({
         id = id.from(_N, "ChangeProgressStatusDetails", "LastUpdatedTime"),
         type = "timestamp",
         name = "LastUpdatedTime",
         target_id = prelude.Timestamp.id,
      }),
      ConfigChangeStatus = schema.new({
         id = id.from(_N, "ChangeProgressStatusDetails", "ConfigChangeStatus"),
         type = "string",
         name = "ConfigChangeStatus",
         target_id = prelude.String.id,
      }),
      InitiatedBy = schema.new({
         id = id.from(_N, "ChangeProgressStatusDetails", "InitiatedBy"),
         type = "string",
         name = "InitiatedBy",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeDomainChangeProgressOutput = schema.new({
   id = id.from(_N, "DescribeDomainChangeProgressResponse"),
   type = "structure",
   members = {
      ChangeProgressStatus = schema.new({
         id = id.from(_N, "DescribeDomainChangeProgressOutput", "ChangeProgressStatus"),
         type = "structure",
         name = "ChangeProgressStatus",
         target_id = id.from(_N, "ChangeProgressStatusDetails"),
         target = M.ChangeProgressStatusDetails,
      }),
   },
})

M.DescribeDomainConfigInput = schema.new({
   id = id.from(_N, "DescribeDomainConfigRequest"),
   type = "structure",
   members = {
      DomainName = schema.new({
         id = id.from(_N, "DescribeDomainConfigInput", "DomainName"),
         type = "string",
         name = "DomainName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.AutoTuneOptions = schema.new({
   id = id.from(_N, "AutoTuneOptions"),
   type = "structure",
   members = {
      DesiredState = schema.new({
         id = id.from(_N, "AutoTuneOptions", "DesiredState"),
         type = "string",
         name = "DesiredState",
         target_id = prelude.String.id,
      }),
      RollbackOnDisable = schema.new({
         id = id.from(_N, "AutoTuneOptions", "RollbackOnDisable"),
         type = "string",
         name = "RollbackOnDisable",
         target_id = prelude.String.id,
      }),
      MaintenanceSchedules = schema.new({
         id = id.from(_N, "AutoTuneOptions", "MaintenanceSchedules"),
         type = "list",
         name = "MaintenanceSchedules",
         target_id = prelude.Document.id,
         list_member = M.AutoTuneMaintenanceSchedule,
      }),
      UseOffPeakWindow = schema.new({
         id = id.from(_N, "AutoTuneOptions", "UseOffPeakWindow"),
         type = "boolean",
         name = "UseOffPeakWindow",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.AutoTuneStatus = schema.new({
   id = id.from(_N, "AutoTuneStatus"),
   type = "structure",
   members = {
      CreationDate = schema.new({
         id = id.from(_N, "AutoTuneStatus", "CreationDate"),
         type = "timestamp",
         name = "CreationDate",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      UpdateDate = schema.new({
         id = id.from(_N, "AutoTuneStatus", "UpdateDate"),
         type = "timestamp",
         name = "UpdateDate",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      UpdateVersion = schema.new({
         id = id.from(_N, "AutoTuneStatus", "UpdateVersion"),
         type = "integer",
         name = "UpdateVersion",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      State = schema.new({
         id = id.from(_N, "AutoTuneStatus", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ErrorMessage = schema.new({
         id = id.from(_N, "AutoTuneStatus", "ErrorMessage"),
         type = "string",
         name = "ErrorMessage",
         target_id = prelude.String.id,
      }),
      PendingDeletion = schema.new({
         id = id.from(_N, "AutoTuneStatus", "PendingDeletion"),
         type = "boolean",
         name = "PendingDeletion",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.AutoTuneOptionsStatus = schema.new({
   id = id.from(_N, "AutoTuneOptionsStatus"),
   type = "structure",
   members = {
      Options = schema.new({
         id = id.from(_N, "AutoTuneOptionsStatus", "Options"),
         type = "structure",
         name = "Options",
         target_id = id.from(_N, "AutoTuneOptions"),
         target = M.AutoTuneOptions,
      }),
      Status = schema.new({
         id = id.from(_N, "AutoTuneOptionsStatus", "Status"),
         type = "structure",
         name = "Status",
         target_id = id.from(_N, "AutoTuneStatus"),
         target = M.AutoTuneStatus,
      }),
   },
})

M.ClusterConfigStatus = schema.new({
   id = id.from(_N, "ClusterConfigStatus"),
   type = "structure",
   members = {
      Options = schema.new({
         id = id.from(_N, "ClusterConfigStatus", "Options"),
         type = "structure",
         name = "Options",
         target_id = id.from(_N, "ClusterConfig"),
         target = M.ClusterConfig,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Status = schema.new({
         id = id.from(_N, "ClusterConfigStatus", "Status"),
         type = "structure",
         name = "Status",
         target_id = id.from(_N, "OptionStatus"),
         target = M.OptionStatus,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CognitoOptionsStatus = schema.new({
   id = id.from(_N, "CognitoOptionsStatus"),
   type = "structure",
   members = {
      Options = schema.new({
         id = id.from(_N, "CognitoOptionsStatus", "Options"),
         type = "structure",
         name = "Options",
         target_id = id.from(_N, "CognitoOptions"),
         target = M.CognitoOptions,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Status = schema.new({
         id = id.from(_N, "CognitoOptionsStatus", "Status"),
         type = "structure",
         name = "Status",
         target_id = id.from(_N, "OptionStatus"),
         target = M.OptionStatus,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeploymentStrategyOptionsStatus = schema.new({
   id = id.from(_N, "DeploymentStrategyOptionsStatus"),
   type = "structure",
   members = {
      Options = schema.new({
         id = id.from(_N, "DeploymentStrategyOptionsStatus", "Options"),
         type = "structure",
         name = "Options",
         target_id = id.from(_N, "DeploymentStrategyOptions"),
         target = M.DeploymentStrategyOptions,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Status = schema.new({
         id = id.from(_N, "DeploymentStrategyOptionsStatus", "Status"),
         type = "structure",
         name = "Status",
         target_id = id.from(_N, "OptionStatus"),
         target = M.OptionStatus,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DomainEndpointOptionsStatus = schema.new({
   id = id.from(_N, "DomainEndpointOptionsStatus"),
   type = "structure",
   members = {
      Options = schema.new({
         id = id.from(_N, "DomainEndpointOptionsStatus", "Options"),
         type = "structure",
         name = "Options",
         target_id = id.from(_N, "DomainEndpointOptions"),
         target = M.DomainEndpointOptions,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Status = schema.new({
         id = id.from(_N, "DomainEndpointOptionsStatus", "Status"),
         type = "structure",
         name = "Status",
         target_id = id.from(_N, "OptionStatus"),
         target = M.OptionStatus,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.EBSOptionsStatus = schema.new({
   id = id.from(_N, "EBSOptionsStatus"),
   type = "structure",
   members = {
      Options = schema.new({
         id = id.from(_N, "EBSOptionsStatus", "Options"),
         type = "structure",
         name = "Options",
         target_id = id.from(_N, "EBSOptions"),
         target = M.EBSOptions,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Status = schema.new({
         id = id.from(_N, "EBSOptionsStatus", "Status"),
         type = "structure",
         name = "Status",
         target_id = id.from(_N, "OptionStatus"),
         target = M.OptionStatus,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.EncryptionAtRestOptionsStatus = schema.new({
   id = id.from(_N, "EncryptionAtRestOptionsStatus"),
   type = "structure",
   members = {
      Options = schema.new({
         id = id.from(_N, "EncryptionAtRestOptionsStatus", "Options"),
         type = "structure",
         name = "Options",
         target_id = id.from(_N, "EncryptionAtRestOptions"),
         target = M.EncryptionAtRestOptions,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Status = schema.new({
         id = id.from(_N, "EncryptionAtRestOptionsStatus", "Status"),
         type = "structure",
         name = "Status",
         target_id = id.from(_N, "OptionStatus"),
         target = M.OptionStatus,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.VersionStatus = schema.new({
   id = id.from(_N, "VersionStatus"),
   type = "structure",
   members = {
      Options = schema.new({
         id = id.from(_N, "VersionStatus", "Options"),
         type = "string",
         name = "Options",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Status = schema.new({
         id = id.from(_N, "VersionStatus", "Status"),
         type = "structure",
         name = "Status",
         target_id = id.from(_N, "OptionStatus"),
         target = M.OptionStatus,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.IdentityCenterOptionsStatus = schema.new({
   id = id.from(_N, "IdentityCenterOptionsStatus"),
   type = "structure",
   members = {
      Options = schema.new({
         id = id.from(_N, "IdentityCenterOptionsStatus", "Options"),
         type = "structure",
         name = "Options",
         target_id = id.from(_N, "IdentityCenterOptions"),
         target = M.IdentityCenterOptions,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Status = schema.new({
         id = id.from(_N, "IdentityCenterOptionsStatus", "Status"),
         type = "structure",
         name = "Status",
         target_id = id.from(_N, "OptionStatus"),
         target = M.OptionStatus,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.IPAddressTypeStatus = schema.new({
   id = id.from(_N, "IPAddressTypeStatus"),
   type = "structure",
   members = {
      Options = schema.new({
         id = id.from(_N, "IPAddressTypeStatus", "Options"),
         type = "string",
         name = "Options",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Status = schema.new({
         id = id.from(_N, "IPAddressTypeStatus", "Status"),
         type = "structure",
         name = "Status",
         target_id = id.from(_N, "OptionStatus"),
         target = M.OptionStatus,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.LogPublishingOptionsStatus = schema.new({
   id = id.from(_N, "LogPublishingOptionsStatus"),
   type = "structure",
   members = {
      Options = schema.new({
         id = id.from(_N, "LogPublishingOptionsStatus", "Options"),
         type = "map",
         name = "Options",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.LogPublishingOption,
      }),
      Status = schema.new({
         id = id.from(_N, "LogPublishingOptionsStatus", "Status"),
         type = "structure",
         name = "Status",
         target_id = id.from(_N, "OptionStatus"),
         target = M.OptionStatus,
      }),
   },
})

M.NodeToNodeEncryptionOptionsStatus = schema.new({
   id = id.from(_N, "NodeToNodeEncryptionOptionsStatus"),
   type = "structure",
   members = {
      Options = schema.new({
         id = id.from(_N, "NodeToNodeEncryptionOptionsStatus", "Options"),
         type = "structure",
         name = "Options",
         target_id = id.from(_N, "NodeToNodeEncryptionOptions"),
         target = M.NodeToNodeEncryptionOptions,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Status = schema.new({
         id = id.from(_N, "NodeToNodeEncryptionOptionsStatus", "Status"),
         type = "structure",
         name = "Status",
         target_id = id.from(_N, "OptionStatus"),
         target = M.OptionStatus,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.OffPeakWindowOptionsStatus = schema.new({
   id = id.from(_N, "OffPeakWindowOptionsStatus"),
   type = "structure",
   members = {
      Options = schema.new({
         id = id.from(_N, "OffPeakWindowOptionsStatus", "Options"),
         type = "structure",
         name = "Options",
         target_id = id.from(_N, "OffPeakWindowOptions"),
         target = M.OffPeakWindowOptions,
      }),
      Status = schema.new({
         id = id.from(_N, "OffPeakWindowOptionsStatus", "Status"),
         type = "structure",
         name = "Status",
         target_id = id.from(_N, "OptionStatus"),
         target = M.OptionStatus,
      }),
   },
})

M.SnapshotOptionsStatus = schema.new({
   id = id.from(_N, "SnapshotOptionsStatus"),
   type = "structure",
   members = {
      Options = schema.new({
         id = id.from(_N, "SnapshotOptionsStatus", "Options"),
         type = "structure",
         name = "Options",
         target_id = id.from(_N, "SnapshotOptions"),
         target = M.SnapshotOptions,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Status = schema.new({
         id = id.from(_N, "SnapshotOptionsStatus", "Status"),
         type = "structure",
         name = "Status",
         target_id = id.from(_N, "OptionStatus"),
         target = M.OptionStatus,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.SoftwareUpdateOptionsStatus = schema.new({
   id = id.from(_N, "SoftwareUpdateOptionsStatus"),
   type = "structure",
   members = {
      Options = schema.new({
         id = id.from(_N, "SoftwareUpdateOptionsStatus", "Options"),
         type = "structure",
         name = "Options",
         target_id = id.from(_N, "SoftwareUpdateOptions"),
         target = M.SoftwareUpdateOptions,
      }),
      Status = schema.new({
         id = id.from(_N, "SoftwareUpdateOptionsStatus", "Status"),
         type = "structure",
         name = "Status",
         target_id = id.from(_N, "OptionStatus"),
         target = M.OptionStatus,
      }),
   },
})

M.VPCDerivedInfoStatus = schema.new({
   id = id.from(_N, "VPCDerivedInfoStatus"),
   type = "structure",
   members = {
      Options = schema.new({
         id = id.from(_N, "VPCDerivedInfoStatus", "Options"),
         type = "structure",
         name = "Options",
         target_id = id.from(_N, "VPCDerivedInfo"),
         target = M.VPCDerivedInfo,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Status = schema.new({
         id = id.from(_N, "VPCDerivedInfoStatus", "Status"),
         type = "structure",
         name = "Status",
         target_id = id.from(_N, "OptionStatus"),
         target = M.OptionStatus,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DomainConfig = schema.new({
   id = id.from(_N, "DomainConfig"),
   type = "structure",
   members = {
      EngineVersion = schema.new({
         id = id.from(_N, "DomainConfig", "EngineVersion"),
         type = "structure",
         name = "EngineVersion",
         target_id = id.from(_N, "VersionStatus"),
         target = M.VersionStatus,
      }),
      ClusterConfig = schema.new({
         id = id.from(_N, "DomainConfig", "ClusterConfig"),
         type = "structure",
         name = "ClusterConfig",
         target_id = id.from(_N, "ClusterConfigStatus"),
         target = M.ClusterConfigStatus,
      }),
      EBSOptions = schema.new({
         id = id.from(_N, "DomainConfig", "EBSOptions"),
         type = "structure",
         name = "EBSOptions",
         target_id = id.from(_N, "EBSOptionsStatus"),
         target = M.EBSOptionsStatus,
      }),
      AccessPolicies = schema.new({
         id = id.from(_N, "DomainConfig", "AccessPolicies"),
         type = "structure",
         name = "AccessPolicies",
         target_id = id.from(_N, "AccessPoliciesStatus"),
         target = M.AccessPoliciesStatus,
      }),
      IPAddressType = schema.new({
         id = id.from(_N, "DomainConfig", "IPAddressType"),
         type = "structure",
         name = "IPAddressType",
         target_id = id.from(_N, "IPAddressTypeStatus"),
         target = M.IPAddressTypeStatus,
      }),
      SnapshotOptions = schema.new({
         id = id.from(_N, "DomainConfig", "SnapshotOptions"),
         type = "structure",
         name = "SnapshotOptions",
         target_id = id.from(_N, "SnapshotOptionsStatus"),
         target = M.SnapshotOptionsStatus,
      }),
      VPCOptions = schema.new({
         id = id.from(_N, "DomainConfig", "VPCOptions"),
         type = "structure",
         name = "VPCOptions",
         target_id = id.from(_N, "VPCDerivedInfoStatus"),
         target = M.VPCDerivedInfoStatus,
      }),
      CognitoOptions = schema.new({
         id = id.from(_N, "DomainConfig", "CognitoOptions"),
         type = "structure",
         name = "CognitoOptions",
         target_id = id.from(_N, "CognitoOptionsStatus"),
         target = M.CognitoOptionsStatus,
      }),
      EncryptionAtRestOptions = schema.new({
         id = id.from(_N, "DomainConfig", "EncryptionAtRestOptions"),
         type = "structure",
         name = "EncryptionAtRestOptions",
         target_id = id.from(_N, "EncryptionAtRestOptionsStatus"),
         target = M.EncryptionAtRestOptionsStatus,
      }),
      NodeToNodeEncryptionOptions = schema.new({
         id = id.from(_N, "DomainConfig", "NodeToNodeEncryptionOptions"),
         type = "structure",
         name = "NodeToNodeEncryptionOptions",
         target_id = id.from(_N, "NodeToNodeEncryptionOptionsStatus"),
         target = M.NodeToNodeEncryptionOptionsStatus,
      }),
      AdvancedOptions = schema.new({
         id = id.from(_N, "DomainConfig", "AdvancedOptions"),
         type = "structure",
         name = "AdvancedOptions",
         target_id = id.from(_N, "AdvancedOptionsStatus"),
         target = M.AdvancedOptionsStatus,
      }),
      LogPublishingOptions = schema.new({
         id = id.from(_N, "DomainConfig", "LogPublishingOptions"),
         type = "structure",
         name = "LogPublishingOptions",
         target_id = id.from(_N, "LogPublishingOptionsStatus"),
         target = M.LogPublishingOptionsStatus,
      }),
      DomainEndpointOptions = schema.new({
         id = id.from(_N, "DomainConfig", "DomainEndpointOptions"),
         type = "structure",
         name = "DomainEndpointOptions",
         target_id = id.from(_N, "DomainEndpointOptionsStatus"),
         target = M.DomainEndpointOptionsStatus,
      }),
      AdvancedSecurityOptions = schema.new({
         id = id.from(_N, "DomainConfig", "AdvancedSecurityOptions"),
         type = "structure",
         name = "AdvancedSecurityOptions",
         target_id = id.from(_N, "AdvancedSecurityOptionsStatus"),
         target = M.AdvancedSecurityOptionsStatus,
      }),
      IdentityCenterOptions = schema.new({
         id = id.from(_N, "DomainConfig", "IdentityCenterOptions"),
         type = "structure",
         name = "IdentityCenterOptions",
         target_id = id.from(_N, "IdentityCenterOptionsStatus"),
         target = M.IdentityCenterOptionsStatus,
      }),
      AutoTuneOptions = schema.new({
         id = id.from(_N, "DomainConfig", "AutoTuneOptions"),
         type = "structure",
         name = "AutoTuneOptions",
         target_id = id.from(_N, "AutoTuneOptionsStatus"),
         target = M.AutoTuneOptionsStatus,
      }),
      ChangeProgressDetails = schema.new({
         id = id.from(_N, "DomainConfig", "ChangeProgressDetails"),
         type = "structure",
         name = "ChangeProgressDetails",
         target_id = id.from(_N, "ChangeProgressDetails"),
         target = M.ChangeProgressDetails,
      }),
      OffPeakWindowOptions = schema.new({
         id = id.from(_N, "DomainConfig", "OffPeakWindowOptions"),
         type = "structure",
         name = "OffPeakWindowOptions",
         target_id = id.from(_N, "OffPeakWindowOptionsStatus"),
         target = M.OffPeakWindowOptionsStatus,
      }),
      SoftwareUpdateOptions = schema.new({
         id = id.from(_N, "DomainConfig", "SoftwareUpdateOptions"),
         type = "structure",
         name = "SoftwareUpdateOptions",
         target_id = id.from(_N, "SoftwareUpdateOptionsStatus"),
         target = M.SoftwareUpdateOptionsStatus,
      }),
      ModifyingProperties = schema.new({
         id = id.from(_N, "DomainConfig", "ModifyingProperties"),
         type = "list",
         name = "ModifyingProperties",
         target_id = prelude.Document.id,
         list_member = M.ModifyingProperties,
      }),
      AIMLOptions = schema.new({
         id = id.from(_N, "DomainConfig", "AIMLOptions"),
         type = "structure",
         name = "AIMLOptions",
         target_id = id.from(_N, "AIMLOptionsStatus"),
         target = M.AIMLOptionsStatus,
      }),
      DeploymentStrategyOptions = schema.new({
         id = id.from(_N, "DomainConfig", "DeploymentStrategyOptions"),
         type = "structure",
         name = "DeploymentStrategyOptions",
         target_id = id.from(_N, "DeploymentStrategyOptionsStatus"),
         target = M.DeploymentStrategyOptionsStatus,
      }),
   },
})

M.DescribeDomainConfigOutput = schema.new({
   id = id.from(_N, "DescribeDomainConfigResponse"),
   type = "structure",
   members = {
      DomainConfig = schema.new({
         id = id.from(_N, "DescribeDomainConfigOutput", "DomainConfig"),
         type = "structure",
         name = "DomainConfig",
         target_id = id.from(_N, "DomainConfig"),
         target = M.DomainConfig,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DescribeDomainHealthInput = schema.new({
   id = id.from(_N, "DescribeDomainHealthRequest"),
   type = "structure",
   members = {
      DomainName = schema.new({
         id = id.from(_N, "DescribeDomainHealthInput", "DomainName"),
         type = "string",
         name = "DomainName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.AvailabilityZoneInfo = schema.new({
   id = id.from(_N, "AvailabilityZoneInfo"),
   type = "structure",
   members = {
      AvailabilityZoneName = schema.new({
         id = id.from(_N, "AvailabilityZoneInfo", "AvailabilityZoneName"),
         type = "string",
         name = "AvailabilityZoneName",
         target_id = prelude.String.id,
      }),
      ZoneStatus = schema.new({
         id = id.from(_N, "AvailabilityZoneInfo", "ZoneStatus"),
         type = "string",
         name = "ZoneStatus",
         target_id = prelude.String.id,
      }),
      ConfiguredDataNodeCount = schema.new({
         id = id.from(_N, "AvailabilityZoneInfo", "ConfiguredDataNodeCount"),
         type = "string",
         name = "ConfiguredDataNodeCount",
         target_id = prelude.String.id,
      }),
      AvailableDataNodeCount = schema.new({
         id = id.from(_N, "AvailabilityZoneInfo", "AvailableDataNodeCount"),
         type = "string",
         name = "AvailableDataNodeCount",
         target_id = prelude.String.id,
      }),
      TotalShards = schema.new({
         id = id.from(_N, "AvailabilityZoneInfo", "TotalShards"),
         type = "string",
         name = "TotalShards",
         target_id = prelude.String.id,
      }),
      TotalUnAssignedShards = schema.new({
         id = id.from(_N, "AvailabilityZoneInfo", "TotalUnAssignedShards"),
         type = "string",
         name = "TotalUnAssignedShards",
         target_id = prelude.String.id,
      }),
   },
})

M.EnvironmentInfo = schema.new({
   id = id.from(_N, "EnvironmentInfo"),
   type = "structure",
   members = {
      AvailabilityZoneInformation = schema.new({
         id = id.from(_N, "EnvironmentInfo", "AvailabilityZoneInformation"),
         type = "list",
         name = "AvailabilityZoneInformation",
         target_id = prelude.Document.id,
         list_member = M.AvailabilityZoneInfo,
      }),
   },
})

M.DescribeDomainHealthOutput = schema.new({
   id = id.from(_N, "DescribeDomainHealthResponse"),
   type = "structure",
   members = {
      DomainState = schema.new({
         id = id.from(_N, "DescribeDomainHealthOutput", "DomainState"),
         type = "string",
         name = "DomainState",
         target_id = prelude.String.id,
      }),
      AvailabilityZoneCount = schema.new({
         id = id.from(_N, "DescribeDomainHealthOutput", "AvailabilityZoneCount"),
         type = "string",
         name = "AvailabilityZoneCount",
         target_id = prelude.String.id,
      }),
      ActiveAvailabilityZoneCount = schema.new({
         id = id.from(_N, "DescribeDomainHealthOutput", "ActiveAvailabilityZoneCount"),
         type = "string",
         name = "ActiveAvailabilityZoneCount",
         target_id = prelude.String.id,
      }),
      StandByAvailabilityZoneCount = schema.new({
         id = id.from(_N, "DescribeDomainHealthOutput", "StandByAvailabilityZoneCount"),
         type = "string",
         name = "StandByAvailabilityZoneCount",
         target_id = prelude.String.id,
      }),
      DataNodeCount = schema.new({
         id = id.from(_N, "DescribeDomainHealthOutput", "DataNodeCount"),
         type = "string",
         name = "DataNodeCount",
         target_id = prelude.String.id,
      }),
      DedicatedMaster = schema.new({
         id = id.from(_N, "DescribeDomainHealthOutput", "DedicatedMaster"),
         type = "boolean",
         name = "DedicatedMaster",
         target_id = prelude.Boolean.id,
      }),
      MasterEligibleNodeCount = schema.new({
         id = id.from(_N, "DescribeDomainHealthOutput", "MasterEligibleNodeCount"),
         type = "string",
         name = "MasterEligibleNodeCount",
         target_id = prelude.String.id,
      }),
      WarmNodeCount = schema.new({
         id = id.from(_N, "DescribeDomainHealthOutput", "WarmNodeCount"),
         type = "string",
         name = "WarmNodeCount",
         target_id = prelude.String.id,
      }),
      MasterNode = schema.new({
         id = id.from(_N, "DescribeDomainHealthOutput", "MasterNode"),
         type = "string",
         name = "MasterNode",
         target_id = prelude.String.id,
      }),
      ClusterHealth = schema.new({
         id = id.from(_N, "DescribeDomainHealthOutput", "ClusterHealth"),
         type = "string",
         name = "ClusterHealth",
         target_id = prelude.String.id,
      }),
      TotalShards = schema.new({
         id = id.from(_N, "DescribeDomainHealthOutput", "TotalShards"),
         type = "string",
         name = "TotalShards",
         target_id = prelude.String.id,
      }),
      TotalUnAssignedShards = schema.new({
         id = id.from(_N, "DescribeDomainHealthOutput", "TotalUnAssignedShards"),
         type = "string",
         name = "TotalUnAssignedShards",
         target_id = prelude.String.id,
      }),
      EnvironmentInformation = schema.new({
         id = id.from(_N, "DescribeDomainHealthOutput", "EnvironmentInformation"),
         type = "list",
         name = "EnvironmentInformation",
         target_id = prelude.Document.id,
         list_member = M.EnvironmentInfo,
      }),
   },
})

M.DescribeDomainNodesInput = schema.new({
   id = id.from(_N, "DescribeDomainNodesRequest"),
   type = "structure",
   members = {
      DomainName = schema.new({
         id = id.from(_N, "DescribeDomainNodesInput", "DomainName"),
         type = "string",
         name = "DomainName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DomainNodesStatus = schema.new({
   id = id.from(_N, "DomainNodesStatus"),
   type = "structure",
   members = {
      NodeId = schema.new({
         id = id.from(_N, "DomainNodesStatus", "NodeId"),
         type = "string",
         name = "NodeId",
         target_id = prelude.String.id,
      }),
      NodeType = schema.new({
         id = id.from(_N, "DomainNodesStatus", "NodeType"),
         type = "string",
         name = "NodeType",
         target_id = prelude.String.id,
      }),
      AvailabilityZone = schema.new({
         id = id.from(_N, "DomainNodesStatus", "AvailabilityZone"),
         type = "string",
         name = "AvailabilityZone",
         target_id = prelude.String.id,
      }),
      InstanceType = schema.new({
         id = id.from(_N, "DomainNodesStatus", "InstanceType"),
         type = "string",
         name = "InstanceType",
         target_id = prelude.String.id,
      }),
      NodeStatus = schema.new({
         id = id.from(_N, "DomainNodesStatus", "NodeStatus"),
         type = "string",
         name = "NodeStatus",
         target_id = prelude.String.id,
      }),
      StorageType = schema.new({
         id = id.from(_N, "DomainNodesStatus", "StorageType"),
         type = "string",
         name = "StorageType",
         target_id = prelude.String.id,
      }),
      StorageVolumeType = schema.new({
         id = id.from(_N, "DomainNodesStatus", "StorageVolumeType"),
         type = "string",
         name = "StorageVolumeType",
         target_id = prelude.String.id,
      }),
      StorageSize = schema.new({
         id = id.from(_N, "DomainNodesStatus", "StorageSize"),
         type = "string",
         name = "StorageSize",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeDomainNodesOutput = schema.new({
   id = id.from(_N, "DescribeDomainNodesResponse"),
   type = "structure",
   members = {
      DomainNodesStatusList = schema.new({
         id = id.from(_N, "DescribeDomainNodesOutput", "DomainNodesStatusList"),
         type = "list",
         name = "DomainNodesStatusList",
         target_id = prelude.Document.id,
         list_member = M.DomainNodesStatus,
      }),
   },
})

M.DescribeDomainsInput = schema.new({
   id = id.from(_N, "DescribeDomainsRequest"),
   type = "structure",
   members = {
      DomainNames = schema.new({
         id = id.from(_N, "DescribeDomainsInput", "DomainNames"),
         type = "list",
         name = "DomainNames",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DescribeDomainsOutput = schema.new({
   id = id.from(_N, "DescribeDomainsResponse"),
   type = "structure",
   members = {
      DomainStatusList = schema.new({
         id = id.from(_N, "DescribeDomainsOutput", "DomainStatusList"),
         type = "list",
         name = "DomainStatusList",
         target_id = prelude.Document.id,
         list_member = M.DomainStatus,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DescribeDryRunProgressInput = schema.new({
   id = id.from(_N, "DescribeDryRunProgressRequest"),
   type = "structure",
   members = {
      DomainName = schema.new({
         id = id.from(_N, "DescribeDryRunProgressInput", "DomainName"),
         type = "string",
         name = "DomainName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      DryRunId = schema.new({
         id = id.from(_N, "DescribeDryRunProgressInput", "DryRunId"),
         type = "string",
         name = "DryRunId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "dryRunId" },
         },
      }),
      LoadDryRunConfig = schema.new({
         id = id.from(_N, "DescribeDryRunProgressInput", "LoadDryRunConfig"),
         type = "boolean",
         name = "LoadDryRunConfig",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "loadDryRunConfig" },
         },
      }),
   },
})

M.ValidationFailure = schema.new({
   id = id.from(_N, "ValidationFailure"),
   type = "structure",
   members = {
      Code = schema.new({
         id = id.from(_N, "ValidationFailure", "Code"),
         type = "string",
         name = "Code",
         target_id = prelude.String.id,
      }),
      Message = schema.new({
         id = id.from(_N, "ValidationFailure", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.DryRunProgressStatus = schema.new({
   id = id.from(_N, "DryRunProgressStatus"),
   type = "structure",
   members = {
      DryRunId = schema.new({
         id = id.from(_N, "DryRunProgressStatus", "DryRunId"),
         type = "string",
         name = "DryRunId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DryRunStatus = schema.new({
         id = id.from(_N, "DryRunProgressStatus", "DryRunStatus"),
         type = "string",
         name = "DryRunStatus",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      CreationDate = schema.new({
         id = id.from(_N, "DryRunProgressStatus", "CreationDate"),
         type = "string",
         name = "CreationDate",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      UpdateDate = schema.new({
         id = id.from(_N, "DryRunProgressStatus", "UpdateDate"),
         type = "string",
         name = "UpdateDate",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ValidationFailures = schema.new({
         id = id.from(_N, "DryRunProgressStatus", "ValidationFailures"),
         type = "list",
         name = "ValidationFailures",
         target_id = prelude.Document.id,
         list_member = M.ValidationFailure,
      }),
   },
})

M.DryRunResults = schema.new({
   id = id.from(_N, "DryRunResults"),
   type = "structure",
   members = {
      DeploymentType = schema.new({
         id = id.from(_N, "DryRunResults", "DeploymentType"),
         type = "string",
         name = "DeploymentType",
         target_id = prelude.String.id,
      }),
      Message = schema.new({
         id = id.from(_N, "DryRunResults", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeDryRunProgressOutput = schema.new({
   id = id.from(_N, "DescribeDryRunProgressResponse"),
   type = "structure",
   members = {
      DryRunProgressStatus = schema.new({
         id = id.from(_N, "DescribeDryRunProgressOutput", "DryRunProgressStatus"),
         type = "structure",
         name = "DryRunProgressStatus",
         target_id = id.from(_N, "DryRunProgressStatus"),
         target = M.DryRunProgressStatus,
      }),
      DryRunConfig = schema.new({
         id = id.from(_N, "DescribeDryRunProgressOutput", "DryRunConfig"),
         type = "structure",
         name = "DryRunConfig",
         target_id = id.from(_N, "DomainStatus"),
         target = M.DomainStatus,
      }),
      DryRunResults = schema.new({
         id = id.from(_N, "DescribeDryRunProgressOutput", "DryRunResults"),
         type = "structure",
         name = "DryRunResults",
         target_id = id.from(_N, "DryRunResults"),
         target = M.DryRunResults,
      }),
   },
})

M.Filter = schema.new({
   id = id.from(_N, "Filter"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "Filter", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Values = schema.new({
         id = id.from(_N, "Filter", "Values"),
         type = "list",
         name = "Values",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.DescribeInboundConnectionsInput = schema.new({
   id = id.from(_N, "DescribeInboundConnectionsRequest"),
   type = "structure",
   members = {
      Filters = schema.new({
         id = id.from(_N, "DescribeInboundConnectionsInput", "Filters"),
         type = "list",
         name = "Filters",
         target_id = prelude.Document.id,
         list_member = M.Filter,
      }),
      MaxResults = schema.new({
         id = id.from(_N, "DescribeInboundConnectionsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "DescribeInboundConnectionsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeInboundConnectionsOutput = schema.new({
   id = id.from(_N, "DescribeInboundConnectionsResponse"),
   type = "structure",
   members = {
      Connections = schema.new({
         id = id.from(_N, "DescribeInboundConnectionsOutput", "Connections"),
         type = "list",
         name = "Connections",
         target_id = prelude.Document.id,
         list_member = M.InboundConnection,
      }),
      NextToken = schema.new({
         id = id.from(_N, "DescribeInboundConnectionsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.InvalidPaginationTokenException = schema.new({
   id = id.from(_N, "InvalidPaginationTokenException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "InvalidPaginationTokenException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.InsightEntity = schema.new({
   id = id.from(_N, "InsightEntity"),
   type = "structure",
   members = {
      Type = schema.new({
         id = id.from(_N, "InsightEntity", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Value = schema.new({
         id = id.from(_N, "InsightEntity", "Value"),
         type = "string",
         name = "Value",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeInsightDetailsInput = schema.new({
   id = id.from(_N, "DescribeInsightDetailsRequest"),
   type = "structure",
   members = {
      Entity = schema.new({
         id = id.from(_N, "DescribeInsightDetailsInput", "Entity"),
         type = "structure",
         name = "Entity",
         target_id = id.from(_N, "InsightEntity"),
         target = M.InsightEntity,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      InsightId = schema.new({
         id = id.from(_N, "DescribeInsightDetailsInput", "InsightId"),
         type = "string",
         name = "InsightId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ShowHtmlContent = schema.new({
         id = id.from(_N, "DescribeInsightDetailsInput", "ShowHtmlContent"),
         type = "boolean",
         name = "ShowHtmlContent",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.InsightField = schema.new({
   id = id.from(_N, "InsightField"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "InsightField", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Type = schema.new({
         id = id.from(_N, "InsightField", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Value = schema.new({
         id = id.from(_N, "InsightField", "Value"),
         type = "string",
         name = "Value",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DescribeInsightDetailsOutput = schema.new({
   id = id.from(_N, "DescribeInsightDetailsResponse"),
   type = "structure",
   members = {
      Fields = schema.new({
         id = id.from(_N, "DescribeInsightDetailsOutput", "Fields"),
         type = "list",
         name = "Fields",
         target_id = prelude.Document.id,
         list_member = M.InsightField,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DescribeInstanceTypeLimitsInput = schema.new({
   id = id.from(_N, "DescribeInstanceTypeLimitsRequest"),
   type = "structure",
   members = {
      DomainName = schema.new({
         id = id.from(_N, "DescribeInstanceTypeLimitsInput", "DomainName"),
         type = "string",
         name = "DomainName",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "domainName" },
         },
      }),
      InstanceType = schema.new({
         id = id.from(_N, "DescribeInstanceTypeLimitsInput", "InstanceType"),
         type = "string",
         name = "InstanceType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      EngineVersion = schema.new({
         id = id.from(_N, "DescribeInstanceTypeLimitsInput", "EngineVersion"),
         type = "string",
         name = "EngineVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.InstanceCountLimits = schema.new({
   id = id.from(_N, "InstanceCountLimits"),
   type = "structure",
   members = {
      MinimumInstanceCount = schema.new({
         id = id.from(_N, "InstanceCountLimits", "MinimumInstanceCount"),
         type = "integer",
         name = "MinimumInstanceCount",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      MaximumInstanceCount = schema.new({
         id = id.from(_N, "InstanceCountLimits", "MaximumInstanceCount"),
         type = "integer",
         name = "MaximumInstanceCount",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
   },
})

M.InstanceLimits = schema.new({
   id = id.from(_N, "InstanceLimits"),
   type = "structure",
   members = {
      InstanceCountLimits = schema.new({
         id = id.from(_N, "InstanceLimits", "InstanceCountLimits"),
         type = "structure",
         name = "InstanceCountLimits",
         target_id = id.from(_N, "InstanceCountLimits"),
         target = M.InstanceCountLimits,
      }),
   },
})

M.StorageTypeLimit = schema.new({
   id = id.from(_N, "StorageTypeLimit"),
   type = "structure",
   members = {
      LimitName = schema.new({
         id = id.from(_N, "StorageTypeLimit", "LimitName"),
         type = "string",
         name = "LimitName",
         target_id = prelude.String.id,
      }),
      LimitValues = schema.new({
         id = id.from(_N, "StorageTypeLimit", "LimitValues"),
         type = "list",
         name = "LimitValues",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.StorageType = schema.new({
   id = id.from(_N, "StorageType"),
   type = "structure",
   members = {
      StorageTypeName = schema.new({
         id = id.from(_N, "StorageType", "StorageTypeName"),
         type = "string",
         name = "StorageTypeName",
         target_id = prelude.String.id,
      }),
      StorageSubTypeName = schema.new({
         id = id.from(_N, "StorageType", "StorageSubTypeName"),
         type = "string",
         name = "StorageSubTypeName",
         target_id = prelude.String.id,
      }),
      StorageTypeLimits = schema.new({
         id = id.from(_N, "StorageType", "StorageTypeLimits"),
         type = "list",
         name = "StorageTypeLimits",
         target_id = prelude.Document.id,
         list_member = M.StorageTypeLimit,
      }),
   },
})

M.Limits = schema.new({
   id = id.from(_N, "Limits"),
   type = "structure",
   members = {
      StorageTypes = schema.new({
         id = id.from(_N, "Limits", "StorageTypes"),
         type = "list",
         name = "StorageTypes",
         target_id = prelude.Document.id,
         list_member = M.StorageType,
      }),
      InstanceLimits = schema.new({
         id = id.from(_N, "Limits", "InstanceLimits"),
         type = "structure",
         name = "InstanceLimits",
         target_id = id.from(_N, "InstanceLimits"),
         target = M.InstanceLimits,
      }),
      AdditionalLimits = schema.new({
         id = id.from(_N, "Limits", "AdditionalLimits"),
         type = "list",
         name = "AdditionalLimits",
         target_id = prelude.Document.id,
         list_member = M.AdditionalLimit,
      }),
   },
})

M.DescribeInstanceTypeLimitsOutput = schema.new({
   id = id.from(_N, "DescribeInstanceTypeLimitsResponse"),
   type = "structure",
   members = {
      LimitsByRole = schema.new({
         id = id.from(_N, "DescribeInstanceTypeLimitsOutput", "LimitsByRole"),
         type = "map",
         name = "LimitsByRole",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.Limits,
      }),
   },
})

M.DescribeOutboundConnectionsInput = schema.new({
   id = id.from(_N, "DescribeOutboundConnectionsRequest"),
   type = "structure",
   members = {
      Filters = schema.new({
         id = id.from(_N, "DescribeOutboundConnectionsInput", "Filters"),
         type = "list",
         name = "Filters",
         target_id = prelude.Document.id,
         list_member = M.Filter,
      }),
      MaxResults = schema.new({
         id = id.from(_N, "DescribeOutboundConnectionsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "DescribeOutboundConnectionsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeOutboundConnectionsOutput = schema.new({
   id = id.from(_N, "DescribeOutboundConnectionsResponse"),
   type = "structure",
   members = {
      Connections = schema.new({
         id = id.from(_N, "DescribeOutboundConnectionsOutput", "Connections"),
         type = "list",
         name = "Connections",
         target_id = prelude.Document.id,
         list_member = M.OutboundConnection,
      }),
      NextToken = schema.new({
         id = id.from(_N, "DescribeOutboundConnectionsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribePackagesFilter = schema.new({
   id = id.from(_N, "DescribePackagesFilter"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "DescribePackagesFilter", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Value = schema.new({
         id = id.from(_N, "DescribePackagesFilter", "Value"),
         type = "list",
         name = "Value",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.DescribePackagesInput = schema.new({
   id = id.from(_N, "DescribePackagesRequest"),
   type = "structure",
   members = {
      Filters = schema.new({
         id = id.from(_N, "DescribePackagesInput", "Filters"),
         type = "list",
         name = "Filters",
         target_id = prelude.Document.id,
         list_member = M.DescribePackagesFilter,
      }),
      MaxResults = schema.new({
         id = id.from(_N, "DescribePackagesInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "DescribePackagesInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribePackagesOutput = schema.new({
   id = id.from(_N, "DescribePackagesResponse"),
   type = "structure",
   members = {
      PackageDetailsList = schema.new({
         id = id.from(_N, "DescribePackagesOutput", "PackageDetailsList"),
         type = "list",
         name = "PackageDetailsList",
         target_id = prelude.Document.id,
         list_member = M.PackageDetails,
      }),
      NextToken = schema.new({
         id = id.from(_N, "DescribePackagesOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeReservedInstanceOfferingsInput = schema.new({
   id = id.from(_N, "DescribeReservedInstanceOfferingsRequest"),
   type = "structure",
   members = {
      ReservedInstanceOfferingId = schema.new({
         id = id.from(_N, "DescribeReservedInstanceOfferingsInput", "ReservedInstanceOfferingId"),
         type = "string",
         name = "ReservedInstanceOfferingId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "offeringId" },
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "DescribeReservedInstanceOfferingsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "DescribeReservedInstanceOfferingsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
   },
})

M.RecurringCharge = schema.new({
   id = id.from(_N, "RecurringCharge"),
   type = "structure",
   members = {
      RecurringChargeAmount = schema.new({
         id = id.from(_N, "RecurringCharge", "RecurringChargeAmount"),
         type = "double",
         name = "RecurringChargeAmount",
         target_id = prelude.Double.id,
      }),
      RecurringChargeFrequency = schema.new({
         id = id.from(_N, "RecurringCharge", "RecurringChargeFrequency"),
         type = "string",
         name = "RecurringChargeFrequency",
         target_id = prelude.String.id,
      }),
   },
})

M.ReservedInstanceOffering = schema.new({
   id = id.from(_N, "ReservedInstanceOffering"),
   type = "structure",
   members = {
      ReservedInstanceOfferingId = schema.new({
         id = id.from(_N, "ReservedInstanceOffering", "ReservedInstanceOfferingId"),
         type = "string",
         name = "ReservedInstanceOfferingId",
         target_id = prelude.String.id,
      }),
      InstanceType = schema.new({
         id = id.from(_N, "ReservedInstanceOffering", "InstanceType"),
         type = "string",
         name = "InstanceType",
         target_id = prelude.String.id,
      }),
      Duration = schema.new({
         id = id.from(_N, "ReservedInstanceOffering", "Duration"),
         type = "integer",
         name = "Duration",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      FixedPrice = schema.new({
         id = id.from(_N, "ReservedInstanceOffering", "FixedPrice"),
         type = "double",
         name = "FixedPrice",
         target_id = prelude.Double.id,
      }),
      UsagePrice = schema.new({
         id = id.from(_N, "ReservedInstanceOffering", "UsagePrice"),
         type = "double",
         name = "UsagePrice",
         target_id = prelude.Double.id,
      }),
      CurrencyCode = schema.new({
         id = id.from(_N, "ReservedInstanceOffering", "CurrencyCode"),
         type = "string",
         name = "CurrencyCode",
         target_id = prelude.String.id,
      }),
      PaymentOption = schema.new({
         id = id.from(_N, "ReservedInstanceOffering", "PaymentOption"),
         type = "string",
         name = "PaymentOption",
         target_id = prelude.String.id,
      }),
      RecurringCharges = schema.new({
         id = id.from(_N, "ReservedInstanceOffering", "RecurringCharges"),
         type = "list",
         name = "RecurringCharges",
         target_id = prelude.Document.id,
         list_member = schema.new({ type = "structure", target = M.RecurringCharge, traits = { [traits.XML_NAME] = { name = "RecurringCharge" } } }),
      }),
   },
})

M.DescribeReservedInstanceOfferingsOutput = schema.new({
   id = id.from(_N, "DescribeReservedInstanceOfferingsResponse"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "DescribeReservedInstanceOfferingsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      ReservedInstanceOfferings = schema.new({
         id = id.from(_N, "DescribeReservedInstanceOfferingsOutput", "ReservedInstanceOfferings"),
         type = "list",
         name = "ReservedInstanceOfferings",
         target_id = prelude.Document.id,
         list_member = schema.new({ type = "structure", target = M.ReservedInstanceOffering, traits = { [traits.XML_NAME] = { name = "ReservedInstanceOffering" } } }),
      }),
   },
})

M.DescribeReservedInstancesInput = schema.new({
   id = id.from(_N, "DescribeReservedInstancesRequest"),
   type = "structure",
   members = {
      ReservedInstanceId = schema.new({
         id = id.from(_N, "DescribeReservedInstancesInput", "ReservedInstanceId"),
         type = "string",
         name = "ReservedInstanceId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "reservationId" },
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "DescribeReservedInstancesInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "DescribeReservedInstancesInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
   },
})

M.ReservedInstance = schema.new({
   id = id.from(_N, "ReservedInstance"),
   type = "structure",
   members = {
      ReservationName = schema.new({
         id = id.from(_N, "ReservedInstance", "ReservationName"),
         type = "string",
         name = "ReservationName",
         target_id = prelude.String.id,
      }),
      ReservedInstanceId = schema.new({
         id = id.from(_N, "ReservedInstance", "ReservedInstanceId"),
         type = "string",
         name = "ReservedInstanceId",
         target_id = prelude.String.id,
      }),
      BillingSubscriptionId = schema.new({
         id = id.from(_N, "ReservedInstance", "BillingSubscriptionId"),
         type = "long",
         name = "BillingSubscriptionId",
         target_id = prelude.Long.id,
      }),
      ReservedInstanceOfferingId = schema.new({
         id = id.from(_N, "ReservedInstance", "ReservedInstanceOfferingId"),
         type = "string",
         name = "ReservedInstanceOfferingId",
         target_id = prelude.String.id,
      }),
      InstanceType = schema.new({
         id = id.from(_N, "ReservedInstance", "InstanceType"),
         type = "string",
         name = "InstanceType",
         target_id = prelude.String.id,
      }),
      StartTime = schema.new({
         id = id.from(_N, "ReservedInstance", "StartTime"),
         type = "timestamp",
         name = "StartTime",
         target_id = prelude.Timestamp.id,
      }),
      Duration = schema.new({
         id = id.from(_N, "ReservedInstance", "Duration"),
         type = "integer",
         name = "Duration",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      FixedPrice = schema.new({
         id = id.from(_N, "ReservedInstance", "FixedPrice"),
         type = "double",
         name = "FixedPrice",
         target_id = prelude.Double.id,
      }),
      UsagePrice = schema.new({
         id = id.from(_N, "ReservedInstance", "UsagePrice"),
         type = "double",
         name = "UsagePrice",
         target_id = prelude.Double.id,
      }),
      CurrencyCode = schema.new({
         id = id.from(_N, "ReservedInstance", "CurrencyCode"),
         type = "string",
         name = "CurrencyCode",
         target_id = prelude.String.id,
      }),
      InstanceCount = schema.new({
         id = id.from(_N, "ReservedInstance", "InstanceCount"),
         type = "integer",
         name = "InstanceCount",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      State = schema.new({
         id = id.from(_N, "ReservedInstance", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
      }),
      PaymentOption = schema.new({
         id = id.from(_N, "ReservedInstance", "PaymentOption"),
         type = "string",
         name = "PaymentOption",
         target_id = prelude.String.id,
      }),
      RecurringCharges = schema.new({
         id = id.from(_N, "ReservedInstance", "RecurringCharges"),
         type = "list",
         name = "RecurringCharges",
         target_id = prelude.Document.id,
         list_member = schema.new({ type = "structure", target = M.RecurringCharge, traits = { [traits.XML_NAME] = { name = "RecurringCharge" } } }),
      }),
   },
})

M.DescribeReservedInstancesOutput = schema.new({
   id = id.from(_N, "DescribeReservedInstancesResponse"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "DescribeReservedInstancesOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      ReservedInstances = schema.new({
         id = id.from(_N, "DescribeReservedInstancesOutput", "ReservedInstances"),
         type = "list",
         name = "ReservedInstances",
         target_id = prelude.Document.id,
         list_member = M.ReservedInstance,
      }),
   },
})

M.DescribeVpcEndpointsInput = schema.new({
   id = id.from(_N, "DescribeVpcEndpointsRequest"),
   type = "structure",
   members = {
      VpcEndpointIds = schema.new({
         id = id.from(_N, "DescribeVpcEndpointsInput", "VpcEndpointIds"),
         type = "list",
         name = "VpcEndpointIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.VpcEndpointError = schema.new({
   id = id.from(_N, "VpcEndpointError"),
   type = "structure",
   members = {
      VpcEndpointId = schema.new({
         id = id.from(_N, "VpcEndpointError", "VpcEndpointId"),
         type = "string",
         name = "VpcEndpointId",
         target_id = prelude.String.id,
      }),
      ErrorCode = schema.new({
         id = id.from(_N, "VpcEndpointError", "ErrorCode"),
         type = "string",
         name = "ErrorCode",
         target_id = prelude.String.id,
      }),
      ErrorMessage = schema.new({
         id = id.from(_N, "VpcEndpointError", "ErrorMessage"),
         type = "string",
         name = "ErrorMessage",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeVpcEndpointsOutput = schema.new({
   id = id.from(_N, "DescribeVpcEndpointsResponse"),
   type = "structure",
   members = {
      VpcEndpoints = schema.new({
         id = id.from(_N, "DescribeVpcEndpointsOutput", "VpcEndpoints"),
         type = "list",
         name = "VpcEndpoints",
         target_id = prelude.Document.id,
         list_member = M.VpcEndpoint,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      VpcEndpointErrors = schema.new({
         id = id.from(_N, "DescribeVpcEndpointsOutput", "VpcEndpointErrors"),
         type = "list",
         name = "VpcEndpointErrors",
         target_id = prelude.Document.id,
         list_member = M.VpcEndpointError,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DissociatePackageInput = schema.new({
   id = id.from(_N, "DissociatePackageRequest"),
   type = "structure",
   members = {
      PackageID = schema.new({
         id = id.from(_N, "DissociatePackageInput", "PackageID"),
         type = "string",
         name = "PackageID",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      DomainName = schema.new({
         id = id.from(_N, "DissociatePackageInput", "DomainName"),
         type = "string",
         name = "DomainName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DissociatePackageOutput = schema.new({
   id = id.from(_N, "DissociatePackageResponse"),
   type = "structure",
   members = {
      DomainPackageDetails = schema.new({
         id = id.from(_N, "DissociatePackageOutput", "DomainPackageDetails"),
         type = "structure",
         name = "DomainPackageDetails",
         target_id = id.from(_N, "DomainPackageDetails"),
         target = M.DomainPackageDetails,
      }),
   },
})

M.DissociatePackagesInput = schema.new({
   id = id.from(_N, "DissociatePackagesRequest"),
   type = "structure",
   members = {
      PackageList = schema.new({
         id = id.from(_N, "DissociatePackagesInput", "PackageList"),
         type = "list",
         name = "PackageList",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DomainName = schema.new({
         id = id.from(_N, "DissociatePackagesInput", "DomainName"),
         type = "string",
         name = "DomainName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DissociatePackagesOutput = schema.new({
   id = id.from(_N, "DissociatePackagesResponse"),
   type = "structure",
   members = {
      DomainPackageDetailsList = schema.new({
         id = id.from(_N, "DissociatePackagesOutput", "DomainPackageDetailsList"),
         type = "list",
         name = "DomainPackageDetailsList",
         target_id = prelude.Document.id,
         list_member = M.DomainPackageDetails,
      }),
   },
})

M.GetApplicationInput = schema.new({
   id = id.from(_N, "GetApplicationRequest"),
   type = "structure",
   members = {
      id = schema.new({
         id = id.from(_N, "GetApplicationInput", "id"),
         type = "string",
         name = "id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetApplicationOutput = schema.new({
   id = id.from(_N, "GetApplicationResponse"),
   type = "structure",
   members = {
      id = schema.new({
         id = id.from(_N, "GetApplicationOutput", "id"),
         type = "string",
         name = "id",
         target_id = prelude.String.id,
      }),
      arn = schema.new({
         id = id.from(_N, "GetApplicationOutput", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
      }),
      name = schema.new({
         id = id.from(_N, "GetApplicationOutput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      endpoint = schema.new({
         id = id.from(_N, "GetApplicationOutput", "endpoint"),
         type = "string",
         name = "endpoint",
         target_id = prelude.String.id,
      }),
      status = schema.new({
         id = id.from(_N, "GetApplicationOutput", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
      iamIdentityCenterOptions = schema.new({
         id = id.from(_N, "GetApplicationOutput", "iamIdentityCenterOptions"),
         type = "structure",
         name = "iamIdentityCenterOptions",
         target_id = id.from(_N, "IamIdentityCenterOptions"),
         target = M.IamIdentityCenterOptions,
      }),
      dataSources = schema.new({
         id = id.from(_N, "GetApplicationOutput", "dataSources"),
         type = "list",
         name = "dataSources",
         target_id = prelude.Document.id,
         list_member = M.DataSource,
      }),
      appConfigs = schema.new({
         id = id.from(_N, "GetApplicationOutput", "appConfigs"),
         type = "list",
         name = "appConfigs",
         target_id = prelude.Document.id,
         list_member = M.AppConfig,
      }),
      createdAt = schema.new({
         id = id.from(_N, "GetApplicationOutput", "createdAt"),
         type = "timestamp",
         name = "createdAt",
         target_id = prelude.Timestamp.id,
      }),
      lastUpdatedAt = schema.new({
         id = id.from(_N, "GetApplicationOutput", "lastUpdatedAt"),
         type = "timestamp",
         name = "lastUpdatedAt",
         target_id = prelude.Timestamp.id,
      }),
      kmsKeyArn = schema.new({
         id = id.from(_N, "GetApplicationOutput", "kmsKeyArn"),
         type = "string",
         name = "kmsKeyArn",
         target_id = prelude.String.id,
      }),
   },
})

M.GetCapabilityInput = schema.new({
   id = id.from(_N, "GetCapabilityRequest"),
   type = "structure",
   members = {
      applicationId = schema.new({
         id = id.from(_N, "GetCapabilityInput", "applicationId"),
         type = "string",
         name = "applicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      capabilityName = schema.new({
         id = id.from(_N, "GetCapabilityInput", "capabilityName"),
         type = "string",
         name = "capabilityName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.CapabilityExtendedResponseConfig = schema.new({
   id = id.from(_N, "CapabilityExtendedResponseConfig"),
   type = "union",
   members = {
      aiConfig = schema.new({
         id = id.from(_N, "CapabilityExtendedResponseConfig", "aiConfig"),
         type = "structure",
         name = "aiConfig",
         target_id = id.from(_N, "AIConfig"),
         target = M.AIConfig,
      }),
   },
})

M.CapabilityFailure = schema.new({
   id = id.from(_N, "CapabilityFailure"),
   type = "structure",
   members = {
      reason = schema.new({
         id = id.from(_N, "CapabilityFailure", "reason"),
         type = "string",
         name = "reason",
         target_id = prelude.String.id,
      }),
      details = schema.new({
         id = id.from(_N, "CapabilityFailure", "details"),
         type = "string",
         name = "details",
         target_id = prelude.String.id,
      }),
   },
})

M.GetCapabilityOutput = schema.new({
   id = id.from(_N, "GetCapabilityResponse"),
   type = "structure",
   members = {
      capabilityName = schema.new({
         id = id.from(_N, "GetCapabilityOutput", "capabilityName"),
         type = "string",
         name = "capabilityName",
         target_id = prelude.String.id,
      }),
      applicationId = schema.new({
         id = id.from(_N, "GetCapabilityOutput", "applicationId"),
         type = "string",
         name = "applicationId",
         target_id = prelude.String.id,
      }),
      status = schema.new({
         id = id.from(_N, "GetCapabilityOutput", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
      capabilityConfig = schema.new({
         id = id.from(_N, "GetCapabilityOutput", "capabilityConfig"),
         type = "union",
         name = "capabilityConfig",
         target_id = id.from(_N, "CapabilityExtendedResponseConfig"),
         target = M.CapabilityExtendedResponseConfig,
      }),
      failures = schema.new({
         id = id.from(_N, "GetCapabilityOutput", "failures"),
         type = "list",
         name = "failures",
         target_id = prelude.Document.id,
         list_member = M.CapabilityFailure,
      }),
   },
})

M.GetCompatibleVersionsInput = schema.new({
   id = id.from(_N, "GetCompatibleVersionsRequest"),
   type = "structure",
   members = {
      DomainName = schema.new({
         id = id.from(_N, "GetCompatibleVersionsInput", "DomainName"),
         type = "string",
         name = "DomainName",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "domainName" },
         },
      }),
   },
})

M.CompatibleVersionsMap = schema.new({
   id = id.from(_N, "CompatibleVersionsMap"),
   type = "structure",
   members = {
      SourceVersion = schema.new({
         id = id.from(_N, "CompatibleVersionsMap", "SourceVersion"),
         type = "string",
         name = "SourceVersion",
         target_id = prelude.String.id,
      }),
      TargetVersions = schema.new({
         id = id.from(_N, "CompatibleVersionsMap", "TargetVersions"),
         type = "list",
         name = "TargetVersions",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.GetCompatibleVersionsOutput = schema.new({
   id = id.from(_N, "GetCompatibleVersionsResponse"),
   type = "structure",
   members = {
      CompatibleVersions = schema.new({
         id = id.from(_N, "GetCompatibleVersionsOutput", "CompatibleVersions"),
         type = "list",
         name = "CompatibleVersions",
         target_id = prelude.Document.id,
         list_member = M.CompatibleVersionsMap,
      }),
   },
})

M.GetDataSourceInput = schema.new({
   id = id.from(_N, "GetDataSourceRequest"),
   type = "structure",
   members = {
      DomainName = schema.new({
         id = id.from(_N, "GetDataSourceInput", "DomainName"),
         type = "string",
         name = "DomainName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Name = schema.new({
         id = id.from(_N, "GetDataSourceInput", "Name"),
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

M.GetDataSourceOutput = schema.new({
   id = id.from(_N, "GetDataSourceResponse"),
   type = "structure",
   members = {
      DataSourceType = schema.new({
         id = id.from(_N, "GetDataSourceOutput", "DataSourceType"),
         type = "union",
         name = "DataSourceType",
         target_id = id.from(_N, "DataSourceType"),
         target = M.DataSourceType,
      }),
      Name = schema.new({
         id = id.from(_N, "GetDataSourceOutput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Description = schema.new({
         id = id.from(_N, "GetDataSourceOutput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "GetDataSourceOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
   },
})

M.GetDefaultApplicationSettingInput = schema.new({
   id = id.from(_N, "GetDefaultApplicationSettingRequest"),
   type = "structure",
})

M.GetDefaultApplicationSettingOutput = schema.new({
   id = id.from(_N, "GetDefaultApplicationSettingResponse"),
   type = "structure",
   members = {
      applicationArn = schema.new({
         id = id.from(_N, "GetDefaultApplicationSettingOutput", "applicationArn"),
         type = "string",
         name = "applicationArn",
         target_id = prelude.String.id,
      }),
   },
})

M.GetDirectQueryDataSourceInput = schema.new({
   id = id.from(_N, "GetDirectQueryDataSourceRequest"),
   type = "structure",
   members = {
      DataSourceName = schema.new({
         id = id.from(_N, "GetDirectQueryDataSourceInput", "DataSourceName"),
         type = "string",
         name = "DataSourceName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetDirectQueryDataSourceOutput = schema.new({
   id = id.from(_N, "GetDirectQueryDataSourceResponse"),
   type = "structure",
   members = {
      DataSourceName = schema.new({
         id = id.from(_N, "GetDirectQueryDataSourceOutput", "DataSourceName"),
         type = "string",
         name = "DataSourceName",
         target_id = prelude.String.id,
      }),
      DataSourceType = schema.new({
         id = id.from(_N, "GetDirectQueryDataSourceOutput", "DataSourceType"),
         type = "union",
         name = "DataSourceType",
         target_id = id.from(_N, "DirectQueryDataSourceType"),
         target = M.DirectQueryDataSourceType,
      }),
      Description = schema.new({
         id = id.from(_N, "GetDirectQueryDataSourceOutput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      OpenSearchArns = schema.new({
         id = id.from(_N, "GetDirectQueryDataSourceOutput", "OpenSearchArns"),
         type = "list",
         name = "OpenSearchArns",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      DataSourceAccessPolicy = schema.new({
         id = id.from(_N, "GetDirectQueryDataSourceOutput", "DataSourceAccessPolicy"),
         type = "string",
         name = "DataSourceAccessPolicy",
         target_id = prelude.String.id,
      }),
      DataSourceArn = schema.new({
         id = id.from(_N, "GetDirectQueryDataSourceOutput", "DataSourceArn"),
         type = "string",
         name = "DataSourceArn",
         target_id = prelude.String.id,
      }),
   },
})

M.GetDomainMaintenanceStatusInput = schema.new({
   id = id.from(_N, "GetDomainMaintenanceStatusRequest"),
   type = "structure",
   members = {
      DomainName = schema.new({
         id = id.from(_N, "GetDomainMaintenanceStatusInput", "DomainName"),
         type = "string",
         name = "DomainName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      MaintenanceId = schema.new({
         id = id.from(_N, "GetDomainMaintenanceStatusInput", "MaintenanceId"),
         type = "string",
         name = "MaintenanceId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "maintenanceId" },
         },
      }),
   },
})

M.GetDomainMaintenanceStatusOutput = schema.new({
   id = id.from(_N, "GetDomainMaintenanceStatusResponse"),
   type = "structure",
   members = {
      Status = schema.new({
         id = id.from(_N, "GetDomainMaintenanceStatusOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      StatusMessage = schema.new({
         id = id.from(_N, "GetDomainMaintenanceStatusOutput", "StatusMessage"),
         type = "string",
         name = "StatusMessage",
         target_id = prelude.String.id,
      }),
      NodeId = schema.new({
         id = id.from(_N, "GetDomainMaintenanceStatusOutput", "NodeId"),
         type = "string",
         name = "NodeId",
         target_id = prelude.String.id,
      }),
      Action = schema.new({
         id = id.from(_N, "GetDomainMaintenanceStatusOutput", "Action"),
         type = "string",
         name = "Action",
         target_id = prelude.String.id,
      }),
      CreatedAt = schema.new({
         id = id.from(_N, "GetDomainMaintenanceStatusOutput", "CreatedAt"),
         type = "timestamp",
         name = "CreatedAt",
         target_id = prelude.Timestamp.id,
      }),
      UpdatedAt = schema.new({
         id = id.from(_N, "GetDomainMaintenanceStatusOutput", "UpdatedAt"),
         type = "timestamp",
         name = "UpdatedAt",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.GetIndexInput = schema.new({
   id = id.from(_N, "GetIndexRequest"),
   type = "structure",
   members = {
      DomainName = schema.new({
         id = id.from(_N, "GetIndexInput", "DomainName"),
         type = "string",
         name = "DomainName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      IndexName = schema.new({
         id = id.from(_N, "GetIndexInput", "IndexName"),
         type = "string",
         name = "IndexName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetIndexOutput = schema.new({
   id = id.from(_N, "GetIndexResponse"),
   type = "structure",
   members = {
      IndexSchema = schema.new({
         id = id.from(_N, "GetIndexOutput", "IndexSchema"),
         type = "document",
         name = "IndexSchema",
         target_id = prelude.Document.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetPackageVersionHistoryInput = schema.new({
   id = id.from(_N, "GetPackageVersionHistoryRequest"),
   type = "structure",
   members = {
      PackageID = schema.new({
         id = id.from(_N, "GetPackageVersionHistoryInput", "PackageID"),
         type = "string",
         name = "PackageID",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "GetPackageVersionHistoryInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "GetPackageVersionHistoryInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
   },
})

M.PackageVersionHistory = schema.new({
   id = id.from(_N, "PackageVersionHistory"),
   type = "structure",
   members = {
      PackageVersion = schema.new({
         id = id.from(_N, "PackageVersionHistory", "PackageVersion"),
         type = "string",
         name = "PackageVersion",
         target_id = prelude.String.id,
      }),
      CommitMessage = schema.new({
         id = id.from(_N, "PackageVersionHistory", "CommitMessage"),
         type = "string",
         name = "CommitMessage",
         target_id = prelude.String.id,
      }),
      CreatedAt = schema.new({
         id = id.from(_N, "PackageVersionHistory", "CreatedAt"),
         type = "timestamp",
         name = "CreatedAt",
         target_id = prelude.Timestamp.id,
      }),
      PluginProperties = schema.new({
         id = id.from(_N, "PackageVersionHistory", "PluginProperties"),
         type = "structure",
         name = "PluginProperties",
         target_id = id.from(_N, "PluginProperties"),
         target = M.PluginProperties,
      }),
      PackageConfiguration = schema.new({
         id = id.from(_N, "PackageVersionHistory", "PackageConfiguration"),
         type = "structure",
         name = "PackageConfiguration",
         target_id = id.from(_N, "PackageConfiguration"),
         target = M.PackageConfiguration,
      }),
   },
})

M.GetPackageVersionHistoryOutput = schema.new({
   id = id.from(_N, "GetPackageVersionHistoryResponse"),
   type = "structure",
   members = {
      PackageID = schema.new({
         id = id.from(_N, "GetPackageVersionHistoryOutput", "PackageID"),
         type = "string",
         name = "PackageID",
         target_id = prelude.String.id,
      }),
      PackageVersionHistoryList = schema.new({
         id = id.from(_N, "GetPackageVersionHistoryOutput", "PackageVersionHistoryList"),
         type = "list",
         name = "PackageVersionHistoryList",
         target_id = prelude.Document.id,
         list_member = M.PackageVersionHistory,
      }),
      NextToken = schema.new({
         id = id.from(_N, "GetPackageVersionHistoryOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.GetUpgradeHistoryInput = schema.new({
   id = id.from(_N, "GetUpgradeHistoryRequest"),
   type = "structure",
   members = {
      DomainName = schema.new({
         id = id.from(_N, "GetUpgradeHistoryInput", "DomainName"),
         type = "string",
         name = "DomainName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "GetUpgradeHistoryInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "GetUpgradeHistoryInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
   },
})

M.UpgradeStepItem = schema.new({
   id = id.from(_N, "UpgradeStepItem"),
   type = "structure",
   members = {
      UpgradeStep = schema.new({
         id = id.from(_N, "UpgradeStepItem", "UpgradeStep"),
         type = "string",
         name = "UpgradeStep",
         target_id = prelude.String.id,
      }),
      UpgradeStepStatus = schema.new({
         id = id.from(_N, "UpgradeStepItem", "UpgradeStepStatus"),
         type = "string",
         name = "UpgradeStepStatus",
         target_id = prelude.String.id,
      }),
      Issues = schema.new({
         id = id.from(_N, "UpgradeStepItem", "Issues"),
         type = "list",
         name = "Issues",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      ProgressPercent = schema.new({
         id = id.from(_N, "UpgradeStepItem", "ProgressPercent"),
         type = "double",
         name = "ProgressPercent",
         target_id = prelude.Double.id,
      }),
   },
})

M.UpgradeHistory = schema.new({
   id = id.from(_N, "UpgradeHistory"),
   type = "structure",
   members = {
      UpgradeName = schema.new({
         id = id.from(_N, "UpgradeHistory", "UpgradeName"),
         type = "string",
         name = "UpgradeName",
         target_id = prelude.String.id,
      }),
      StartTimestamp = schema.new({
         id = id.from(_N, "UpgradeHistory", "StartTimestamp"),
         type = "timestamp",
         name = "StartTimestamp",
         target_id = prelude.Timestamp.id,
      }),
      UpgradeStatus = schema.new({
         id = id.from(_N, "UpgradeHistory", "UpgradeStatus"),
         type = "string",
         name = "UpgradeStatus",
         target_id = prelude.String.id,
      }),
      StepsList = schema.new({
         id = id.from(_N, "UpgradeHistory", "StepsList"),
         type = "list",
         name = "StepsList",
         target_id = prelude.Document.id,
         list_member = M.UpgradeStepItem,
      }),
   },
})

M.GetUpgradeHistoryOutput = schema.new({
   id = id.from(_N, "GetUpgradeHistoryResponse"),
   type = "structure",
   members = {
      UpgradeHistories = schema.new({
         id = id.from(_N, "GetUpgradeHistoryOutput", "UpgradeHistories"),
         type = "list",
         name = "UpgradeHistories",
         target_id = prelude.Document.id,
         list_member = M.UpgradeHistory,
      }),
      NextToken = schema.new({
         id = id.from(_N, "GetUpgradeHistoryOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.GetUpgradeStatusInput = schema.new({
   id = id.from(_N, "GetUpgradeStatusRequest"),
   type = "structure",
   members = {
      DomainName = schema.new({
         id = id.from(_N, "GetUpgradeStatusInput", "DomainName"),
         type = "string",
         name = "DomainName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetUpgradeStatusOutput = schema.new({
   id = id.from(_N, "GetUpgradeStatusResponse"),
   type = "structure",
   members = {
      UpgradeStep = schema.new({
         id = id.from(_N, "GetUpgradeStatusOutput", "UpgradeStep"),
         type = "string",
         name = "UpgradeStep",
         target_id = prelude.String.id,
      }),
      StepStatus = schema.new({
         id = id.from(_N, "GetUpgradeStatusOutput", "StepStatus"),
         type = "string",
         name = "StepStatus",
         target_id = prelude.String.id,
      }),
      UpgradeName = schema.new({
         id = id.from(_N, "GetUpgradeStatusOutput", "UpgradeName"),
         type = "string",
         name = "UpgradeName",
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
      statuses = schema.new({
         id = id.from(_N, "ListApplicationsInput", "statuses"),
         type = "list",
         name = "statuses",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.HTTP_QUERY] = { name = "statuses" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListApplicationsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
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
      }),
      arn = schema.new({
         id = id.from(_N, "ApplicationSummary", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
      }),
      name = schema.new({
         id = id.from(_N, "ApplicationSummary", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      endpoint = schema.new({
         id = id.from(_N, "ApplicationSummary", "endpoint"),
         type = "string",
         name = "endpoint",
         target_id = prelude.String.id,
      }),
      status = schema.new({
         id = id.from(_N, "ApplicationSummary", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
      createdAt = schema.new({
         id = id.from(_N, "ApplicationSummary", "createdAt"),
         type = "timestamp",
         name = "createdAt",
         target_id = prelude.Timestamp.id,
      }),
      lastUpdatedAt = schema.new({
         id = id.from(_N, "ApplicationSummary", "lastUpdatedAt"),
         type = "timestamp",
         name = "lastUpdatedAt",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.ListApplicationsOutput = schema.new({
   id = id.from(_N, "ListApplicationsResponse"),
   type = "structure",
   members = {
      ApplicationSummaries = schema.new({
         id = id.from(_N, "ListApplicationsOutput", "ApplicationSummaries"),
         type = "list",
         name = "ApplicationSummaries",
         target_id = prelude.Document.id,
         list_member = M.ApplicationSummary,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListApplicationsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListDataSourcesInput = schema.new({
   id = id.from(_N, "ListDataSourcesRequest"),
   type = "structure",
   members = {
      DomainName = schema.new({
         id = id.from(_N, "ListDataSourcesInput", "DomainName"),
         type = "string",
         name = "DomainName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DataSourceDetails = schema.new({
   id = id.from(_N, "DataSourceDetails"),
   type = "structure",
   members = {
      DataSourceType = schema.new({
         id = id.from(_N, "DataSourceDetails", "DataSourceType"),
         type = "union",
         name = "DataSourceType",
         target_id = id.from(_N, "DataSourceType"),
         target = M.DataSourceType,
      }),
      Name = schema.new({
         id = id.from(_N, "DataSourceDetails", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Description = schema.new({
         id = id.from(_N, "DataSourceDetails", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "DataSourceDetails", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
   },
})

M.ListDataSourcesOutput = schema.new({
   id = id.from(_N, "ListDataSourcesResponse"),
   type = "structure",
   members = {
      DataSources = schema.new({
         id = id.from(_N, "ListDataSourcesOutput", "DataSources"),
         type = "list",
         name = "DataSources",
         target_id = prelude.Document.id,
         list_member = M.DataSourceDetails,
      }),
   },
})

M.ListDirectQueryDataSourcesInput = schema.new({
   id = id.from(_N, "ListDirectQueryDataSourcesRequest"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListDirectQueryDataSourcesInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nexttoken" },
         },
      }),
   },
})

M.DirectQueryDataSource = schema.new({
   id = id.from(_N, "DirectQueryDataSource"),
   type = "structure",
   members = {
      DataSourceName = schema.new({
         id = id.from(_N, "DirectQueryDataSource", "DataSourceName"),
         type = "string",
         name = "DataSourceName",
         target_id = prelude.String.id,
      }),
      DataSourceType = schema.new({
         id = id.from(_N, "DirectQueryDataSource", "DataSourceType"),
         type = "union",
         name = "DataSourceType",
         target_id = id.from(_N, "DirectQueryDataSourceType"),
         target = M.DirectQueryDataSourceType,
      }),
      Description = schema.new({
         id = id.from(_N, "DirectQueryDataSource", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      OpenSearchArns = schema.new({
         id = id.from(_N, "DirectQueryDataSource", "OpenSearchArns"),
         type = "list",
         name = "OpenSearchArns",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      DataSourceArn = schema.new({
         id = id.from(_N, "DirectQueryDataSource", "DataSourceArn"),
         type = "string",
         name = "DataSourceArn",
         target_id = prelude.String.id,
      }),
      TagList = schema.new({
         id = id.from(_N, "DirectQueryDataSource", "TagList"),
         type = "list",
         name = "TagList",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
   },
})

M.ListDirectQueryDataSourcesOutput = schema.new({
   id = id.from(_N, "ListDirectQueryDataSourcesResponse"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListDirectQueryDataSourcesOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      DirectQueryDataSources = schema.new({
         id = id.from(_N, "ListDirectQueryDataSourcesOutput", "DirectQueryDataSources"),
         type = "list",
         name = "DirectQueryDataSources",
         target_id = prelude.Document.id,
         list_member = M.DirectQueryDataSource,
      }),
   },
})

M.ListDomainMaintenancesInput = schema.new({
   id = id.from(_N, "ListDomainMaintenancesRequest"),
   type = "structure",
   members = {
      DomainName = schema.new({
         id = id.from(_N, "ListDomainMaintenancesInput", "DomainName"),
         type = "string",
         name = "DomainName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Action = schema.new({
         id = id.from(_N, "ListDomainMaintenancesInput", "Action"),
         type = "string",
         name = "Action",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "action" },
         },
      }),
      Status = schema.new({
         id = id.from(_N, "ListDomainMaintenancesInput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "status" },
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListDomainMaintenancesInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListDomainMaintenancesInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
   },
})

M.DomainMaintenanceDetails = schema.new({
   id = id.from(_N, "DomainMaintenanceDetails"),
   type = "structure",
   members = {
      MaintenanceId = schema.new({
         id = id.from(_N, "DomainMaintenanceDetails", "MaintenanceId"),
         type = "string",
         name = "MaintenanceId",
         target_id = prelude.String.id,
      }),
      DomainName = schema.new({
         id = id.from(_N, "DomainMaintenanceDetails", "DomainName"),
         type = "string",
         name = "DomainName",
         target_id = prelude.String.id,
      }),
      Action = schema.new({
         id = id.from(_N, "DomainMaintenanceDetails", "Action"),
         type = "string",
         name = "Action",
         target_id = prelude.String.id,
      }),
      NodeId = schema.new({
         id = id.from(_N, "DomainMaintenanceDetails", "NodeId"),
         type = "string",
         name = "NodeId",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "DomainMaintenanceDetails", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      StatusMessage = schema.new({
         id = id.from(_N, "DomainMaintenanceDetails", "StatusMessage"),
         type = "string",
         name = "StatusMessage",
         target_id = prelude.String.id,
      }),
      CreatedAt = schema.new({
         id = id.from(_N, "DomainMaintenanceDetails", "CreatedAt"),
         type = "timestamp",
         name = "CreatedAt",
         target_id = prelude.Timestamp.id,
      }),
      UpdatedAt = schema.new({
         id = id.from(_N, "DomainMaintenanceDetails", "UpdatedAt"),
         type = "timestamp",
         name = "UpdatedAt",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.ListDomainMaintenancesOutput = schema.new({
   id = id.from(_N, "ListDomainMaintenancesResponse"),
   type = "structure",
   members = {
      DomainMaintenances = schema.new({
         id = id.from(_N, "ListDomainMaintenancesOutput", "DomainMaintenances"),
         type = "list",
         name = "DomainMaintenances",
         target_id = prelude.Document.id,
         list_member = M.DomainMaintenanceDetails,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListDomainMaintenancesOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListDomainNamesInput = schema.new({
   id = id.from(_N, "ListDomainNamesRequest"),
   type = "structure",
   members = {
      EngineType = schema.new({
         id = id.from(_N, "ListDomainNamesInput", "EngineType"),
         type = "string",
         name = "EngineType",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "engineType" },
         },
      }),
   },
})

M.DomainInfo = schema.new({
   id = id.from(_N, "DomainInfo"),
   type = "structure",
   members = {
      DomainName = schema.new({
         id = id.from(_N, "DomainInfo", "DomainName"),
         type = "string",
         name = "DomainName",
         target_id = prelude.String.id,
      }),
      EngineType = schema.new({
         id = id.from(_N, "DomainInfo", "EngineType"),
         type = "string",
         name = "EngineType",
         target_id = prelude.String.id,
      }),
   },
})

M.ListDomainNamesOutput = schema.new({
   id = id.from(_N, "ListDomainNamesResponse"),
   type = "structure",
   members = {
      DomainNames = schema.new({
         id = id.from(_N, "ListDomainNamesOutput", "DomainNames"),
         type = "list",
         name = "DomainNames",
         target_id = prelude.Document.id,
         list_member = M.DomainInfo,
      }),
   },
})

M.ListDomainsForPackageInput = schema.new({
   id = id.from(_N, "ListDomainsForPackageRequest"),
   type = "structure",
   members = {
      PackageID = schema.new({
         id = id.from(_N, "ListDomainsForPackageInput", "PackageID"),
         type = "string",
         name = "PackageID",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListDomainsForPackageInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListDomainsForPackageInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
   },
})

M.ListDomainsForPackageOutput = schema.new({
   id = id.from(_N, "ListDomainsForPackageResponse"),
   type = "structure",
   members = {
      DomainPackageDetailsList = schema.new({
         id = id.from(_N, "ListDomainsForPackageOutput", "DomainPackageDetailsList"),
         type = "list",
         name = "DomainPackageDetailsList",
         target_id = prelude.Document.id,
         list_member = M.DomainPackageDetails,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListDomainsForPackageOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.InsightTimeRange = schema.new({
   id = id.from(_N, "InsightTimeRange"),
   type = "structure",
   members = {
      From = schema.new({
         id = id.from(_N, "InsightTimeRange", "From"),
         type = "long",
         name = "From",
         target_id = prelude.Long.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      To = schema.new({
         id = id.from(_N, "InsightTimeRange", "To"),
         type = "long",
         name = "To",
         target_id = prelude.Long.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ListInsightsInput = schema.new({
   id = id.from(_N, "ListInsightsRequest"),
   type = "structure",
   members = {
      Entity = schema.new({
         id = id.from(_N, "ListInsightsInput", "Entity"),
         type = "structure",
         name = "Entity",
         target_id = id.from(_N, "InsightEntity"),
         target = M.InsightEntity,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      TimeRange = schema.new({
         id = id.from(_N, "ListInsightsInput", "TimeRange"),
         type = "structure",
         name = "TimeRange",
         target_id = id.from(_N, "InsightTimeRange"),
         target = M.InsightTimeRange,
      }),
      SortOrder = schema.new({
         id = id.from(_N, "ListInsightsInput", "SortOrder"),
         type = "string",
         name = "SortOrder",
         target_id = prelude.String.id,
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListInsightsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListInsightsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.Insight = schema.new({
   id = id.from(_N, "Insight"),
   type = "structure",
   members = {
      InsightId = schema.new({
         id = id.from(_N, "Insight", "InsightId"),
         type = "string",
         name = "InsightId",
         target_id = prelude.String.id,
      }),
      DisplayName = schema.new({
         id = id.from(_N, "Insight", "DisplayName"),
         type = "string",
         name = "DisplayName",
         target_id = prelude.String.id,
      }),
      Type = schema.new({
         id = id.from(_N, "Insight", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
      }),
      Priority = schema.new({
         id = id.from(_N, "Insight", "Priority"),
         type = "string",
         name = "Priority",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "Insight", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      CreationTime = schema.new({
         id = id.from(_N, "Insight", "CreationTime"),
         type = "timestamp",
         name = "CreationTime",
         target_id = prelude.Timestamp.id,
      }),
      UpdateTime = schema.new({
         id = id.from(_N, "Insight", "UpdateTime"),
         type = "timestamp",
         name = "UpdateTime",
         target_id = prelude.Timestamp.id,
      }),
      IsExperimental = schema.new({
         id = id.from(_N, "Insight", "IsExperimental"),
         type = "boolean",
         name = "IsExperimental",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.ListInsightsOutput = schema.new({
   id = id.from(_N, "ListInsightsResponse"),
   type = "structure",
   members = {
      Insights = schema.new({
         id = id.from(_N, "ListInsightsOutput", "Insights"),
         type = "list",
         name = "Insights",
         target_id = prelude.Document.id,
         list_member = M.Insight,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListInsightsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListInstanceTypeDetailsInput = schema.new({
   id = id.from(_N, "ListInstanceTypeDetailsRequest"),
   type = "structure",
   members = {
      EngineVersion = schema.new({
         id = id.from(_N, "ListInstanceTypeDetailsInput", "EngineVersion"),
         type = "string",
         name = "EngineVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      DomainName = schema.new({
         id = id.from(_N, "ListInstanceTypeDetailsInput", "DomainName"),
         type = "string",
         name = "DomainName",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "domainName" },
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListInstanceTypeDetailsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListInstanceTypeDetailsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      RetrieveAZs = schema.new({
         id = id.from(_N, "ListInstanceTypeDetailsInput", "RetrieveAZs"),
         type = "boolean",
         name = "RetrieveAZs",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "retrieveAZs" },
         },
      }),
      InstanceType = schema.new({
         id = id.from(_N, "ListInstanceTypeDetailsInput", "InstanceType"),
         type = "string",
         name = "InstanceType",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "instanceType" },
         },
      }),
   },
})

M.InstanceTypeDetails = schema.new({
   id = id.from(_N, "InstanceTypeDetails"),
   type = "structure",
   members = {
      InstanceType = schema.new({
         id = id.from(_N, "InstanceTypeDetails", "InstanceType"),
         type = "string",
         name = "InstanceType",
         target_id = prelude.String.id,
      }),
      EncryptionEnabled = schema.new({
         id = id.from(_N, "InstanceTypeDetails", "EncryptionEnabled"),
         type = "boolean",
         name = "EncryptionEnabled",
         target_id = prelude.Boolean.id,
      }),
      CognitoEnabled = schema.new({
         id = id.from(_N, "InstanceTypeDetails", "CognitoEnabled"),
         type = "boolean",
         name = "CognitoEnabled",
         target_id = prelude.Boolean.id,
      }),
      AppLogsEnabled = schema.new({
         id = id.from(_N, "InstanceTypeDetails", "AppLogsEnabled"),
         type = "boolean",
         name = "AppLogsEnabled",
         target_id = prelude.Boolean.id,
      }),
      AdvancedSecurityEnabled = schema.new({
         id = id.from(_N, "InstanceTypeDetails", "AdvancedSecurityEnabled"),
         type = "boolean",
         name = "AdvancedSecurityEnabled",
         target_id = prelude.Boolean.id,
      }),
      WarmEnabled = schema.new({
         id = id.from(_N, "InstanceTypeDetails", "WarmEnabled"),
         type = "boolean",
         name = "WarmEnabled",
         target_id = prelude.Boolean.id,
      }),
      InstanceRole = schema.new({
         id = id.from(_N, "InstanceTypeDetails", "InstanceRole"),
         type = "list",
         name = "InstanceRole",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      AvailabilityZones = schema.new({
         id = id.from(_N, "InstanceTypeDetails", "AvailabilityZones"),
         type = "list",
         name = "AvailabilityZones",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.ListInstanceTypeDetailsOutput = schema.new({
   id = id.from(_N, "ListInstanceTypeDetailsResponse"),
   type = "structure",
   members = {
      InstanceTypeDetails = schema.new({
         id = id.from(_N, "ListInstanceTypeDetailsOutput", "InstanceTypeDetails"),
         type = "list",
         name = "InstanceTypeDetails",
         target_id = prelude.Document.id,
         list_member = M.InstanceTypeDetails,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListInstanceTypeDetailsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListPackagesForDomainInput = schema.new({
   id = id.from(_N, "ListPackagesForDomainRequest"),
   type = "structure",
   members = {
      DomainName = schema.new({
         id = id.from(_N, "ListPackagesForDomainInput", "DomainName"),
         type = "string",
         name = "DomainName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListPackagesForDomainInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListPackagesForDomainInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
   },
})

M.ListPackagesForDomainOutput = schema.new({
   id = id.from(_N, "ListPackagesForDomainResponse"),
   type = "structure",
   members = {
      DomainPackageDetailsList = schema.new({
         id = id.from(_N, "ListPackagesForDomainOutput", "DomainPackageDetailsList"),
         type = "list",
         name = "DomainPackageDetailsList",
         target_id = prelude.Document.id,
         list_member = M.DomainPackageDetails,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListPackagesForDomainOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListScheduledActionsInput = schema.new({
   id = id.from(_N, "ListScheduledActionsRequest"),
   type = "structure",
   members = {
      DomainName = schema.new({
         id = id.from(_N, "ListScheduledActionsInput", "DomainName"),
         type = "string",
         name = "DomainName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListScheduledActionsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListScheduledActionsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
   },
})

M.ScheduledAction = schema.new({
   id = id.from(_N, "ScheduledAction"),
   type = "structure",
   members = {
      Id = schema.new({
         id = id.from(_N, "ScheduledAction", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Type = schema.new({
         id = id.from(_N, "ScheduledAction", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Severity = schema.new({
         id = id.from(_N, "ScheduledAction", "Severity"),
         type = "string",
         name = "Severity",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ScheduledTime = schema.new({
         id = id.from(_N, "ScheduledAction", "ScheduledTime"),
         type = "long",
         name = "ScheduledTime",
         target_id = prelude.Long.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Description = schema.new({
         id = id.from(_N, "ScheduledAction", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      ScheduledBy = schema.new({
         id = id.from(_N, "ScheduledAction", "ScheduledBy"),
         type = "string",
         name = "ScheduledBy",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "ScheduledAction", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      Mandatory = schema.new({
         id = id.from(_N, "ScheduledAction", "Mandatory"),
         type = "boolean",
         name = "Mandatory",
         target_id = prelude.Boolean.id,
      }),
      Cancellable = schema.new({
         id = id.from(_N, "ScheduledAction", "Cancellable"),
         type = "boolean",
         name = "Cancellable",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.ListScheduledActionsOutput = schema.new({
   id = id.from(_N, "ListScheduledActionsResponse"),
   type = "structure",
   members = {
      ScheduledActions = schema.new({
         id = id.from(_N, "ListScheduledActionsOutput", "ScheduledActions"),
         type = "list",
         name = "ScheduledActions",
         target_id = prelude.Document.id,
         list_member = M.ScheduledAction,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListScheduledActionsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListTagsInput = schema.new({
   id = id.from(_N, "ListTagsRequest"),
   type = "structure",
   members = {
      ARN = schema.new({
         id = id.from(_N, "ListTagsInput", "ARN"),
         type = "string",
         name = "ARN",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "arn" },
         },
      }),
   },
})

M.ListTagsOutput = schema.new({
   id = id.from(_N, "ListTagsResponse"),
   type = "structure",
   members = {
      TagList = schema.new({
         id = id.from(_N, "ListTagsOutput", "TagList"),
         type = "list",
         name = "TagList",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
   },
})

M.ListVersionsInput = schema.new({
   id = id.from(_N, "ListVersionsRequest"),
   type = "structure",
   members = {
      MaxResults = schema.new({
         id = id.from(_N, "ListVersionsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListVersionsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
   },
})

M.ListVersionsOutput = schema.new({
   id = id.from(_N, "ListVersionsResponse"),
   type = "structure",
   members = {
      Versions = schema.new({
         id = id.from(_N, "ListVersionsOutput", "Versions"),
         type = "list",
         name = "Versions",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListVersionsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListVpcEndpointAccessInput = schema.new({
   id = id.from(_N, "ListVpcEndpointAccessRequest"),
   type = "structure",
   members = {
      DomainName = schema.new({
         id = id.from(_N, "ListVpcEndpointAccessInput", "DomainName"),
         type = "string",
         name = "DomainName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListVpcEndpointAccessInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
   },
})

M.ListVpcEndpointAccessOutput = schema.new({
   id = id.from(_N, "ListVpcEndpointAccessResponse"),
   type = "structure",
   members = {
      AuthorizedPrincipalList = schema.new({
         id = id.from(_N, "ListVpcEndpointAccessOutput", "AuthorizedPrincipalList"),
         type = "list",
         name = "AuthorizedPrincipalList",
         target_id = prelude.Document.id,
         list_member = M.AuthorizedPrincipal,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListVpcEndpointAccessOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ListVpcEndpointsInput = schema.new({
   id = id.from(_N, "ListVpcEndpointsRequest"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListVpcEndpointsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
   },
})

M.ListVpcEndpointsOutput = schema.new({
   id = id.from(_N, "ListVpcEndpointsResponse"),
   type = "structure",
   members = {
      VpcEndpointSummaryList = schema.new({
         id = id.from(_N, "ListVpcEndpointsOutput", "VpcEndpointSummaryList"),
         type = "list",
         name = "VpcEndpointSummaryList",
         target_id = prelude.Document.id,
         list_member = M.VpcEndpointSummary,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListVpcEndpointsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ListVpcEndpointsForDomainInput = schema.new({
   id = id.from(_N, "ListVpcEndpointsForDomainRequest"),
   type = "structure",
   members = {
      DomainName = schema.new({
         id = id.from(_N, "ListVpcEndpointsForDomainInput", "DomainName"),
         type = "string",
         name = "DomainName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListVpcEndpointsForDomainInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
   },
})

M.ListVpcEndpointsForDomainOutput = schema.new({
   id = id.from(_N, "ListVpcEndpointsForDomainResponse"),
   type = "structure",
   members = {
      VpcEndpointSummaryList = schema.new({
         id = id.from(_N, "ListVpcEndpointsForDomainOutput", "VpcEndpointSummaryList"),
         type = "list",
         name = "VpcEndpointSummaryList",
         target_id = prelude.Document.id,
         list_member = M.VpcEndpointSummary,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListVpcEndpointsForDomainOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.PurchaseReservedInstanceOfferingInput = schema.new({
   id = id.from(_N, "PurchaseReservedInstanceOfferingRequest"),
   type = "structure",
   members = {
      ReservedInstanceOfferingId = schema.new({
         id = id.from(_N, "PurchaseReservedInstanceOfferingInput", "ReservedInstanceOfferingId"),
         type = "string",
         name = "ReservedInstanceOfferingId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ReservationName = schema.new({
         id = id.from(_N, "PurchaseReservedInstanceOfferingInput", "ReservationName"),
         type = "string",
         name = "ReservationName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      InstanceCount = schema.new({
         id = id.from(_N, "PurchaseReservedInstanceOfferingInput", "InstanceCount"),
         type = "integer",
         name = "InstanceCount",
         target_id = prelude.Integer.id,
      }),
   },
})

M.PurchaseReservedInstanceOfferingOutput = schema.new({
   id = id.from(_N, "PurchaseReservedInstanceOfferingResponse"),
   type = "structure",
   members = {
      ReservedInstanceId = schema.new({
         id = id.from(_N, "PurchaseReservedInstanceOfferingOutput", "ReservedInstanceId"),
         type = "string",
         name = "ReservedInstanceId",
         target_id = prelude.String.id,
      }),
      ReservationName = schema.new({
         id = id.from(_N, "PurchaseReservedInstanceOfferingOutput", "ReservationName"),
         type = "string",
         name = "ReservationName",
         target_id = prelude.String.id,
      }),
   },
})

M.PutDefaultApplicationSettingInput = schema.new({
   id = id.from(_N, "PutDefaultApplicationSettingRequest"),
   type = "structure",
   members = {
      applicationArn = schema.new({
         id = id.from(_N, "PutDefaultApplicationSettingInput", "applicationArn"),
         type = "string",
         name = "applicationArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      setAsDefault = schema.new({
         id = id.from(_N, "PutDefaultApplicationSettingInput", "setAsDefault"),
         type = "boolean",
         name = "setAsDefault",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.PutDefaultApplicationSettingOutput = schema.new({
   id = id.from(_N, "PutDefaultApplicationSettingResponse"),
   type = "structure",
   members = {
      applicationArn = schema.new({
         id = id.from(_N, "PutDefaultApplicationSettingOutput", "applicationArn"),
         type = "string",
         name = "applicationArn",
         target_id = prelude.String.id,
      }),
   },
})

M.CapabilityBaseRequestConfig = schema.new({
   id = id.from(_N, "CapabilityBaseRequestConfig"),
   type = "union",
   members = {
      aiConfig = schema.new({
         id = id.from(_N, "CapabilityBaseRequestConfig", "aiConfig"),
         type = "structure",
         name = "aiConfig",
         target_id = id.from(_N, "AIConfig"),
         target = M.AIConfig,
      }),
   },
})

M.RegisterCapabilityInput = schema.new({
   id = id.from(_N, "RegisterCapabilityRequest"),
   type = "structure",
   members = {
      applicationId = schema.new({
         id = id.from(_N, "RegisterCapabilityInput", "applicationId"),
         type = "string",
         name = "applicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      capabilityName = schema.new({
         id = id.from(_N, "RegisterCapabilityInput", "capabilityName"),
         type = "string",
         name = "capabilityName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      capabilityConfig = schema.new({
         id = id.from(_N, "RegisterCapabilityInput", "capabilityConfig"),
         type = "union",
         name = "capabilityConfig",
         target_id = id.from(_N, "CapabilityBaseRequestConfig"),
         target = M.CapabilityBaseRequestConfig,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CapabilityBaseResponseConfig = schema.new({
   id = id.from(_N, "CapabilityBaseResponseConfig"),
   type = "union",
   members = {
      aiConfig = schema.new({
         id = id.from(_N, "CapabilityBaseResponseConfig", "aiConfig"),
         type = "structure",
         name = "aiConfig",
         target_id = id.from(_N, "AIConfig"),
         target = M.AIConfig,
      }),
   },
})

M.RegisterCapabilityOutput = schema.new({
   id = id.from(_N, "RegisterCapabilityResponse"),
   type = "structure",
   members = {
      capabilityName = schema.new({
         id = id.from(_N, "RegisterCapabilityOutput", "capabilityName"),
         type = "string",
         name = "capabilityName",
         target_id = prelude.String.id,
      }),
      applicationId = schema.new({
         id = id.from(_N, "RegisterCapabilityOutput", "applicationId"),
         type = "string",
         name = "applicationId",
         target_id = prelude.String.id,
      }),
      status = schema.new({
         id = id.from(_N, "RegisterCapabilityOutput", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
      capabilityConfig = schema.new({
         id = id.from(_N, "RegisterCapabilityOutput", "capabilityConfig"),
         type = "union",
         name = "capabilityConfig",
         target_id = id.from(_N, "CapabilityBaseResponseConfig"),
         target = M.CapabilityBaseResponseConfig,
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

M.RejectInboundConnectionInput = schema.new({
   id = id.from(_N, "RejectInboundConnectionRequest"),
   type = "structure",
   members = {
      ConnectionId = schema.new({
         id = id.from(_N, "RejectInboundConnectionInput", "ConnectionId"),
         type = "string",
         name = "ConnectionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.RejectInboundConnectionOutput = schema.new({
   id = id.from(_N, "RejectInboundConnectionResponse"),
   type = "structure",
   members = {
      Connection = schema.new({
         id = id.from(_N, "RejectInboundConnectionOutput", "Connection"),
         type = "structure",
         name = "Connection",
         target_id = id.from(_N, "InboundConnection"),
         target = M.InboundConnection,
      }),
   },
})

M.RemoveTagsInput = schema.new({
   id = id.from(_N, "RemoveTagsRequest"),
   type = "structure",
   members = {
      ARN = schema.new({
         id = id.from(_N, "RemoveTagsInput", "ARN"),
         type = "string",
         name = "ARN",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      TagKeys = schema.new({
         id = id.from(_N, "RemoveTagsInput", "TagKeys"),
         type = "list",
         name = "TagKeys",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.RemoveTagsOutput = prelude.Unit

M.RevokeVpcEndpointAccessInput = schema.new({
   id = id.from(_N, "RevokeVpcEndpointAccessRequest"),
   type = "structure",
   members = {
      DomainName = schema.new({
         id = id.from(_N, "RevokeVpcEndpointAccessInput", "DomainName"),
         type = "string",
         name = "DomainName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Account = schema.new({
         id = id.from(_N, "RevokeVpcEndpointAccessInput", "Account"),
         type = "string",
         name = "Account",
         target_id = prelude.String.id,
      }),
      Service = schema.new({
         id = id.from(_N, "RevokeVpcEndpointAccessInput", "Service"),
         type = "string",
         name = "Service",
         target_id = prelude.String.id,
      }),
      ServiceOptions = schema.new({
         id = id.from(_N, "RevokeVpcEndpointAccessInput", "ServiceOptions"),
         type = "structure",
         name = "ServiceOptions",
         target_id = id.from(_N, "ServiceOptions"),
         target = M.ServiceOptions,
      }),
   },
})

M.RevokeVpcEndpointAccessOutput = schema.new({
   id = id.from(_N, "RevokeVpcEndpointAccessResponse"),
   type = "structure",
})

M.RollbackServiceSoftwareUpdateInput = schema.new({
   id = id.from(_N, "RollbackServiceSoftwareUpdateRequest"),
   type = "structure",
   members = {
      DomainName = schema.new({
         id = id.from(_N, "RollbackServiceSoftwareUpdateInput", "DomainName"),
         type = "string",
         name = "DomainName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.RollbackServiceSoftwareOptions = schema.new({
   id = id.from(_N, "RollbackServiceSoftwareOptions"),
   type = "structure",
   members = {
      CurrentVersion = schema.new({
         id = id.from(_N, "RollbackServiceSoftwareOptions", "CurrentVersion"),
         type = "string",
         name = "CurrentVersion",
         target_id = prelude.String.id,
      }),
      NewVersion = schema.new({
         id = id.from(_N, "RollbackServiceSoftwareOptions", "NewVersion"),
         type = "string",
         name = "NewVersion",
         target_id = prelude.String.id,
      }),
      RollbackAvailable = schema.new({
         id = id.from(_N, "RollbackServiceSoftwareOptions", "RollbackAvailable"),
         type = "boolean",
         name = "RollbackAvailable",
         target_id = prelude.Boolean.id,
      }),
      Description = schema.new({
         id = id.from(_N, "RollbackServiceSoftwareOptions", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
   },
})

M.RollbackServiceSoftwareUpdateOutput = schema.new({
   id = id.from(_N, "RollbackServiceSoftwareUpdateResponse"),
   type = "structure",
   members = {
      RollbackServiceSoftwareOptions = schema.new({
         id = id.from(_N, "RollbackServiceSoftwareUpdateOutput", "RollbackServiceSoftwareOptions"),
         type = "structure",
         name = "RollbackServiceSoftwareOptions",
         target_id = id.from(_N, "RollbackServiceSoftwareOptions"),
         target = M.RollbackServiceSoftwareOptions,
      }),
   },
})

M.StartDomainMaintenanceInput = schema.new({
   id = id.from(_N, "StartDomainMaintenanceRequest"),
   type = "structure",
   members = {
      DomainName = schema.new({
         id = id.from(_N, "StartDomainMaintenanceInput", "DomainName"),
         type = "string",
         name = "DomainName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Action = schema.new({
         id = id.from(_N, "StartDomainMaintenanceInput", "Action"),
         type = "string",
         name = "Action",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      NodeId = schema.new({
         id = id.from(_N, "StartDomainMaintenanceInput", "NodeId"),
         type = "string",
         name = "NodeId",
         target_id = prelude.String.id,
      }),
   },
})

M.StartDomainMaintenanceOutput = schema.new({
   id = id.from(_N, "StartDomainMaintenanceResponse"),
   type = "structure",
   members = {
      MaintenanceId = schema.new({
         id = id.from(_N, "StartDomainMaintenanceOutput", "MaintenanceId"),
         type = "string",
         name = "MaintenanceId",
         target_id = prelude.String.id,
      }),
   },
})

M.StartServiceSoftwareUpdateInput = schema.new({
   id = id.from(_N, "StartServiceSoftwareUpdateRequest"),
   type = "structure",
   members = {
      DomainName = schema.new({
         id = id.from(_N, "StartServiceSoftwareUpdateInput", "DomainName"),
         type = "string",
         name = "DomainName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ScheduleAt = schema.new({
         id = id.from(_N, "StartServiceSoftwareUpdateInput", "ScheduleAt"),
         type = "string",
         name = "ScheduleAt",
         target_id = prelude.String.id,
      }),
      DesiredStartTime = schema.new({
         id = id.from(_N, "StartServiceSoftwareUpdateInput", "DesiredStartTime"),
         type = "long",
         name = "DesiredStartTime",
         target_id = prelude.Long.id,
      }),
   },
})

M.StartServiceSoftwareUpdateOutput = schema.new({
   id = id.from(_N, "StartServiceSoftwareUpdateResponse"),
   type = "structure",
   members = {
      ServiceSoftwareOptions = schema.new({
         id = id.from(_N, "StartServiceSoftwareUpdateOutput", "ServiceSoftwareOptions"),
         type = "structure",
         name = "ServiceSoftwareOptions",
         target_id = id.from(_N, "ServiceSoftwareOptions"),
         target = M.ServiceSoftwareOptions,
      }),
   },
})

M.UpdateApplicationInput = schema.new({
   id = id.from(_N, "UpdateApplicationRequest"),
   type = "structure",
   members = {
      id = schema.new({
         id = id.from(_N, "UpdateApplicationInput", "id"),
         type = "string",
         name = "id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      dataSources = schema.new({
         id = id.from(_N, "UpdateApplicationInput", "dataSources"),
         type = "list",
         name = "dataSources",
         target_id = prelude.Document.id,
         list_member = M.DataSource,
      }),
      appConfigs = schema.new({
         id = id.from(_N, "UpdateApplicationInput", "appConfigs"),
         type = "list",
         name = "appConfigs",
         target_id = prelude.Document.id,
         list_member = M.AppConfig,
      }),
   },
})

M.UpdateApplicationOutput = schema.new({
   id = id.from(_N, "UpdateApplicationResponse"),
   type = "structure",
   members = {
      id = schema.new({
         id = id.from(_N, "UpdateApplicationOutput", "id"),
         type = "string",
         name = "id",
         target_id = prelude.String.id,
      }),
      name = schema.new({
         id = id.from(_N, "UpdateApplicationOutput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      arn = schema.new({
         id = id.from(_N, "UpdateApplicationOutput", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
      }),
      dataSources = schema.new({
         id = id.from(_N, "UpdateApplicationOutput", "dataSources"),
         type = "list",
         name = "dataSources",
         target_id = prelude.Document.id,
         list_member = M.DataSource,
      }),
      iamIdentityCenterOptions = schema.new({
         id = id.from(_N, "UpdateApplicationOutput", "iamIdentityCenterOptions"),
         type = "structure",
         name = "iamIdentityCenterOptions",
         target_id = id.from(_N, "IamIdentityCenterOptions"),
         target = M.IamIdentityCenterOptions,
      }),
      appConfigs = schema.new({
         id = id.from(_N, "UpdateApplicationOutput", "appConfigs"),
         type = "list",
         name = "appConfigs",
         target_id = prelude.Document.id,
         list_member = M.AppConfig,
      }),
      createdAt = schema.new({
         id = id.from(_N, "UpdateApplicationOutput", "createdAt"),
         type = "timestamp",
         name = "createdAt",
         target_id = prelude.Timestamp.id,
      }),
      lastUpdatedAt = schema.new({
         id = id.from(_N, "UpdateApplicationOutput", "lastUpdatedAt"),
         type = "timestamp",
         name = "lastUpdatedAt",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.UpdateDataSourceInput = schema.new({
   id = id.from(_N, "UpdateDataSourceRequest"),
   type = "structure",
   members = {
      DomainName = schema.new({
         id = id.from(_N, "UpdateDataSourceInput", "DomainName"),
         type = "string",
         name = "DomainName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Name = schema.new({
         id = id.from(_N, "UpdateDataSourceInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      DataSourceType = schema.new({
         id = id.from(_N, "UpdateDataSourceInput", "DataSourceType"),
         type = "union",
         name = "DataSourceType",
         target_id = id.from(_N, "DataSourceType"),
         target = M.DataSourceType,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Description = schema.new({
         id = id.from(_N, "UpdateDataSourceInput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "UpdateDataSourceInput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateDataSourceOutput = schema.new({
   id = id.from(_N, "UpdateDataSourceResponse"),
   type = "structure",
   members = {
      Message = schema.new({
         id = id.from(_N, "UpdateDataSourceOutput", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateDirectQueryDataSourceInput = schema.new({
   id = id.from(_N, "UpdateDirectQueryDataSourceRequest"),
   type = "structure",
   members = {
      DataSourceName = schema.new({
         id = id.from(_N, "UpdateDirectQueryDataSourceInput", "DataSourceName"),
         type = "string",
         name = "DataSourceName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      DataSourceType = schema.new({
         id = id.from(_N, "UpdateDirectQueryDataSourceInput", "DataSourceType"),
         type = "union",
         name = "DataSourceType",
         target_id = id.from(_N, "DirectQueryDataSourceType"),
         target = M.DirectQueryDataSourceType,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Description = schema.new({
         id = id.from(_N, "UpdateDirectQueryDataSourceInput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      OpenSearchArns = schema.new({
         id = id.from(_N, "UpdateDirectQueryDataSourceInput", "OpenSearchArns"),
         type = "list",
         name = "OpenSearchArns",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      DataSourceAccessPolicy = schema.new({
         id = id.from(_N, "UpdateDirectQueryDataSourceInput", "DataSourceAccessPolicy"),
         type = "string",
         name = "DataSourceAccessPolicy",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateDirectQueryDataSourceOutput = schema.new({
   id = id.from(_N, "UpdateDirectQueryDataSourceResponse"),
   type = "structure",
   members = {
      DataSourceArn = schema.new({
         id = id.from(_N, "UpdateDirectQueryDataSourceOutput", "DataSourceArn"),
         type = "string",
         name = "DataSourceArn",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateDomainConfigInput = schema.new({
   id = id.from(_N, "UpdateDomainConfigRequest"),
   type = "structure",
   members = {
      DomainName = schema.new({
         id = id.from(_N, "UpdateDomainConfigInput", "DomainName"),
         type = "string",
         name = "DomainName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ClusterConfig = schema.new({
         id = id.from(_N, "UpdateDomainConfigInput", "ClusterConfig"),
         type = "structure",
         name = "ClusterConfig",
         target_id = id.from(_N, "ClusterConfig"),
         target = M.ClusterConfig,
      }),
      EBSOptions = schema.new({
         id = id.from(_N, "UpdateDomainConfigInput", "EBSOptions"),
         type = "structure",
         name = "EBSOptions",
         target_id = id.from(_N, "EBSOptions"),
         target = M.EBSOptions,
      }),
      SnapshotOptions = schema.new({
         id = id.from(_N, "UpdateDomainConfigInput", "SnapshotOptions"),
         type = "structure",
         name = "SnapshotOptions",
         target_id = id.from(_N, "SnapshotOptions"),
         target = M.SnapshotOptions,
      }),
      VPCOptions = schema.new({
         id = id.from(_N, "UpdateDomainConfigInput", "VPCOptions"),
         type = "structure",
         name = "VPCOptions",
         target_id = id.from(_N, "VPCOptions"),
         target = M.VPCOptions,
      }),
      CognitoOptions = schema.new({
         id = id.from(_N, "UpdateDomainConfigInput", "CognitoOptions"),
         type = "structure",
         name = "CognitoOptions",
         target_id = id.from(_N, "CognitoOptions"),
         target = M.CognitoOptions,
      }),
      AdvancedOptions = schema.new({
         id = id.from(_N, "UpdateDomainConfigInput", "AdvancedOptions"),
         type = "map",
         name = "AdvancedOptions",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      AccessPolicies = schema.new({
         id = id.from(_N, "UpdateDomainConfigInput", "AccessPolicies"),
         type = "string",
         name = "AccessPolicies",
         target_id = prelude.String.id,
      }),
      IPAddressType = schema.new({
         id = id.from(_N, "UpdateDomainConfigInput", "IPAddressType"),
         type = "string",
         name = "IPAddressType",
         target_id = prelude.String.id,
      }),
      LogPublishingOptions = schema.new({
         id = id.from(_N, "UpdateDomainConfigInput", "LogPublishingOptions"),
         type = "map",
         name = "LogPublishingOptions",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.LogPublishingOption,
      }),
      EncryptionAtRestOptions = schema.new({
         id = id.from(_N, "UpdateDomainConfigInput", "EncryptionAtRestOptions"),
         type = "structure",
         name = "EncryptionAtRestOptions",
         target_id = id.from(_N, "EncryptionAtRestOptions"),
         target = M.EncryptionAtRestOptions,
      }),
      DomainEndpointOptions = schema.new({
         id = id.from(_N, "UpdateDomainConfigInput", "DomainEndpointOptions"),
         type = "structure",
         name = "DomainEndpointOptions",
         target_id = id.from(_N, "DomainEndpointOptions"),
         target = M.DomainEndpointOptions,
      }),
      NodeToNodeEncryptionOptions = schema.new({
         id = id.from(_N, "UpdateDomainConfigInput", "NodeToNodeEncryptionOptions"),
         type = "structure",
         name = "NodeToNodeEncryptionOptions",
         target_id = id.from(_N, "NodeToNodeEncryptionOptions"),
         target = M.NodeToNodeEncryptionOptions,
      }),
      AdvancedSecurityOptions = schema.new({
         id = id.from(_N, "UpdateDomainConfigInput", "AdvancedSecurityOptions"),
         type = "structure",
         name = "AdvancedSecurityOptions",
         target_id = id.from(_N, "AdvancedSecurityOptionsInput"),
         target = M.AdvancedSecurityOptionsInput,
      }),
      IdentityCenterOptions = schema.new({
         id = id.from(_N, "UpdateDomainConfigInput", "IdentityCenterOptions"),
         type = "structure",
         name = "IdentityCenterOptions",
         target_id = id.from(_N, "IdentityCenterOptionsInput"),
         target = M.IdentityCenterOptionsInput,
      }),
      AutoTuneOptions = schema.new({
         id = id.from(_N, "UpdateDomainConfigInput", "AutoTuneOptions"),
         type = "structure",
         name = "AutoTuneOptions",
         target_id = id.from(_N, "AutoTuneOptions"),
         target = M.AutoTuneOptions,
      }),
      DryRun = schema.new({
         id = id.from(_N, "UpdateDomainConfigInput", "DryRun"),
         type = "boolean",
         name = "DryRun",
         target_id = prelude.Boolean.id,
      }),
      DryRunMode = schema.new({
         id = id.from(_N, "UpdateDomainConfigInput", "DryRunMode"),
         type = "string",
         name = "DryRunMode",
         target_id = prelude.String.id,
      }),
      OffPeakWindowOptions = schema.new({
         id = id.from(_N, "UpdateDomainConfigInput", "OffPeakWindowOptions"),
         type = "structure",
         name = "OffPeakWindowOptions",
         target_id = id.from(_N, "OffPeakWindowOptions"),
         target = M.OffPeakWindowOptions,
      }),
      SoftwareUpdateOptions = schema.new({
         id = id.from(_N, "UpdateDomainConfigInput", "SoftwareUpdateOptions"),
         type = "structure",
         name = "SoftwareUpdateOptions",
         target_id = id.from(_N, "SoftwareUpdateOptions"),
         target = M.SoftwareUpdateOptions,
      }),
      AIMLOptions = schema.new({
         id = id.from(_N, "UpdateDomainConfigInput", "AIMLOptions"),
         type = "structure",
         name = "AIMLOptions",
         target_id = id.from(_N, "AIMLOptionsInput"),
         target = M.AIMLOptionsInput,
      }),
      DeploymentStrategyOptions = schema.new({
         id = id.from(_N, "UpdateDomainConfigInput", "DeploymentStrategyOptions"),
         type = "structure",
         name = "DeploymentStrategyOptions",
         target_id = id.from(_N, "DeploymentStrategyOptions"),
         target = M.DeploymentStrategyOptions,
      }),
   },
})

M.UpdateDomainConfigOutput = schema.new({
   id = id.from(_N, "UpdateDomainConfigResponse"),
   type = "structure",
   members = {
      DomainConfig = schema.new({
         id = id.from(_N, "UpdateDomainConfigOutput", "DomainConfig"),
         type = "structure",
         name = "DomainConfig",
         target_id = id.from(_N, "DomainConfig"),
         target = M.DomainConfig,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DryRunResults = schema.new({
         id = id.from(_N, "UpdateDomainConfigOutput", "DryRunResults"),
         type = "structure",
         name = "DryRunResults",
         target_id = id.from(_N, "DryRunResults"),
         target = M.DryRunResults,
      }),
      DryRunProgressStatus = schema.new({
         id = id.from(_N, "UpdateDomainConfigOutput", "DryRunProgressStatus"),
         type = "structure",
         name = "DryRunProgressStatus",
         target_id = id.from(_N, "DryRunProgressStatus"),
         target = M.DryRunProgressStatus,
      }),
   },
})

M.UpdateIndexInput = schema.new({
   id = id.from(_N, "UpdateIndexRequest"),
   type = "structure",
   members = {
      DomainName = schema.new({
         id = id.from(_N, "UpdateIndexInput", "DomainName"),
         type = "string",
         name = "DomainName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      IndexName = schema.new({
         id = id.from(_N, "UpdateIndexInput", "IndexName"),
         type = "string",
         name = "IndexName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      IndexSchema = schema.new({
         id = id.from(_N, "UpdateIndexInput", "IndexSchema"),
         type = "document",
         name = "IndexSchema",
         target_id = prelude.Document.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UpdateIndexOutput = schema.new({
   id = id.from(_N, "UpdateIndexResponse"),
   type = "structure",
   members = {
      Status = schema.new({
         id = id.from(_N, "UpdateIndexOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UpdatePackageInput = schema.new({
   id = id.from(_N, "UpdatePackageRequest"),
   type = "structure",
   members = {
      PackageID = schema.new({
         id = id.from(_N, "UpdatePackageInput", "PackageID"),
         type = "string",
         name = "PackageID",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      PackageSource = schema.new({
         id = id.from(_N, "UpdatePackageInput", "PackageSource"),
         type = "structure",
         name = "PackageSource",
         target_id = id.from(_N, "PackageSource"),
         target = M.PackageSource,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      PackageDescription = schema.new({
         id = id.from(_N, "UpdatePackageInput", "PackageDescription"),
         type = "string",
         name = "PackageDescription",
         target_id = prelude.String.id,
      }),
      CommitMessage = schema.new({
         id = id.from(_N, "UpdatePackageInput", "CommitMessage"),
         type = "string",
         name = "CommitMessage",
         target_id = prelude.String.id,
      }),
      PackageConfiguration = schema.new({
         id = id.from(_N, "UpdatePackageInput", "PackageConfiguration"),
         type = "structure",
         name = "PackageConfiguration",
         target_id = id.from(_N, "PackageConfiguration"),
         target = M.PackageConfiguration,
      }),
      PackageEncryptionOptions = schema.new({
         id = id.from(_N, "UpdatePackageInput", "PackageEncryptionOptions"),
         type = "structure",
         name = "PackageEncryptionOptions",
         target_id = id.from(_N, "PackageEncryptionOptions"),
         target = M.PackageEncryptionOptions,
      }),
   },
})

M.UpdatePackageOutput = schema.new({
   id = id.from(_N, "UpdatePackageResponse"),
   type = "structure",
   members = {
      PackageDetails = schema.new({
         id = id.from(_N, "UpdatePackageOutput", "PackageDetails"),
         type = "structure",
         name = "PackageDetails",
         target_id = id.from(_N, "PackageDetails"),
         target = M.PackageDetails,
      }),
   },
})

M.UpdatePackageScopeInput = schema.new({
   id = id.from(_N, "UpdatePackageScopeRequest"),
   type = "structure",
   members = {
      PackageID = schema.new({
         id = id.from(_N, "UpdatePackageScopeInput", "PackageID"),
         type = "string",
         name = "PackageID",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Operation = schema.new({
         id = id.from(_N, "UpdatePackageScopeInput", "Operation"),
         type = "string",
         name = "Operation",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      PackageUserList = schema.new({
         id = id.from(_N, "UpdatePackageScopeInput", "PackageUserList"),
         type = "list",
         name = "PackageUserList",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UpdatePackageScopeOutput = schema.new({
   id = id.from(_N, "UpdatePackageScopeResponse"),
   type = "structure",
   members = {
      PackageID = schema.new({
         id = id.from(_N, "UpdatePackageScopeOutput", "PackageID"),
         type = "string",
         name = "PackageID",
         target_id = prelude.String.id,
      }),
      Operation = schema.new({
         id = id.from(_N, "UpdatePackageScopeOutput", "Operation"),
         type = "string",
         name = "Operation",
         target_id = prelude.String.id,
      }),
      PackageUserList = schema.new({
         id = id.from(_N, "UpdatePackageScopeOutput", "PackageUserList"),
         type = "list",
         name = "PackageUserList",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.SlotNotAvailableException = schema.new({
   id = id.from(_N, "SlotNotAvailableException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      SlotSuggestions = schema.new({
         id = id.from(_N, "SlotNotAvailableException", "SlotSuggestions"),
         type = "list",
         name = "SlotSuggestions",
         target_id = prelude.Document.id,
         list_member = prelude.Long,
      }),
      message = schema.new({
         id = id.from(_N, "SlotNotAvailableException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateScheduledActionInput = schema.new({
   id = id.from(_N, "UpdateScheduledActionRequest"),
   type = "structure",
   members = {
      DomainName = schema.new({
         id = id.from(_N, "UpdateScheduledActionInput", "DomainName"),
         type = "string",
         name = "DomainName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ActionID = schema.new({
         id = id.from(_N, "UpdateScheduledActionInput", "ActionID"),
         type = "string",
         name = "ActionID",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ActionType = schema.new({
         id = id.from(_N, "UpdateScheduledActionInput", "ActionType"),
         type = "string",
         name = "ActionType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ScheduleAt = schema.new({
         id = id.from(_N, "UpdateScheduledActionInput", "ScheduleAt"),
         type = "string",
         name = "ScheduleAt",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DesiredStartTime = schema.new({
         id = id.from(_N, "UpdateScheduledActionInput", "DesiredStartTime"),
         type = "long",
         name = "DesiredStartTime",
         target_id = prelude.Long.id,
      }),
   },
})

M.UpdateScheduledActionOutput = schema.new({
   id = id.from(_N, "UpdateScheduledActionResponse"),
   type = "structure",
   members = {
      ScheduledAction = schema.new({
         id = id.from(_N, "UpdateScheduledActionOutput", "ScheduledAction"),
         type = "structure",
         name = "ScheduledAction",
         target_id = id.from(_N, "ScheduledAction"),
         target = M.ScheduledAction,
      }),
   },
})

M.UpdateVpcEndpointInput = schema.new({
   id = id.from(_N, "UpdateVpcEndpointRequest"),
   type = "structure",
   members = {
      VpcEndpointId = schema.new({
         id = id.from(_N, "UpdateVpcEndpointInput", "VpcEndpointId"),
         type = "string",
         name = "VpcEndpointId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      VpcOptions = schema.new({
         id = id.from(_N, "UpdateVpcEndpointInput", "VpcOptions"),
         type = "structure",
         name = "VpcOptions",
         target_id = id.from(_N, "VPCOptions"),
         target = M.VPCOptions,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UpdateVpcEndpointOutput = schema.new({
   id = id.from(_N, "UpdateVpcEndpointResponse"),
   type = "structure",
   members = {
      VpcEndpoint = schema.new({
         id = id.from(_N, "UpdateVpcEndpointOutput", "VpcEndpoint"),
         type = "structure",
         name = "VpcEndpoint",
         target_id = id.from(_N, "VpcEndpoint"),
         target = M.VpcEndpoint,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UpgradeDomainInput = schema.new({
   id = id.from(_N, "UpgradeDomainRequest"),
   type = "structure",
   members = {
      DomainName = schema.new({
         id = id.from(_N, "UpgradeDomainInput", "DomainName"),
         type = "string",
         name = "DomainName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      TargetVersion = schema.new({
         id = id.from(_N, "UpgradeDomainInput", "TargetVersion"),
         type = "string",
         name = "TargetVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      PerformCheckOnly = schema.new({
         id = id.from(_N, "UpgradeDomainInput", "PerformCheckOnly"),
         type = "boolean",
         name = "PerformCheckOnly",
         target_id = prelude.Boolean.id,
      }),
      AdvancedOptions = schema.new({
         id = id.from(_N, "UpgradeDomainInput", "AdvancedOptions"),
         type = "map",
         name = "AdvancedOptions",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.UpgradeDomainOutput = schema.new({
   id = id.from(_N, "UpgradeDomainResponse"),
   type = "structure",
   members = {
      UpgradeId = schema.new({
         id = id.from(_N, "UpgradeDomainOutput", "UpgradeId"),
         type = "string",
         name = "UpgradeId",
         target_id = prelude.String.id,
      }),
      DomainName = schema.new({
         id = id.from(_N, "UpgradeDomainOutput", "DomainName"),
         type = "string",
         name = "DomainName",
         target_id = prelude.String.id,
      }),
      TargetVersion = schema.new({
         id = id.from(_N, "UpgradeDomainOutput", "TargetVersion"),
         type = "string",
         name = "TargetVersion",
         target_id = prelude.String.id,
      }),
      PerformCheckOnly = schema.new({
         id = id.from(_N, "UpgradeDomainOutput", "PerformCheckOnly"),
         type = "boolean",
         name = "PerformCheckOnly",
         target_id = prelude.Boolean.id,
      }),
      AdvancedOptions = schema.new({
         id = id.from(_N, "UpgradeDomainOutput", "AdvancedOptions"),
         type = "map",
         name = "AdvancedOptions",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      ChangeProgressDetails = schema.new({
         id = id.from(_N, "UpgradeDomainOutput", "ChangeProgressDetails"),
         type = "structure",
         name = "ChangeProgressDetails",
         target_id = id.from(_N, "ChangeProgressDetails"),
         target = M.ChangeProgressDetails,
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
   id = id.from("com.amazonaws.opensearch", "AmazonOpenSearchService"),
   version = "2021-01-01",
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AcceptInboundConnection = schema.operation({
   id = id.from("com.amazonaws.opensearch", "AcceptInboundConnection"),
   input = M.AcceptInboundConnectionInput,
   output = M.AcceptInboundConnectionOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/2021-01-01/opensearch/cc/inboundConnection/{ConnectionId}/accept" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AddDataSource = schema.operation({
   id = id.from("com.amazonaws.opensearch", "AddDataSource"),
   input = M.AddDataSourceInput,
   output = M.AddDataSourceOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/2021-01-01/opensearch/domain/{DomainName}/dataSource" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AddDirectQueryDataSource = schema.operation({
   id = id.from("com.amazonaws.opensearch", "AddDirectQueryDataSource"),
   input = M.AddDirectQueryDataSourceInput,
   output = M.AddDirectQueryDataSourceOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/2021-01-01/opensearch/directQueryDataSource" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AddTags = schema.operation({
   id = id.from("com.amazonaws.opensearch", "AddTags"),
   input = M.AddTagsInput,
   output = M.AddTagsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/2021-01-01/tags" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AssociatePackage = schema.operation({
   id = id.from("com.amazonaws.opensearch", "AssociatePackage"),
   input = M.AssociatePackageInput,
   output = M.AssociatePackageOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/2021-01-01/packages/associate/{PackageID}/{DomainName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AssociatePackages = schema.operation({
   id = id.from("com.amazonaws.opensearch", "AssociatePackages"),
   input = M.AssociatePackagesInput,
   output = M.AssociatePackagesOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/2021-01-01/packages/associateMultiple" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AuthorizeVpcEndpointAccess = schema.operation({
   id = id.from("com.amazonaws.opensearch", "AuthorizeVpcEndpointAccess"),
   input = M.AuthorizeVpcEndpointAccessInput,
   output = M.AuthorizeVpcEndpointAccessOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/2021-01-01/opensearch/domain/{DomainName}/authorizeVpcEndpointAccess" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CancelDomainConfigChange = schema.operation({
   id = id.from("com.amazonaws.opensearch", "CancelDomainConfigChange"),
   input = M.CancelDomainConfigChangeInput,
   output = M.CancelDomainConfigChangeOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/2021-01-01/opensearch/domain/{DomainName}/config/cancel" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CancelServiceSoftwareUpdate = schema.operation({
   id = id.from("com.amazonaws.opensearch", "CancelServiceSoftwareUpdate"),
   input = M.CancelServiceSoftwareUpdateInput,
   output = M.CancelServiceSoftwareUpdateOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/2021-01-01/opensearch/serviceSoftwareUpdate/cancel" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateApplication = schema.operation({
   id = id.from("com.amazonaws.opensearch", "CreateApplication"),
   input = M.CreateApplicationInput,
   output = M.CreateApplicationOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/2021-01-01/opensearch/application" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateDomain = schema.operation({
   id = id.from("com.amazonaws.opensearch", "CreateDomain"),
   input = M.CreateDomainInput,
   output = M.CreateDomainOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/2021-01-01/opensearch/domain" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateIndex = schema.operation({
   id = id.from("com.amazonaws.opensearch", "CreateIndex"),
   input = M.CreateIndexInput,
   output = M.CreateIndexOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/2021-01-01/opensearch/domain/{DomainName}/index" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateOutboundConnection = schema.operation({
   id = id.from("com.amazonaws.opensearch", "CreateOutboundConnection"),
   input = M.CreateOutboundConnectionInput,
   output = M.CreateOutboundConnectionOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/2021-01-01/opensearch/cc/outboundConnection" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreatePackage = schema.operation({
   id = id.from("com.amazonaws.opensearch", "CreatePackage"),
   input = M.CreatePackageInput,
   output = M.CreatePackageOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/2021-01-01/packages" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateVpcEndpoint = schema.operation({
   id = id.from("com.amazonaws.opensearch", "CreateVpcEndpoint"),
   input = M.CreateVpcEndpointInput,
   output = M.CreateVpcEndpointOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/2021-01-01/opensearch/vpcEndpoints" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteApplication = schema.operation({
   id = id.from("com.amazonaws.opensearch", "DeleteApplication"),
   input = M.DeleteApplicationInput,
   output = M.DeleteApplicationOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/2021-01-01/opensearch/application/{id}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteDataSource = schema.operation({
   id = id.from("com.amazonaws.opensearch", "DeleteDataSource"),
   input = M.DeleteDataSourceInput,
   output = M.DeleteDataSourceOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/2021-01-01/opensearch/domain/{DomainName}/dataSource/{Name}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteDirectQueryDataSource = schema.operation({
   id = id.from("com.amazonaws.opensearch", "DeleteDirectQueryDataSource"),
   input = M.DeleteDirectQueryDataSourceInput,
   output = M.DeleteDirectQueryDataSourceOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/2021-01-01/opensearch/directQueryDataSource/{DataSourceName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteDomain = schema.operation({
   id = id.from("com.amazonaws.opensearch", "DeleteDomain"),
   input = M.DeleteDomainInput,
   output = M.DeleteDomainOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/2021-01-01/opensearch/domain/{DomainName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteInboundConnection = schema.operation({
   id = id.from("com.amazonaws.opensearch", "DeleteInboundConnection"),
   input = M.DeleteInboundConnectionInput,
   output = M.DeleteInboundConnectionOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/2021-01-01/opensearch/cc/inboundConnection/{ConnectionId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteIndex = schema.operation({
   id = id.from("com.amazonaws.opensearch", "DeleteIndex"),
   input = M.DeleteIndexInput,
   output = M.DeleteIndexOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/2021-01-01/opensearch/domain/{DomainName}/index/{IndexName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteOutboundConnection = schema.operation({
   id = id.from("com.amazonaws.opensearch", "DeleteOutboundConnection"),
   input = M.DeleteOutboundConnectionInput,
   output = M.DeleteOutboundConnectionOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/2021-01-01/opensearch/cc/outboundConnection/{ConnectionId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeletePackage = schema.operation({
   id = id.from("com.amazonaws.opensearch", "DeletePackage"),
   input = M.DeletePackageInput,
   output = M.DeletePackageOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/2021-01-01/packages/{PackageID}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteVpcEndpoint = schema.operation({
   id = id.from("com.amazonaws.opensearch", "DeleteVpcEndpoint"),
   input = M.DeleteVpcEndpointInput,
   output = M.DeleteVpcEndpointOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/2021-01-01/opensearch/vpcEndpoints/{VpcEndpointId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeregisterCapability = schema.operation({
   id = id.from("com.amazonaws.opensearch", "DeregisterCapability"),
   input = M.DeregisterCapabilityInput,
   output = M.DeregisterCapabilityOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/2021-01-01/opensearch/application/{applicationId}/capability/deregister/{capabilityName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeDomain = schema.operation({
   id = id.from("com.amazonaws.opensearch", "DescribeDomain"),
   input = M.DescribeDomainInput,
   output = M.DescribeDomainOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/2021-01-01/opensearch/domain/{DomainName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeDomainAutoTunes = schema.operation({
   id = id.from("com.amazonaws.opensearch", "DescribeDomainAutoTunes"),
   input = M.DescribeDomainAutoTunesInput,
   output = M.DescribeDomainAutoTunesOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/2021-01-01/opensearch/domain/{DomainName}/autoTunes" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeDomainChangeProgress = schema.operation({
   id = id.from("com.amazonaws.opensearch", "DescribeDomainChangeProgress"),
   input = M.DescribeDomainChangeProgressInput,
   output = M.DescribeDomainChangeProgressOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/2021-01-01/opensearch/domain/{DomainName}/progress" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeDomainConfig = schema.operation({
   id = id.from("com.amazonaws.opensearch", "DescribeDomainConfig"),
   input = M.DescribeDomainConfigInput,
   output = M.DescribeDomainConfigOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/2021-01-01/opensearch/domain/{DomainName}/config" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeDomainHealth = schema.operation({
   id = id.from("com.amazonaws.opensearch", "DescribeDomainHealth"),
   input = M.DescribeDomainHealthInput,
   output = M.DescribeDomainHealthOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/2021-01-01/opensearch/domain/{DomainName}/health" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeDomainNodes = schema.operation({
   id = id.from("com.amazonaws.opensearch", "DescribeDomainNodes"),
   input = M.DescribeDomainNodesInput,
   output = M.DescribeDomainNodesOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/2021-01-01/opensearch/domain/{DomainName}/nodes" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeDomains = schema.operation({
   id = id.from("com.amazonaws.opensearch", "DescribeDomains"),
   input = M.DescribeDomainsInput,
   output = M.DescribeDomainsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/2021-01-01/opensearch/domain-info" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeDryRunProgress = schema.operation({
   id = id.from("com.amazonaws.opensearch", "DescribeDryRunProgress"),
   input = M.DescribeDryRunProgressInput,
   output = M.DescribeDryRunProgressOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/2021-01-01/opensearch/domain/{DomainName}/dryRun" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeInboundConnections = schema.operation({
   id = id.from("com.amazonaws.opensearch", "DescribeInboundConnections"),
   input = M.DescribeInboundConnectionsInput,
   output = M.DescribeInboundConnectionsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/2021-01-01/opensearch/cc/inboundConnection/search" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeInsightDetails = schema.operation({
   id = id.from("com.amazonaws.opensearch", "DescribeInsightDetails"),
   input = M.DescribeInsightDetailsInput,
   output = M.DescribeInsightDetailsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/2021-01-01/opensearch/insight-details" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeInstanceTypeLimits = schema.operation({
   id = id.from("com.amazonaws.opensearch", "DescribeInstanceTypeLimits"),
   input = M.DescribeInstanceTypeLimitsInput,
   output = M.DescribeInstanceTypeLimitsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/2021-01-01/opensearch/instanceTypeLimits/{EngineVersion}/{InstanceType}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeOutboundConnections = schema.operation({
   id = id.from("com.amazonaws.opensearch", "DescribeOutboundConnections"),
   input = M.DescribeOutboundConnectionsInput,
   output = M.DescribeOutboundConnectionsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/2021-01-01/opensearch/cc/outboundConnection/search" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribePackages = schema.operation({
   id = id.from("com.amazonaws.opensearch", "DescribePackages"),
   input = M.DescribePackagesInput,
   output = M.DescribePackagesOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/2021-01-01/packages/describe" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeReservedInstanceOfferings = schema.operation({
   id = id.from("com.amazonaws.opensearch", "DescribeReservedInstanceOfferings"),
   input = M.DescribeReservedInstanceOfferingsInput,
   output = M.DescribeReservedInstanceOfferingsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/2021-01-01/opensearch/reservedInstanceOfferings" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeReservedInstances = schema.operation({
   id = id.from("com.amazonaws.opensearch", "DescribeReservedInstances"),
   input = M.DescribeReservedInstancesInput,
   output = M.DescribeReservedInstancesOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/2021-01-01/opensearch/reservedInstances" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeVpcEndpoints = schema.operation({
   id = id.from("com.amazonaws.opensearch", "DescribeVpcEndpoints"),
   input = M.DescribeVpcEndpointsInput,
   output = M.DescribeVpcEndpointsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/2021-01-01/opensearch/vpcEndpoints/describe" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DissociatePackage = schema.operation({
   id = id.from("com.amazonaws.opensearch", "DissociatePackage"),
   input = M.DissociatePackageInput,
   output = M.DissociatePackageOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/2021-01-01/packages/dissociate/{PackageID}/{DomainName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DissociatePackages = schema.operation({
   id = id.from("com.amazonaws.opensearch", "DissociatePackages"),
   input = M.DissociatePackagesInput,
   output = M.DissociatePackagesOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/2021-01-01/packages/dissociateMultiple" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetApplication = schema.operation({
   id = id.from("com.amazonaws.opensearch", "GetApplication"),
   input = M.GetApplicationInput,
   output = M.GetApplicationOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/2021-01-01/opensearch/application/{id}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetCapability = schema.operation({
   id = id.from("com.amazonaws.opensearch", "GetCapability"),
   input = M.GetCapabilityInput,
   output = M.GetCapabilityOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/2021-01-01/opensearch/application/{applicationId}/capability/{capabilityName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetCompatibleVersions = schema.operation({
   id = id.from("com.amazonaws.opensearch", "GetCompatibleVersions"),
   input = M.GetCompatibleVersionsInput,
   output = M.GetCompatibleVersionsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/2021-01-01/opensearch/compatibleVersions" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetDataSource = schema.operation({
   id = id.from("com.amazonaws.opensearch", "GetDataSource"),
   input = M.GetDataSourceInput,
   output = M.GetDataSourceOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/2021-01-01/opensearch/domain/{DomainName}/dataSource/{Name}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetDefaultApplicationSetting = schema.operation({
   id = id.from("com.amazonaws.opensearch", "GetDefaultApplicationSetting"),
   input = M.GetDefaultApplicationSettingInput,
   output = M.GetDefaultApplicationSettingOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/2021-01-01/opensearch/defaultApplicationSetting" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetDirectQueryDataSource = schema.operation({
   id = id.from("com.amazonaws.opensearch", "GetDirectQueryDataSource"),
   input = M.GetDirectQueryDataSourceInput,
   output = M.GetDirectQueryDataSourceOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/2021-01-01/opensearch/directQueryDataSource/{DataSourceName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetDomainMaintenanceStatus = schema.operation({
   id = id.from("com.amazonaws.opensearch", "GetDomainMaintenanceStatus"),
   input = M.GetDomainMaintenanceStatusInput,
   output = M.GetDomainMaintenanceStatusOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/2021-01-01/opensearch/domain/{DomainName}/domainMaintenance" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetIndex = schema.operation({
   id = id.from("com.amazonaws.opensearch", "GetIndex"),
   input = M.GetIndexInput,
   output = M.GetIndexOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/2021-01-01/opensearch/domain/{DomainName}/index/{IndexName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetPackageVersionHistory = schema.operation({
   id = id.from("com.amazonaws.opensearch", "GetPackageVersionHistory"),
   input = M.GetPackageVersionHistoryInput,
   output = M.GetPackageVersionHistoryOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/2021-01-01/packages/{PackageID}/history" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetUpgradeHistory = schema.operation({
   id = id.from("com.amazonaws.opensearch", "GetUpgradeHistory"),
   input = M.GetUpgradeHistoryInput,
   output = M.GetUpgradeHistoryOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/2021-01-01/opensearch/upgradeDomain/{DomainName}/history" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetUpgradeStatus = schema.operation({
   id = id.from("com.amazonaws.opensearch", "GetUpgradeStatus"),
   input = M.GetUpgradeStatusInput,
   output = M.GetUpgradeStatusOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/2021-01-01/opensearch/upgradeDomain/{DomainName}/status" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListApplications = schema.operation({
   id = id.from("com.amazonaws.opensearch", "ListApplications"),
   input = M.ListApplicationsInput,
   output = M.ListApplicationsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/2021-01-01/opensearch/list-applications" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListDataSources = schema.operation({
   id = id.from("com.amazonaws.opensearch", "ListDataSources"),
   input = M.ListDataSourcesInput,
   output = M.ListDataSourcesOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/2021-01-01/opensearch/domain/{DomainName}/dataSource" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListDirectQueryDataSources = schema.operation({
   id = id.from("com.amazonaws.opensearch", "ListDirectQueryDataSources"),
   input = M.ListDirectQueryDataSourcesInput,
   output = M.ListDirectQueryDataSourcesOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/2021-01-01/opensearch/directQueryDataSource" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListDomainMaintenances = schema.operation({
   id = id.from("com.amazonaws.opensearch", "ListDomainMaintenances"),
   input = M.ListDomainMaintenancesInput,
   output = M.ListDomainMaintenancesOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/2021-01-01/opensearch/domain/{DomainName}/domainMaintenances" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListDomainNames = schema.operation({
   id = id.from("com.amazonaws.opensearch", "ListDomainNames"),
   input = M.ListDomainNamesInput,
   output = M.ListDomainNamesOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/2021-01-01/domain" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListDomainsForPackage = schema.operation({
   id = id.from("com.amazonaws.opensearch", "ListDomainsForPackage"),
   input = M.ListDomainsForPackageInput,
   output = M.ListDomainsForPackageOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/2021-01-01/packages/{PackageID}/domains" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListInsights = schema.operation({
   id = id.from("com.amazonaws.opensearch", "ListInsights"),
   input = M.ListInsightsInput,
   output = M.ListInsightsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/2021-01-01/opensearch/insights" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListInstanceTypeDetails = schema.operation({
   id = id.from("com.amazonaws.opensearch", "ListInstanceTypeDetails"),
   input = M.ListInstanceTypeDetailsInput,
   output = M.ListInstanceTypeDetailsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/2021-01-01/opensearch/instanceTypeDetails/{EngineVersion}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListPackagesForDomain = schema.operation({
   id = id.from("com.amazonaws.opensearch", "ListPackagesForDomain"),
   input = M.ListPackagesForDomainInput,
   output = M.ListPackagesForDomainOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/2021-01-01/domain/{DomainName}/packages" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListScheduledActions = schema.operation({
   id = id.from("com.amazonaws.opensearch", "ListScheduledActions"),
   input = M.ListScheduledActionsInput,
   output = M.ListScheduledActionsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/2021-01-01/opensearch/domain/{DomainName}/scheduledActions" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListTags = schema.operation({
   id = id.from("com.amazonaws.opensearch", "ListTags"),
   input = M.ListTagsInput,
   output = M.ListTagsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/2021-01-01/tags" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListVersions = schema.operation({
   id = id.from("com.amazonaws.opensearch", "ListVersions"),
   input = M.ListVersionsInput,
   output = M.ListVersionsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/2021-01-01/opensearch/versions" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListVpcEndpointAccess = schema.operation({
   id = id.from("com.amazonaws.opensearch", "ListVpcEndpointAccess"),
   input = M.ListVpcEndpointAccessInput,
   output = M.ListVpcEndpointAccessOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/2021-01-01/opensearch/domain/{DomainName}/listVpcEndpointAccess" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListVpcEndpoints = schema.operation({
   id = id.from("com.amazonaws.opensearch", "ListVpcEndpoints"),
   input = M.ListVpcEndpointsInput,
   output = M.ListVpcEndpointsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/2021-01-01/opensearch/vpcEndpoints" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListVpcEndpointsForDomain = schema.operation({
   id = id.from("com.amazonaws.opensearch", "ListVpcEndpointsForDomain"),
   input = M.ListVpcEndpointsForDomainInput,
   output = M.ListVpcEndpointsForDomainOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/2021-01-01/opensearch/domain/{DomainName}/vpcEndpoints" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.PurchaseReservedInstanceOffering = schema.operation({
   id = id.from("com.amazonaws.opensearch", "PurchaseReservedInstanceOffering"),
   input = M.PurchaseReservedInstanceOfferingInput,
   output = M.PurchaseReservedInstanceOfferingOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/2021-01-01/opensearch/purchaseReservedInstanceOffering" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.PutDefaultApplicationSetting = schema.operation({
   id = id.from("com.amazonaws.opensearch", "PutDefaultApplicationSetting"),
   input = M.PutDefaultApplicationSettingInput,
   output = M.PutDefaultApplicationSettingOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/2021-01-01/opensearch/defaultApplicationSetting" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.RegisterCapability = schema.operation({
   id = id.from("com.amazonaws.opensearch", "RegisterCapability"),
   input = M.RegisterCapabilityInput,
   output = M.RegisterCapabilityOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/2021-01-01/opensearch/application/{applicationId}/capability/register" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.RejectInboundConnection = schema.operation({
   id = id.from("com.amazonaws.opensearch", "RejectInboundConnection"),
   input = M.RejectInboundConnectionInput,
   output = M.RejectInboundConnectionOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/2021-01-01/opensearch/cc/inboundConnection/{ConnectionId}/reject" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.RemoveTags = schema.operation({
   id = id.from("com.amazonaws.opensearch", "RemoveTags"),
   input = M.RemoveTagsInput,
   output = M.RemoveTagsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/2021-01-01/tags-removal" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.RevokeVpcEndpointAccess = schema.operation({
   id = id.from("com.amazonaws.opensearch", "RevokeVpcEndpointAccess"),
   input = M.RevokeVpcEndpointAccessInput,
   output = M.RevokeVpcEndpointAccessOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/2021-01-01/opensearch/domain/{DomainName}/revokeVpcEndpointAccess" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.RollbackServiceSoftwareUpdate = schema.operation({
   id = id.from("com.amazonaws.opensearch", "RollbackServiceSoftwareUpdate"),
   input = M.RollbackServiceSoftwareUpdateInput,
   output = M.RollbackServiceSoftwareUpdateOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/2021-01-01/opensearch/serviceSoftwareUpdate/rollback" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StartDomainMaintenance = schema.operation({
   id = id.from("com.amazonaws.opensearch", "StartDomainMaintenance"),
   input = M.StartDomainMaintenanceInput,
   output = M.StartDomainMaintenanceOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/2021-01-01/opensearch/domain/{DomainName}/domainMaintenance" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StartServiceSoftwareUpdate = schema.operation({
   id = id.from("com.amazonaws.opensearch", "StartServiceSoftwareUpdate"),
   input = M.StartServiceSoftwareUpdateInput,
   output = M.StartServiceSoftwareUpdateOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/2021-01-01/opensearch/serviceSoftwareUpdate/start" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateApplication = schema.operation({
   id = id.from("com.amazonaws.opensearch", "UpdateApplication"),
   input = M.UpdateApplicationInput,
   output = M.UpdateApplicationOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/2021-01-01/opensearch/application/{id}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateDataSource = schema.operation({
   id = id.from("com.amazonaws.opensearch", "UpdateDataSource"),
   input = M.UpdateDataSourceInput,
   output = M.UpdateDataSourceOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/2021-01-01/opensearch/domain/{DomainName}/dataSource/{Name}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateDirectQueryDataSource = schema.operation({
   id = id.from("com.amazonaws.opensearch", "UpdateDirectQueryDataSource"),
   input = M.UpdateDirectQueryDataSourceInput,
   output = M.UpdateDirectQueryDataSourceOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/2021-01-01/opensearch/directQueryDataSource/{DataSourceName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateDomainConfig = schema.operation({
   id = id.from("com.amazonaws.opensearch", "UpdateDomainConfig"),
   input = M.UpdateDomainConfigInput,
   output = M.UpdateDomainConfigOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/2021-01-01/opensearch/domain/{DomainName}/config" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateIndex = schema.operation({
   id = id.from("com.amazonaws.opensearch", "UpdateIndex"),
   input = M.UpdateIndexInput,
   output = M.UpdateIndexOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/2021-01-01/opensearch/domain/{DomainName}/index/{IndexName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdatePackage = schema.operation({
   id = id.from("com.amazonaws.opensearch", "UpdatePackage"),
   input = M.UpdatePackageInput,
   output = M.UpdatePackageOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/2021-01-01/packages/update" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdatePackageScope = schema.operation({
   id = id.from("com.amazonaws.opensearch", "UpdatePackageScope"),
   input = M.UpdatePackageScopeInput,
   output = M.UpdatePackageScopeOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/2021-01-01/packages/updateScope" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateScheduledAction = schema.operation({
   id = id.from("com.amazonaws.opensearch", "UpdateScheduledAction"),
   input = M.UpdateScheduledActionInput,
   output = M.UpdateScheduledActionOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/2021-01-01/opensearch/domain/{DomainName}/scheduledAction/update" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateVpcEndpoint = schema.operation({
   id = id.from("com.amazonaws.opensearch", "UpdateVpcEndpoint"),
   input = M.UpdateVpcEndpointInput,
   output = M.UpdateVpcEndpointOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/2021-01-01/opensearch/vpcEndpoints/update" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpgradeDomain = schema.operation({
   id = id.from("com.amazonaws.opensearch", "UpgradeDomain"),
   input = M.UpgradeDomainInput,
   output = M.UpgradeDomainOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/2021-01-01/opensearch/upgradeDomain" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

return M
