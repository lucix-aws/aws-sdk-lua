local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.databasemigrationservice"

local M = {}

M.TagList = schema.new({ type = "list", list_member = M.Tag })

M.StartRecommendationsRequestEntryList = schema.new({ type = "list", list_member = M.StartRecommendationsRequestEntry })

M.BatchStartRecommendationsErrorEntryList = schema.new({ type = "list", list_member = M.BatchStartRecommendationsErrorEntry })

M.SourceDataSettings = schema.new({ type = "list", list_member = M.SourceDataSetting })

M.TargetDataSettings = schema.new({ type = "list", list_member = M.TargetDataSetting })

M.EventCategoriesList = schema.new({ type = "list", list_member = prelude.String })

M.SourceIdsList = schema.new({ type = "list", list_member = prelude.String })

M.StringList = schema.new({ type = "list", list_member = prelude.String })

M.DataProviderDescriptorDefinitionList = schema.new({ type = "list", list_member = M.DataProviderDescriptorDefinition })

M.VpcSecurityGroupIdList = schema.new({ type = "list", list_member = prelude.String })

M.SubnetIdentifierList = schema.new({ type = "list", list_member = prelude.String })

M.AccountQuotaList = schema.new({ type = "list", list_member = M.AccountQuota })

M.IndividualAssessmentNameList = schema.new({ type = "list", list_member = prelude.String })

M.FilterList = schema.new({ type = "list", list_member = M.Filter })

M.CertificateList = schema.new({ type = "list", list_member = M.Certificate })

M.ConnectionList = schema.new({ type = "list", list_member = M.Connection })

M.DataMigrations = schema.new({ type = "list", list_member = M.DataMigration })

M.DataProviderList = schema.new({ type = "list", list_member = M.DataProvider })

M.EndpointList = schema.new({ type = "list", list_member = M.Endpoint })

M.EndpointSettingsList = schema.new({ type = "list", list_member = M.EndpointSetting })

M.SupportedEndpointTypeList = schema.new({ type = "list", list_member = M.SupportedEndpointType })

M.EngineVersionList = schema.new({ type = "list", list_member = M.EngineVersion })

M.EventCategoryGroupList = schema.new({ type = "list", list_member = M.EventCategoryGroup })

M.EventList = schema.new({ type = "list", list_member = M.Event })

M.EventSubscriptionsList = schema.new({ type = "list", list_member = M.EventSubscription })

M.SchemaConversionRequestList = schema.new({ type = "list", list_member = M.SchemaConversionRequest })

M.CollectorResponses = schema.new({ type = "list", list_member = M.CollectorResponse })

M.DatabaseList = schema.new({ type = "list", list_member = M.DatabaseResponse })

M.FleetAdvisorLsaAnalysisResponseList = schema.new({ type = "list", list_member = M.FleetAdvisorLsaAnalysisResponse })

M.FleetAdvisorSchemaObjectList = schema.new({ type = "list", list_member = M.FleetAdvisorSchemaObjectResponse })

M.FleetAdvisorSchemaList = schema.new({ type = "list", list_member = M.SchemaResponse })

M.InstanceProfileList = schema.new({ type = "list", list_member = M.InstanceProfile })

M.MetadataModelReferenceList = schema.new({ type = "list", list_member = M.MetadataModelReference })

M.MigrationProjectList = schema.new({ type = "list", list_member = M.MigrationProject })

M.OrderableReplicationInstanceList = schema.new({ type = "list", list_member = M.OrderableReplicationInstance })

M.PendingMaintenanceActions = schema.new({ type = "list", list_member = M.ResourcePendingMaintenanceActions })

M.LimitationList = schema.new({ type = "list", list_member = M.Limitation })

M.RecommendationList = schema.new({ type = "list", list_member = M.Recommendation })

M.ReplicationConfigList = schema.new({ type = "list", list_member = M.ReplicationConfig })

M.ReplicationInstanceList = schema.new({ type = "list", list_member = M.ReplicationInstance })

M.ReplicationInstanceTaskLogsList = schema.new({ type = "list", list_member = M.ReplicationInstanceTaskLog })

M.ReplicationList = schema.new({ type = "list", list_member = M.Replication })

M.ReplicationSubnetGroups = schema.new({ type = "list", list_member = M.ReplicationSubnetGroup })

M.ReplicationTableStatisticsList = schema.new({ type = "list", list_member = M.TableStatistics })

M.ReplicationTaskAssessmentResultList = schema.new({ type = "list", list_member = M.ReplicationTaskAssessmentResult })

M.ReplicationTaskAssessmentRunList = schema.new({ type = "list", list_member = M.ReplicationTaskAssessmentRun })

M.ReplicationTaskIndividualAssessmentList = schema.new({ type = "list", list_member = M.ReplicationTaskIndividualAssessment })

M.ReplicationTaskList = schema.new({ type = "list", list_member = M.ReplicationTask })

M.SchemaList = schema.new({ type = "list", list_member = prelude.String })

M.TableStatisticsList = schema.new({ type = "list", list_member = M.TableStatistics })

M.AssessmentReportTypesList = schema.new({ type = "list", list_member = prelude.String })

M.ArnList = schema.new({ type = "list", list_member = prelude.String })

M.TableListToReload = schema.new({ type = "list", list_member = M.TableToReload })

M.KeyList = schema.new({ type = "list", list_member = prelude.String })

M.IncludeTestList = schema.new({ type = "list", list_member = prelude.String })

M.ExcludeTestList = schema.new({ type = "list", list_member = prelude.String })

M.PendingMaintenanceActionDetails = schema.new({ type = "list", list_member = M.PendingMaintenanceAction })

M.PublicIpAddressList = schema.new({ type = "list", list_member = prelude.String })

M.DataMigrationCidrBlock = schema.new({ type = "list", list_member = prelude.String })

M.IntegerList = schema.new({ type = "list", list_member = prelude.Integer })

M.DataProviderDescriptorList = schema.new({ type = "list", list_member = M.DataProviderDescriptor })

M.VpcSecurityGroupMembershipList = schema.new({ type = "list", list_member = M.VpcSecurityGroupMembership })

M.ReplicationInstancePublicIpAddressList = schema.new({ type = "list", list_member = prelude.String })

M.ReplicationInstancePrivateIpAddressList = schema.new({ type = "list", list_member = prelude.String })

M.ReplicationInstanceIpv6AddressList = schema.new({ type = "list", list_member = prelude.String })

M.SubnetList = schema.new({ type = "list", list_member = M.Subnet })

M.PremigrationAssessmentStatusList = schema.new({ type = "list", list_member = M.PremigrationAssessmentStatus })

M.FilterValueList = schema.new({ type = "list", list_member = prelude.String })

M.EndpointSettingEnumValues = schema.new({ type = "list", list_member = prelude.String })

M.AvailableUpgradesList = schema.new({ type = "list", list_member = prelude.String })

M.CollectorsList = schema.new({ type = "list", list_member = M.CollectorShortInfoResponse })

M.AvailabilityZonesList = schema.new({ type = "list", list_member = prelude.String })

M.AccessDeniedFault = schema.new({
    id = id.from(_N, "AccessDeniedFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "AccessDeniedFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.AccountQuota = schema.new({
    id = id.from(_N, "AccountQuota"),
    type = "structure",
    members = {
        AccountQuotaName = schema.new({
            id = id.from(_N, "AccountQuota", "AccountQuotaName"),
            type = "string",
            name = "AccountQuotaName",
            target_id = prelude.String.id,
        }),
        Used = schema.new({
            id = id.from(_N, "AccountQuota", "Used"),
            type = "long",
            name = "Used",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Max = schema.new({
            id = id.from(_N, "AccountQuota", "Max"),
            type = "long",
            name = "Max",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
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
        }),
        Value = schema.new({
            id = id.from(_N, "Tag", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
        }),
        ResourceArn = schema.new({
            id = id.from(_N, "Tag", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
        }),
    },
})

M.AddTagsToResourceInput = schema.new({
    id = id.from(_N, "AddTagsToResourceMessage"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "AddTagsToResourceInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "AddTagsToResourceInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Tag, traits = { [traits.XML_NAME] = { name = "Tag" } } }),
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AddTagsToResourceOutput = schema.new({
    id = id.from(_N, "AddTagsToResourceResponse"),
    type = "structure",
})

M.InvalidResourceStateFault = schema.new({
    id = id.from(_N, "InvalidResourceStateFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidResourceStateFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ResourceNotFoundFault = schema.new({
    id = id.from(_N, "ResourceNotFoundFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ResourceNotFoundFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ApplyPendingMaintenanceActionInput = schema.new({
    id = id.from(_N, "ApplyPendingMaintenanceActionMessage"),
    type = "structure",
    members = {
        ReplicationInstanceArn = schema.new({
            id = id.from(_N, "ApplyPendingMaintenanceActionInput", "ReplicationInstanceArn"),
            type = "string",
            name = "ReplicationInstanceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ApplyAction = schema.new({
            id = id.from(_N, "ApplyPendingMaintenanceActionInput", "ApplyAction"),
            type = "string",
            name = "ApplyAction",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OptInType = schema.new({
            id = id.from(_N, "ApplyPendingMaintenanceActionInput", "OptInType"),
            type = "string",
            name = "OptInType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PendingMaintenanceAction = schema.new({
    id = id.from(_N, "PendingMaintenanceAction"),
    type = "structure",
    members = {
        Action = schema.new({
            id = id.from(_N, "PendingMaintenanceAction", "Action"),
            type = "string",
            name = "Action",
            target_id = prelude.String.id,
        }),
        AutoAppliedAfterDate = schema.new({
            id = id.from(_N, "PendingMaintenanceAction", "AutoAppliedAfterDate"),
            type = "timestamp",
            name = "AutoAppliedAfterDate",
            target_id = prelude.Timestamp.id,
        }),
        ForcedApplyDate = schema.new({
            id = id.from(_N, "PendingMaintenanceAction", "ForcedApplyDate"),
            type = "timestamp",
            name = "ForcedApplyDate",
            target_id = prelude.Timestamp.id,
        }),
        OptInStatus = schema.new({
            id = id.from(_N, "PendingMaintenanceAction", "OptInStatus"),
            type = "string",
            name = "OptInStatus",
            target_id = prelude.String.id,
        }),
        CurrentApplyDate = schema.new({
            id = id.from(_N, "PendingMaintenanceAction", "CurrentApplyDate"),
            type = "timestamp",
            name = "CurrentApplyDate",
            target_id = prelude.Timestamp.id,
        }),
        Description = schema.new({
            id = id.from(_N, "PendingMaintenanceAction", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
    },
})

M.ResourcePendingMaintenanceActions = schema.new({
    id = id.from(_N, "ResourcePendingMaintenanceActions"),
    type = "structure",
    members = {
        ResourceIdentifier = schema.new({
            id = id.from(_N, "ResourcePendingMaintenanceActions", "ResourceIdentifier"),
            type = "string",
            name = "ResourceIdentifier",
            target_id = prelude.String.id,
        }),
        PendingMaintenanceActionDetails = schema.new({
            id = id.from(_N, "ResourcePendingMaintenanceActions", "PendingMaintenanceActionDetails"),
            type = "list",
            name = "PendingMaintenanceActionDetails",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.PendingMaintenanceAction, traits = { [traits.XML_NAME] = { name = "PendingMaintenanceAction" } } }),
        }),
    },
})

M.ApplyPendingMaintenanceActionOutput = schema.new({
    id = id.from(_N, "ApplyPendingMaintenanceActionResponse"),
    type = "structure",
    members = {
        ResourcePendingMaintenanceActions = schema.new({
            id = id.from(_N, "ApplyPendingMaintenanceActionOutput", "ResourcePendingMaintenanceActions"),
            type = "structure",
            name = "ResourcePendingMaintenanceActions",
            target_id = id.from(_N, "ResourcePendingMaintenanceActions"),
            target = M.ResourcePendingMaintenanceActions,
        }),
    },
})

M.RecommendationSettings = schema.new({
    id = id.from(_N, "RecommendationSettings"),
    type = "structure",
    members = {
        InstanceSizingType = schema.new({
            id = id.from(_N, "RecommendationSettings", "InstanceSizingType"),
            type = "string",
            name = "InstanceSizingType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        WorkloadType = schema.new({
            id = id.from(_N, "RecommendationSettings", "WorkloadType"),
            type = "string",
            name = "WorkloadType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StartRecommendationsRequestEntry = schema.new({
    id = id.from(_N, "StartRecommendationsRequestEntry"),
    type = "structure",
    members = {
        DatabaseId = schema.new({
            id = id.from(_N, "StartRecommendationsRequestEntry", "DatabaseId"),
            type = "string",
            name = "DatabaseId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Settings = schema.new({
            id = id.from(_N, "StartRecommendationsRequestEntry", "Settings"),
            type = "structure",
            name = "Settings",
            target_id = id.from(_N, "RecommendationSettings"),
            target = M.RecommendationSettings,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchStartRecommendationsInput = schema.new({
    id = id.from(_N, "BatchStartRecommendationsRequest"),
    type = "structure",
    members = {
        Data = schema.new({
            id = id.from(_N, "BatchStartRecommendationsInput", "Data"),
            type = "list",
            name = "Data",
            target_id = prelude.Document.id,
            list_member = M.StartRecommendationsRequestEntry,
        }),
    },
})

M.BatchStartRecommendationsErrorEntry = schema.new({
    id = id.from(_N, "BatchStartRecommendationsErrorEntry"),
    type = "structure",
    members = {
        DatabaseId = schema.new({
            id = id.from(_N, "BatchStartRecommendationsErrorEntry", "DatabaseId"),
            type = "string",
            name = "DatabaseId",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "BatchStartRecommendationsErrorEntry", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        Code = schema.new({
            id = id.from(_N, "BatchStartRecommendationsErrorEntry", "Code"),
            type = "string",
            name = "Code",
            target_id = prelude.String.id,
        }),
    },
})

M.BatchStartRecommendationsOutput = schema.new({
    id = id.from(_N, "BatchStartRecommendationsResponse"),
    type = "structure",
    members = {
        ErrorEntries = schema.new({
            id = id.from(_N, "BatchStartRecommendationsOutput", "ErrorEntries"),
            type = "list",
            name = "ErrorEntries",
            target_id = prelude.Document.id,
            list_member = M.BatchStartRecommendationsErrorEntry,
        }),
    },
})

M.CancelMetadataModelConversionInput = schema.new({
    id = id.from(_N, "CancelMetadataModelConversionMessage"),
    type = "structure",
    members = {
        MigrationProjectIdentifier = schema.new({
            id = id.from(_N, "CancelMetadataModelConversionInput", "MigrationProjectIdentifier"),
            type = "string",
            name = "MigrationProjectIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RequestIdentifier = schema.new({
            id = id.from(_N, "CancelMetadataModelConversionInput", "RequestIdentifier"),
            type = "string",
            name = "RequestIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DefaultErrorDetails = schema.new({
    id = id.from(_N, "DefaultErrorDetails"),
    type = "structure",
    members = {
        Message = schema.new({
            id = id.from(_N, "DefaultErrorDetails", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ErrorDetails = schema.new({
    id = id.from(_N, "ErrorDetails"),
    type = "union",
    members = {
        defaultErrorDetails = schema.new({
            id = id.from(_N, "ErrorDetails", "defaultErrorDetails"),
            type = "structure",
            name = "defaultErrorDetails",
            target_id = id.from(_N, "DefaultErrorDetails"),
            target = M.DefaultErrorDetails,
        }),
    },
})

M.ExportSqlDetails = schema.new({
    id = id.from(_N, "ExportSqlDetails"),
    type = "structure",
    members = {
        S3ObjectKey = schema.new({
            id = id.from(_N, "ExportSqlDetails", "S3ObjectKey"),
            type = "string",
            name = "S3ObjectKey",
            target_id = prelude.String.id,
        }),
        ObjectURL = schema.new({
            id = id.from(_N, "ExportSqlDetails", "ObjectURL"),
            type = "string",
            name = "ObjectURL",
            target_id = prelude.String.id,
        }),
    },
})

M.ProcessedObject = schema.new({
    id = id.from(_N, "ProcessedObject"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "ProcessedObject", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "ProcessedObject", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        EndpointType = schema.new({
            id = id.from(_N, "ProcessedObject", "EndpointType"),
            type = "string",
            name = "EndpointType",
            target_id = prelude.String.id,
        }),
    },
})

M.Progress = schema.new({
    id = id.from(_N, "Progress"),
    type = "structure",
    members = {
        ProgressPercent = schema.new({
            id = id.from(_N, "Progress", "ProgressPercent"),
            type = "double",
            name = "ProgressPercent",
            target_id = prelude.Double.id,
        }),
        TotalObjects = schema.new({
            id = id.from(_N, "Progress", "TotalObjects"),
            type = "long",
            name = "TotalObjects",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        ProgressStep = schema.new({
            id = id.from(_N, "Progress", "ProgressStep"),
            type = "string",
            name = "ProgressStep",
            target_id = prelude.String.id,
        }),
        ProcessedObject = schema.new({
            id = id.from(_N, "Progress", "ProcessedObject"),
            type = "structure",
            name = "ProcessedObject",
            target_id = id.from(_N, "ProcessedObject"),
            target = M.ProcessedObject,
        }),
    },
})

M.SchemaConversionRequest = schema.new({
    id = id.from(_N, "SchemaConversionRequest"),
    type = "structure",
    members = {
        Status = schema.new({
            id = id.from(_N, "SchemaConversionRequest", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        RequestIdentifier = schema.new({
            id = id.from(_N, "SchemaConversionRequest", "RequestIdentifier"),
            type = "string",
            name = "RequestIdentifier",
            target_id = prelude.String.id,
        }),
        MigrationProjectArn = schema.new({
            id = id.from(_N, "SchemaConversionRequest", "MigrationProjectArn"),
            type = "string",
            name = "MigrationProjectArn",
            target_id = prelude.String.id,
        }),
        Error = schema.new({
            id = id.from(_N, "SchemaConversionRequest", "Error"),
            type = "union",
            name = "Error",
            target_id = id.from(_N, "ErrorDetails"),
            target = M.ErrorDetails,
        }),
        ExportSqlDetails = schema.new({
            id = id.from(_N, "SchemaConversionRequest", "ExportSqlDetails"),
            type = "structure",
            name = "ExportSqlDetails",
            target_id = id.from(_N, "ExportSqlDetails"),
            target = M.ExportSqlDetails,
        }),
        Progress = schema.new({
            id = id.from(_N, "SchemaConversionRequest", "Progress"),
            type = "structure",
            name = "Progress",
            target_id = id.from(_N, "Progress"),
            target = M.Progress,
        }),
    },
})

M.CancelMetadataModelConversionOutput = schema.new({
    id = id.from(_N, "CancelMetadataModelConversionResponse"),
    type = "structure",
    members = {
        Request = schema.new({
            id = id.from(_N, "CancelMetadataModelConversionOutput", "Request"),
            type = "structure",
            name = "Request",
            target_id = id.from(_N, "SchemaConversionRequest"),
            target = M.SchemaConversionRequest,
        }),
    },
})

M.CancelMetadataModelCreationInput = schema.new({
    id = id.from(_N, "CancelMetadataModelCreationMessage"),
    type = "structure",
    members = {
        MigrationProjectIdentifier = schema.new({
            id = id.from(_N, "CancelMetadataModelCreationInput", "MigrationProjectIdentifier"),
            type = "string",
            name = "MigrationProjectIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RequestIdentifier = schema.new({
            id = id.from(_N, "CancelMetadataModelCreationInput", "RequestIdentifier"),
            type = "string",
            name = "RequestIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CancelMetadataModelCreationOutput = schema.new({
    id = id.from(_N, "CancelMetadataModelCreationResponse"),
    type = "structure",
    members = {
        Request = schema.new({
            id = id.from(_N, "CancelMetadataModelCreationOutput", "Request"),
            type = "structure",
            name = "Request",
            target_id = id.from(_N, "SchemaConversionRequest"),
            target = M.SchemaConversionRequest,
        }),
    },
})

M.CancelReplicationTaskAssessmentRunInput = schema.new({
    id = id.from(_N, "CancelReplicationTaskAssessmentRunMessage"),
    type = "structure",
    members = {
        ReplicationTaskAssessmentRunArn = schema.new({
            id = id.from(_N, "CancelReplicationTaskAssessmentRunInput", "ReplicationTaskAssessmentRunArn"),
            type = "string",
            name = "ReplicationTaskAssessmentRunArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ReplicationTaskAssessmentRunProgress = schema.new({
    id = id.from(_N, "ReplicationTaskAssessmentRunProgress"),
    type = "structure",
    members = {
        IndividualAssessmentCount = schema.new({
            id = id.from(_N, "ReplicationTaskAssessmentRunProgress", "IndividualAssessmentCount"),
            type = "integer",
            name = "IndividualAssessmentCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        IndividualAssessmentCompletedCount = schema.new({
            id = id.from(_N, "ReplicationTaskAssessmentRunProgress", "IndividualAssessmentCompletedCount"),
            type = "integer",
            name = "IndividualAssessmentCompletedCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.ReplicationTaskAssessmentRunResultStatistic = schema.new({
    id = id.from(_N, "ReplicationTaskAssessmentRunResultStatistic"),
    type = "structure",
    members = {
        Passed = schema.new({
            id = id.from(_N, "ReplicationTaskAssessmentRunResultStatistic", "Passed"),
            type = "integer",
            name = "Passed",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Failed = schema.new({
            id = id.from(_N, "ReplicationTaskAssessmentRunResultStatistic", "Failed"),
            type = "integer",
            name = "Failed",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Error = schema.new({
            id = id.from(_N, "ReplicationTaskAssessmentRunResultStatistic", "Error"),
            type = "integer",
            name = "Error",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Warning = schema.new({
            id = id.from(_N, "ReplicationTaskAssessmentRunResultStatistic", "Warning"),
            type = "integer",
            name = "Warning",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Cancelled = schema.new({
            id = id.from(_N, "ReplicationTaskAssessmentRunResultStatistic", "Cancelled"),
            type = "integer",
            name = "Cancelled",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Skipped = schema.new({
            id = id.from(_N, "ReplicationTaskAssessmentRunResultStatistic", "Skipped"),
            type = "integer",
            name = "Skipped",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.ReplicationTaskAssessmentRun = schema.new({
    id = id.from(_N, "ReplicationTaskAssessmentRun"),
    type = "structure",
    members = {
        ReplicationTaskAssessmentRunArn = schema.new({
            id = id.from(_N, "ReplicationTaskAssessmentRun", "ReplicationTaskAssessmentRunArn"),
            type = "string",
            name = "ReplicationTaskAssessmentRunArn",
            target_id = prelude.String.id,
        }),
        ReplicationTaskArn = schema.new({
            id = id.from(_N, "ReplicationTaskAssessmentRun", "ReplicationTaskArn"),
            type = "string",
            name = "ReplicationTaskArn",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "ReplicationTaskAssessmentRun", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        ReplicationTaskAssessmentRunCreationDate = schema.new({
            id = id.from(_N, "ReplicationTaskAssessmentRun", "ReplicationTaskAssessmentRunCreationDate"),
            type = "timestamp",
            name = "ReplicationTaskAssessmentRunCreationDate",
            target_id = prelude.Timestamp.id,
        }),
        AssessmentProgress = schema.new({
            id = id.from(_N, "ReplicationTaskAssessmentRun", "AssessmentProgress"),
            type = "structure",
            name = "AssessmentProgress",
            target_id = id.from(_N, "ReplicationTaskAssessmentRunProgress"),
            target = M.ReplicationTaskAssessmentRunProgress,
        }),
        LastFailureMessage = schema.new({
            id = id.from(_N, "ReplicationTaskAssessmentRun", "LastFailureMessage"),
            type = "string",
            name = "LastFailureMessage",
            target_id = prelude.String.id,
        }),
        ServiceAccessRoleArn = schema.new({
            id = id.from(_N, "ReplicationTaskAssessmentRun", "ServiceAccessRoleArn"),
            type = "string",
            name = "ServiceAccessRoleArn",
            target_id = prelude.String.id,
        }),
        ResultLocationBucket = schema.new({
            id = id.from(_N, "ReplicationTaskAssessmentRun", "ResultLocationBucket"),
            type = "string",
            name = "ResultLocationBucket",
            target_id = prelude.String.id,
        }),
        ResultLocationFolder = schema.new({
            id = id.from(_N, "ReplicationTaskAssessmentRun", "ResultLocationFolder"),
            type = "string",
            name = "ResultLocationFolder",
            target_id = prelude.String.id,
        }),
        ResultEncryptionMode = schema.new({
            id = id.from(_N, "ReplicationTaskAssessmentRun", "ResultEncryptionMode"),
            type = "string",
            name = "ResultEncryptionMode",
            target_id = prelude.String.id,
        }),
        ResultKmsKeyArn = schema.new({
            id = id.from(_N, "ReplicationTaskAssessmentRun", "ResultKmsKeyArn"),
            type = "string",
            name = "ResultKmsKeyArn",
            target_id = prelude.String.id,
        }),
        AssessmentRunName = schema.new({
            id = id.from(_N, "ReplicationTaskAssessmentRun", "AssessmentRunName"),
            type = "string",
            name = "AssessmentRunName",
            target_id = prelude.String.id,
        }),
        IsLatestTaskAssessmentRun = schema.new({
            id = id.from(_N, "ReplicationTaskAssessmentRun", "IsLatestTaskAssessmentRun"),
            type = "boolean",
            name = "IsLatestTaskAssessmentRun",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        ResultStatistic = schema.new({
            id = id.from(_N, "ReplicationTaskAssessmentRun", "ResultStatistic"),
            type = "structure",
            name = "ResultStatistic",
            target_id = id.from(_N, "ReplicationTaskAssessmentRunResultStatistic"),
            target = M.ReplicationTaskAssessmentRunResultStatistic,
        }),
    },
})

M.CancelReplicationTaskAssessmentRunOutput = schema.new({
    id = id.from(_N, "CancelReplicationTaskAssessmentRunResponse"),
    type = "structure",
    members = {
        ReplicationTaskAssessmentRun = schema.new({
            id = id.from(_N, "CancelReplicationTaskAssessmentRunOutput", "ReplicationTaskAssessmentRun"),
            type = "structure",
            name = "ReplicationTaskAssessmentRun",
            target_id = id.from(_N, "ReplicationTaskAssessmentRun"),
            target = M.ReplicationTaskAssessmentRun,
        }),
    },
})

M.SourceDataSetting = schema.new({
    id = id.from(_N, "SourceDataSetting"),
    type = "structure",
    members = {
        CDCStartPosition = schema.new({
            id = id.from(_N, "SourceDataSetting", "CDCStartPosition"),
            type = "string",
            name = "CDCStartPosition",
            target_id = prelude.String.id,
        }),
        CDCStartTime = schema.new({
            id = id.from(_N, "SourceDataSetting", "CDCStartTime"),
            type = "timestamp",
            name = "CDCStartTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        CDCStopTime = schema.new({
            id = id.from(_N, "SourceDataSetting", "CDCStopTime"),
            type = "timestamp",
            name = "CDCStopTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        SlotName = schema.new({
            id = id.from(_N, "SourceDataSetting", "SlotName"),
            type = "string",
            name = "SlotName",
            target_id = prelude.String.id,
        }),
    },
})

M.TargetDataSetting = schema.new({
    id = id.from(_N, "TargetDataSetting"),
    type = "structure",
    members = {
        TablePreparationMode = schema.new({
            id = id.from(_N, "TargetDataSetting", "TablePreparationMode"),
            type = "string",
            name = "TablePreparationMode",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateDataMigrationInput = schema.new({
    id = id.from(_N, "CreateDataMigrationMessage"),
    type = "structure",
    members = {
        DataMigrationName = schema.new({
            id = id.from(_N, "CreateDataMigrationInput", "DataMigrationName"),
            type = "string",
            name = "DataMigrationName",
            target_id = prelude.String.id,
        }),
        MigrationProjectIdentifier = schema.new({
            id = id.from(_N, "CreateDataMigrationInput", "MigrationProjectIdentifier"),
            type = "string",
            name = "MigrationProjectIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DataMigrationType = schema.new({
            id = id.from(_N, "CreateDataMigrationInput", "DataMigrationType"),
            type = "string",
            name = "DataMigrationType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ServiceAccessRoleArn = schema.new({
            id = id.from(_N, "CreateDataMigrationInput", "ServiceAccessRoleArn"),
            type = "string",
            name = "ServiceAccessRoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EnableCloudwatchLogs = schema.new({
            id = id.from(_N, "CreateDataMigrationInput", "EnableCloudwatchLogs"),
            type = "boolean",
            name = "EnableCloudwatchLogs",
            target_id = prelude.Boolean.id,
        }),
        SourceDataSettings = schema.new({
            id = id.from(_N, "CreateDataMigrationInput", "SourceDataSettings"),
            type = "list",
            name = "SourceDataSettings",
            target_id = prelude.Document.id,
            list_member = M.SourceDataSetting,
        }),
        TargetDataSettings = schema.new({
            id = id.from(_N, "CreateDataMigrationInput", "TargetDataSettings"),
            type = "list",
            name = "TargetDataSettings",
            target_id = prelude.Document.id,
            list_member = M.TargetDataSetting,
        }),
        NumberOfJobs = schema.new({
            id = id.from(_N, "CreateDataMigrationInput", "NumberOfJobs"),
            type = "integer",
            name = "NumberOfJobs",
            target_id = prelude.Integer.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateDataMigrationInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Tag, traits = { [traits.XML_NAME] = { name = "Tag" } } }),
        }),
        SelectionRules = schema.new({
            id = id.from(_N, "CreateDataMigrationInput", "SelectionRules"),
            type = "string",
            name = "SelectionRules",
            target_id = prelude.String.id,
        }),
    },
})

M.DataMigrationSettings = schema.new({
    id = id.from(_N, "DataMigrationSettings"),
    type = "structure",
    members = {
        NumberOfJobs = schema.new({
            id = id.from(_N, "DataMigrationSettings", "NumberOfJobs"),
            type = "integer",
            name = "NumberOfJobs",
            target_id = prelude.Integer.id,
        }),
        CloudwatchLogsEnabled = schema.new({
            id = id.from(_N, "DataMigrationSettings", "CloudwatchLogsEnabled"),
            type = "boolean",
            name = "CloudwatchLogsEnabled",
            target_id = prelude.Boolean.id,
        }),
        SelectionRules = schema.new({
            id = id.from(_N, "DataMigrationSettings", "SelectionRules"),
            type = "string",
            name = "SelectionRules",
            target_id = prelude.String.id,
        }),
    },
})

M.DataMigrationStatistics = schema.new({
    id = id.from(_N, "DataMigrationStatistics"),
    type = "structure",
    members = {
        TablesLoaded = schema.new({
            id = id.from(_N, "DataMigrationStatistics", "TablesLoaded"),
            type = "integer",
            name = "TablesLoaded",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        ElapsedTimeMillis = schema.new({
            id = id.from(_N, "DataMigrationStatistics", "ElapsedTimeMillis"),
            type = "long",
            name = "ElapsedTimeMillis",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        TablesLoading = schema.new({
            id = id.from(_N, "DataMigrationStatistics", "TablesLoading"),
            type = "integer",
            name = "TablesLoading",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        FullLoadPercentage = schema.new({
            id = id.from(_N, "DataMigrationStatistics", "FullLoadPercentage"),
            type = "integer",
            name = "FullLoadPercentage",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        CDCLatency = schema.new({
            id = id.from(_N, "DataMigrationStatistics", "CDCLatency"),
            type = "integer",
            name = "CDCLatency",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        TablesQueued = schema.new({
            id = id.from(_N, "DataMigrationStatistics", "TablesQueued"),
            type = "integer",
            name = "TablesQueued",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        TablesErrored = schema.new({
            id = id.from(_N, "DataMigrationStatistics", "TablesErrored"),
            type = "integer",
            name = "TablesErrored",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        StartTime = schema.new({
            id = id.from(_N, "DataMigrationStatistics", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        StopTime = schema.new({
            id = id.from(_N, "DataMigrationStatistics", "StopTime"),
            type = "timestamp",
            name = "StopTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.DataMigration = schema.new({
    id = id.from(_N, "DataMigration"),
    type = "structure",
    members = {
        DataMigrationName = schema.new({
            id = id.from(_N, "DataMigration", "DataMigrationName"),
            type = "string",
            name = "DataMigrationName",
            target_id = prelude.String.id,
        }),
        DataMigrationArn = schema.new({
            id = id.from(_N, "DataMigration", "DataMigrationArn"),
            type = "string",
            name = "DataMigrationArn",
            target_id = prelude.String.id,
        }),
        DataMigrationCreateTime = schema.new({
            id = id.from(_N, "DataMigration", "DataMigrationCreateTime"),
            type = "timestamp",
            name = "DataMigrationCreateTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        DataMigrationStartTime = schema.new({
            id = id.from(_N, "DataMigration", "DataMigrationStartTime"),
            type = "timestamp",
            name = "DataMigrationStartTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        DataMigrationEndTime = schema.new({
            id = id.from(_N, "DataMigration", "DataMigrationEndTime"),
            type = "timestamp",
            name = "DataMigrationEndTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        ServiceAccessRoleArn = schema.new({
            id = id.from(_N, "DataMigration", "ServiceAccessRoleArn"),
            type = "string",
            name = "ServiceAccessRoleArn",
            target_id = prelude.String.id,
        }),
        MigrationProjectArn = schema.new({
            id = id.from(_N, "DataMigration", "MigrationProjectArn"),
            type = "string",
            name = "MigrationProjectArn",
            target_id = prelude.String.id,
        }),
        DataMigrationType = schema.new({
            id = id.from(_N, "DataMigration", "DataMigrationType"),
            type = "string",
            name = "DataMigrationType",
            target_id = prelude.String.id,
        }),
        DataMigrationSettings = schema.new({
            id = id.from(_N, "DataMigration", "DataMigrationSettings"),
            type = "structure",
            name = "DataMigrationSettings",
            target_id = id.from(_N, "DataMigrationSettings"),
            target = M.DataMigrationSettings,
        }),
        SourceDataSettings = schema.new({
            id = id.from(_N, "DataMigration", "SourceDataSettings"),
            type = "list",
            name = "SourceDataSettings",
            target_id = prelude.Document.id,
            list_member = M.SourceDataSetting,
        }),
        TargetDataSettings = schema.new({
            id = id.from(_N, "DataMigration", "TargetDataSettings"),
            type = "list",
            name = "TargetDataSettings",
            target_id = prelude.Document.id,
            list_member = M.TargetDataSetting,
        }),
        DataMigrationStatistics = schema.new({
            id = id.from(_N, "DataMigration", "DataMigrationStatistics"),
            type = "structure",
            name = "DataMigrationStatistics",
            target_id = id.from(_N, "DataMigrationStatistics"),
            target = M.DataMigrationStatistics,
        }),
        DataMigrationStatus = schema.new({
            id = id.from(_N, "DataMigration", "DataMigrationStatus"),
            type = "string",
            name = "DataMigrationStatus",
            target_id = prelude.String.id,
        }),
        PublicIpAddresses = schema.new({
            id = id.from(_N, "DataMigration", "PublicIpAddresses"),
            type = "list",
            name = "PublicIpAddresses",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        DataMigrationCidrBlocks = schema.new({
            id = id.from(_N, "DataMigration", "DataMigrationCidrBlocks"),
            type = "list",
            name = "DataMigrationCidrBlocks",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        LastFailureMessage = schema.new({
            id = id.from(_N, "DataMigration", "LastFailureMessage"),
            type = "string",
            name = "LastFailureMessage",
            target_id = prelude.String.id,
        }),
        StopReason = schema.new({
            id = id.from(_N, "DataMigration", "StopReason"),
            type = "string",
            name = "StopReason",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateDataMigrationOutput = schema.new({
    id = id.from(_N, "CreateDataMigrationResponse"),
    type = "structure",
    members = {
        DataMigration = schema.new({
            id = id.from(_N, "CreateDataMigrationOutput", "DataMigration"),
            type = "structure",
            name = "DataMigration",
            target_id = id.from(_N, "DataMigration"),
            target = M.DataMigration,
        }),
    },
})

M.FailedDependencyFault = schema.new({
    id = id.from(_N, "FailedDependencyFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "FailedDependencyFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidOperationFault = schema.new({
    id = id.from(_N, "InvalidOperationFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidOperationFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ResourceAlreadyExistsFault = schema.new({
    id = id.from(_N, "ResourceAlreadyExistsFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ResourceAlreadyExistsFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
        resourceArn = schema.new({
            id = id.from(_N, "ResourceAlreadyExistsFault", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
        }),
    },
})

M.ResourceQuotaExceededFault = schema.new({
    id = id.from(_N, "ResourceQuotaExceededFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ResourceQuotaExceededFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DocDbDataProviderSettings = schema.new({
    id = id.from(_N, "DocDbDataProviderSettings"),
    type = "structure",
    members = {
        ServerName = schema.new({
            id = id.from(_N, "DocDbDataProviderSettings", "ServerName"),
            type = "string",
            name = "ServerName",
            target_id = prelude.String.id,
        }),
        Port = schema.new({
            id = id.from(_N, "DocDbDataProviderSettings", "Port"),
            type = "integer",
            name = "Port",
            target_id = prelude.Integer.id,
        }),
        DatabaseName = schema.new({
            id = id.from(_N, "DocDbDataProviderSettings", "DatabaseName"),
            type = "string",
            name = "DatabaseName",
            target_id = prelude.String.id,
        }),
        SslMode = schema.new({
            id = id.from(_N, "DocDbDataProviderSettings", "SslMode"),
            type = "string",
            name = "SslMode",
            target_id = prelude.String.id,
        }),
        CertificateArn = schema.new({
            id = id.from(_N, "DocDbDataProviderSettings", "CertificateArn"),
            type = "string",
            name = "CertificateArn",
            target_id = prelude.String.id,
        }),
    },
})

M.IbmDb2LuwDataProviderSettings = schema.new({
    id = id.from(_N, "IbmDb2LuwDataProviderSettings"),
    type = "structure",
    members = {
        ServerName = schema.new({
            id = id.from(_N, "IbmDb2LuwDataProviderSettings", "ServerName"),
            type = "string",
            name = "ServerName",
            target_id = prelude.String.id,
        }),
        Port = schema.new({
            id = id.from(_N, "IbmDb2LuwDataProviderSettings", "Port"),
            type = "integer",
            name = "Port",
            target_id = prelude.Integer.id,
        }),
        DatabaseName = schema.new({
            id = id.from(_N, "IbmDb2LuwDataProviderSettings", "DatabaseName"),
            type = "string",
            name = "DatabaseName",
            target_id = prelude.String.id,
        }),
        SslMode = schema.new({
            id = id.from(_N, "IbmDb2LuwDataProviderSettings", "SslMode"),
            type = "string",
            name = "SslMode",
            target_id = prelude.String.id,
        }),
        CertificateArn = schema.new({
            id = id.from(_N, "IbmDb2LuwDataProviderSettings", "CertificateArn"),
            type = "string",
            name = "CertificateArn",
            target_id = prelude.String.id,
        }),
        EncryptionAlgorithm = schema.new({
            id = id.from(_N, "IbmDb2LuwDataProviderSettings", "EncryptionAlgorithm"),
            type = "integer",
            name = "EncryptionAlgorithm",
            target_id = prelude.Integer.id,
        }),
        SecurityMechanism = schema.new({
            id = id.from(_N, "IbmDb2LuwDataProviderSettings", "SecurityMechanism"),
            type = "integer",
            name = "SecurityMechanism",
            target_id = prelude.Integer.id,
        }),
        S3Path = schema.new({
            id = id.from(_N, "IbmDb2LuwDataProviderSettings", "S3Path"),
            type = "string",
            name = "S3Path",
            target_id = prelude.String.id,
        }),
        S3AccessRoleArn = schema.new({
            id = id.from(_N, "IbmDb2LuwDataProviderSettings", "S3AccessRoleArn"),
            type = "string",
            name = "S3AccessRoleArn",
            target_id = prelude.String.id,
        }),
    },
})

M.IbmDb2zOsDataProviderSettings = schema.new({
    id = id.from(_N, "IbmDb2zOsDataProviderSettings"),
    type = "structure",
    members = {
        ServerName = schema.new({
            id = id.from(_N, "IbmDb2zOsDataProviderSettings", "ServerName"),
            type = "string",
            name = "ServerName",
            target_id = prelude.String.id,
        }),
        Port = schema.new({
            id = id.from(_N, "IbmDb2zOsDataProviderSettings", "Port"),
            type = "integer",
            name = "Port",
            target_id = prelude.Integer.id,
        }),
        DatabaseName = schema.new({
            id = id.from(_N, "IbmDb2zOsDataProviderSettings", "DatabaseName"),
            type = "string",
            name = "DatabaseName",
            target_id = prelude.String.id,
        }),
        SslMode = schema.new({
            id = id.from(_N, "IbmDb2zOsDataProviderSettings", "SslMode"),
            type = "string",
            name = "SslMode",
            target_id = prelude.String.id,
        }),
        CertificateArn = schema.new({
            id = id.from(_N, "IbmDb2zOsDataProviderSettings", "CertificateArn"),
            type = "string",
            name = "CertificateArn",
            target_id = prelude.String.id,
        }),
        S3Path = schema.new({
            id = id.from(_N, "IbmDb2zOsDataProviderSettings", "S3Path"),
            type = "string",
            name = "S3Path",
            target_id = prelude.String.id,
        }),
        S3AccessRoleArn = schema.new({
            id = id.from(_N, "IbmDb2zOsDataProviderSettings", "S3AccessRoleArn"),
            type = "string",
            name = "S3AccessRoleArn",
            target_id = prelude.String.id,
        }),
    },
})

M.MariaDbDataProviderSettings = schema.new({
    id = id.from(_N, "MariaDbDataProviderSettings"),
    type = "structure",
    members = {
        ServerName = schema.new({
            id = id.from(_N, "MariaDbDataProviderSettings", "ServerName"),
            type = "string",
            name = "ServerName",
            target_id = prelude.String.id,
        }),
        Port = schema.new({
            id = id.from(_N, "MariaDbDataProviderSettings", "Port"),
            type = "integer",
            name = "Port",
            target_id = prelude.Integer.id,
        }),
        SslMode = schema.new({
            id = id.from(_N, "MariaDbDataProviderSettings", "SslMode"),
            type = "string",
            name = "SslMode",
            target_id = prelude.String.id,
        }),
        CertificateArn = schema.new({
            id = id.from(_N, "MariaDbDataProviderSettings", "CertificateArn"),
            type = "string",
            name = "CertificateArn",
            target_id = prelude.String.id,
        }),
        S3Path = schema.new({
            id = id.from(_N, "MariaDbDataProviderSettings", "S3Path"),
            type = "string",
            name = "S3Path",
            target_id = prelude.String.id,
        }),
        S3AccessRoleArn = schema.new({
            id = id.from(_N, "MariaDbDataProviderSettings", "S3AccessRoleArn"),
            type = "string",
            name = "S3AccessRoleArn",
            target_id = prelude.String.id,
        }),
    },
})

M.MicrosoftSqlServerDataProviderSettings = schema.new({
    id = id.from(_N, "MicrosoftSqlServerDataProviderSettings"),
    type = "structure",
    members = {
        ServerName = schema.new({
            id = id.from(_N, "MicrosoftSqlServerDataProviderSettings", "ServerName"),
            type = "string",
            name = "ServerName",
            target_id = prelude.String.id,
        }),
        Port = schema.new({
            id = id.from(_N, "MicrosoftSqlServerDataProviderSettings", "Port"),
            type = "integer",
            name = "Port",
            target_id = prelude.Integer.id,
        }),
        DatabaseName = schema.new({
            id = id.from(_N, "MicrosoftSqlServerDataProviderSettings", "DatabaseName"),
            type = "string",
            name = "DatabaseName",
            target_id = prelude.String.id,
        }),
        SslMode = schema.new({
            id = id.from(_N, "MicrosoftSqlServerDataProviderSettings", "SslMode"),
            type = "string",
            name = "SslMode",
            target_id = prelude.String.id,
        }),
        CertificateArn = schema.new({
            id = id.from(_N, "MicrosoftSqlServerDataProviderSettings", "CertificateArn"),
            type = "string",
            name = "CertificateArn",
            target_id = prelude.String.id,
        }),
        S3Path = schema.new({
            id = id.from(_N, "MicrosoftSqlServerDataProviderSettings", "S3Path"),
            type = "string",
            name = "S3Path",
            target_id = prelude.String.id,
        }),
        S3AccessRoleArn = schema.new({
            id = id.from(_N, "MicrosoftSqlServerDataProviderSettings", "S3AccessRoleArn"),
            type = "string",
            name = "S3AccessRoleArn",
            target_id = prelude.String.id,
        }),
    },
})

M.MongoDbDataProviderSettings = schema.new({
    id = id.from(_N, "MongoDbDataProviderSettings"),
    type = "structure",
    members = {
        ServerName = schema.new({
            id = id.from(_N, "MongoDbDataProviderSettings", "ServerName"),
            type = "string",
            name = "ServerName",
            target_id = prelude.String.id,
        }),
        Port = schema.new({
            id = id.from(_N, "MongoDbDataProviderSettings", "Port"),
            type = "integer",
            name = "Port",
            target_id = prelude.Integer.id,
        }),
        DatabaseName = schema.new({
            id = id.from(_N, "MongoDbDataProviderSettings", "DatabaseName"),
            type = "string",
            name = "DatabaseName",
            target_id = prelude.String.id,
        }),
        SslMode = schema.new({
            id = id.from(_N, "MongoDbDataProviderSettings", "SslMode"),
            type = "string",
            name = "SslMode",
            target_id = prelude.String.id,
        }),
        CertificateArn = schema.new({
            id = id.from(_N, "MongoDbDataProviderSettings", "CertificateArn"),
            type = "string",
            name = "CertificateArn",
            target_id = prelude.String.id,
        }),
        AuthType = schema.new({
            id = id.from(_N, "MongoDbDataProviderSettings", "AuthType"),
            type = "string",
            name = "AuthType",
            target_id = prelude.String.id,
        }),
        AuthSource = schema.new({
            id = id.from(_N, "MongoDbDataProviderSettings", "AuthSource"),
            type = "string",
            name = "AuthSource",
            target_id = prelude.String.id,
        }),
        AuthMechanism = schema.new({
            id = id.from(_N, "MongoDbDataProviderSettings", "AuthMechanism"),
            type = "string",
            name = "AuthMechanism",
            target_id = prelude.String.id,
        }),
    },
})

M.MySqlDataProviderSettings = schema.new({
    id = id.from(_N, "MySqlDataProviderSettings"),
    type = "structure",
    members = {
        ServerName = schema.new({
            id = id.from(_N, "MySqlDataProviderSettings", "ServerName"),
            type = "string",
            name = "ServerName",
            target_id = prelude.String.id,
        }),
        Port = schema.new({
            id = id.from(_N, "MySqlDataProviderSettings", "Port"),
            type = "integer",
            name = "Port",
            target_id = prelude.Integer.id,
        }),
        SslMode = schema.new({
            id = id.from(_N, "MySqlDataProviderSettings", "SslMode"),
            type = "string",
            name = "SslMode",
            target_id = prelude.String.id,
        }),
        CertificateArn = schema.new({
            id = id.from(_N, "MySqlDataProviderSettings", "CertificateArn"),
            type = "string",
            name = "CertificateArn",
            target_id = prelude.String.id,
        }),
        S3Path = schema.new({
            id = id.from(_N, "MySqlDataProviderSettings", "S3Path"),
            type = "string",
            name = "S3Path",
            target_id = prelude.String.id,
        }),
        S3AccessRoleArn = schema.new({
            id = id.from(_N, "MySqlDataProviderSettings", "S3AccessRoleArn"),
            type = "string",
            name = "S3AccessRoleArn",
            target_id = prelude.String.id,
        }),
    },
})

M.OracleDataProviderSettings = schema.new({
    id = id.from(_N, "OracleDataProviderSettings"),
    type = "structure",
    members = {
        ServerName = schema.new({
            id = id.from(_N, "OracleDataProviderSettings", "ServerName"),
            type = "string",
            name = "ServerName",
            target_id = prelude.String.id,
        }),
        Port = schema.new({
            id = id.from(_N, "OracleDataProviderSettings", "Port"),
            type = "integer",
            name = "Port",
            target_id = prelude.Integer.id,
        }),
        DatabaseName = schema.new({
            id = id.from(_N, "OracleDataProviderSettings", "DatabaseName"),
            type = "string",
            name = "DatabaseName",
            target_id = prelude.String.id,
        }),
        SslMode = schema.new({
            id = id.from(_N, "OracleDataProviderSettings", "SslMode"),
            type = "string",
            name = "SslMode",
            target_id = prelude.String.id,
        }),
        CertificateArn = schema.new({
            id = id.from(_N, "OracleDataProviderSettings", "CertificateArn"),
            type = "string",
            name = "CertificateArn",
            target_id = prelude.String.id,
        }),
        AsmServer = schema.new({
            id = id.from(_N, "OracleDataProviderSettings", "AsmServer"),
            type = "string",
            name = "AsmServer",
            target_id = prelude.String.id,
        }),
        SecretsManagerOracleAsmSecretId = schema.new({
            id = id.from(_N, "OracleDataProviderSettings", "SecretsManagerOracleAsmSecretId"),
            type = "string",
            name = "SecretsManagerOracleAsmSecretId",
            target_id = prelude.String.id,
        }),
        SecretsManagerOracleAsmAccessRoleArn = schema.new({
            id = id.from(_N, "OracleDataProviderSettings", "SecretsManagerOracleAsmAccessRoleArn"),
            type = "string",
            name = "SecretsManagerOracleAsmAccessRoleArn",
            target_id = prelude.String.id,
        }),
        SecretsManagerSecurityDbEncryptionSecretId = schema.new({
            id = id.from(_N, "OracleDataProviderSettings", "SecretsManagerSecurityDbEncryptionSecretId"),
            type = "string",
            name = "SecretsManagerSecurityDbEncryptionSecretId",
            target_id = prelude.String.id,
        }),
        SecretsManagerSecurityDbEncryptionAccessRoleArn = schema.new({
            id = id.from(_N, "OracleDataProviderSettings", "SecretsManagerSecurityDbEncryptionAccessRoleArn"),
            type = "string",
            name = "SecretsManagerSecurityDbEncryptionAccessRoleArn",
            target_id = prelude.String.id,
        }),
        S3Path = schema.new({
            id = id.from(_N, "OracleDataProviderSettings", "S3Path"),
            type = "string",
            name = "S3Path",
            target_id = prelude.String.id,
        }),
        S3AccessRoleArn = schema.new({
            id = id.from(_N, "OracleDataProviderSettings", "S3AccessRoleArn"),
            type = "string",
            name = "S3AccessRoleArn",
            target_id = prelude.String.id,
        }),
    },
})

M.PostgreSqlDataProviderSettings = schema.new({
    id = id.from(_N, "PostgreSqlDataProviderSettings"),
    type = "structure",
    members = {
        ServerName = schema.new({
            id = id.from(_N, "PostgreSqlDataProviderSettings", "ServerName"),
            type = "string",
            name = "ServerName",
            target_id = prelude.String.id,
        }),
        Port = schema.new({
            id = id.from(_N, "PostgreSqlDataProviderSettings", "Port"),
            type = "integer",
            name = "Port",
            target_id = prelude.Integer.id,
        }),
        DatabaseName = schema.new({
            id = id.from(_N, "PostgreSqlDataProviderSettings", "DatabaseName"),
            type = "string",
            name = "DatabaseName",
            target_id = prelude.String.id,
        }),
        SslMode = schema.new({
            id = id.from(_N, "PostgreSqlDataProviderSettings", "SslMode"),
            type = "string",
            name = "SslMode",
            target_id = prelude.String.id,
        }),
        CertificateArn = schema.new({
            id = id.from(_N, "PostgreSqlDataProviderSettings", "CertificateArn"),
            type = "string",
            name = "CertificateArn",
            target_id = prelude.String.id,
        }),
        S3Path = schema.new({
            id = id.from(_N, "PostgreSqlDataProviderSettings", "S3Path"),
            type = "string",
            name = "S3Path",
            target_id = prelude.String.id,
        }),
        S3AccessRoleArn = schema.new({
            id = id.from(_N, "PostgreSqlDataProviderSettings", "S3AccessRoleArn"),
            type = "string",
            name = "S3AccessRoleArn",
            target_id = prelude.String.id,
        }),
    },
})

M.RedshiftDataProviderSettings = schema.new({
    id = id.from(_N, "RedshiftDataProviderSettings"),
    type = "structure",
    members = {
        ServerName = schema.new({
            id = id.from(_N, "RedshiftDataProviderSettings", "ServerName"),
            type = "string",
            name = "ServerName",
            target_id = prelude.String.id,
        }),
        Port = schema.new({
            id = id.from(_N, "RedshiftDataProviderSettings", "Port"),
            type = "integer",
            name = "Port",
            target_id = prelude.Integer.id,
        }),
        DatabaseName = schema.new({
            id = id.from(_N, "RedshiftDataProviderSettings", "DatabaseName"),
            type = "string",
            name = "DatabaseName",
            target_id = prelude.String.id,
        }),
        S3Path = schema.new({
            id = id.from(_N, "RedshiftDataProviderSettings", "S3Path"),
            type = "string",
            name = "S3Path",
            target_id = prelude.String.id,
        }),
        S3AccessRoleArn = schema.new({
            id = id.from(_N, "RedshiftDataProviderSettings", "S3AccessRoleArn"),
            type = "string",
            name = "S3AccessRoleArn",
            target_id = prelude.String.id,
        }),
    },
})

M.SybaseAseDataProviderSettings = schema.new({
    id = id.from(_N, "SybaseAseDataProviderSettings"),
    type = "structure",
    members = {
        ServerName = schema.new({
            id = id.from(_N, "SybaseAseDataProviderSettings", "ServerName"),
            type = "string",
            name = "ServerName",
            target_id = prelude.String.id,
        }),
        Port = schema.new({
            id = id.from(_N, "SybaseAseDataProviderSettings", "Port"),
            type = "integer",
            name = "Port",
            target_id = prelude.Integer.id,
        }),
        DatabaseName = schema.new({
            id = id.from(_N, "SybaseAseDataProviderSettings", "DatabaseName"),
            type = "string",
            name = "DatabaseName",
            target_id = prelude.String.id,
        }),
        SslMode = schema.new({
            id = id.from(_N, "SybaseAseDataProviderSettings", "SslMode"),
            type = "string",
            name = "SslMode",
            target_id = prelude.String.id,
        }),
        EncryptPassword = schema.new({
            id = id.from(_N, "SybaseAseDataProviderSettings", "EncryptPassword"),
            type = "boolean",
            name = "EncryptPassword",
            target_id = prelude.Boolean.id,
        }),
        CertificateArn = schema.new({
            id = id.from(_N, "SybaseAseDataProviderSettings", "CertificateArn"),
            type = "string",
            name = "CertificateArn",
            target_id = prelude.String.id,
        }),
    },
})

M.DataProviderSettings = schema.new({
    id = id.from(_N, "DataProviderSettings"),
    type = "union",
    members = {
        RedshiftSettings = schema.new({
            id = id.from(_N, "DataProviderSettings", "RedshiftSettings"),
            type = "structure",
            name = "RedshiftSettings",
            target_id = id.from(_N, "RedshiftDataProviderSettings"),
            target = M.RedshiftDataProviderSettings,
        }),
        PostgreSqlSettings = schema.new({
            id = id.from(_N, "DataProviderSettings", "PostgreSqlSettings"),
            type = "structure",
            name = "PostgreSqlSettings",
            target_id = id.from(_N, "PostgreSqlDataProviderSettings"),
            target = M.PostgreSqlDataProviderSettings,
        }),
        MySqlSettings = schema.new({
            id = id.from(_N, "DataProviderSettings", "MySqlSettings"),
            type = "structure",
            name = "MySqlSettings",
            target_id = id.from(_N, "MySqlDataProviderSettings"),
            target = M.MySqlDataProviderSettings,
        }),
        OracleSettings = schema.new({
            id = id.from(_N, "DataProviderSettings", "OracleSettings"),
            type = "structure",
            name = "OracleSettings",
            target_id = id.from(_N, "OracleDataProviderSettings"),
            target = M.OracleDataProviderSettings,
        }),
        SybaseAseSettings = schema.new({
            id = id.from(_N, "DataProviderSettings", "SybaseAseSettings"),
            type = "structure",
            name = "SybaseAseSettings",
            target_id = id.from(_N, "SybaseAseDataProviderSettings"),
            target = M.SybaseAseDataProviderSettings,
        }),
        MicrosoftSqlServerSettings = schema.new({
            id = id.from(_N, "DataProviderSettings", "MicrosoftSqlServerSettings"),
            type = "structure",
            name = "MicrosoftSqlServerSettings",
            target_id = id.from(_N, "MicrosoftSqlServerDataProviderSettings"),
            target = M.MicrosoftSqlServerDataProviderSettings,
        }),
        DocDbSettings = schema.new({
            id = id.from(_N, "DataProviderSettings", "DocDbSettings"),
            type = "structure",
            name = "DocDbSettings",
            target_id = id.from(_N, "DocDbDataProviderSettings"),
            target = M.DocDbDataProviderSettings,
        }),
        MariaDbSettings = schema.new({
            id = id.from(_N, "DataProviderSettings", "MariaDbSettings"),
            type = "structure",
            name = "MariaDbSettings",
            target_id = id.from(_N, "MariaDbDataProviderSettings"),
            target = M.MariaDbDataProviderSettings,
        }),
        IbmDb2LuwSettings = schema.new({
            id = id.from(_N, "DataProviderSettings", "IbmDb2LuwSettings"),
            type = "structure",
            name = "IbmDb2LuwSettings",
            target_id = id.from(_N, "IbmDb2LuwDataProviderSettings"),
            target = M.IbmDb2LuwDataProviderSettings,
        }),
        IbmDb2zOsSettings = schema.new({
            id = id.from(_N, "DataProviderSettings", "IbmDb2zOsSettings"),
            type = "structure",
            name = "IbmDb2zOsSettings",
            target_id = id.from(_N, "IbmDb2zOsDataProviderSettings"),
            target = M.IbmDb2zOsDataProviderSettings,
        }),
        MongoDbSettings = schema.new({
            id = id.from(_N, "DataProviderSettings", "MongoDbSettings"),
            type = "structure",
            name = "MongoDbSettings",
            target_id = id.from(_N, "MongoDbDataProviderSettings"),
            target = M.MongoDbDataProviderSettings,
        }),
    },
})

M.CreateDataProviderInput = schema.new({
    id = id.from(_N, "CreateDataProviderMessage"),
    type = "structure",
    members = {
        DataProviderName = schema.new({
            id = id.from(_N, "CreateDataProviderInput", "DataProviderName"),
            type = "string",
            name = "DataProviderName",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "CreateDataProviderInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Engine = schema.new({
            id = id.from(_N, "CreateDataProviderInput", "Engine"),
            type = "string",
            name = "Engine",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Virtual = schema.new({
            id = id.from(_N, "CreateDataProviderInput", "Virtual"),
            type = "boolean",
            name = "Virtual",
            target_id = prelude.Boolean.id,
        }),
        Settings = schema.new({
            id = id.from(_N, "CreateDataProviderInput", "Settings"),
            type = "union",
            name = "Settings",
            target_id = id.from(_N, "DataProviderSettings"),
            target = M.DataProviderSettings,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateDataProviderInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Tag, traits = { [traits.XML_NAME] = { name = "Tag" } } }),
        }),
    },
})

M.DataProvider = schema.new({
    id = id.from(_N, "DataProvider"),
    type = "structure",
    members = {
        DataProviderName = schema.new({
            id = id.from(_N, "DataProvider", "DataProviderName"),
            type = "string",
            name = "DataProviderName",
            target_id = prelude.String.id,
        }),
        DataProviderArn = schema.new({
            id = id.from(_N, "DataProvider", "DataProviderArn"),
            type = "string",
            name = "DataProviderArn",
            target_id = prelude.String.id,
        }),
        DataProviderCreationTime = schema.new({
            id = id.from(_N, "DataProvider", "DataProviderCreationTime"),
            type = "timestamp",
            name = "DataProviderCreationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        Description = schema.new({
            id = id.from(_N, "DataProvider", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Engine = schema.new({
            id = id.from(_N, "DataProvider", "Engine"),
            type = "string",
            name = "Engine",
            target_id = prelude.String.id,
        }),
        Virtual = schema.new({
            id = id.from(_N, "DataProvider", "Virtual"),
            type = "boolean",
            name = "Virtual",
            target_id = prelude.Boolean.id,
        }),
        Settings = schema.new({
            id = id.from(_N, "DataProvider", "Settings"),
            type = "union",
            name = "Settings",
            target_id = id.from(_N, "DataProviderSettings"),
            target = M.DataProviderSettings,
        }),
    },
})

M.CreateDataProviderOutput = schema.new({
    id = id.from(_N, "CreateDataProviderResponse"),
    type = "structure",
    members = {
        DataProvider = schema.new({
            id = id.from(_N, "CreateDataProviderOutput", "DataProvider"),
            type = "structure",
            name = "DataProvider",
            target_id = id.from(_N, "DataProvider"),
            target = M.DataProvider,
        }),
    },
})

M.DmsTransferSettings = schema.new({
    id = id.from(_N, "DmsTransferSettings"),
    type = "structure",
    members = {
        ServiceAccessRoleArn = schema.new({
            id = id.from(_N, "DmsTransferSettings", "ServiceAccessRoleArn"),
            type = "string",
            name = "ServiceAccessRoleArn",
            target_id = prelude.String.id,
        }),
        BucketName = schema.new({
            id = id.from(_N, "DmsTransferSettings", "BucketName"),
            type = "string",
            name = "BucketName",
            target_id = prelude.String.id,
        }),
    },
})

M.DocDbSettings = schema.new({
    id = id.from(_N, "DocDbSettings"),
    type = "structure",
    members = {
        Username = schema.new({
            id = id.from(_N, "DocDbSettings", "Username"),
            type = "string",
            name = "Username",
            target_id = prelude.String.id,
        }),
        Password = schema.new({
            id = id.from(_N, "DocDbSettings", "Password"),
            type = "string",
            name = "Password",
            target_id = prelude.String.id,
        }),
        ServerName = schema.new({
            id = id.from(_N, "DocDbSettings", "ServerName"),
            type = "string",
            name = "ServerName",
            target_id = prelude.String.id,
        }),
        Port = schema.new({
            id = id.from(_N, "DocDbSettings", "Port"),
            type = "integer",
            name = "Port",
            target_id = prelude.Integer.id,
        }),
        DatabaseName = schema.new({
            id = id.from(_N, "DocDbSettings", "DatabaseName"),
            type = "string",
            name = "DatabaseName",
            target_id = prelude.String.id,
        }),
        NestingLevel = schema.new({
            id = id.from(_N, "DocDbSettings", "NestingLevel"),
            type = "string",
            name = "NestingLevel",
            target_id = prelude.String.id,
        }),
        ExtractDocId = schema.new({
            id = id.from(_N, "DocDbSettings", "ExtractDocId"),
            type = "boolean",
            name = "ExtractDocId",
            target_id = prelude.Boolean.id,
        }),
        DocsToInvestigate = schema.new({
            id = id.from(_N, "DocDbSettings", "DocsToInvestigate"),
            type = "integer",
            name = "DocsToInvestigate",
            target_id = prelude.Integer.id,
        }),
        KmsKeyId = schema.new({
            id = id.from(_N, "DocDbSettings", "KmsKeyId"),
            type = "string",
            name = "KmsKeyId",
            target_id = prelude.String.id,
        }),
        SecretsManagerAccessRoleArn = schema.new({
            id = id.from(_N, "DocDbSettings", "SecretsManagerAccessRoleArn"),
            type = "string",
            name = "SecretsManagerAccessRoleArn",
            target_id = prelude.String.id,
        }),
        SecretsManagerSecretId = schema.new({
            id = id.from(_N, "DocDbSettings", "SecretsManagerSecretId"),
            type = "string",
            name = "SecretsManagerSecretId",
            target_id = prelude.String.id,
        }),
        UseUpdateLookUp = schema.new({
            id = id.from(_N, "DocDbSettings", "UseUpdateLookUp"),
            type = "boolean",
            name = "UseUpdateLookUp",
            target_id = prelude.Boolean.id,
        }),
        ReplicateShardCollections = schema.new({
            id = id.from(_N, "DocDbSettings", "ReplicateShardCollections"),
            type = "boolean",
            name = "ReplicateShardCollections",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.DynamoDbSettings = schema.new({
    id = id.from(_N, "DynamoDbSettings"),
    type = "structure",
    members = {
        ServiceAccessRoleArn = schema.new({
            id = id.from(_N, "DynamoDbSettings", "ServiceAccessRoleArn"),
            type = "string",
            name = "ServiceAccessRoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ElasticsearchSettings = schema.new({
    id = id.from(_N, "ElasticsearchSettings"),
    type = "structure",
    members = {
        ServiceAccessRoleArn = schema.new({
            id = id.from(_N, "ElasticsearchSettings", "ServiceAccessRoleArn"),
            type = "string",
            name = "ServiceAccessRoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EndpointUri = schema.new({
            id = id.from(_N, "ElasticsearchSettings", "EndpointUri"),
            type = "string",
            name = "EndpointUri",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        FullLoadErrorPercentage = schema.new({
            id = id.from(_N, "ElasticsearchSettings", "FullLoadErrorPercentage"),
            type = "integer",
            name = "FullLoadErrorPercentage",
            target_id = prelude.Integer.id,
        }),
        ErrorRetryDuration = schema.new({
            id = id.from(_N, "ElasticsearchSettings", "ErrorRetryDuration"),
            type = "integer",
            name = "ErrorRetryDuration",
            target_id = prelude.Integer.id,
        }),
        UseNewMappingType = schema.new({
            id = id.from(_N, "ElasticsearchSettings", "UseNewMappingType"),
            type = "boolean",
            name = "UseNewMappingType",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.GcpMySQLSettings = schema.new({
    id = id.from(_N, "GcpMySQLSettings"),
    type = "structure",
    members = {
        AfterConnectScript = schema.new({
            id = id.from(_N, "GcpMySQLSettings", "AfterConnectScript"),
            type = "string",
            name = "AfterConnectScript",
            target_id = prelude.String.id,
        }),
        CleanSourceMetadataOnMismatch = schema.new({
            id = id.from(_N, "GcpMySQLSettings", "CleanSourceMetadataOnMismatch"),
            type = "boolean",
            name = "CleanSourceMetadataOnMismatch",
            target_id = prelude.Boolean.id,
        }),
        DatabaseName = schema.new({
            id = id.from(_N, "GcpMySQLSettings", "DatabaseName"),
            type = "string",
            name = "DatabaseName",
            target_id = prelude.String.id,
        }),
        EventsPollInterval = schema.new({
            id = id.from(_N, "GcpMySQLSettings", "EventsPollInterval"),
            type = "integer",
            name = "EventsPollInterval",
            target_id = prelude.Integer.id,
        }),
        TargetDbType = schema.new({
            id = id.from(_N, "GcpMySQLSettings", "TargetDbType"),
            type = "string",
            name = "TargetDbType",
            target_id = prelude.String.id,
        }),
        MaxFileSize = schema.new({
            id = id.from(_N, "GcpMySQLSettings", "MaxFileSize"),
            type = "integer",
            name = "MaxFileSize",
            target_id = prelude.Integer.id,
        }),
        ParallelLoadThreads = schema.new({
            id = id.from(_N, "GcpMySQLSettings", "ParallelLoadThreads"),
            type = "integer",
            name = "ParallelLoadThreads",
            target_id = prelude.Integer.id,
        }),
        Password = schema.new({
            id = id.from(_N, "GcpMySQLSettings", "Password"),
            type = "string",
            name = "Password",
            target_id = prelude.String.id,
        }),
        Port = schema.new({
            id = id.from(_N, "GcpMySQLSettings", "Port"),
            type = "integer",
            name = "Port",
            target_id = prelude.Integer.id,
        }),
        ServerName = schema.new({
            id = id.from(_N, "GcpMySQLSettings", "ServerName"),
            type = "string",
            name = "ServerName",
            target_id = prelude.String.id,
        }),
        ServerTimezone = schema.new({
            id = id.from(_N, "GcpMySQLSettings", "ServerTimezone"),
            type = "string",
            name = "ServerTimezone",
            target_id = prelude.String.id,
        }),
        Username = schema.new({
            id = id.from(_N, "GcpMySQLSettings", "Username"),
            type = "string",
            name = "Username",
            target_id = prelude.String.id,
        }),
        SecretsManagerAccessRoleArn = schema.new({
            id = id.from(_N, "GcpMySQLSettings", "SecretsManagerAccessRoleArn"),
            type = "string",
            name = "SecretsManagerAccessRoleArn",
            target_id = prelude.String.id,
        }),
        SecretsManagerSecretId = schema.new({
            id = id.from(_N, "GcpMySQLSettings", "SecretsManagerSecretId"),
            type = "string",
            name = "SecretsManagerSecretId",
            target_id = prelude.String.id,
        }),
    },
})

M.IBMDb2Settings = schema.new({
    id = id.from(_N, "IBMDb2Settings"),
    type = "structure",
    members = {
        DatabaseName = schema.new({
            id = id.from(_N, "IBMDb2Settings", "DatabaseName"),
            type = "string",
            name = "DatabaseName",
            target_id = prelude.String.id,
        }),
        Password = schema.new({
            id = id.from(_N, "IBMDb2Settings", "Password"),
            type = "string",
            name = "Password",
            target_id = prelude.String.id,
        }),
        Port = schema.new({
            id = id.from(_N, "IBMDb2Settings", "Port"),
            type = "integer",
            name = "Port",
            target_id = prelude.Integer.id,
        }),
        ServerName = schema.new({
            id = id.from(_N, "IBMDb2Settings", "ServerName"),
            type = "string",
            name = "ServerName",
            target_id = prelude.String.id,
        }),
        SetDataCaptureChanges = schema.new({
            id = id.from(_N, "IBMDb2Settings", "SetDataCaptureChanges"),
            type = "boolean",
            name = "SetDataCaptureChanges",
            target_id = prelude.Boolean.id,
        }),
        CurrentLsn = schema.new({
            id = id.from(_N, "IBMDb2Settings", "CurrentLsn"),
            type = "string",
            name = "CurrentLsn",
            target_id = prelude.String.id,
        }),
        MaxKBytesPerRead = schema.new({
            id = id.from(_N, "IBMDb2Settings", "MaxKBytesPerRead"),
            type = "integer",
            name = "MaxKBytesPerRead",
            target_id = prelude.Integer.id,
        }),
        Username = schema.new({
            id = id.from(_N, "IBMDb2Settings", "Username"),
            type = "string",
            name = "Username",
            target_id = prelude.String.id,
        }),
        SecretsManagerAccessRoleArn = schema.new({
            id = id.from(_N, "IBMDb2Settings", "SecretsManagerAccessRoleArn"),
            type = "string",
            name = "SecretsManagerAccessRoleArn",
            target_id = prelude.String.id,
        }),
        SecretsManagerSecretId = schema.new({
            id = id.from(_N, "IBMDb2Settings", "SecretsManagerSecretId"),
            type = "string",
            name = "SecretsManagerSecretId",
            target_id = prelude.String.id,
        }),
        LoadTimeout = schema.new({
            id = id.from(_N, "IBMDb2Settings", "LoadTimeout"),
            type = "integer",
            name = "LoadTimeout",
            target_id = prelude.Integer.id,
        }),
        WriteBufferSize = schema.new({
            id = id.from(_N, "IBMDb2Settings", "WriteBufferSize"),
            type = "integer",
            name = "WriteBufferSize",
            target_id = prelude.Integer.id,
        }),
        MaxFileSize = schema.new({
            id = id.from(_N, "IBMDb2Settings", "MaxFileSize"),
            type = "integer",
            name = "MaxFileSize",
            target_id = prelude.Integer.id,
        }),
        KeepCsvFiles = schema.new({
            id = id.from(_N, "IBMDb2Settings", "KeepCsvFiles"),
            type = "boolean",
            name = "KeepCsvFiles",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.KafkaSettings = schema.new({
    id = id.from(_N, "KafkaSettings"),
    type = "structure",
    members = {
        Broker = schema.new({
            id = id.from(_N, "KafkaSettings", "Broker"),
            type = "string",
            name = "Broker",
            target_id = prelude.String.id,
        }),
        Topic = schema.new({
            id = id.from(_N, "KafkaSettings", "Topic"),
            type = "string",
            name = "Topic",
            target_id = prelude.String.id,
        }),
        MessageFormat = schema.new({
            id = id.from(_N, "KafkaSettings", "MessageFormat"),
            type = "string",
            name = "MessageFormat",
            target_id = prelude.String.id,
        }),
        IncludeTransactionDetails = schema.new({
            id = id.from(_N, "KafkaSettings", "IncludeTransactionDetails"),
            type = "boolean",
            name = "IncludeTransactionDetails",
            target_id = prelude.Boolean.id,
        }),
        IncludePartitionValue = schema.new({
            id = id.from(_N, "KafkaSettings", "IncludePartitionValue"),
            type = "boolean",
            name = "IncludePartitionValue",
            target_id = prelude.Boolean.id,
        }),
        PartitionIncludeSchemaTable = schema.new({
            id = id.from(_N, "KafkaSettings", "PartitionIncludeSchemaTable"),
            type = "boolean",
            name = "PartitionIncludeSchemaTable",
            target_id = prelude.Boolean.id,
        }),
        IncludeTableAlterOperations = schema.new({
            id = id.from(_N, "KafkaSettings", "IncludeTableAlterOperations"),
            type = "boolean",
            name = "IncludeTableAlterOperations",
            target_id = prelude.Boolean.id,
        }),
        IncludeControlDetails = schema.new({
            id = id.from(_N, "KafkaSettings", "IncludeControlDetails"),
            type = "boolean",
            name = "IncludeControlDetails",
            target_id = prelude.Boolean.id,
        }),
        MessageMaxBytes = schema.new({
            id = id.from(_N, "KafkaSettings", "MessageMaxBytes"),
            type = "integer",
            name = "MessageMaxBytes",
            target_id = prelude.Integer.id,
        }),
        IncludeNullAndEmpty = schema.new({
            id = id.from(_N, "KafkaSettings", "IncludeNullAndEmpty"),
            type = "boolean",
            name = "IncludeNullAndEmpty",
            target_id = prelude.Boolean.id,
        }),
        SecurityProtocol = schema.new({
            id = id.from(_N, "KafkaSettings", "SecurityProtocol"),
            type = "string",
            name = "SecurityProtocol",
            target_id = prelude.String.id,
        }),
        SslClientCertificateArn = schema.new({
            id = id.from(_N, "KafkaSettings", "SslClientCertificateArn"),
            type = "string",
            name = "SslClientCertificateArn",
            target_id = prelude.String.id,
        }),
        SslClientKeyArn = schema.new({
            id = id.from(_N, "KafkaSettings", "SslClientKeyArn"),
            type = "string",
            name = "SslClientKeyArn",
            target_id = prelude.String.id,
        }),
        SslClientKeyPassword = schema.new({
            id = id.from(_N, "KafkaSettings", "SslClientKeyPassword"),
            type = "string",
            name = "SslClientKeyPassword",
            target_id = prelude.String.id,
        }),
        SslCaCertificateArn = schema.new({
            id = id.from(_N, "KafkaSettings", "SslCaCertificateArn"),
            type = "string",
            name = "SslCaCertificateArn",
            target_id = prelude.String.id,
        }),
        SaslUsername = schema.new({
            id = id.from(_N, "KafkaSettings", "SaslUsername"),
            type = "string",
            name = "SaslUsername",
            target_id = prelude.String.id,
        }),
        SaslPassword = schema.new({
            id = id.from(_N, "KafkaSettings", "SaslPassword"),
            type = "string",
            name = "SaslPassword",
            target_id = prelude.String.id,
        }),
        NoHexPrefix = schema.new({
            id = id.from(_N, "KafkaSettings", "NoHexPrefix"),
            type = "boolean",
            name = "NoHexPrefix",
            target_id = prelude.Boolean.id,
        }),
        SaslMechanism = schema.new({
            id = id.from(_N, "KafkaSettings", "SaslMechanism"),
            type = "string",
            name = "SaslMechanism",
            target_id = prelude.String.id,
        }),
        SslEndpointIdentificationAlgorithm = schema.new({
            id = id.from(_N, "KafkaSettings", "SslEndpointIdentificationAlgorithm"),
            type = "string",
            name = "SslEndpointIdentificationAlgorithm",
            target_id = prelude.String.id,
        }),
        UseLargeIntegerValue = schema.new({
            id = id.from(_N, "KafkaSettings", "UseLargeIntegerValue"),
            type = "boolean",
            name = "UseLargeIntegerValue",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.KinesisSettings = schema.new({
    id = id.from(_N, "KinesisSettings"),
    type = "structure",
    members = {
        StreamArn = schema.new({
            id = id.from(_N, "KinesisSettings", "StreamArn"),
            type = "string",
            name = "StreamArn",
            target_id = prelude.String.id,
        }),
        MessageFormat = schema.new({
            id = id.from(_N, "KinesisSettings", "MessageFormat"),
            type = "string",
            name = "MessageFormat",
            target_id = prelude.String.id,
        }),
        ServiceAccessRoleArn = schema.new({
            id = id.from(_N, "KinesisSettings", "ServiceAccessRoleArn"),
            type = "string",
            name = "ServiceAccessRoleArn",
            target_id = prelude.String.id,
        }),
        IncludeTransactionDetails = schema.new({
            id = id.from(_N, "KinesisSettings", "IncludeTransactionDetails"),
            type = "boolean",
            name = "IncludeTransactionDetails",
            target_id = prelude.Boolean.id,
        }),
        IncludePartitionValue = schema.new({
            id = id.from(_N, "KinesisSettings", "IncludePartitionValue"),
            type = "boolean",
            name = "IncludePartitionValue",
            target_id = prelude.Boolean.id,
        }),
        PartitionIncludeSchemaTable = schema.new({
            id = id.from(_N, "KinesisSettings", "PartitionIncludeSchemaTable"),
            type = "boolean",
            name = "PartitionIncludeSchemaTable",
            target_id = prelude.Boolean.id,
        }),
        IncludeTableAlterOperations = schema.new({
            id = id.from(_N, "KinesisSettings", "IncludeTableAlterOperations"),
            type = "boolean",
            name = "IncludeTableAlterOperations",
            target_id = prelude.Boolean.id,
        }),
        IncludeControlDetails = schema.new({
            id = id.from(_N, "KinesisSettings", "IncludeControlDetails"),
            type = "boolean",
            name = "IncludeControlDetails",
            target_id = prelude.Boolean.id,
        }),
        IncludeNullAndEmpty = schema.new({
            id = id.from(_N, "KinesisSettings", "IncludeNullAndEmpty"),
            type = "boolean",
            name = "IncludeNullAndEmpty",
            target_id = prelude.Boolean.id,
        }),
        NoHexPrefix = schema.new({
            id = id.from(_N, "KinesisSettings", "NoHexPrefix"),
            type = "boolean",
            name = "NoHexPrefix",
            target_id = prelude.Boolean.id,
        }),
        UseLargeIntegerValue = schema.new({
            id = id.from(_N, "KinesisSettings", "UseLargeIntegerValue"),
            type = "boolean",
            name = "UseLargeIntegerValue",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.MicrosoftSQLServerSettings = schema.new({
    id = id.from(_N, "MicrosoftSQLServerSettings"),
    type = "structure",
    members = {
        Port = schema.new({
            id = id.from(_N, "MicrosoftSQLServerSettings", "Port"),
            type = "integer",
            name = "Port",
            target_id = prelude.Integer.id,
        }),
        BcpPacketSize = schema.new({
            id = id.from(_N, "MicrosoftSQLServerSettings", "BcpPacketSize"),
            type = "integer",
            name = "BcpPacketSize",
            target_id = prelude.Integer.id,
        }),
        DatabaseName = schema.new({
            id = id.from(_N, "MicrosoftSQLServerSettings", "DatabaseName"),
            type = "string",
            name = "DatabaseName",
            target_id = prelude.String.id,
        }),
        ControlTablesFileGroup = schema.new({
            id = id.from(_N, "MicrosoftSQLServerSettings", "ControlTablesFileGroup"),
            type = "string",
            name = "ControlTablesFileGroup",
            target_id = prelude.String.id,
        }),
        Password = schema.new({
            id = id.from(_N, "MicrosoftSQLServerSettings", "Password"),
            type = "string",
            name = "Password",
            target_id = prelude.String.id,
        }),
        QuerySingleAlwaysOnNode = schema.new({
            id = id.from(_N, "MicrosoftSQLServerSettings", "QuerySingleAlwaysOnNode"),
            type = "boolean",
            name = "QuerySingleAlwaysOnNode",
            target_id = prelude.Boolean.id,
        }),
        ReadBackupOnly = schema.new({
            id = id.from(_N, "MicrosoftSQLServerSettings", "ReadBackupOnly"),
            type = "boolean",
            name = "ReadBackupOnly",
            target_id = prelude.Boolean.id,
        }),
        SafeguardPolicy = schema.new({
            id = id.from(_N, "MicrosoftSQLServerSettings", "SafeguardPolicy"),
            type = "string",
            name = "SafeguardPolicy",
            target_id = prelude.String.id,
        }),
        ServerName = schema.new({
            id = id.from(_N, "MicrosoftSQLServerSettings", "ServerName"),
            type = "string",
            name = "ServerName",
            target_id = prelude.String.id,
        }),
        Username = schema.new({
            id = id.from(_N, "MicrosoftSQLServerSettings", "Username"),
            type = "string",
            name = "Username",
            target_id = prelude.String.id,
        }),
        UseBcpFullLoad = schema.new({
            id = id.from(_N, "MicrosoftSQLServerSettings", "UseBcpFullLoad"),
            type = "boolean",
            name = "UseBcpFullLoad",
            target_id = prelude.Boolean.id,
        }),
        UseThirdPartyBackupDevice = schema.new({
            id = id.from(_N, "MicrosoftSQLServerSettings", "UseThirdPartyBackupDevice"),
            type = "boolean",
            name = "UseThirdPartyBackupDevice",
            target_id = prelude.Boolean.id,
        }),
        SecretsManagerAccessRoleArn = schema.new({
            id = id.from(_N, "MicrosoftSQLServerSettings", "SecretsManagerAccessRoleArn"),
            type = "string",
            name = "SecretsManagerAccessRoleArn",
            target_id = prelude.String.id,
        }),
        SecretsManagerSecretId = schema.new({
            id = id.from(_N, "MicrosoftSQLServerSettings", "SecretsManagerSecretId"),
            type = "string",
            name = "SecretsManagerSecretId",
            target_id = prelude.String.id,
        }),
        TrimSpaceInChar = schema.new({
            id = id.from(_N, "MicrosoftSQLServerSettings", "TrimSpaceInChar"),
            type = "boolean",
            name = "TrimSpaceInChar",
            target_id = prelude.Boolean.id,
        }),
        TlogAccessMode = schema.new({
            id = id.from(_N, "MicrosoftSQLServerSettings", "TlogAccessMode"),
            type = "string",
            name = "TlogAccessMode",
            target_id = prelude.String.id,
        }),
        ForceLobLookup = schema.new({
            id = id.from(_N, "MicrosoftSQLServerSettings", "ForceLobLookup"),
            type = "boolean",
            name = "ForceLobLookup",
            target_id = prelude.Boolean.id,
        }),
        AuthenticationMethod = schema.new({
            id = id.from(_N, "MicrosoftSQLServerSettings", "AuthenticationMethod"),
            type = "string",
            name = "AuthenticationMethod",
            target_id = prelude.String.id,
        }),
    },
})

M.MongoDbSettings = schema.new({
    id = id.from(_N, "MongoDbSettings"),
    type = "structure",
    members = {
        Username = schema.new({
            id = id.from(_N, "MongoDbSettings", "Username"),
            type = "string",
            name = "Username",
            target_id = prelude.String.id,
        }),
        Password = schema.new({
            id = id.from(_N, "MongoDbSettings", "Password"),
            type = "string",
            name = "Password",
            target_id = prelude.String.id,
        }),
        ServerName = schema.new({
            id = id.from(_N, "MongoDbSettings", "ServerName"),
            type = "string",
            name = "ServerName",
            target_id = prelude.String.id,
        }),
        Port = schema.new({
            id = id.from(_N, "MongoDbSettings", "Port"),
            type = "integer",
            name = "Port",
            target_id = prelude.Integer.id,
        }),
        DatabaseName = schema.new({
            id = id.from(_N, "MongoDbSettings", "DatabaseName"),
            type = "string",
            name = "DatabaseName",
            target_id = prelude.String.id,
        }),
        AuthType = schema.new({
            id = id.from(_N, "MongoDbSettings", "AuthType"),
            type = "string",
            name = "AuthType",
            target_id = prelude.String.id,
        }),
        AuthMechanism = schema.new({
            id = id.from(_N, "MongoDbSettings", "AuthMechanism"),
            type = "string",
            name = "AuthMechanism",
            target_id = prelude.String.id,
        }),
        NestingLevel = schema.new({
            id = id.from(_N, "MongoDbSettings", "NestingLevel"),
            type = "string",
            name = "NestingLevel",
            target_id = prelude.String.id,
        }),
        ExtractDocId = schema.new({
            id = id.from(_N, "MongoDbSettings", "ExtractDocId"),
            type = "string",
            name = "ExtractDocId",
            target_id = prelude.String.id,
        }),
        DocsToInvestigate = schema.new({
            id = id.from(_N, "MongoDbSettings", "DocsToInvestigate"),
            type = "string",
            name = "DocsToInvestigate",
            target_id = prelude.String.id,
        }),
        AuthSource = schema.new({
            id = id.from(_N, "MongoDbSettings", "AuthSource"),
            type = "string",
            name = "AuthSource",
            target_id = prelude.String.id,
        }),
        KmsKeyId = schema.new({
            id = id.from(_N, "MongoDbSettings", "KmsKeyId"),
            type = "string",
            name = "KmsKeyId",
            target_id = prelude.String.id,
        }),
        SecretsManagerAccessRoleArn = schema.new({
            id = id.from(_N, "MongoDbSettings", "SecretsManagerAccessRoleArn"),
            type = "string",
            name = "SecretsManagerAccessRoleArn",
            target_id = prelude.String.id,
        }),
        SecretsManagerSecretId = schema.new({
            id = id.from(_N, "MongoDbSettings", "SecretsManagerSecretId"),
            type = "string",
            name = "SecretsManagerSecretId",
            target_id = prelude.String.id,
        }),
        UseUpdateLookUp = schema.new({
            id = id.from(_N, "MongoDbSettings", "UseUpdateLookUp"),
            type = "boolean",
            name = "UseUpdateLookUp",
            target_id = prelude.Boolean.id,
        }),
        ReplicateShardCollections = schema.new({
            id = id.from(_N, "MongoDbSettings", "ReplicateShardCollections"),
            type = "boolean",
            name = "ReplicateShardCollections",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.MySQLSettings = schema.new({
    id = id.from(_N, "MySQLSettings"),
    type = "structure",
    members = {
        AfterConnectScript = schema.new({
            id = id.from(_N, "MySQLSettings", "AfterConnectScript"),
            type = "string",
            name = "AfterConnectScript",
            target_id = prelude.String.id,
        }),
        CleanSourceMetadataOnMismatch = schema.new({
            id = id.from(_N, "MySQLSettings", "CleanSourceMetadataOnMismatch"),
            type = "boolean",
            name = "CleanSourceMetadataOnMismatch",
            target_id = prelude.Boolean.id,
        }),
        DatabaseName = schema.new({
            id = id.from(_N, "MySQLSettings", "DatabaseName"),
            type = "string",
            name = "DatabaseName",
            target_id = prelude.String.id,
        }),
        EventsPollInterval = schema.new({
            id = id.from(_N, "MySQLSettings", "EventsPollInterval"),
            type = "integer",
            name = "EventsPollInterval",
            target_id = prelude.Integer.id,
        }),
        TargetDbType = schema.new({
            id = id.from(_N, "MySQLSettings", "TargetDbType"),
            type = "string",
            name = "TargetDbType",
            target_id = prelude.String.id,
        }),
        MaxFileSize = schema.new({
            id = id.from(_N, "MySQLSettings", "MaxFileSize"),
            type = "integer",
            name = "MaxFileSize",
            target_id = prelude.Integer.id,
        }),
        ParallelLoadThreads = schema.new({
            id = id.from(_N, "MySQLSettings", "ParallelLoadThreads"),
            type = "integer",
            name = "ParallelLoadThreads",
            target_id = prelude.Integer.id,
        }),
        Password = schema.new({
            id = id.from(_N, "MySQLSettings", "Password"),
            type = "string",
            name = "Password",
            target_id = prelude.String.id,
        }),
        Port = schema.new({
            id = id.from(_N, "MySQLSettings", "Port"),
            type = "integer",
            name = "Port",
            target_id = prelude.Integer.id,
        }),
        ServerName = schema.new({
            id = id.from(_N, "MySQLSettings", "ServerName"),
            type = "string",
            name = "ServerName",
            target_id = prelude.String.id,
        }),
        ServerTimezone = schema.new({
            id = id.from(_N, "MySQLSettings", "ServerTimezone"),
            type = "string",
            name = "ServerTimezone",
            target_id = prelude.String.id,
        }),
        Username = schema.new({
            id = id.from(_N, "MySQLSettings", "Username"),
            type = "string",
            name = "Username",
            target_id = prelude.String.id,
        }),
        SecretsManagerAccessRoleArn = schema.new({
            id = id.from(_N, "MySQLSettings", "SecretsManagerAccessRoleArn"),
            type = "string",
            name = "SecretsManagerAccessRoleArn",
            target_id = prelude.String.id,
        }),
        SecretsManagerSecretId = schema.new({
            id = id.from(_N, "MySQLSettings", "SecretsManagerSecretId"),
            type = "string",
            name = "SecretsManagerSecretId",
            target_id = prelude.String.id,
        }),
        ExecuteTimeout = schema.new({
            id = id.from(_N, "MySQLSettings", "ExecuteTimeout"),
            type = "integer",
            name = "ExecuteTimeout",
            target_id = prelude.Integer.id,
        }),
        ServiceAccessRoleArn = schema.new({
            id = id.from(_N, "MySQLSettings", "ServiceAccessRoleArn"),
            type = "string",
            name = "ServiceAccessRoleArn",
            target_id = prelude.String.id,
        }),
        AuthenticationMethod = schema.new({
            id = id.from(_N, "MySQLSettings", "AuthenticationMethod"),
            type = "string",
            name = "AuthenticationMethod",
            target_id = prelude.String.id,
        }),
    },
})

M.NeptuneSettings = schema.new({
    id = id.from(_N, "NeptuneSettings"),
    type = "structure",
    members = {
        ServiceAccessRoleArn = schema.new({
            id = id.from(_N, "NeptuneSettings", "ServiceAccessRoleArn"),
            type = "string",
            name = "ServiceAccessRoleArn",
            target_id = prelude.String.id,
        }),
        S3BucketName = schema.new({
            id = id.from(_N, "NeptuneSettings", "S3BucketName"),
            type = "string",
            name = "S3BucketName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        S3BucketFolder = schema.new({
            id = id.from(_N, "NeptuneSettings", "S3BucketFolder"),
            type = "string",
            name = "S3BucketFolder",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ErrorRetryDuration = schema.new({
            id = id.from(_N, "NeptuneSettings", "ErrorRetryDuration"),
            type = "integer",
            name = "ErrorRetryDuration",
            target_id = prelude.Integer.id,
        }),
        MaxFileSize = schema.new({
            id = id.from(_N, "NeptuneSettings", "MaxFileSize"),
            type = "integer",
            name = "MaxFileSize",
            target_id = prelude.Integer.id,
        }),
        MaxRetryCount = schema.new({
            id = id.from(_N, "NeptuneSettings", "MaxRetryCount"),
            type = "integer",
            name = "MaxRetryCount",
            target_id = prelude.Integer.id,
        }),
        IamAuthEnabled = schema.new({
            id = id.from(_N, "NeptuneSettings", "IamAuthEnabled"),
            type = "boolean",
            name = "IamAuthEnabled",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.OracleSettings = schema.new({
    id = id.from(_N, "OracleSettings"),
    type = "structure",
    members = {
        AddSupplementalLogging = schema.new({
            id = id.from(_N, "OracleSettings", "AddSupplementalLogging"),
            type = "boolean",
            name = "AddSupplementalLogging",
            target_id = prelude.Boolean.id,
        }),
        ArchivedLogDestId = schema.new({
            id = id.from(_N, "OracleSettings", "ArchivedLogDestId"),
            type = "integer",
            name = "ArchivedLogDestId",
            target_id = prelude.Integer.id,
        }),
        AdditionalArchivedLogDestId = schema.new({
            id = id.from(_N, "OracleSettings", "AdditionalArchivedLogDestId"),
            type = "integer",
            name = "AdditionalArchivedLogDestId",
            target_id = prelude.Integer.id,
        }),
        ExtraArchivedLogDestIds = schema.new({
            id = id.from(_N, "OracleSettings", "ExtraArchivedLogDestIds"),
            type = "list",
            name = "ExtraArchivedLogDestIds",
            target_id = prelude.Document.id,
            list_member = prelude.Integer,
        }),
        AllowSelectNestedTables = schema.new({
            id = id.from(_N, "OracleSettings", "AllowSelectNestedTables"),
            type = "boolean",
            name = "AllowSelectNestedTables",
            target_id = prelude.Boolean.id,
        }),
        ParallelAsmReadThreads = schema.new({
            id = id.from(_N, "OracleSettings", "ParallelAsmReadThreads"),
            type = "integer",
            name = "ParallelAsmReadThreads",
            target_id = prelude.Integer.id,
        }),
        ReadAheadBlocks = schema.new({
            id = id.from(_N, "OracleSettings", "ReadAheadBlocks"),
            type = "integer",
            name = "ReadAheadBlocks",
            target_id = prelude.Integer.id,
        }),
        AccessAlternateDirectly = schema.new({
            id = id.from(_N, "OracleSettings", "AccessAlternateDirectly"),
            type = "boolean",
            name = "AccessAlternateDirectly",
            target_id = prelude.Boolean.id,
        }),
        UseAlternateFolderForOnline = schema.new({
            id = id.from(_N, "OracleSettings", "UseAlternateFolderForOnline"),
            type = "boolean",
            name = "UseAlternateFolderForOnline",
            target_id = prelude.Boolean.id,
        }),
        OraclePathPrefix = schema.new({
            id = id.from(_N, "OracleSettings", "OraclePathPrefix"),
            type = "string",
            name = "OraclePathPrefix",
            target_id = prelude.String.id,
        }),
        UsePathPrefix = schema.new({
            id = id.from(_N, "OracleSettings", "UsePathPrefix"),
            type = "string",
            name = "UsePathPrefix",
            target_id = prelude.String.id,
        }),
        ReplacePathPrefix = schema.new({
            id = id.from(_N, "OracleSettings", "ReplacePathPrefix"),
            type = "boolean",
            name = "ReplacePathPrefix",
            target_id = prelude.Boolean.id,
        }),
        EnableHomogenousTablespace = schema.new({
            id = id.from(_N, "OracleSettings", "EnableHomogenousTablespace"),
            type = "boolean",
            name = "EnableHomogenousTablespace",
            target_id = prelude.Boolean.id,
        }),
        DirectPathNoLog = schema.new({
            id = id.from(_N, "OracleSettings", "DirectPathNoLog"),
            type = "boolean",
            name = "DirectPathNoLog",
            target_id = prelude.Boolean.id,
        }),
        ArchivedLogsOnly = schema.new({
            id = id.from(_N, "OracleSettings", "ArchivedLogsOnly"),
            type = "boolean",
            name = "ArchivedLogsOnly",
            target_id = prelude.Boolean.id,
        }),
        AsmPassword = schema.new({
            id = id.from(_N, "OracleSettings", "AsmPassword"),
            type = "string",
            name = "AsmPassword",
            target_id = prelude.String.id,
        }),
        AsmServer = schema.new({
            id = id.from(_N, "OracleSettings", "AsmServer"),
            type = "string",
            name = "AsmServer",
            target_id = prelude.String.id,
        }),
        AsmUser = schema.new({
            id = id.from(_N, "OracleSettings", "AsmUser"),
            type = "string",
            name = "AsmUser",
            target_id = prelude.String.id,
        }),
        CharLengthSemantics = schema.new({
            id = id.from(_N, "OracleSettings", "CharLengthSemantics"),
            type = "string",
            name = "CharLengthSemantics",
            target_id = prelude.String.id,
        }),
        DatabaseName = schema.new({
            id = id.from(_N, "OracleSettings", "DatabaseName"),
            type = "string",
            name = "DatabaseName",
            target_id = prelude.String.id,
        }),
        DirectPathParallelLoad = schema.new({
            id = id.from(_N, "OracleSettings", "DirectPathParallelLoad"),
            type = "boolean",
            name = "DirectPathParallelLoad",
            target_id = prelude.Boolean.id,
        }),
        FailTasksOnLobTruncation = schema.new({
            id = id.from(_N, "OracleSettings", "FailTasksOnLobTruncation"),
            type = "boolean",
            name = "FailTasksOnLobTruncation",
            target_id = prelude.Boolean.id,
        }),
        NumberDatatypeScale = schema.new({
            id = id.from(_N, "OracleSettings", "NumberDatatypeScale"),
            type = "integer",
            name = "NumberDatatypeScale",
            target_id = prelude.Integer.id,
        }),
        Password = schema.new({
            id = id.from(_N, "OracleSettings", "Password"),
            type = "string",
            name = "Password",
            target_id = prelude.String.id,
        }),
        Port = schema.new({
            id = id.from(_N, "OracleSettings", "Port"),
            type = "integer",
            name = "Port",
            target_id = prelude.Integer.id,
        }),
        ReadTableSpaceName = schema.new({
            id = id.from(_N, "OracleSettings", "ReadTableSpaceName"),
            type = "boolean",
            name = "ReadTableSpaceName",
            target_id = prelude.Boolean.id,
        }),
        RetryInterval = schema.new({
            id = id.from(_N, "OracleSettings", "RetryInterval"),
            type = "integer",
            name = "RetryInterval",
            target_id = prelude.Integer.id,
        }),
        SecurityDbEncryption = schema.new({
            id = id.from(_N, "OracleSettings", "SecurityDbEncryption"),
            type = "string",
            name = "SecurityDbEncryption",
            target_id = prelude.String.id,
        }),
        SecurityDbEncryptionName = schema.new({
            id = id.from(_N, "OracleSettings", "SecurityDbEncryptionName"),
            type = "string",
            name = "SecurityDbEncryptionName",
            target_id = prelude.String.id,
        }),
        ServerName = schema.new({
            id = id.from(_N, "OracleSettings", "ServerName"),
            type = "string",
            name = "ServerName",
            target_id = prelude.String.id,
        }),
        SpatialDataOptionToGeoJsonFunctionName = schema.new({
            id = id.from(_N, "OracleSettings", "SpatialDataOptionToGeoJsonFunctionName"),
            type = "string",
            name = "SpatialDataOptionToGeoJsonFunctionName",
            target_id = prelude.String.id,
        }),
        StandbyDelayTime = schema.new({
            id = id.from(_N, "OracleSettings", "StandbyDelayTime"),
            type = "integer",
            name = "StandbyDelayTime",
            target_id = prelude.Integer.id,
        }),
        Username = schema.new({
            id = id.from(_N, "OracleSettings", "Username"),
            type = "string",
            name = "Username",
            target_id = prelude.String.id,
        }),
        UseBFile = schema.new({
            id = id.from(_N, "OracleSettings", "UseBFile"),
            type = "boolean",
            name = "UseBFile",
            target_id = prelude.Boolean.id,
        }),
        UseDirectPathFullLoad = schema.new({
            id = id.from(_N, "OracleSettings", "UseDirectPathFullLoad"),
            type = "boolean",
            name = "UseDirectPathFullLoad",
            target_id = prelude.Boolean.id,
        }),
        UseLogminerReader = schema.new({
            id = id.from(_N, "OracleSettings", "UseLogminerReader"),
            type = "boolean",
            name = "UseLogminerReader",
            target_id = prelude.Boolean.id,
        }),
        SecretsManagerAccessRoleArn = schema.new({
            id = id.from(_N, "OracleSettings", "SecretsManagerAccessRoleArn"),
            type = "string",
            name = "SecretsManagerAccessRoleArn",
            target_id = prelude.String.id,
        }),
        SecretsManagerSecretId = schema.new({
            id = id.from(_N, "OracleSettings", "SecretsManagerSecretId"),
            type = "string",
            name = "SecretsManagerSecretId",
            target_id = prelude.String.id,
        }),
        SecretsManagerOracleAsmAccessRoleArn = schema.new({
            id = id.from(_N, "OracleSettings", "SecretsManagerOracleAsmAccessRoleArn"),
            type = "string",
            name = "SecretsManagerOracleAsmAccessRoleArn",
            target_id = prelude.String.id,
        }),
        SecretsManagerOracleAsmSecretId = schema.new({
            id = id.from(_N, "OracleSettings", "SecretsManagerOracleAsmSecretId"),
            type = "string",
            name = "SecretsManagerOracleAsmSecretId",
            target_id = prelude.String.id,
        }),
        TrimSpaceInChar = schema.new({
            id = id.from(_N, "OracleSettings", "TrimSpaceInChar"),
            type = "boolean",
            name = "TrimSpaceInChar",
            target_id = prelude.Boolean.id,
        }),
        ConvertTimestampWithZoneToUTC = schema.new({
            id = id.from(_N, "OracleSettings", "ConvertTimestampWithZoneToUTC"),
            type = "boolean",
            name = "ConvertTimestampWithZoneToUTC",
            target_id = prelude.Boolean.id,
        }),
        OpenTransactionWindow = schema.new({
            id = id.from(_N, "OracleSettings", "OpenTransactionWindow"),
            type = "integer",
            name = "OpenTransactionWindow",
            target_id = prelude.Integer.id,
        }),
        AuthenticationMethod = schema.new({
            id = id.from(_N, "OracleSettings", "AuthenticationMethod"),
            type = "string",
            name = "AuthenticationMethod",
            target_id = prelude.String.id,
        }),
    },
})

M.PostgreSQLSettings = schema.new({
    id = id.from(_N, "PostgreSQLSettings"),
    type = "structure",
    members = {
        AfterConnectScript = schema.new({
            id = id.from(_N, "PostgreSQLSettings", "AfterConnectScript"),
            type = "string",
            name = "AfterConnectScript",
            target_id = prelude.String.id,
        }),
        CaptureDdls = schema.new({
            id = id.from(_N, "PostgreSQLSettings", "CaptureDdls"),
            type = "boolean",
            name = "CaptureDdls",
            target_id = prelude.Boolean.id,
        }),
        MaxFileSize = schema.new({
            id = id.from(_N, "PostgreSQLSettings", "MaxFileSize"),
            type = "integer",
            name = "MaxFileSize",
            target_id = prelude.Integer.id,
        }),
        DatabaseName = schema.new({
            id = id.from(_N, "PostgreSQLSettings", "DatabaseName"),
            type = "string",
            name = "DatabaseName",
            target_id = prelude.String.id,
        }),
        DdlArtifactsSchema = schema.new({
            id = id.from(_N, "PostgreSQLSettings", "DdlArtifactsSchema"),
            type = "string",
            name = "DdlArtifactsSchema",
            target_id = prelude.String.id,
        }),
        ExecuteTimeout = schema.new({
            id = id.from(_N, "PostgreSQLSettings", "ExecuteTimeout"),
            type = "integer",
            name = "ExecuteTimeout",
            target_id = prelude.Integer.id,
        }),
        FailTasksOnLobTruncation = schema.new({
            id = id.from(_N, "PostgreSQLSettings", "FailTasksOnLobTruncation"),
            type = "boolean",
            name = "FailTasksOnLobTruncation",
            target_id = prelude.Boolean.id,
        }),
        HeartbeatEnable = schema.new({
            id = id.from(_N, "PostgreSQLSettings", "HeartbeatEnable"),
            type = "boolean",
            name = "HeartbeatEnable",
            target_id = prelude.Boolean.id,
        }),
        HeartbeatSchema = schema.new({
            id = id.from(_N, "PostgreSQLSettings", "HeartbeatSchema"),
            type = "string",
            name = "HeartbeatSchema",
            target_id = prelude.String.id,
        }),
        HeartbeatFrequency = schema.new({
            id = id.from(_N, "PostgreSQLSettings", "HeartbeatFrequency"),
            type = "integer",
            name = "HeartbeatFrequency",
            target_id = prelude.Integer.id,
        }),
        Password = schema.new({
            id = id.from(_N, "PostgreSQLSettings", "Password"),
            type = "string",
            name = "Password",
            target_id = prelude.String.id,
        }),
        Port = schema.new({
            id = id.from(_N, "PostgreSQLSettings", "Port"),
            type = "integer",
            name = "Port",
            target_id = prelude.Integer.id,
        }),
        ServerName = schema.new({
            id = id.from(_N, "PostgreSQLSettings", "ServerName"),
            type = "string",
            name = "ServerName",
            target_id = prelude.String.id,
        }),
        Username = schema.new({
            id = id.from(_N, "PostgreSQLSettings", "Username"),
            type = "string",
            name = "Username",
            target_id = prelude.String.id,
        }),
        SlotName = schema.new({
            id = id.from(_N, "PostgreSQLSettings", "SlotName"),
            type = "string",
            name = "SlotName",
            target_id = prelude.String.id,
        }),
        PluginName = schema.new({
            id = id.from(_N, "PostgreSQLSettings", "PluginName"),
            type = "string",
            name = "PluginName",
            target_id = prelude.String.id,
        }),
        SecretsManagerAccessRoleArn = schema.new({
            id = id.from(_N, "PostgreSQLSettings", "SecretsManagerAccessRoleArn"),
            type = "string",
            name = "SecretsManagerAccessRoleArn",
            target_id = prelude.String.id,
        }),
        SecretsManagerSecretId = schema.new({
            id = id.from(_N, "PostgreSQLSettings", "SecretsManagerSecretId"),
            type = "string",
            name = "SecretsManagerSecretId",
            target_id = prelude.String.id,
        }),
        TrimSpaceInChar = schema.new({
            id = id.from(_N, "PostgreSQLSettings", "TrimSpaceInChar"),
            type = "boolean",
            name = "TrimSpaceInChar",
            target_id = prelude.Boolean.id,
        }),
        MapBooleanAsBoolean = schema.new({
            id = id.from(_N, "PostgreSQLSettings", "MapBooleanAsBoolean"),
            type = "boolean",
            name = "MapBooleanAsBoolean",
            target_id = prelude.Boolean.id,
        }),
        MapJsonbAsClob = schema.new({
            id = id.from(_N, "PostgreSQLSettings", "MapJsonbAsClob"),
            type = "boolean",
            name = "MapJsonbAsClob",
            target_id = prelude.Boolean.id,
        }),
        MapLongVarcharAs = schema.new({
            id = id.from(_N, "PostgreSQLSettings", "MapLongVarcharAs"),
            type = "string",
            name = "MapLongVarcharAs",
            target_id = prelude.String.id,
        }),
        DatabaseMode = schema.new({
            id = id.from(_N, "PostgreSQLSettings", "DatabaseMode"),
            type = "string",
            name = "DatabaseMode",
            target_id = prelude.String.id,
        }),
        BabelfishDatabaseName = schema.new({
            id = id.from(_N, "PostgreSQLSettings", "BabelfishDatabaseName"),
            type = "string",
            name = "BabelfishDatabaseName",
            target_id = prelude.String.id,
        }),
        DisableUnicodeSourceFilter = schema.new({
            id = id.from(_N, "PostgreSQLSettings", "DisableUnicodeSourceFilter"),
            type = "boolean",
            name = "DisableUnicodeSourceFilter",
            target_id = prelude.Boolean.id,
        }),
        ServiceAccessRoleArn = schema.new({
            id = id.from(_N, "PostgreSQLSettings", "ServiceAccessRoleArn"),
            type = "string",
            name = "ServiceAccessRoleArn",
            target_id = prelude.String.id,
        }),
        AuthenticationMethod = schema.new({
            id = id.from(_N, "PostgreSQLSettings", "AuthenticationMethod"),
            type = "string",
            name = "AuthenticationMethod",
            target_id = prelude.String.id,
        }),
    },
})

M.RedisSettings = schema.new({
    id = id.from(_N, "RedisSettings"),
    type = "structure",
    members = {
        ServerName = schema.new({
            id = id.from(_N, "RedisSettings", "ServerName"),
            type = "string",
            name = "ServerName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Port = schema.new({
            id = id.from(_N, "RedisSettings", "Port"),
            type = "integer",
            name = "Port",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        SslSecurityProtocol = schema.new({
            id = id.from(_N, "RedisSettings", "SslSecurityProtocol"),
            type = "string",
            name = "SslSecurityProtocol",
            target_id = prelude.String.id,
        }),
        AuthType = schema.new({
            id = id.from(_N, "RedisSettings", "AuthType"),
            type = "string",
            name = "AuthType",
            target_id = prelude.String.id,
        }),
        AuthUserName = schema.new({
            id = id.from(_N, "RedisSettings", "AuthUserName"),
            type = "string",
            name = "AuthUserName",
            target_id = prelude.String.id,
        }),
        AuthPassword = schema.new({
            id = id.from(_N, "RedisSettings", "AuthPassword"),
            type = "string",
            name = "AuthPassword",
            target_id = prelude.String.id,
        }),
        SslCaCertificateArn = schema.new({
            id = id.from(_N, "RedisSettings", "SslCaCertificateArn"),
            type = "string",
            name = "SslCaCertificateArn",
            target_id = prelude.String.id,
        }),
    },
})

M.RedshiftSettings = schema.new({
    id = id.from(_N, "RedshiftSettings"),
    type = "structure",
    members = {
        AcceptAnyDate = schema.new({
            id = id.from(_N, "RedshiftSettings", "AcceptAnyDate"),
            type = "boolean",
            name = "AcceptAnyDate",
            target_id = prelude.Boolean.id,
        }),
        AfterConnectScript = schema.new({
            id = id.from(_N, "RedshiftSettings", "AfterConnectScript"),
            type = "string",
            name = "AfterConnectScript",
            target_id = prelude.String.id,
        }),
        BucketFolder = schema.new({
            id = id.from(_N, "RedshiftSettings", "BucketFolder"),
            type = "string",
            name = "BucketFolder",
            target_id = prelude.String.id,
        }),
        BucketName = schema.new({
            id = id.from(_N, "RedshiftSettings", "BucketName"),
            type = "string",
            name = "BucketName",
            target_id = prelude.String.id,
        }),
        CaseSensitiveNames = schema.new({
            id = id.from(_N, "RedshiftSettings", "CaseSensitiveNames"),
            type = "boolean",
            name = "CaseSensitiveNames",
            target_id = prelude.Boolean.id,
        }),
        CompUpdate = schema.new({
            id = id.from(_N, "RedshiftSettings", "CompUpdate"),
            type = "boolean",
            name = "CompUpdate",
            target_id = prelude.Boolean.id,
        }),
        ConnectionTimeout = schema.new({
            id = id.from(_N, "RedshiftSettings", "ConnectionTimeout"),
            type = "integer",
            name = "ConnectionTimeout",
            target_id = prelude.Integer.id,
        }),
        DatabaseName = schema.new({
            id = id.from(_N, "RedshiftSettings", "DatabaseName"),
            type = "string",
            name = "DatabaseName",
            target_id = prelude.String.id,
        }),
        DateFormat = schema.new({
            id = id.from(_N, "RedshiftSettings", "DateFormat"),
            type = "string",
            name = "DateFormat",
            target_id = prelude.String.id,
        }),
        EmptyAsNull = schema.new({
            id = id.from(_N, "RedshiftSettings", "EmptyAsNull"),
            type = "boolean",
            name = "EmptyAsNull",
            target_id = prelude.Boolean.id,
        }),
        EncryptionMode = schema.new({
            id = id.from(_N, "RedshiftSettings", "EncryptionMode"),
            type = "string",
            name = "EncryptionMode",
            target_id = prelude.String.id,
        }),
        ExplicitIds = schema.new({
            id = id.from(_N, "RedshiftSettings", "ExplicitIds"),
            type = "boolean",
            name = "ExplicitIds",
            target_id = prelude.Boolean.id,
        }),
        FileTransferUploadStreams = schema.new({
            id = id.from(_N, "RedshiftSettings", "FileTransferUploadStreams"),
            type = "integer",
            name = "FileTransferUploadStreams",
            target_id = prelude.Integer.id,
        }),
        LoadTimeout = schema.new({
            id = id.from(_N, "RedshiftSettings", "LoadTimeout"),
            type = "integer",
            name = "LoadTimeout",
            target_id = prelude.Integer.id,
        }),
        MaxFileSize = schema.new({
            id = id.from(_N, "RedshiftSettings", "MaxFileSize"),
            type = "integer",
            name = "MaxFileSize",
            target_id = prelude.Integer.id,
        }),
        Password = schema.new({
            id = id.from(_N, "RedshiftSettings", "Password"),
            type = "string",
            name = "Password",
            target_id = prelude.String.id,
        }),
        Port = schema.new({
            id = id.from(_N, "RedshiftSettings", "Port"),
            type = "integer",
            name = "Port",
            target_id = prelude.Integer.id,
        }),
        RemoveQuotes = schema.new({
            id = id.from(_N, "RedshiftSettings", "RemoveQuotes"),
            type = "boolean",
            name = "RemoveQuotes",
            target_id = prelude.Boolean.id,
        }),
        ReplaceInvalidChars = schema.new({
            id = id.from(_N, "RedshiftSettings", "ReplaceInvalidChars"),
            type = "string",
            name = "ReplaceInvalidChars",
            target_id = prelude.String.id,
        }),
        ReplaceChars = schema.new({
            id = id.from(_N, "RedshiftSettings", "ReplaceChars"),
            type = "string",
            name = "ReplaceChars",
            target_id = prelude.String.id,
        }),
        ServerName = schema.new({
            id = id.from(_N, "RedshiftSettings", "ServerName"),
            type = "string",
            name = "ServerName",
            target_id = prelude.String.id,
        }),
        ServiceAccessRoleArn = schema.new({
            id = id.from(_N, "RedshiftSettings", "ServiceAccessRoleArn"),
            type = "string",
            name = "ServiceAccessRoleArn",
            target_id = prelude.String.id,
        }),
        ServerSideEncryptionKmsKeyId = schema.new({
            id = id.from(_N, "RedshiftSettings", "ServerSideEncryptionKmsKeyId"),
            type = "string",
            name = "ServerSideEncryptionKmsKeyId",
            target_id = prelude.String.id,
        }),
        TimeFormat = schema.new({
            id = id.from(_N, "RedshiftSettings", "TimeFormat"),
            type = "string",
            name = "TimeFormat",
            target_id = prelude.String.id,
        }),
        TrimBlanks = schema.new({
            id = id.from(_N, "RedshiftSettings", "TrimBlanks"),
            type = "boolean",
            name = "TrimBlanks",
            target_id = prelude.Boolean.id,
        }),
        TruncateColumns = schema.new({
            id = id.from(_N, "RedshiftSettings", "TruncateColumns"),
            type = "boolean",
            name = "TruncateColumns",
            target_id = prelude.Boolean.id,
        }),
        Username = schema.new({
            id = id.from(_N, "RedshiftSettings", "Username"),
            type = "string",
            name = "Username",
            target_id = prelude.String.id,
        }),
        WriteBufferSize = schema.new({
            id = id.from(_N, "RedshiftSettings", "WriteBufferSize"),
            type = "integer",
            name = "WriteBufferSize",
            target_id = prelude.Integer.id,
        }),
        SecretsManagerAccessRoleArn = schema.new({
            id = id.from(_N, "RedshiftSettings", "SecretsManagerAccessRoleArn"),
            type = "string",
            name = "SecretsManagerAccessRoleArn",
            target_id = prelude.String.id,
        }),
        SecretsManagerSecretId = schema.new({
            id = id.from(_N, "RedshiftSettings", "SecretsManagerSecretId"),
            type = "string",
            name = "SecretsManagerSecretId",
            target_id = prelude.String.id,
        }),
        MapBooleanAsBoolean = schema.new({
            id = id.from(_N, "RedshiftSettings", "MapBooleanAsBoolean"),
            type = "boolean",
            name = "MapBooleanAsBoolean",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.S3Settings = schema.new({
    id = id.from(_N, "S3Settings"),
    type = "structure",
    members = {
        ServiceAccessRoleArn = schema.new({
            id = id.from(_N, "S3Settings", "ServiceAccessRoleArn"),
            type = "string",
            name = "ServiceAccessRoleArn",
            target_id = prelude.String.id,
        }),
        ExternalTableDefinition = schema.new({
            id = id.from(_N, "S3Settings", "ExternalTableDefinition"),
            type = "string",
            name = "ExternalTableDefinition",
            target_id = prelude.String.id,
        }),
        CsvRowDelimiter = schema.new({
            id = id.from(_N, "S3Settings", "CsvRowDelimiter"),
            type = "string",
            name = "CsvRowDelimiter",
            target_id = prelude.String.id,
        }),
        CsvDelimiter = schema.new({
            id = id.from(_N, "S3Settings", "CsvDelimiter"),
            type = "string",
            name = "CsvDelimiter",
            target_id = prelude.String.id,
        }),
        BucketFolder = schema.new({
            id = id.from(_N, "S3Settings", "BucketFolder"),
            type = "string",
            name = "BucketFolder",
            target_id = prelude.String.id,
        }),
        BucketName = schema.new({
            id = id.from(_N, "S3Settings", "BucketName"),
            type = "string",
            name = "BucketName",
            target_id = prelude.String.id,
        }),
        CompressionType = schema.new({
            id = id.from(_N, "S3Settings", "CompressionType"),
            type = "string",
            name = "CompressionType",
            target_id = prelude.String.id,
        }),
        EncryptionMode = schema.new({
            id = id.from(_N, "S3Settings", "EncryptionMode"),
            type = "string",
            name = "EncryptionMode",
            target_id = prelude.String.id,
        }),
        ServerSideEncryptionKmsKeyId = schema.new({
            id = id.from(_N, "S3Settings", "ServerSideEncryptionKmsKeyId"),
            type = "string",
            name = "ServerSideEncryptionKmsKeyId",
            target_id = prelude.String.id,
        }),
        DataFormat = schema.new({
            id = id.from(_N, "S3Settings", "DataFormat"),
            type = "string",
            name = "DataFormat",
            target_id = prelude.String.id,
        }),
        EncodingType = schema.new({
            id = id.from(_N, "S3Settings", "EncodingType"),
            type = "string",
            name = "EncodingType",
            target_id = prelude.String.id,
        }),
        DictPageSizeLimit = schema.new({
            id = id.from(_N, "S3Settings", "DictPageSizeLimit"),
            type = "integer",
            name = "DictPageSizeLimit",
            target_id = prelude.Integer.id,
        }),
        RowGroupLength = schema.new({
            id = id.from(_N, "S3Settings", "RowGroupLength"),
            type = "integer",
            name = "RowGroupLength",
            target_id = prelude.Integer.id,
        }),
        DataPageSize = schema.new({
            id = id.from(_N, "S3Settings", "DataPageSize"),
            type = "integer",
            name = "DataPageSize",
            target_id = prelude.Integer.id,
        }),
        ParquetVersion = schema.new({
            id = id.from(_N, "S3Settings", "ParquetVersion"),
            type = "string",
            name = "ParquetVersion",
            target_id = prelude.String.id,
        }),
        EnableStatistics = schema.new({
            id = id.from(_N, "S3Settings", "EnableStatistics"),
            type = "boolean",
            name = "EnableStatistics",
            target_id = prelude.Boolean.id,
        }),
        IncludeOpForFullLoad = schema.new({
            id = id.from(_N, "S3Settings", "IncludeOpForFullLoad"),
            type = "boolean",
            name = "IncludeOpForFullLoad",
            target_id = prelude.Boolean.id,
        }),
        CdcInsertsOnly = schema.new({
            id = id.from(_N, "S3Settings", "CdcInsertsOnly"),
            type = "boolean",
            name = "CdcInsertsOnly",
            target_id = prelude.Boolean.id,
        }),
        TimestampColumnName = schema.new({
            id = id.from(_N, "S3Settings", "TimestampColumnName"),
            type = "string",
            name = "TimestampColumnName",
            target_id = prelude.String.id,
        }),
        ParquetTimestampInMillisecond = schema.new({
            id = id.from(_N, "S3Settings", "ParquetTimestampInMillisecond"),
            type = "boolean",
            name = "ParquetTimestampInMillisecond",
            target_id = prelude.Boolean.id,
        }),
        CdcInsertsAndUpdates = schema.new({
            id = id.from(_N, "S3Settings", "CdcInsertsAndUpdates"),
            type = "boolean",
            name = "CdcInsertsAndUpdates",
            target_id = prelude.Boolean.id,
        }),
        DatePartitionEnabled = schema.new({
            id = id.from(_N, "S3Settings", "DatePartitionEnabled"),
            type = "boolean",
            name = "DatePartitionEnabled",
            target_id = prelude.Boolean.id,
        }),
        DatePartitionSequence = schema.new({
            id = id.from(_N, "S3Settings", "DatePartitionSequence"),
            type = "string",
            name = "DatePartitionSequence",
            target_id = prelude.String.id,
        }),
        DatePartitionDelimiter = schema.new({
            id = id.from(_N, "S3Settings", "DatePartitionDelimiter"),
            type = "string",
            name = "DatePartitionDelimiter",
            target_id = prelude.String.id,
        }),
        UseCsvNoSupValue = schema.new({
            id = id.from(_N, "S3Settings", "UseCsvNoSupValue"),
            type = "boolean",
            name = "UseCsvNoSupValue",
            target_id = prelude.Boolean.id,
        }),
        CsvNoSupValue = schema.new({
            id = id.from(_N, "S3Settings", "CsvNoSupValue"),
            type = "string",
            name = "CsvNoSupValue",
            target_id = prelude.String.id,
        }),
        PreserveTransactions = schema.new({
            id = id.from(_N, "S3Settings", "PreserveTransactions"),
            type = "boolean",
            name = "PreserveTransactions",
            target_id = prelude.Boolean.id,
        }),
        CdcPath = schema.new({
            id = id.from(_N, "S3Settings", "CdcPath"),
            type = "string",
            name = "CdcPath",
            target_id = prelude.String.id,
        }),
        UseTaskStartTimeForFullLoadTimestamp = schema.new({
            id = id.from(_N, "S3Settings", "UseTaskStartTimeForFullLoadTimestamp"),
            type = "boolean",
            name = "UseTaskStartTimeForFullLoadTimestamp",
            target_id = prelude.Boolean.id,
        }),
        CannedAclForObjects = schema.new({
            id = id.from(_N, "S3Settings", "CannedAclForObjects"),
            type = "string",
            name = "CannedAclForObjects",
            target_id = prelude.String.id,
        }),
        AddColumnName = schema.new({
            id = id.from(_N, "S3Settings", "AddColumnName"),
            type = "boolean",
            name = "AddColumnName",
            target_id = prelude.Boolean.id,
        }),
        CdcMaxBatchInterval = schema.new({
            id = id.from(_N, "S3Settings", "CdcMaxBatchInterval"),
            type = "integer",
            name = "CdcMaxBatchInterval",
            target_id = prelude.Integer.id,
        }),
        CdcMinFileSize = schema.new({
            id = id.from(_N, "S3Settings", "CdcMinFileSize"),
            type = "integer",
            name = "CdcMinFileSize",
            target_id = prelude.Integer.id,
        }),
        CsvNullValue = schema.new({
            id = id.from(_N, "S3Settings", "CsvNullValue"),
            type = "string",
            name = "CsvNullValue",
            target_id = prelude.String.id,
        }),
        IgnoreHeaderRows = schema.new({
            id = id.from(_N, "S3Settings", "IgnoreHeaderRows"),
            type = "integer",
            name = "IgnoreHeaderRows",
            target_id = prelude.Integer.id,
        }),
        MaxFileSize = schema.new({
            id = id.from(_N, "S3Settings", "MaxFileSize"),
            type = "integer",
            name = "MaxFileSize",
            target_id = prelude.Integer.id,
        }),
        Rfc4180 = schema.new({
            id = id.from(_N, "S3Settings", "Rfc4180"),
            type = "boolean",
            name = "Rfc4180",
            target_id = prelude.Boolean.id,
        }),
        DatePartitionTimezone = schema.new({
            id = id.from(_N, "S3Settings", "DatePartitionTimezone"),
            type = "string",
            name = "DatePartitionTimezone",
            target_id = prelude.String.id,
        }),
        AddTrailingPaddingCharacter = schema.new({
            id = id.from(_N, "S3Settings", "AddTrailingPaddingCharacter"),
            type = "boolean",
            name = "AddTrailingPaddingCharacter",
            target_id = prelude.Boolean.id,
        }),
        ExpectedBucketOwner = schema.new({
            id = id.from(_N, "S3Settings", "ExpectedBucketOwner"),
            type = "string",
            name = "ExpectedBucketOwner",
            target_id = prelude.String.id,
        }),
        GlueCatalogGeneration = schema.new({
            id = id.from(_N, "S3Settings", "GlueCatalogGeneration"),
            type = "boolean",
            name = "GlueCatalogGeneration",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.SybaseSettings = schema.new({
    id = id.from(_N, "SybaseSettings"),
    type = "structure",
    members = {
        DatabaseName = schema.new({
            id = id.from(_N, "SybaseSettings", "DatabaseName"),
            type = "string",
            name = "DatabaseName",
            target_id = prelude.String.id,
        }),
        Password = schema.new({
            id = id.from(_N, "SybaseSettings", "Password"),
            type = "string",
            name = "Password",
            target_id = prelude.String.id,
        }),
        Port = schema.new({
            id = id.from(_N, "SybaseSettings", "Port"),
            type = "integer",
            name = "Port",
            target_id = prelude.Integer.id,
        }),
        ServerName = schema.new({
            id = id.from(_N, "SybaseSettings", "ServerName"),
            type = "string",
            name = "ServerName",
            target_id = prelude.String.id,
        }),
        Username = schema.new({
            id = id.from(_N, "SybaseSettings", "Username"),
            type = "string",
            name = "Username",
            target_id = prelude.String.id,
        }),
        SecretsManagerAccessRoleArn = schema.new({
            id = id.from(_N, "SybaseSettings", "SecretsManagerAccessRoleArn"),
            type = "string",
            name = "SecretsManagerAccessRoleArn",
            target_id = prelude.String.id,
        }),
        SecretsManagerSecretId = schema.new({
            id = id.from(_N, "SybaseSettings", "SecretsManagerSecretId"),
            type = "string",
            name = "SecretsManagerSecretId",
            target_id = prelude.String.id,
        }),
    },
})

M.TimestreamSettings = schema.new({
    id = id.from(_N, "TimestreamSettings"),
    type = "structure",
    members = {
        DatabaseName = schema.new({
            id = id.from(_N, "TimestreamSettings", "DatabaseName"),
            type = "string",
            name = "DatabaseName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MemoryDuration = schema.new({
            id = id.from(_N, "TimestreamSettings", "MemoryDuration"),
            type = "integer",
            name = "MemoryDuration",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MagneticDuration = schema.new({
            id = id.from(_N, "TimestreamSettings", "MagneticDuration"),
            type = "integer",
            name = "MagneticDuration",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CdcInsertsAndUpdates = schema.new({
            id = id.from(_N, "TimestreamSettings", "CdcInsertsAndUpdates"),
            type = "boolean",
            name = "CdcInsertsAndUpdates",
            target_id = prelude.Boolean.id,
        }),
        EnableMagneticStoreWrites = schema.new({
            id = id.from(_N, "TimestreamSettings", "EnableMagneticStoreWrites"),
            type = "boolean",
            name = "EnableMagneticStoreWrites",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.CreateEndpointInput = schema.new({
    id = id.from(_N, "CreateEndpointMessage"),
    type = "structure",
    members = {
        EndpointIdentifier = schema.new({
            id = id.from(_N, "CreateEndpointInput", "EndpointIdentifier"),
            type = "string",
            name = "EndpointIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EndpointType = schema.new({
            id = id.from(_N, "CreateEndpointInput", "EndpointType"),
            type = "string",
            name = "EndpointType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EngineName = schema.new({
            id = id.from(_N, "CreateEndpointInput", "EngineName"),
            type = "string",
            name = "EngineName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Username = schema.new({
            id = id.from(_N, "CreateEndpointInput", "Username"),
            type = "string",
            name = "Username",
            target_id = prelude.String.id,
        }),
        Password = schema.new({
            id = id.from(_N, "CreateEndpointInput", "Password"),
            type = "string",
            name = "Password",
            target_id = prelude.String.id,
        }),
        ServerName = schema.new({
            id = id.from(_N, "CreateEndpointInput", "ServerName"),
            type = "string",
            name = "ServerName",
            target_id = prelude.String.id,
        }),
        Port = schema.new({
            id = id.from(_N, "CreateEndpointInput", "Port"),
            type = "integer",
            name = "Port",
            target_id = prelude.Integer.id,
        }),
        DatabaseName = schema.new({
            id = id.from(_N, "CreateEndpointInput", "DatabaseName"),
            type = "string",
            name = "DatabaseName",
            target_id = prelude.String.id,
        }),
        ExtraConnectionAttributes = schema.new({
            id = id.from(_N, "CreateEndpointInput", "ExtraConnectionAttributes"),
            type = "string",
            name = "ExtraConnectionAttributes",
            target_id = prelude.String.id,
        }),
        KmsKeyId = schema.new({
            id = id.from(_N, "CreateEndpointInput", "KmsKeyId"),
            type = "string",
            name = "KmsKeyId",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateEndpointInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Tag, traits = { [traits.XML_NAME] = { name = "Tag" } } }),
        }),
        CertificateArn = schema.new({
            id = id.from(_N, "CreateEndpointInput", "CertificateArn"),
            type = "string",
            name = "CertificateArn",
            target_id = prelude.String.id,
        }),
        SslMode = schema.new({
            id = id.from(_N, "CreateEndpointInput", "SslMode"),
            type = "string",
            name = "SslMode",
            target_id = prelude.String.id,
        }),
        ServiceAccessRoleArn = schema.new({
            id = id.from(_N, "CreateEndpointInput", "ServiceAccessRoleArn"),
            type = "string",
            name = "ServiceAccessRoleArn",
            target_id = prelude.String.id,
        }),
        ExternalTableDefinition = schema.new({
            id = id.from(_N, "CreateEndpointInput", "ExternalTableDefinition"),
            type = "string",
            name = "ExternalTableDefinition",
            target_id = prelude.String.id,
        }),
        DynamoDbSettings = schema.new({
            id = id.from(_N, "CreateEndpointInput", "DynamoDbSettings"),
            type = "structure",
            name = "DynamoDbSettings",
            target_id = id.from(_N, "DynamoDbSettings"),
            target = M.DynamoDbSettings,
        }),
        S3Settings = schema.new({
            id = id.from(_N, "CreateEndpointInput", "S3Settings"),
            type = "structure",
            name = "S3Settings",
            target_id = id.from(_N, "S3Settings"),
            target = M.S3Settings,
        }),
        DmsTransferSettings = schema.new({
            id = id.from(_N, "CreateEndpointInput", "DmsTransferSettings"),
            type = "structure",
            name = "DmsTransferSettings",
            target_id = id.from(_N, "DmsTransferSettings"),
            target = M.DmsTransferSettings,
        }),
        MongoDbSettings = schema.new({
            id = id.from(_N, "CreateEndpointInput", "MongoDbSettings"),
            type = "structure",
            name = "MongoDbSettings",
            target_id = id.from(_N, "MongoDbSettings"),
            target = M.MongoDbSettings,
        }),
        KinesisSettings = schema.new({
            id = id.from(_N, "CreateEndpointInput", "KinesisSettings"),
            type = "structure",
            name = "KinesisSettings",
            target_id = id.from(_N, "KinesisSettings"),
            target = M.KinesisSettings,
        }),
        KafkaSettings = schema.new({
            id = id.from(_N, "CreateEndpointInput", "KafkaSettings"),
            type = "structure",
            name = "KafkaSettings",
            target_id = id.from(_N, "KafkaSettings"),
            target = M.KafkaSettings,
        }),
        ElasticsearchSettings = schema.new({
            id = id.from(_N, "CreateEndpointInput", "ElasticsearchSettings"),
            type = "structure",
            name = "ElasticsearchSettings",
            target_id = id.from(_N, "ElasticsearchSettings"),
            target = M.ElasticsearchSettings,
        }),
        NeptuneSettings = schema.new({
            id = id.from(_N, "CreateEndpointInput", "NeptuneSettings"),
            type = "structure",
            name = "NeptuneSettings",
            target_id = id.from(_N, "NeptuneSettings"),
            target = M.NeptuneSettings,
        }),
        RedshiftSettings = schema.new({
            id = id.from(_N, "CreateEndpointInput", "RedshiftSettings"),
            type = "structure",
            name = "RedshiftSettings",
            target_id = id.from(_N, "RedshiftSettings"),
            target = M.RedshiftSettings,
        }),
        PostgreSQLSettings = schema.new({
            id = id.from(_N, "CreateEndpointInput", "PostgreSQLSettings"),
            type = "structure",
            name = "PostgreSQLSettings",
            target_id = id.from(_N, "PostgreSQLSettings"),
            target = M.PostgreSQLSettings,
        }),
        MySQLSettings = schema.new({
            id = id.from(_N, "CreateEndpointInput", "MySQLSettings"),
            type = "structure",
            name = "MySQLSettings",
            target_id = id.from(_N, "MySQLSettings"),
            target = M.MySQLSettings,
        }),
        OracleSettings = schema.new({
            id = id.from(_N, "CreateEndpointInput", "OracleSettings"),
            type = "structure",
            name = "OracleSettings",
            target_id = id.from(_N, "OracleSettings"),
            target = M.OracleSettings,
        }),
        SybaseSettings = schema.new({
            id = id.from(_N, "CreateEndpointInput", "SybaseSettings"),
            type = "structure",
            name = "SybaseSettings",
            target_id = id.from(_N, "SybaseSettings"),
            target = M.SybaseSettings,
        }),
        MicrosoftSQLServerSettings = schema.new({
            id = id.from(_N, "CreateEndpointInput", "MicrosoftSQLServerSettings"),
            type = "structure",
            name = "MicrosoftSQLServerSettings",
            target_id = id.from(_N, "MicrosoftSQLServerSettings"),
            target = M.MicrosoftSQLServerSettings,
        }),
        IBMDb2Settings = schema.new({
            id = id.from(_N, "CreateEndpointInput", "IBMDb2Settings"),
            type = "structure",
            name = "IBMDb2Settings",
            target_id = id.from(_N, "IBMDb2Settings"),
            target = M.IBMDb2Settings,
        }),
        ResourceIdentifier = schema.new({
            id = id.from(_N, "CreateEndpointInput", "ResourceIdentifier"),
            type = "string",
            name = "ResourceIdentifier",
            target_id = prelude.String.id,
        }),
        DocDbSettings = schema.new({
            id = id.from(_N, "CreateEndpointInput", "DocDbSettings"),
            type = "structure",
            name = "DocDbSettings",
            target_id = id.from(_N, "DocDbSettings"),
            target = M.DocDbSettings,
        }),
        RedisSettings = schema.new({
            id = id.from(_N, "CreateEndpointInput", "RedisSettings"),
            type = "structure",
            name = "RedisSettings",
            target_id = id.from(_N, "RedisSettings"),
            target = M.RedisSettings,
        }),
        GcpMySQLSettings = schema.new({
            id = id.from(_N, "CreateEndpointInput", "GcpMySQLSettings"),
            type = "structure",
            name = "GcpMySQLSettings",
            target_id = id.from(_N, "GcpMySQLSettings"),
            target = M.GcpMySQLSettings,
        }),
        TimestreamSettings = schema.new({
            id = id.from(_N, "CreateEndpointInput", "TimestreamSettings"),
            type = "structure",
            name = "TimestreamSettings",
            target_id = id.from(_N, "TimestreamSettings"),
            target = M.TimestreamSettings,
        }),
    },
})

M.LakehouseSettings = schema.new({
    id = id.from(_N, "LakehouseSettings"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "LakehouseSettings", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Endpoint = schema.new({
    id = id.from(_N, "Endpoint"),
    type = "structure",
    members = {
        EndpointIdentifier = schema.new({
            id = id.from(_N, "Endpoint", "EndpointIdentifier"),
            type = "string",
            name = "EndpointIdentifier",
            target_id = prelude.String.id,
        }),
        EndpointType = schema.new({
            id = id.from(_N, "Endpoint", "EndpointType"),
            type = "string",
            name = "EndpointType",
            target_id = prelude.String.id,
        }),
        EngineName = schema.new({
            id = id.from(_N, "Endpoint", "EngineName"),
            type = "string",
            name = "EngineName",
            target_id = prelude.String.id,
        }),
        EngineDisplayName = schema.new({
            id = id.from(_N, "Endpoint", "EngineDisplayName"),
            type = "string",
            name = "EngineDisplayName",
            target_id = prelude.String.id,
        }),
        Username = schema.new({
            id = id.from(_N, "Endpoint", "Username"),
            type = "string",
            name = "Username",
            target_id = prelude.String.id,
        }),
        ServerName = schema.new({
            id = id.from(_N, "Endpoint", "ServerName"),
            type = "string",
            name = "ServerName",
            target_id = prelude.String.id,
        }),
        Port = schema.new({
            id = id.from(_N, "Endpoint", "Port"),
            type = "integer",
            name = "Port",
            target_id = prelude.Integer.id,
        }),
        DatabaseName = schema.new({
            id = id.from(_N, "Endpoint", "DatabaseName"),
            type = "string",
            name = "DatabaseName",
            target_id = prelude.String.id,
        }),
        ExtraConnectionAttributes = schema.new({
            id = id.from(_N, "Endpoint", "ExtraConnectionAttributes"),
            type = "string",
            name = "ExtraConnectionAttributes",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "Endpoint", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        KmsKeyId = schema.new({
            id = id.from(_N, "Endpoint", "KmsKeyId"),
            type = "string",
            name = "KmsKeyId",
            target_id = prelude.String.id,
        }),
        EndpointArn = schema.new({
            id = id.from(_N, "Endpoint", "EndpointArn"),
            type = "string",
            name = "EndpointArn",
            target_id = prelude.String.id,
        }),
        CertificateArn = schema.new({
            id = id.from(_N, "Endpoint", "CertificateArn"),
            type = "string",
            name = "CertificateArn",
            target_id = prelude.String.id,
        }),
        SslMode = schema.new({
            id = id.from(_N, "Endpoint", "SslMode"),
            type = "string",
            name = "SslMode",
            target_id = prelude.String.id,
        }),
        ServiceAccessRoleArn = schema.new({
            id = id.from(_N, "Endpoint", "ServiceAccessRoleArn"),
            type = "string",
            name = "ServiceAccessRoleArn",
            target_id = prelude.String.id,
        }),
        ExternalTableDefinition = schema.new({
            id = id.from(_N, "Endpoint", "ExternalTableDefinition"),
            type = "string",
            name = "ExternalTableDefinition",
            target_id = prelude.String.id,
        }),
        ExternalId = schema.new({
            id = id.from(_N, "Endpoint", "ExternalId"),
            type = "string",
            name = "ExternalId",
            target_id = prelude.String.id,
        }),
        IsReadOnly = schema.new({
            id = id.from(_N, "Endpoint", "IsReadOnly"),
            type = "boolean",
            name = "IsReadOnly",
            target_id = prelude.Boolean.id,
        }),
        DynamoDbSettings = schema.new({
            id = id.from(_N, "Endpoint", "DynamoDbSettings"),
            type = "structure",
            name = "DynamoDbSettings",
            target_id = id.from(_N, "DynamoDbSettings"),
            target = M.DynamoDbSettings,
        }),
        S3Settings = schema.new({
            id = id.from(_N, "Endpoint", "S3Settings"),
            type = "structure",
            name = "S3Settings",
            target_id = id.from(_N, "S3Settings"),
            target = M.S3Settings,
        }),
        DmsTransferSettings = schema.new({
            id = id.from(_N, "Endpoint", "DmsTransferSettings"),
            type = "structure",
            name = "DmsTransferSettings",
            target_id = id.from(_N, "DmsTransferSettings"),
            target = M.DmsTransferSettings,
        }),
        MongoDbSettings = schema.new({
            id = id.from(_N, "Endpoint", "MongoDbSettings"),
            type = "structure",
            name = "MongoDbSettings",
            target_id = id.from(_N, "MongoDbSettings"),
            target = M.MongoDbSettings,
        }),
        KinesisSettings = schema.new({
            id = id.from(_N, "Endpoint", "KinesisSettings"),
            type = "structure",
            name = "KinesisSettings",
            target_id = id.from(_N, "KinesisSettings"),
            target = M.KinesisSettings,
        }),
        KafkaSettings = schema.new({
            id = id.from(_N, "Endpoint", "KafkaSettings"),
            type = "structure",
            name = "KafkaSettings",
            target_id = id.from(_N, "KafkaSettings"),
            target = M.KafkaSettings,
        }),
        ElasticsearchSettings = schema.new({
            id = id.from(_N, "Endpoint", "ElasticsearchSettings"),
            type = "structure",
            name = "ElasticsearchSettings",
            target_id = id.from(_N, "ElasticsearchSettings"),
            target = M.ElasticsearchSettings,
        }),
        NeptuneSettings = schema.new({
            id = id.from(_N, "Endpoint", "NeptuneSettings"),
            type = "structure",
            name = "NeptuneSettings",
            target_id = id.from(_N, "NeptuneSettings"),
            target = M.NeptuneSettings,
        }),
        RedshiftSettings = schema.new({
            id = id.from(_N, "Endpoint", "RedshiftSettings"),
            type = "structure",
            name = "RedshiftSettings",
            target_id = id.from(_N, "RedshiftSettings"),
            target = M.RedshiftSettings,
        }),
        PostgreSQLSettings = schema.new({
            id = id.from(_N, "Endpoint", "PostgreSQLSettings"),
            type = "structure",
            name = "PostgreSQLSettings",
            target_id = id.from(_N, "PostgreSQLSettings"),
            target = M.PostgreSQLSettings,
        }),
        MySQLSettings = schema.new({
            id = id.from(_N, "Endpoint", "MySQLSettings"),
            type = "structure",
            name = "MySQLSettings",
            target_id = id.from(_N, "MySQLSettings"),
            target = M.MySQLSettings,
        }),
        OracleSettings = schema.new({
            id = id.from(_N, "Endpoint", "OracleSettings"),
            type = "structure",
            name = "OracleSettings",
            target_id = id.from(_N, "OracleSettings"),
            target = M.OracleSettings,
        }),
        SybaseSettings = schema.new({
            id = id.from(_N, "Endpoint", "SybaseSettings"),
            type = "structure",
            name = "SybaseSettings",
            target_id = id.from(_N, "SybaseSettings"),
            target = M.SybaseSettings,
        }),
        MicrosoftSQLServerSettings = schema.new({
            id = id.from(_N, "Endpoint", "MicrosoftSQLServerSettings"),
            type = "structure",
            name = "MicrosoftSQLServerSettings",
            target_id = id.from(_N, "MicrosoftSQLServerSettings"),
            target = M.MicrosoftSQLServerSettings,
        }),
        IBMDb2Settings = schema.new({
            id = id.from(_N, "Endpoint", "IBMDb2Settings"),
            type = "structure",
            name = "IBMDb2Settings",
            target_id = id.from(_N, "IBMDb2Settings"),
            target = M.IBMDb2Settings,
        }),
        DocDbSettings = schema.new({
            id = id.from(_N, "Endpoint", "DocDbSettings"),
            type = "structure",
            name = "DocDbSettings",
            target_id = id.from(_N, "DocDbSettings"),
            target = M.DocDbSettings,
        }),
        RedisSettings = schema.new({
            id = id.from(_N, "Endpoint", "RedisSettings"),
            type = "structure",
            name = "RedisSettings",
            target_id = id.from(_N, "RedisSettings"),
            target = M.RedisSettings,
        }),
        GcpMySQLSettings = schema.new({
            id = id.from(_N, "Endpoint", "GcpMySQLSettings"),
            type = "structure",
            name = "GcpMySQLSettings",
            target_id = id.from(_N, "GcpMySQLSettings"),
            target = M.GcpMySQLSettings,
        }),
        TimestreamSettings = schema.new({
            id = id.from(_N, "Endpoint", "TimestreamSettings"),
            type = "structure",
            name = "TimestreamSettings",
            target_id = id.from(_N, "TimestreamSettings"),
            target = M.TimestreamSettings,
        }),
        LakehouseSettings = schema.new({
            id = id.from(_N, "Endpoint", "LakehouseSettings"),
            type = "structure",
            name = "LakehouseSettings",
            target_id = id.from(_N, "LakehouseSettings"),
            target = M.LakehouseSettings,
        }),
    },
})

M.CreateEndpointOutput = schema.new({
    id = id.from(_N, "CreateEndpointResponse"),
    type = "structure",
    members = {
        Endpoint = schema.new({
            id = id.from(_N, "CreateEndpointOutput", "Endpoint"),
            type = "structure",
            name = "Endpoint",
            target_id = id.from(_N, "Endpoint"),
            target = M.Endpoint,
        }),
    },
})

M.KMSKeyNotAccessibleFault = schema.new({
    id = id.from(_N, "KMSKeyNotAccessibleFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "KMSKeyNotAccessibleFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.S3AccessDeniedFault = schema.new({
    id = id.from(_N, "S3AccessDeniedFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "S3AccessDeniedFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateEventSubscriptionInput = schema.new({
    id = id.from(_N, "CreateEventSubscriptionMessage"),
    type = "structure",
    members = {
        SubscriptionName = schema.new({
            id = id.from(_N, "CreateEventSubscriptionInput", "SubscriptionName"),
            type = "string",
            name = "SubscriptionName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SnsTopicArn = schema.new({
            id = id.from(_N, "CreateEventSubscriptionInput", "SnsTopicArn"),
            type = "string",
            name = "SnsTopicArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SourceType = schema.new({
            id = id.from(_N, "CreateEventSubscriptionInput", "SourceType"),
            type = "string",
            name = "SourceType",
            target_id = prelude.String.id,
        }),
        EventCategories = schema.new({
            id = id.from(_N, "CreateEventSubscriptionInput", "EventCategories"),
            type = "list",
            name = "EventCategories",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "EventCategory" } } }),
        }),
        SourceIds = schema.new({
            id = id.from(_N, "CreateEventSubscriptionInput", "SourceIds"),
            type = "list",
            name = "SourceIds",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "SourceId" } } }),
        }),
        Enabled = schema.new({
            id = id.from(_N, "CreateEventSubscriptionInput", "Enabled"),
            type = "boolean",
            name = "Enabled",
            target_id = prelude.Boolean.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateEventSubscriptionInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Tag, traits = { [traits.XML_NAME] = { name = "Tag" } } }),
        }),
    },
})

M.EventSubscription = schema.new({
    id = id.from(_N, "EventSubscription"),
    type = "structure",
    members = {
        CustomerAwsId = schema.new({
            id = id.from(_N, "EventSubscription", "CustomerAwsId"),
            type = "string",
            name = "CustomerAwsId",
            target_id = prelude.String.id,
        }),
        CustSubscriptionId = schema.new({
            id = id.from(_N, "EventSubscription", "CustSubscriptionId"),
            type = "string",
            name = "CustSubscriptionId",
            target_id = prelude.String.id,
        }),
        SnsTopicArn = schema.new({
            id = id.from(_N, "EventSubscription", "SnsTopicArn"),
            type = "string",
            name = "SnsTopicArn",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "EventSubscription", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        SubscriptionCreationTime = schema.new({
            id = id.from(_N, "EventSubscription", "SubscriptionCreationTime"),
            type = "string",
            name = "SubscriptionCreationTime",
            target_id = prelude.String.id,
        }),
        SourceType = schema.new({
            id = id.from(_N, "EventSubscription", "SourceType"),
            type = "string",
            name = "SourceType",
            target_id = prelude.String.id,
        }),
        SourceIdsList = schema.new({
            id = id.from(_N, "EventSubscription", "SourceIdsList"),
            type = "list",
            name = "SourceIdsList",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "SourceId" } } }),
        }),
        EventCategoriesList = schema.new({
            id = id.from(_N, "EventSubscription", "EventCategoriesList"),
            type = "list",
            name = "EventCategoriesList",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "EventCategory" } } }),
        }),
        Enabled = schema.new({
            id = id.from(_N, "EventSubscription", "Enabled"),
            type = "boolean",
            name = "Enabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.CreateEventSubscriptionOutput = schema.new({
    id = id.from(_N, "CreateEventSubscriptionResponse"),
    type = "structure",
    members = {
        EventSubscription = schema.new({
            id = id.from(_N, "CreateEventSubscriptionOutput", "EventSubscription"),
            type = "structure",
            name = "EventSubscription",
            target_id = id.from(_N, "EventSubscription"),
            target = M.EventSubscription,
        }),
    },
})

M.KMSAccessDeniedFault = schema.new({
    id = id.from(_N, "KMSAccessDeniedFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "KMSAccessDeniedFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.KMSDisabledFault = schema.new({
    id = id.from(_N, "KMSDisabledFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "KMSDisabledFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.KMSInvalidStateFault = schema.new({
    id = id.from(_N, "KMSInvalidStateFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "KMSInvalidStateFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.KMSNotFoundFault = schema.new({
    id = id.from(_N, "KMSNotFoundFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "KMSNotFoundFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.KMSThrottlingFault = schema.new({
    id = id.from(_N, "KMSThrottlingFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "KMSThrottlingFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.SNSInvalidTopicFault = schema.new({
    id = id.from(_N, "SNSInvalidTopicFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "SNSInvalidTopicFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.SNSNoAuthorizationFault = schema.new({
    id = id.from(_N, "SNSNoAuthorizationFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "SNSNoAuthorizationFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateFleetAdvisorCollectorInput = schema.new({
    id = id.from(_N, "CreateFleetAdvisorCollectorRequest"),
    type = "structure",
    members = {
        CollectorName = schema.new({
            id = id.from(_N, "CreateFleetAdvisorCollectorInput", "CollectorName"),
            type = "string",
            name = "CollectorName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "CreateFleetAdvisorCollectorInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        ServiceAccessRoleArn = schema.new({
            id = id.from(_N, "CreateFleetAdvisorCollectorInput", "ServiceAccessRoleArn"),
            type = "string",
            name = "ServiceAccessRoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        S3BucketName = schema.new({
            id = id.from(_N, "CreateFleetAdvisorCollectorInput", "S3BucketName"),
            type = "string",
            name = "S3BucketName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateFleetAdvisorCollectorOutput = schema.new({
    id = id.from(_N, "CreateFleetAdvisorCollectorResponse"),
    type = "structure",
    members = {
        CollectorReferencedId = schema.new({
            id = id.from(_N, "CreateFleetAdvisorCollectorOutput", "CollectorReferencedId"),
            type = "string",
            name = "CollectorReferencedId",
            target_id = prelude.String.id,
        }),
        CollectorName = schema.new({
            id = id.from(_N, "CreateFleetAdvisorCollectorOutput", "CollectorName"),
            type = "string",
            name = "CollectorName",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "CreateFleetAdvisorCollectorOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        ServiceAccessRoleArn = schema.new({
            id = id.from(_N, "CreateFleetAdvisorCollectorOutput", "ServiceAccessRoleArn"),
            type = "string",
            name = "ServiceAccessRoleArn",
            target_id = prelude.String.id,
        }),
        S3BucketName = schema.new({
            id = id.from(_N, "CreateFleetAdvisorCollectorOutput", "S3BucketName"),
            type = "string",
            name = "S3BucketName",
            target_id = prelude.String.id,
        }),
    },
})

M.S3ResourceNotFoundFault = schema.new({
    id = id.from(_N, "S3ResourceNotFoundFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "S3ResourceNotFoundFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateInstanceProfileInput = schema.new({
    id = id.from(_N, "CreateInstanceProfileMessage"),
    type = "structure",
    members = {
        AvailabilityZone = schema.new({
            id = id.from(_N, "CreateInstanceProfileInput", "AvailabilityZone"),
            type = "string",
            name = "AvailabilityZone",
            target_id = prelude.String.id,
        }),
        KmsKeyArn = schema.new({
            id = id.from(_N, "CreateInstanceProfileInput", "KmsKeyArn"),
            type = "string",
            name = "KmsKeyArn",
            target_id = prelude.String.id,
        }),
        PubliclyAccessible = schema.new({
            id = id.from(_N, "CreateInstanceProfileInput", "PubliclyAccessible"),
            type = "boolean",
            name = "PubliclyAccessible",
            target_id = prelude.Boolean.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateInstanceProfileInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Tag, traits = { [traits.XML_NAME] = { name = "Tag" } } }),
        }),
        NetworkType = schema.new({
            id = id.from(_N, "CreateInstanceProfileInput", "NetworkType"),
            type = "string",
            name = "NetworkType",
            target_id = prelude.String.id,
        }),
        InstanceProfileName = schema.new({
            id = id.from(_N, "CreateInstanceProfileInput", "InstanceProfileName"),
            type = "string",
            name = "InstanceProfileName",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "CreateInstanceProfileInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        SubnetGroupIdentifier = schema.new({
            id = id.from(_N, "CreateInstanceProfileInput", "SubnetGroupIdentifier"),
            type = "string",
            name = "SubnetGroupIdentifier",
            target_id = prelude.String.id,
        }),
        VpcSecurityGroups = schema.new({
            id = id.from(_N, "CreateInstanceProfileInput", "VpcSecurityGroups"),
            type = "list",
            name = "VpcSecurityGroups",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.InstanceProfile = schema.new({
    id = id.from(_N, "InstanceProfile"),
    type = "structure",
    members = {
        InstanceProfileArn = schema.new({
            id = id.from(_N, "InstanceProfile", "InstanceProfileArn"),
            type = "string",
            name = "InstanceProfileArn",
            target_id = prelude.String.id,
        }),
        AvailabilityZone = schema.new({
            id = id.from(_N, "InstanceProfile", "AvailabilityZone"),
            type = "string",
            name = "AvailabilityZone",
            target_id = prelude.String.id,
        }),
        KmsKeyArn = schema.new({
            id = id.from(_N, "InstanceProfile", "KmsKeyArn"),
            type = "string",
            name = "KmsKeyArn",
            target_id = prelude.String.id,
        }),
        PubliclyAccessible = schema.new({
            id = id.from(_N, "InstanceProfile", "PubliclyAccessible"),
            type = "boolean",
            name = "PubliclyAccessible",
            target_id = prelude.Boolean.id,
        }),
        NetworkType = schema.new({
            id = id.from(_N, "InstanceProfile", "NetworkType"),
            type = "string",
            name = "NetworkType",
            target_id = prelude.String.id,
        }),
        InstanceProfileName = schema.new({
            id = id.from(_N, "InstanceProfile", "InstanceProfileName"),
            type = "string",
            name = "InstanceProfileName",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "InstanceProfile", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        InstanceProfileCreationTime = schema.new({
            id = id.from(_N, "InstanceProfile", "InstanceProfileCreationTime"),
            type = "timestamp",
            name = "InstanceProfileCreationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        SubnetGroupIdentifier = schema.new({
            id = id.from(_N, "InstanceProfile", "SubnetGroupIdentifier"),
            type = "string",
            name = "SubnetGroupIdentifier",
            target_id = prelude.String.id,
        }),
        VpcSecurityGroups = schema.new({
            id = id.from(_N, "InstanceProfile", "VpcSecurityGroups"),
            type = "list",
            name = "VpcSecurityGroups",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.CreateInstanceProfileOutput = schema.new({
    id = id.from(_N, "CreateInstanceProfileResponse"),
    type = "structure",
    members = {
        InstanceProfile = schema.new({
            id = id.from(_N, "CreateInstanceProfileOutput", "InstanceProfile"),
            type = "structure",
            name = "InstanceProfile",
            target_id = id.from(_N, "InstanceProfile"),
            target = M.InstanceProfile,
        }),
    },
})

M.SCApplicationAttributes = schema.new({
    id = id.from(_N, "SCApplicationAttributes"),
    type = "structure",
    members = {
        S3BucketPath = schema.new({
            id = id.from(_N, "SCApplicationAttributes", "S3BucketPath"),
            type = "string",
            name = "S3BucketPath",
            target_id = prelude.String.id,
        }),
        S3BucketRoleArn = schema.new({
            id = id.from(_N, "SCApplicationAttributes", "S3BucketRoleArn"),
            type = "string",
            name = "S3BucketRoleArn",
            target_id = prelude.String.id,
        }),
    },
})

M.DataProviderDescriptorDefinition = schema.new({
    id = id.from(_N, "DataProviderDescriptorDefinition"),
    type = "structure",
    members = {
        DataProviderIdentifier = schema.new({
            id = id.from(_N, "DataProviderDescriptorDefinition", "DataProviderIdentifier"),
            type = "string",
            name = "DataProviderIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SecretsManagerSecretId = schema.new({
            id = id.from(_N, "DataProviderDescriptorDefinition", "SecretsManagerSecretId"),
            type = "string",
            name = "SecretsManagerSecretId",
            target_id = prelude.String.id,
        }),
        SecretsManagerAccessRoleArn = schema.new({
            id = id.from(_N, "DataProviderDescriptorDefinition", "SecretsManagerAccessRoleArn"),
            type = "string",
            name = "SecretsManagerAccessRoleArn",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateMigrationProjectInput = schema.new({
    id = id.from(_N, "CreateMigrationProjectMessage"),
    type = "structure",
    members = {
        MigrationProjectName = schema.new({
            id = id.from(_N, "CreateMigrationProjectInput", "MigrationProjectName"),
            type = "string",
            name = "MigrationProjectName",
            target_id = prelude.String.id,
        }),
        SourceDataProviderDescriptors = schema.new({
            id = id.from(_N, "CreateMigrationProjectInput", "SourceDataProviderDescriptors"),
            type = "list",
            name = "SourceDataProviderDescriptors",
            target_id = prelude.Document.id,
            list_member = M.DataProviderDescriptorDefinition,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TargetDataProviderDescriptors = schema.new({
            id = id.from(_N, "CreateMigrationProjectInput", "TargetDataProviderDescriptors"),
            type = "list",
            name = "TargetDataProviderDescriptors",
            target_id = prelude.Document.id,
            list_member = M.DataProviderDescriptorDefinition,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        InstanceProfileIdentifier = schema.new({
            id = id.from(_N, "CreateMigrationProjectInput", "InstanceProfileIdentifier"),
            type = "string",
            name = "InstanceProfileIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TransformationRules = schema.new({
            id = id.from(_N, "CreateMigrationProjectInput", "TransformationRules"),
            type = "string",
            name = "TransformationRules",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "CreateMigrationProjectInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateMigrationProjectInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Tag, traits = { [traits.XML_NAME] = { name = "Tag" } } }),
        }),
        SchemaConversionApplicationAttributes = schema.new({
            id = id.from(_N, "CreateMigrationProjectInput", "SchemaConversionApplicationAttributes"),
            type = "structure",
            name = "SchemaConversionApplicationAttributes",
            target_id = id.from(_N, "SCApplicationAttributes"),
            target = M.SCApplicationAttributes,
        }),
    },
})

M.DataProviderDescriptor = schema.new({
    id = id.from(_N, "DataProviderDescriptor"),
    type = "structure",
    members = {
        SecretsManagerSecretId = schema.new({
            id = id.from(_N, "DataProviderDescriptor", "SecretsManagerSecretId"),
            type = "string",
            name = "SecretsManagerSecretId",
            target_id = prelude.String.id,
        }),
        SecretsManagerAccessRoleArn = schema.new({
            id = id.from(_N, "DataProviderDescriptor", "SecretsManagerAccessRoleArn"),
            type = "string",
            name = "SecretsManagerAccessRoleArn",
            target_id = prelude.String.id,
        }),
        DataProviderName = schema.new({
            id = id.from(_N, "DataProviderDescriptor", "DataProviderName"),
            type = "string",
            name = "DataProviderName",
            target_id = prelude.String.id,
        }),
        DataProviderArn = schema.new({
            id = id.from(_N, "DataProviderDescriptor", "DataProviderArn"),
            type = "string",
            name = "DataProviderArn",
            target_id = prelude.String.id,
        }),
    },
})

M.MigrationProject = schema.new({
    id = id.from(_N, "MigrationProject"),
    type = "structure",
    members = {
        MigrationProjectName = schema.new({
            id = id.from(_N, "MigrationProject", "MigrationProjectName"),
            type = "string",
            name = "MigrationProjectName",
            target_id = prelude.String.id,
        }),
        MigrationProjectArn = schema.new({
            id = id.from(_N, "MigrationProject", "MigrationProjectArn"),
            type = "string",
            name = "MigrationProjectArn",
            target_id = prelude.String.id,
        }),
        MigrationProjectCreationTime = schema.new({
            id = id.from(_N, "MigrationProject", "MigrationProjectCreationTime"),
            type = "timestamp",
            name = "MigrationProjectCreationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        SourceDataProviderDescriptors = schema.new({
            id = id.from(_N, "MigrationProject", "SourceDataProviderDescriptors"),
            type = "list",
            name = "SourceDataProviderDescriptors",
            target_id = prelude.Document.id,
            list_member = M.DataProviderDescriptor,
        }),
        TargetDataProviderDescriptors = schema.new({
            id = id.from(_N, "MigrationProject", "TargetDataProviderDescriptors"),
            type = "list",
            name = "TargetDataProviderDescriptors",
            target_id = prelude.Document.id,
            list_member = M.DataProviderDescriptor,
        }),
        InstanceProfileArn = schema.new({
            id = id.from(_N, "MigrationProject", "InstanceProfileArn"),
            type = "string",
            name = "InstanceProfileArn",
            target_id = prelude.String.id,
        }),
        InstanceProfileName = schema.new({
            id = id.from(_N, "MigrationProject", "InstanceProfileName"),
            type = "string",
            name = "InstanceProfileName",
            target_id = prelude.String.id,
        }),
        TransformationRules = schema.new({
            id = id.from(_N, "MigrationProject", "TransformationRules"),
            type = "string",
            name = "TransformationRules",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "MigrationProject", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        SchemaConversionApplicationAttributes = schema.new({
            id = id.from(_N, "MigrationProject", "SchemaConversionApplicationAttributes"),
            type = "structure",
            name = "SchemaConversionApplicationAttributes",
            target_id = id.from(_N, "SCApplicationAttributes"),
            target = M.SCApplicationAttributes,
        }),
    },
})

M.CreateMigrationProjectOutput = schema.new({
    id = id.from(_N, "CreateMigrationProjectResponse"),
    type = "structure",
    members = {
        MigrationProject = schema.new({
            id = id.from(_N, "CreateMigrationProjectOutput", "MigrationProject"),
            type = "structure",
            name = "MigrationProject",
            target_id = id.from(_N, "MigrationProject"),
            target = M.MigrationProject,
        }),
    },
})

M.ComputeConfig = schema.new({
    id = id.from(_N, "ComputeConfig"),
    type = "structure",
    members = {
        AvailabilityZone = schema.new({
            id = id.from(_N, "ComputeConfig", "AvailabilityZone"),
            type = "string",
            name = "AvailabilityZone",
            target_id = prelude.String.id,
        }),
        DnsNameServers = schema.new({
            id = id.from(_N, "ComputeConfig", "DnsNameServers"),
            type = "string",
            name = "DnsNameServers",
            target_id = prelude.String.id,
        }),
        KmsKeyId = schema.new({
            id = id.from(_N, "ComputeConfig", "KmsKeyId"),
            type = "string",
            name = "KmsKeyId",
            target_id = prelude.String.id,
        }),
        MaxCapacityUnits = schema.new({
            id = id.from(_N, "ComputeConfig", "MaxCapacityUnits"),
            type = "integer",
            name = "MaxCapacityUnits",
            target_id = prelude.Integer.id,
        }),
        MinCapacityUnits = schema.new({
            id = id.from(_N, "ComputeConfig", "MinCapacityUnits"),
            type = "integer",
            name = "MinCapacityUnits",
            target_id = prelude.Integer.id,
        }),
        MultiAZ = schema.new({
            id = id.from(_N, "ComputeConfig", "MultiAZ"),
            type = "boolean",
            name = "MultiAZ",
            target_id = prelude.Boolean.id,
        }),
        PreferredMaintenanceWindow = schema.new({
            id = id.from(_N, "ComputeConfig", "PreferredMaintenanceWindow"),
            type = "string",
            name = "PreferredMaintenanceWindow",
            target_id = prelude.String.id,
        }),
        ReplicationSubnetGroupId = schema.new({
            id = id.from(_N, "ComputeConfig", "ReplicationSubnetGroupId"),
            type = "string",
            name = "ReplicationSubnetGroupId",
            target_id = prelude.String.id,
        }),
        VpcSecurityGroupIds = schema.new({
            id = id.from(_N, "ComputeConfig", "VpcSecurityGroupIds"),
            type = "list",
            name = "VpcSecurityGroupIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.CreateReplicationConfigInput = schema.new({
    id = id.from(_N, "CreateReplicationConfigMessage"),
    type = "structure",
    members = {
        ReplicationConfigIdentifier = schema.new({
            id = id.from(_N, "CreateReplicationConfigInput", "ReplicationConfigIdentifier"),
            type = "string",
            name = "ReplicationConfigIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SourceEndpointArn = schema.new({
            id = id.from(_N, "CreateReplicationConfigInput", "SourceEndpointArn"),
            type = "string",
            name = "SourceEndpointArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TargetEndpointArn = schema.new({
            id = id.from(_N, "CreateReplicationConfigInput", "TargetEndpointArn"),
            type = "string",
            name = "TargetEndpointArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ComputeConfig = schema.new({
            id = id.from(_N, "CreateReplicationConfigInput", "ComputeConfig"),
            type = "structure",
            name = "ComputeConfig",
            target_id = id.from(_N, "ComputeConfig"),
            target = M.ComputeConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ReplicationType = schema.new({
            id = id.from(_N, "CreateReplicationConfigInput", "ReplicationType"),
            type = "string",
            name = "ReplicationType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TableMappings = schema.new({
            id = id.from(_N, "CreateReplicationConfigInput", "TableMappings"),
            type = "string",
            name = "TableMappings",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ReplicationSettings = schema.new({
            id = id.from(_N, "CreateReplicationConfigInput", "ReplicationSettings"),
            type = "string",
            name = "ReplicationSettings",
            target_id = prelude.String.id,
        }),
        SupplementalSettings = schema.new({
            id = id.from(_N, "CreateReplicationConfigInput", "SupplementalSettings"),
            type = "string",
            name = "SupplementalSettings",
            target_id = prelude.String.id,
        }),
        ResourceIdentifier = schema.new({
            id = id.from(_N, "CreateReplicationConfigInput", "ResourceIdentifier"),
            type = "string",
            name = "ResourceIdentifier",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateReplicationConfigInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Tag, traits = { [traits.XML_NAME] = { name = "Tag" } } }),
        }),
    },
})

M.ReplicationConfig = schema.new({
    id = id.from(_N, "ReplicationConfig"),
    type = "structure",
    members = {
        ReplicationConfigIdentifier = schema.new({
            id = id.from(_N, "ReplicationConfig", "ReplicationConfigIdentifier"),
            type = "string",
            name = "ReplicationConfigIdentifier",
            target_id = prelude.String.id,
        }),
        ReplicationConfigArn = schema.new({
            id = id.from(_N, "ReplicationConfig", "ReplicationConfigArn"),
            type = "string",
            name = "ReplicationConfigArn",
            target_id = prelude.String.id,
        }),
        SourceEndpointArn = schema.new({
            id = id.from(_N, "ReplicationConfig", "SourceEndpointArn"),
            type = "string",
            name = "SourceEndpointArn",
            target_id = prelude.String.id,
        }),
        TargetEndpointArn = schema.new({
            id = id.from(_N, "ReplicationConfig", "TargetEndpointArn"),
            type = "string",
            name = "TargetEndpointArn",
            target_id = prelude.String.id,
        }),
        ReplicationType = schema.new({
            id = id.from(_N, "ReplicationConfig", "ReplicationType"),
            type = "string",
            name = "ReplicationType",
            target_id = prelude.String.id,
        }),
        ComputeConfig = schema.new({
            id = id.from(_N, "ReplicationConfig", "ComputeConfig"),
            type = "structure",
            name = "ComputeConfig",
            target_id = id.from(_N, "ComputeConfig"),
            target = M.ComputeConfig,
        }),
        ReplicationSettings = schema.new({
            id = id.from(_N, "ReplicationConfig", "ReplicationSettings"),
            type = "string",
            name = "ReplicationSettings",
            target_id = prelude.String.id,
        }),
        SupplementalSettings = schema.new({
            id = id.from(_N, "ReplicationConfig", "SupplementalSettings"),
            type = "string",
            name = "SupplementalSettings",
            target_id = prelude.String.id,
        }),
        TableMappings = schema.new({
            id = id.from(_N, "ReplicationConfig", "TableMappings"),
            type = "string",
            name = "TableMappings",
            target_id = prelude.String.id,
        }),
        ReplicationConfigCreateTime = schema.new({
            id = id.from(_N, "ReplicationConfig", "ReplicationConfigCreateTime"),
            type = "timestamp",
            name = "ReplicationConfigCreateTime",
            target_id = prelude.Timestamp.id,
        }),
        ReplicationConfigUpdateTime = schema.new({
            id = id.from(_N, "ReplicationConfig", "ReplicationConfigUpdateTime"),
            type = "timestamp",
            name = "ReplicationConfigUpdateTime",
            target_id = prelude.Timestamp.id,
        }),
        IsReadOnly = schema.new({
            id = id.from(_N, "ReplicationConfig", "IsReadOnly"),
            type = "boolean",
            name = "IsReadOnly",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.CreateReplicationConfigOutput = schema.new({
    id = id.from(_N, "CreateReplicationConfigResponse"),
    type = "structure",
    members = {
        ReplicationConfig = schema.new({
            id = id.from(_N, "CreateReplicationConfigOutput", "ReplicationConfig"),
            type = "structure",
            name = "ReplicationConfig",
            target_id = id.from(_N, "ReplicationConfig"),
            target = M.ReplicationConfig,
        }),
    },
})

M.InvalidSubnet = schema.new({
    id = id.from(_N, "InvalidSubnet"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidSubnet", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ReplicationSubnetGroupDoesNotCoverEnoughAZs = schema.new({
    id = id.from(_N, "ReplicationSubnetGroupDoesNotCoverEnoughAZs"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ReplicationSubnetGroupDoesNotCoverEnoughAZs", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.KerberosAuthenticationSettings = schema.new({
    id = id.from(_N, "KerberosAuthenticationSettings"),
    type = "structure",
    members = {
        KeyCacheSecretId = schema.new({
            id = id.from(_N, "KerberosAuthenticationSettings", "KeyCacheSecretId"),
            type = "string",
            name = "KeyCacheSecretId",
            target_id = prelude.String.id,
        }),
        KeyCacheSecretIamArn = schema.new({
            id = id.from(_N, "KerberosAuthenticationSettings", "KeyCacheSecretIamArn"),
            type = "string",
            name = "KeyCacheSecretIamArn",
            target_id = prelude.String.id,
        }),
        Krb5FileContents = schema.new({
            id = id.from(_N, "KerberosAuthenticationSettings", "Krb5FileContents"),
            type = "string",
            name = "Krb5FileContents",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateReplicationInstanceInput = schema.new({
    id = id.from(_N, "CreateReplicationInstanceMessage"),
    type = "structure",
    members = {
        ReplicationInstanceIdentifier = schema.new({
            id = id.from(_N, "CreateReplicationInstanceInput", "ReplicationInstanceIdentifier"),
            type = "string",
            name = "ReplicationInstanceIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AllocatedStorage = schema.new({
            id = id.from(_N, "CreateReplicationInstanceInput", "AllocatedStorage"),
            type = "integer",
            name = "AllocatedStorage",
            target_id = prelude.Integer.id,
        }),
        ReplicationInstanceClass = schema.new({
            id = id.from(_N, "CreateReplicationInstanceInput", "ReplicationInstanceClass"),
            type = "string",
            name = "ReplicationInstanceClass",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        VpcSecurityGroupIds = schema.new({
            id = id.from(_N, "CreateReplicationInstanceInput", "VpcSecurityGroupIds"),
            type = "list",
            name = "VpcSecurityGroupIds",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "VpcSecurityGroupId" } } }),
        }),
        AvailabilityZone = schema.new({
            id = id.from(_N, "CreateReplicationInstanceInput", "AvailabilityZone"),
            type = "string",
            name = "AvailabilityZone",
            target_id = prelude.String.id,
        }),
        ReplicationSubnetGroupIdentifier = schema.new({
            id = id.from(_N, "CreateReplicationInstanceInput", "ReplicationSubnetGroupIdentifier"),
            type = "string",
            name = "ReplicationSubnetGroupIdentifier",
            target_id = prelude.String.id,
        }),
        PreferredMaintenanceWindow = schema.new({
            id = id.from(_N, "CreateReplicationInstanceInput", "PreferredMaintenanceWindow"),
            type = "string",
            name = "PreferredMaintenanceWindow",
            target_id = prelude.String.id,
        }),
        MultiAZ = schema.new({
            id = id.from(_N, "CreateReplicationInstanceInput", "MultiAZ"),
            type = "boolean",
            name = "MultiAZ",
            target_id = prelude.Boolean.id,
        }),
        EngineVersion = schema.new({
            id = id.from(_N, "CreateReplicationInstanceInput", "EngineVersion"),
            type = "string",
            name = "EngineVersion",
            target_id = prelude.String.id,
        }),
        AutoMinorVersionUpgrade = schema.new({
            id = id.from(_N, "CreateReplicationInstanceInput", "AutoMinorVersionUpgrade"),
            type = "boolean",
            name = "AutoMinorVersionUpgrade",
            target_id = prelude.Boolean.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateReplicationInstanceInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Tag, traits = { [traits.XML_NAME] = { name = "Tag" } } }),
        }),
        KmsKeyId = schema.new({
            id = id.from(_N, "CreateReplicationInstanceInput", "KmsKeyId"),
            type = "string",
            name = "KmsKeyId",
            target_id = prelude.String.id,
        }),
        PubliclyAccessible = schema.new({
            id = id.from(_N, "CreateReplicationInstanceInput", "PubliclyAccessible"),
            type = "boolean",
            name = "PubliclyAccessible",
            target_id = prelude.Boolean.id,
        }),
        DnsNameServers = schema.new({
            id = id.from(_N, "CreateReplicationInstanceInput", "DnsNameServers"),
            type = "string",
            name = "DnsNameServers",
            target_id = prelude.String.id,
        }),
        ResourceIdentifier = schema.new({
            id = id.from(_N, "CreateReplicationInstanceInput", "ResourceIdentifier"),
            type = "string",
            name = "ResourceIdentifier",
            target_id = prelude.String.id,
        }),
        NetworkType = schema.new({
            id = id.from(_N, "CreateReplicationInstanceInput", "NetworkType"),
            type = "string",
            name = "NetworkType",
            target_id = prelude.String.id,
        }),
        KerberosAuthenticationSettings = schema.new({
            id = id.from(_N, "CreateReplicationInstanceInput", "KerberosAuthenticationSettings"),
            type = "structure",
            name = "KerberosAuthenticationSettings",
            target_id = id.from(_N, "KerberosAuthenticationSettings"),
            target = M.KerberosAuthenticationSettings,
        }),
    },
})

M.ReplicationPendingModifiedValues = schema.new({
    id = id.from(_N, "ReplicationPendingModifiedValues"),
    type = "structure",
    members = {
        ReplicationInstanceClass = schema.new({
            id = id.from(_N, "ReplicationPendingModifiedValues", "ReplicationInstanceClass"),
            type = "string",
            name = "ReplicationInstanceClass",
            target_id = prelude.String.id,
        }),
        AllocatedStorage = schema.new({
            id = id.from(_N, "ReplicationPendingModifiedValues", "AllocatedStorage"),
            type = "integer",
            name = "AllocatedStorage",
            target_id = prelude.Integer.id,
        }),
        MultiAZ = schema.new({
            id = id.from(_N, "ReplicationPendingModifiedValues", "MultiAZ"),
            type = "boolean",
            name = "MultiAZ",
            target_id = prelude.Boolean.id,
        }),
        EngineVersion = schema.new({
            id = id.from(_N, "ReplicationPendingModifiedValues", "EngineVersion"),
            type = "string",
            name = "EngineVersion",
            target_id = prelude.String.id,
        }),
        NetworkType = schema.new({
            id = id.from(_N, "ReplicationPendingModifiedValues", "NetworkType"),
            type = "string",
            name = "NetworkType",
            target_id = prelude.String.id,
        }),
    },
})

M.AvailabilityZone = schema.new({
    id = id.from(_N, "AvailabilityZone"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "AvailabilityZone", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
    },
})

M.Subnet = schema.new({
    id = id.from(_N, "Subnet"),
    type = "structure",
    members = {
        SubnetIdentifier = schema.new({
            id = id.from(_N, "Subnet", "SubnetIdentifier"),
            type = "string",
            name = "SubnetIdentifier",
            target_id = prelude.String.id,
        }),
        SubnetAvailabilityZone = schema.new({
            id = id.from(_N, "Subnet", "SubnetAvailabilityZone"),
            type = "structure",
            name = "SubnetAvailabilityZone",
            target_id = id.from(_N, "AvailabilityZone"),
            target = M.AvailabilityZone,
        }),
        SubnetStatus = schema.new({
            id = id.from(_N, "Subnet", "SubnetStatus"),
            type = "string",
            name = "SubnetStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.ReplicationSubnetGroup = schema.new({
    id = id.from(_N, "ReplicationSubnetGroup"),
    type = "structure",
    members = {
        ReplicationSubnetGroupIdentifier = schema.new({
            id = id.from(_N, "ReplicationSubnetGroup", "ReplicationSubnetGroupIdentifier"),
            type = "string",
            name = "ReplicationSubnetGroupIdentifier",
            target_id = prelude.String.id,
        }),
        ReplicationSubnetGroupDescription = schema.new({
            id = id.from(_N, "ReplicationSubnetGroup", "ReplicationSubnetGroupDescription"),
            type = "string",
            name = "ReplicationSubnetGroupDescription",
            target_id = prelude.String.id,
        }),
        VpcId = schema.new({
            id = id.from(_N, "ReplicationSubnetGroup", "VpcId"),
            type = "string",
            name = "VpcId",
            target_id = prelude.String.id,
        }),
        SubnetGroupStatus = schema.new({
            id = id.from(_N, "ReplicationSubnetGroup", "SubnetGroupStatus"),
            type = "string",
            name = "SubnetGroupStatus",
            target_id = prelude.String.id,
        }),
        Subnets = schema.new({
            id = id.from(_N, "ReplicationSubnetGroup", "Subnets"),
            type = "list",
            name = "Subnets",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Subnet, traits = { [traits.XML_NAME] = { name = "Subnet" } } }),
        }),
        SupportedNetworkTypes = schema.new({
            id = id.from(_N, "ReplicationSubnetGroup", "SupportedNetworkTypes"),
            type = "list",
            name = "SupportedNetworkTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        IsReadOnly = schema.new({
            id = id.from(_N, "ReplicationSubnetGroup", "IsReadOnly"),
            type = "boolean",
            name = "IsReadOnly",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.VpcSecurityGroupMembership = schema.new({
    id = id.from(_N, "VpcSecurityGroupMembership"),
    type = "structure",
    members = {
        VpcSecurityGroupId = schema.new({
            id = id.from(_N, "VpcSecurityGroupMembership", "VpcSecurityGroupId"),
            type = "string",
            name = "VpcSecurityGroupId",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "VpcSecurityGroupMembership", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
    },
})

M.ReplicationInstance = schema.new({
    id = id.from(_N, "ReplicationInstance"),
    type = "structure",
    members = {
        ReplicationInstanceIdentifier = schema.new({
            id = id.from(_N, "ReplicationInstance", "ReplicationInstanceIdentifier"),
            type = "string",
            name = "ReplicationInstanceIdentifier",
            target_id = prelude.String.id,
        }),
        ReplicationInstanceClass = schema.new({
            id = id.from(_N, "ReplicationInstance", "ReplicationInstanceClass"),
            type = "string",
            name = "ReplicationInstanceClass",
            target_id = prelude.String.id,
        }),
        ReplicationInstanceStatus = schema.new({
            id = id.from(_N, "ReplicationInstance", "ReplicationInstanceStatus"),
            type = "string",
            name = "ReplicationInstanceStatus",
            target_id = prelude.String.id,
        }),
        AllocatedStorage = schema.new({
            id = id.from(_N, "ReplicationInstance", "AllocatedStorage"),
            type = "integer",
            name = "AllocatedStorage",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        InstanceCreateTime = schema.new({
            id = id.from(_N, "ReplicationInstance", "InstanceCreateTime"),
            type = "timestamp",
            name = "InstanceCreateTime",
            target_id = prelude.Timestamp.id,
        }),
        VpcSecurityGroups = schema.new({
            id = id.from(_N, "ReplicationInstance", "VpcSecurityGroups"),
            type = "list",
            name = "VpcSecurityGroups",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.VpcSecurityGroupMembership, traits = { [traits.XML_NAME] = { name = "VpcSecurityGroupMembership" } } }),
        }),
        AvailabilityZone = schema.new({
            id = id.from(_N, "ReplicationInstance", "AvailabilityZone"),
            type = "string",
            name = "AvailabilityZone",
            target_id = prelude.String.id,
        }),
        ReplicationSubnetGroup = schema.new({
            id = id.from(_N, "ReplicationInstance", "ReplicationSubnetGroup"),
            type = "structure",
            name = "ReplicationSubnetGroup",
            target_id = id.from(_N, "ReplicationSubnetGroup"),
            target = M.ReplicationSubnetGroup,
        }),
        PreferredMaintenanceWindow = schema.new({
            id = id.from(_N, "ReplicationInstance", "PreferredMaintenanceWindow"),
            type = "string",
            name = "PreferredMaintenanceWindow",
            target_id = prelude.String.id,
        }),
        PendingModifiedValues = schema.new({
            id = id.from(_N, "ReplicationInstance", "PendingModifiedValues"),
            type = "structure",
            name = "PendingModifiedValues",
            target_id = id.from(_N, "ReplicationPendingModifiedValues"),
            target = M.ReplicationPendingModifiedValues,
        }),
        MultiAZ = schema.new({
            id = id.from(_N, "ReplicationInstance", "MultiAZ"),
            type = "boolean",
            name = "MultiAZ",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        EngineVersion = schema.new({
            id = id.from(_N, "ReplicationInstance", "EngineVersion"),
            type = "string",
            name = "EngineVersion",
            target_id = prelude.String.id,
        }),
        AutoMinorVersionUpgrade = schema.new({
            id = id.from(_N, "ReplicationInstance", "AutoMinorVersionUpgrade"),
            type = "boolean",
            name = "AutoMinorVersionUpgrade",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        KmsKeyId = schema.new({
            id = id.from(_N, "ReplicationInstance", "KmsKeyId"),
            type = "string",
            name = "KmsKeyId",
            target_id = prelude.String.id,
        }),
        ReplicationInstanceArn = schema.new({
            id = id.from(_N, "ReplicationInstance", "ReplicationInstanceArn"),
            type = "string",
            name = "ReplicationInstanceArn",
            target_id = prelude.String.id,
        }),
        ReplicationInstancePublicIpAddress = schema.new({
            id = id.from(_N, "ReplicationInstance", "ReplicationInstancePublicIpAddress"),
            type = "string",
            name = "ReplicationInstancePublicIpAddress",
            target_id = prelude.String.id,
        }),
        ReplicationInstancePrivateIpAddress = schema.new({
            id = id.from(_N, "ReplicationInstance", "ReplicationInstancePrivateIpAddress"),
            type = "string",
            name = "ReplicationInstancePrivateIpAddress",
            target_id = prelude.String.id,
        }),
        ReplicationInstancePublicIpAddresses = schema.new({
            id = id.from(_N, "ReplicationInstance", "ReplicationInstancePublicIpAddresses"),
            type = "list",
            name = "ReplicationInstancePublicIpAddresses",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ReplicationInstancePrivateIpAddresses = schema.new({
            id = id.from(_N, "ReplicationInstance", "ReplicationInstancePrivateIpAddresses"),
            type = "list",
            name = "ReplicationInstancePrivateIpAddresses",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ReplicationInstanceIpv6Addresses = schema.new({
            id = id.from(_N, "ReplicationInstance", "ReplicationInstanceIpv6Addresses"),
            type = "list",
            name = "ReplicationInstanceIpv6Addresses",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        PubliclyAccessible = schema.new({
            id = id.from(_N, "ReplicationInstance", "PubliclyAccessible"),
            type = "boolean",
            name = "PubliclyAccessible",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        SecondaryAvailabilityZone = schema.new({
            id = id.from(_N, "ReplicationInstance", "SecondaryAvailabilityZone"),
            type = "string",
            name = "SecondaryAvailabilityZone",
            target_id = prelude.String.id,
        }),
        FreeUntil = schema.new({
            id = id.from(_N, "ReplicationInstance", "FreeUntil"),
            type = "timestamp",
            name = "FreeUntil",
            target_id = prelude.Timestamp.id,
        }),
        DnsNameServers = schema.new({
            id = id.from(_N, "ReplicationInstance", "DnsNameServers"),
            type = "string",
            name = "DnsNameServers",
            target_id = prelude.String.id,
        }),
        NetworkType = schema.new({
            id = id.from(_N, "ReplicationInstance", "NetworkType"),
            type = "string",
            name = "NetworkType",
            target_id = prelude.String.id,
        }),
        KerberosAuthenticationSettings = schema.new({
            id = id.from(_N, "ReplicationInstance", "KerberosAuthenticationSettings"),
            type = "structure",
            name = "KerberosAuthenticationSettings",
            target_id = id.from(_N, "KerberosAuthenticationSettings"),
            target = M.KerberosAuthenticationSettings,
        }),
    },
})

M.CreateReplicationInstanceOutput = schema.new({
    id = id.from(_N, "CreateReplicationInstanceResponse"),
    type = "structure",
    members = {
        ReplicationInstance = schema.new({
            id = id.from(_N, "CreateReplicationInstanceOutput", "ReplicationInstance"),
            type = "structure",
            name = "ReplicationInstance",
            target_id = id.from(_N, "ReplicationInstance"),
            target = M.ReplicationInstance,
        }),
    },
})

M.InsufficientResourceCapacityFault = schema.new({
    id = id.from(_N, "InsufficientResourceCapacityFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InsufficientResourceCapacityFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.StorageQuotaExceededFault = schema.new({
    id = id.from(_N, "StorageQuotaExceededFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "StorageQuotaExceededFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateReplicationSubnetGroupInput = schema.new({
    id = id.from(_N, "CreateReplicationSubnetGroupMessage"),
    type = "structure",
    members = {
        ReplicationSubnetGroupIdentifier = schema.new({
            id = id.from(_N, "CreateReplicationSubnetGroupInput", "ReplicationSubnetGroupIdentifier"),
            type = "string",
            name = "ReplicationSubnetGroupIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ReplicationSubnetGroupDescription = schema.new({
            id = id.from(_N, "CreateReplicationSubnetGroupInput", "ReplicationSubnetGroupDescription"),
            type = "string",
            name = "ReplicationSubnetGroupDescription",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SubnetIds = schema.new({
            id = id.from(_N, "CreateReplicationSubnetGroupInput", "SubnetIds"),
            type = "list",
            name = "SubnetIds",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "SubnetIdentifier" } } }),
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateReplicationSubnetGroupInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Tag, traits = { [traits.XML_NAME] = { name = "Tag" } } }),
        }),
    },
})

M.CreateReplicationSubnetGroupOutput = schema.new({
    id = id.from(_N, "CreateReplicationSubnetGroupResponse"),
    type = "structure",
    members = {
        ReplicationSubnetGroup = schema.new({
            id = id.from(_N, "CreateReplicationSubnetGroupOutput", "ReplicationSubnetGroup"),
            type = "structure",
            name = "ReplicationSubnetGroup",
            target_id = id.from(_N, "ReplicationSubnetGroup"),
            target = M.ReplicationSubnetGroup,
        }),
    },
})

M.CreateReplicationTaskInput = schema.new({
    id = id.from(_N, "CreateReplicationTaskMessage"),
    type = "structure",
    members = {
        ReplicationTaskIdentifier = schema.new({
            id = id.from(_N, "CreateReplicationTaskInput", "ReplicationTaskIdentifier"),
            type = "string",
            name = "ReplicationTaskIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SourceEndpointArn = schema.new({
            id = id.from(_N, "CreateReplicationTaskInput", "SourceEndpointArn"),
            type = "string",
            name = "SourceEndpointArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TargetEndpointArn = schema.new({
            id = id.from(_N, "CreateReplicationTaskInput", "TargetEndpointArn"),
            type = "string",
            name = "TargetEndpointArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ReplicationInstanceArn = schema.new({
            id = id.from(_N, "CreateReplicationTaskInput", "ReplicationInstanceArn"),
            type = "string",
            name = "ReplicationInstanceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MigrationType = schema.new({
            id = id.from(_N, "CreateReplicationTaskInput", "MigrationType"),
            type = "string",
            name = "MigrationType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TableMappings = schema.new({
            id = id.from(_N, "CreateReplicationTaskInput", "TableMappings"),
            type = "string",
            name = "TableMappings",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ReplicationTaskSettings = schema.new({
            id = id.from(_N, "CreateReplicationTaskInput", "ReplicationTaskSettings"),
            type = "string",
            name = "ReplicationTaskSettings",
            target_id = prelude.String.id,
        }),
        CdcStartTime = schema.new({
            id = id.from(_N, "CreateReplicationTaskInput", "CdcStartTime"),
            type = "timestamp",
            name = "CdcStartTime",
            target_id = prelude.Timestamp.id,
        }),
        CdcStartPosition = schema.new({
            id = id.from(_N, "CreateReplicationTaskInput", "CdcStartPosition"),
            type = "string",
            name = "CdcStartPosition",
            target_id = prelude.String.id,
        }),
        CdcStopPosition = schema.new({
            id = id.from(_N, "CreateReplicationTaskInput", "CdcStopPosition"),
            type = "string",
            name = "CdcStopPosition",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateReplicationTaskInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Tag, traits = { [traits.XML_NAME] = { name = "Tag" } } }),
        }),
        TaskData = schema.new({
            id = id.from(_N, "CreateReplicationTaskInput", "TaskData"),
            type = "string",
            name = "TaskData",
            target_id = prelude.String.id,
        }),
        ResourceIdentifier = schema.new({
            id = id.from(_N, "CreateReplicationTaskInput", "ResourceIdentifier"),
            type = "string",
            name = "ResourceIdentifier",
            target_id = prelude.String.id,
        }),
    },
})

M.ReplicationTaskStats = schema.new({
    id = id.from(_N, "ReplicationTaskStats"),
    type = "structure",
    members = {
        FullLoadProgressPercent = schema.new({
            id = id.from(_N, "ReplicationTaskStats", "FullLoadProgressPercent"),
            type = "integer",
            name = "FullLoadProgressPercent",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        ElapsedTimeMillis = schema.new({
            id = id.from(_N, "ReplicationTaskStats", "ElapsedTimeMillis"),
            type = "long",
            name = "ElapsedTimeMillis",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        TablesLoaded = schema.new({
            id = id.from(_N, "ReplicationTaskStats", "TablesLoaded"),
            type = "integer",
            name = "TablesLoaded",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        TablesLoading = schema.new({
            id = id.from(_N, "ReplicationTaskStats", "TablesLoading"),
            type = "integer",
            name = "TablesLoading",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        TablesQueued = schema.new({
            id = id.from(_N, "ReplicationTaskStats", "TablesQueued"),
            type = "integer",
            name = "TablesQueued",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        TablesErrored = schema.new({
            id = id.from(_N, "ReplicationTaskStats", "TablesErrored"),
            type = "integer",
            name = "TablesErrored",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        FreshStartDate = schema.new({
            id = id.from(_N, "ReplicationTaskStats", "FreshStartDate"),
            type = "timestamp",
            name = "FreshStartDate",
            target_id = prelude.Timestamp.id,
        }),
        StartDate = schema.new({
            id = id.from(_N, "ReplicationTaskStats", "StartDate"),
            type = "timestamp",
            name = "StartDate",
            target_id = prelude.Timestamp.id,
        }),
        StopDate = schema.new({
            id = id.from(_N, "ReplicationTaskStats", "StopDate"),
            type = "timestamp",
            name = "StopDate",
            target_id = prelude.Timestamp.id,
        }),
        FullLoadStartDate = schema.new({
            id = id.from(_N, "ReplicationTaskStats", "FullLoadStartDate"),
            type = "timestamp",
            name = "FullLoadStartDate",
            target_id = prelude.Timestamp.id,
        }),
        FullLoadFinishDate = schema.new({
            id = id.from(_N, "ReplicationTaskStats", "FullLoadFinishDate"),
            type = "timestamp",
            name = "FullLoadFinishDate",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ReplicationTask = schema.new({
    id = id.from(_N, "ReplicationTask"),
    type = "structure",
    members = {
        ReplicationTaskIdentifier = schema.new({
            id = id.from(_N, "ReplicationTask", "ReplicationTaskIdentifier"),
            type = "string",
            name = "ReplicationTaskIdentifier",
            target_id = prelude.String.id,
        }),
        SourceEndpointArn = schema.new({
            id = id.from(_N, "ReplicationTask", "SourceEndpointArn"),
            type = "string",
            name = "SourceEndpointArn",
            target_id = prelude.String.id,
        }),
        TargetEndpointArn = schema.new({
            id = id.from(_N, "ReplicationTask", "TargetEndpointArn"),
            type = "string",
            name = "TargetEndpointArn",
            target_id = prelude.String.id,
        }),
        ReplicationInstanceArn = schema.new({
            id = id.from(_N, "ReplicationTask", "ReplicationInstanceArn"),
            type = "string",
            name = "ReplicationInstanceArn",
            target_id = prelude.String.id,
        }),
        MigrationType = schema.new({
            id = id.from(_N, "ReplicationTask", "MigrationType"),
            type = "string",
            name = "MigrationType",
            target_id = prelude.String.id,
        }),
        TableMappings = schema.new({
            id = id.from(_N, "ReplicationTask", "TableMappings"),
            type = "string",
            name = "TableMappings",
            target_id = prelude.String.id,
        }),
        ReplicationTaskSettings = schema.new({
            id = id.from(_N, "ReplicationTask", "ReplicationTaskSettings"),
            type = "string",
            name = "ReplicationTaskSettings",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "ReplicationTask", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        LastFailureMessage = schema.new({
            id = id.from(_N, "ReplicationTask", "LastFailureMessage"),
            type = "string",
            name = "LastFailureMessage",
            target_id = prelude.String.id,
        }),
        StopReason = schema.new({
            id = id.from(_N, "ReplicationTask", "StopReason"),
            type = "string",
            name = "StopReason",
            target_id = prelude.String.id,
        }),
        ReplicationTaskCreationDate = schema.new({
            id = id.from(_N, "ReplicationTask", "ReplicationTaskCreationDate"),
            type = "timestamp",
            name = "ReplicationTaskCreationDate",
            target_id = prelude.Timestamp.id,
        }),
        ReplicationTaskStartDate = schema.new({
            id = id.from(_N, "ReplicationTask", "ReplicationTaskStartDate"),
            type = "timestamp",
            name = "ReplicationTaskStartDate",
            target_id = prelude.Timestamp.id,
        }),
        CdcStartPosition = schema.new({
            id = id.from(_N, "ReplicationTask", "CdcStartPosition"),
            type = "string",
            name = "CdcStartPosition",
            target_id = prelude.String.id,
        }),
        CdcStopPosition = schema.new({
            id = id.from(_N, "ReplicationTask", "CdcStopPosition"),
            type = "string",
            name = "CdcStopPosition",
            target_id = prelude.String.id,
        }),
        RecoveryCheckpoint = schema.new({
            id = id.from(_N, "ReplicationTask", "RecoveryCheckpoint"),
            type = "string",
            name = "RecoveryCheckpoint",
            target_id = prelude.String.id,
        }),
        ReplicationTaskArn = schema.new({
            id = id.from(_N, "ReplicationTask", "ReplicationTaskArn"),
            type = "string",
            name = "ReplicationTaskArn",
            target_id = prelude.String.id,
        }),
        ReplicationTaskStats = schema.new({
            id = id.from(_N, "ReplicationTask", "ReplicationTaskStats"),
            type = "structure",
            name = "ReplicationTaskStats",
            target_id = id.from(_N, "ReplicationTaskStats"),
            target = M.ReplicationTaskStats,
        }),
        TaskData = schema.new({
            id = id.from(_N, "ReplicationTask", "TaskData"),
            type = "string",
            name = "TaskData",
            target_id = prelude.String.id,
        }),
        TargetReplicationInstanceArn = schema.new({
            id = id.from(_N, "ReplicationTask", "TargetReplicationInstanceArn"),
            type = "string",
            name = "TargetReplicationInstanceArn",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateReplicationTaskOutput = schema.new({
    id = id.from(_N, "CreateReplicationTaskResponse"),
    type = "structure",
    members = {
        ReplicationTask = schema.new({
            id = id.from(_N, "CreateReplicationTaskOutput", "ReplicationTask"),
            type = "structure",
            name = "ReplicationTask",
            target_id = id.from(_N, "ReplicationTask"),
            target = M.ReplicationTask,
        }),
    },
})

M.DeleteCertificateInput = schema.new({
    id = id.from(_N, "DeleteCertificateMessage"),
    type = "structure",
    members = {
        CertificateArn = schema.new({
            id = id.from(_N, "DeleteCertificateInput", "CertificateArn"),
            type = "string",
            name = "CertificateArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Certificate = schema.new({
    id = id.from(_N, "Certificate"),
    type = "structure",
    members = {
        CertificateIdentifier = schema.new({
            id = id.from(_N, "Certificate", "CertificateIdentifier"),
            type = "string",
            name = "CertificateIdentifier",
            target_id = prelude.String.id,
        }),
        CertificateCreationDate = schema.new({
            id = id.from(_N, "Certificate", "CertificateCreationDate"),
            type = "timestamp",
            name = "CertificateCreationDate",
            target_id = prelude.Timestamp.id,
        }),
        CertificatePem = schema.new({
            id = id.from(_N, "Certificate", "CertificatePem"),
            type = "string",
            name = "CertificatePem",
            target_id = prelude.String.id,
        }),
        CertificateWallet = schema.new({
            id = id.from(_N, "Certificate", "CertificateWallet"),
            type = "blob",
            name = "CertificateWallet",
            target_id = prelude.Blob.id,
        }),
        CertificateArn = schema.new({
            id = id.from(_N, "Certificate", "CertificateArn"),
            type = "string",
            name = "CertificateArn",
            target_id = prelude.String.id,
        }),
        CertificateOwner = schema.new({
            id = id.from(_N, "Certificate", "CertificateOwner"),
            type = "string",
            name = "CertificateOwner",
            target_id = prelude.String.id,
        }),
        ValidFromDate = schema.new({
            id = id.from(_N, "Certificate", "ValidFromDate"),
            type = "timestamp",
            name = "ValidFromDate",
            target_id = prelude.Timestamp.id,
        }),
        ValidToDate = schema.new({
            id = id.from(_N, "Certificate", "ValidToDate"),
            type = "timestamp",
            name = "ValidToDate",
            target_id = prelude.Timestamp.id,
        }),
        SigningAlgorithm = schema.new({
            id = id.from(_N, "Certificate", "SigningAlgorithm"),
            type = "string",
            name = "SigningAlgorithm",
            target_id = prelude.String.id,
        }),
        KeyLength = schema.new({
            id = id.from(_N, "Certificate", "KeyLength"),
            type = "integer",
            name = "KeyLength",
            target_id = prelude.Integer.id,
        }),
        KmsKeyId = schema.new({
            id = id.from(_N, "Certificate", "KmsKeyId"),
            type = "string",
            name = "KmsKeyId",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteCertificateOutput = schema.new({
    id = id.from(_N, "DeleteCertificateResponse"),
    type = "structure",
    members = {
        Certificate = schema.new({
            id = id.from(_N, "DeleteCertificateOutput", "Certificate"),
            type = "structure",
            name = "Certificate",
            target_id = id.from(_N, "Certificate"),
            target = M.Certificate,
        }),
    },
})

M.DeleteConnectionInput = schema.new({
    id = id.from(_N, "DeleteConnectionMessage"),
    type = "structure",
    members = {
        EndpointArn = schema.new({
            id = id.from(_N, "DeleteConnectionInput", "EndpointArn"),
            type = "string",
            name = "EndpointArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ReplicationInstanceArn = schema.new({
            id = id.from(_N, "DeleteConnectionInput", "ReplicationInstanceArn"),
            type = "string",
            name = "ReplicationInstanceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Connection = schema.new({
    id = id.from(_N, "Connection"),
    type = "structure",
    members = {
        ReplicationInstanceArn = schema.new({
            id = id.from(_N, "Connection", "ReplicationInstanceArn"),
            type = "string",
            name = "ReplicationInstanceArn",
            target_id = prelude.String.id,
        }),
        EndpointArn = schema.new({
            id = id.from(_N, "Connection", "EndpointArn"),
            type = "string",
            name = "EndpointArn",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "Connection", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        LastFailureMessage = schema.new({
            id = id.from(_N, "Connection", "LastFailureMessage"),
            type = "string",
            name = "LastFailureMessage",
            target_id = prelude.String.id,
        }),
        EndpointIdentifier = schema.new({
            id = id.from(_N, "Connection", "EndpointIdentifier"),
            type = "string",
            name = "EndpointIdentifier",
            target_id = prelude.String.id,
        }),
        ReplicationInstanceIdentifier = schema.new({
            id = id.from(_N, "Connection", "ReplicationInstanceIdentifier"),
            type = "string",
            name = "ReplicationInstanceIdentifier",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteConnectionOutput = schema.new({
    id = id.from(_N, "DeleteConnectionResponse"),
    type = "structure",
    members = {
        Connection = schema.new({
            id = id.from(_N, "DeleteConnectionOutput", "Connection"),
            type = "structure",
            name = "Connection",
            target_id = id.from(_N, "Connection"),
            target = M.Connection,
        }),
    },
})

M.DeleteDataMigrationInput = schema.new({
    id = id.from(_N, "DeleteDataMigrationMessage"),
    type = "structure",
    members = {
        DataMigrationIdentifier = schema.new({
            id = id.from(_N, "DeleteDataMigrationInput", "DataMigrationIdentifier"),
            type = "string",
            name = "DataMigrationIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteDataMigrationOutput = schema.new({
    id = id.from(_N, "DeleteDataMigrationResponse"),
    type = "structure",
    members = {
        DataMigration = schema.new({
            id = id.from(_N, "DeleteDataMigrationOutput", "DataMigration"),
            type = "structure",
            name = "DataMigration",
            target_id = id.from(_N, "DataMigration"),
            target = M.DataMigration,
        }),
    },
})

M.DeleteDataProviderInput = schema.new({
    id = id.from(_N, "DeleteDataProviderMessage"),
    type = "structure",
    members = {
        DataProviderIdentifier = schema.new({
            id = id.from(_N, "DeleteDataProviderInput", "DataProviderIdentifier"),
            type = "string",
            name = "DataProviderIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteDataProviderOutput = schema.new({
    id = id.from(_N, "DeleteDataProviderResponse"),
    type = "structure",
    members = {
        DataProvider = schema.new({
            id = id.from(_N, "DeleteDataProviderOutput", "DataProvider"),
            type = "structure",
            name = "DataProvider",
            target_id = id.from(_N, "DataProvider"),
            target = M.DataProvider,
        }),
    },
})

M.DeleteEndpointInput = schema.new({
    id = id.from(_N, "DeleteEndpointMessage"),
    type = "structure",
    members = {
        EndpointArn = schema.new({
            id = id.from(_N, "DeleteEndpointInput", "EndpointArn"),
            type = "string",
            name = "EndpointArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteEndpointOutput = schema.new({
    id = id.from(_N, "DeleteEndpointResponse"),
    type = "structure",
    members = {
        Endpoint = schema.new({
            id = id.from(_N, "DeleteEndpointOutput", "Endpoint"),
            type = "structure",
            name = "Endpoint",
            target_id = id.from(_N, "Endpoint"),
            target = M.Endpoint,
        }),
    },
})

M.DeleteEventSubscriptionInput = schema.new({
    id = id.from(_N, "DeleteEventSubscriptionMessage"),
    type = "structure",
    members = {
        SubscriptionName = schema.new({
            id = id.from(_N, "DeleteEventSubscriptionInput", "SubscriptionName"),
            type = "string",
            name = "SubscriptionName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteEventSubscriptionOutput = schema.new({
    id = id.from(_N, "DeleteEventSubscriptionResponse"),
    type = "structure",
    members = {
        EventSubscription = schema.new({
            id = id.from(_N, "DeleteEventSubscriptionOutput", "EventSubscription"),
            type = "structure",
            name = "EventSubscription",
            target_id = id.from(_N, "EventSubscription"),
            target = M.EventSubscription,
        }),
    },
})

M.CollectorNotFoundFault = schema.new({
    id = id.from(_N, "CollectorNotFoundFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "CollectorNotFoundFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteFleetAdvisorCollectorInput = schema.new({
    id = id.from(_N, "DeleteCollectorRequest"),
    type = "structure",
    members = {
        CollectorReferencedId = schema.new({
            id = id.from(_N, "DeleteFleetAdvisorCollectorInput", "CollectorReferencedId"),
            type = "string",
            name = "CollectorReferencedId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteFleetAdvisorCollectorOutput = prelude.Unit

M.DeleteFleetAdvisorDatabasesInput = schema.new({
    id = id.from(_N, "DeleteFleetAdvisorDatabasesRequest"),
    type = "structure",
    members = {
        DatabaseIds = schema.new({
            id = id.from(_N, "DeleteFleetAdvisorDatabasesInput", "DatabaseIds"),
            type = "list",
            name = "DatabaseIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteFleetAdvisorDatabasesOutput = schema.new({
    id = id.from(_N, "DeleteFleetAdvisorDatabasesResponse"),
    type = "structure",
    members = {
        DatabaseIds = schema.new({
            id = id.from(_N, "DeleteFleetAdvisorDatabasesOutput", "DatabaseIds"),
            type = "list",
            name = "DatabaseIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.DeleteInstanceProfileInput = schema.new({
    id = id.from(_N, "DeleteInstanceProfileMessage"),
    type = "structure",
    members = {
        InstanceProfileIdentifier = schema.new({
            id = id.from(_N, "DeleteInstanceProfileInput", "InstanceProfileIdentifier"),
            type = "string",
            name = "InstanceProfileIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteInstanceProfileOutput = schema.new({
    id = id.from(_N, "DeleteInstanceProfileResponse"),
    type = "structure",
    members = {
        InstanceProfile = schema.new({
            id = id.from(_N, "DeleteInstanceProfileOutput", "InstanceProfile"),
            type = "structure",
            name = "InstanceProfile",
            target_id = id.from(_N, "InstanceProfile"),
            target = M.InstanceProfile,
        }),
    },
})

M.DeleteMigrationProjectInput = schema.new({
    id = id.from(_N, "DeleteMigrationProjectMessage"),
    type = "structure",
    members = {
        MigrationProjectIdentifier = schema.new({
            id = id.from(_N, "DeleteMigrationProjectInput", "MigrationProjectIdentifier"),
            type = "string",
            name = "MigrationProjectIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteMigrationProjectOutput = schema.new({
    id = id.from(_N, "DeleteMigrationProjectResponse"),
    type = "structure",
    members = {
        MigrationProject = schema.new({
            id = id.from(_N, "DeleteMigrationProjectOutput", "MigrationProject"),
            type = "structure",
            name = "MigrationProject",
            target_id = id.from(_N, "MigrationProject"),
            target = M.MigrationProject,
        }),
    },
})

M.DeleteReplicationConfigInput = schema.new({
    id = id.from(_N, "DeleteReplicationConfigMessage"),
    type = "structure",
    members = {
        ReplicationConfigArn = schema.new({
            id = id.from(_N, "DeleteReplicationConfigInput", "ReplicationConfigArn"),
            type = "string",
            name = "ReplicationConfigArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteReplicationConfigOutput = schema.new({
    id = id.from(_N, "DeleteReplicationConfigResponse"),
    type = "structure",
    members = {
        ReplicationConfig = schema.new({
            id = id.from(_N, "DeleteReplicationConfigOutput", "ReplicationConfig"),
            type = "structure",
            name = "ReplicationConfig",
            target_id = id.from(_N, "ReplicationConfig"),
            target = M.ReplicationConfig,
        }),
    },
})

M.DeleteReplicationInstanceInput = schema.new({
    id = id.from(_N, "DeleteReplicationInstanceMessage"),
    type = "structure",
    members = {
        ReplicationInstanceArn = schema.new({
            id = id.from(_N, "DeleteReplicationInstanceInput", "ReplicationInstanceArn"),
            type = "string",
            name = "ReplicationInstanceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteReplicationInstanceOutput = schema.new({
    id = id.from(_N, "DeleteReplicationInstanceResponse"),
    type = "structure",
    members = {
        ReplicationInstance = schema.new({
            id = id.from(_N, "DeleteReplicationInstanceOutput", "ReplicationInstance"),
            type = "structure",
            name = "ReplicationInstance",
            target_id = id.from(_N, "ReplicationInstance"),
            target = M.ReplicationInstance,
        }),
    },
})

M.DeleteReplicationSubnetGroupInput = schema.new({
    id = id.from(_N, "DeleteReplicationSubnetGroupMessage"),
    type = "structure",
    members = {
        ReplicationSubnetGroupIdentifier = schema.new({
            id = id.from(_N, "DeleteReplicationSubnetGroupInput", "ReplicationSubnetGroupIdentifier"),
            type = "string",
            name = "ReplicationSubnetGroupIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteReplicationSubnetGroupOutput = schema.new({
    id = id.from(_N, "DeleteReplicationSubnetGroupResponse"),
    type = "structure",
})

M.DeleteReplicationTaskInput = schema.new({
    id = id.from(_N, "DeleteReplicationTaskMessage"),
    type = "structure",
    members = {
        ReplicationTaskArn = schema.new({
            id = id.from(_N, "DeleteReplicationTaskInput", "ReplicationTaskArn"),
            type = "string",
            name = "ReplicationTaskArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteReplicationTaskOutput = schema.new({
    id = id.from(_N, "DeleteReplicationTaskResponse"),
    type = "structure",
    members = {
        ReplicationTask = schema.new({
            id = id.from(_N, "DeleteReplicationTaskOutput", "ReplicationTask"),
            type = "structure",
            name = "ReplicationTask",
            target_id = id.from(_N, "ReplicationTask"),
            target = M.ReplicationTask,
        }),
    },
})

M.DeleteReplicationTaskAssessmentRunInput = schema.new({
    id = id.from(_N, "DeleteReplicationTaskAssessmentRunMessage"),
    type = "structure",
    members = {
        ReplicationTaskAssessmentRunArn = schema.new({
            id = id.from(_N, "DeleteReplicationTaskAssessmentRunInput", "ReplicationTaskAssessmentRunArn"),
            type = "string",
            name = "ReplicationTaskAssessmentRunArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteReplicationTaskAssessmentRunOutput = schema.new({
    id = id.from(_N, "DeleteReplicationTaskAssessmentRunResponse"),
    type = "structure",
    members = {
        ReplicationTaskAssessmentRun = schema.new({
            id = id.from(_N, "DeleteReplicationTaskAssessmentRunOutput", "ReplicationTaskAssessmentRun"),
            type = "structure",
            name = "ReplicationTaskAssessmentRun",
            target_id = id.from(_N, "ReplicationTaskAssessmentRun"),
            target = M.ReplicationTaskAssessmentRun,
        }),
    },
})

M.DescribeAccountAttributesInput = schema.new({
    id = id.from(_N, "DescribeAccountAttributesMessage"),
    type = "structure",
})

M.DescribeAccountAttributesOutput = schema.new({
    id = id.from(_N, "DescribeAccountAttributesResponse"),
    type = "structure",
    members = {
        AccountQuotas = schema.new({
            id = id.from(_N, "DescribeAccountAttributesOutput", "AccountQuotas"),
            type = "list",
            name = "AccountQuotas",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.AccountQuota, traits = { [traits.XML_NAME] = { name = "AccountQuota" } } }),
        }),
        UniqueAccountIdentifier = schema.new({
            id = id.from(_N, "DescribeAccountAttributesOutput", "UniqueAccountIdentifier"),
            type = "string",
            name = "UniqueAccountIdentifier",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeApplicableIndividualAssessmentsInput = schema.new({
    id = id.from(_N, "DescribeApplicableIndividualAssessmentsMessage"),
    type = "structure",
    members = {
        ReplicationTaskArn = schema.new({
            id = id.from(_N, "DescribeApplicableIndividualAssessmentsInput", "ReplicationTaskArn"),
            type = "string",
            name = "ReplicationTaskArn",
            target_id = prelude.String.id,
        }),
        ReplicationInstanceArn = schema.new({
            id = id.from(_N, "DescribeApplicableIndividualAssessmentsInput", "ReplicationInstanceArn"),
            type = "string",
            name = "ReplicationInstanceArn",
            target_id = prelude.String.id,
        }),
        ReplicationConfigArn = schema.new({
            id = id.from(_N, "DescribeApplicableIndividualAssessmentsInput", "ReplicationConfigArn"),
            type = "string",
            name = "ReplicationConfigArn",
            target_id = prelude.String.id,
        }),
        SourceEngineName = schema.new({
            id = id.from(_N, "DescribeApplicableIndividualAssessmentsInput", "SourceEngineName"),
            type = "string",
            name = "SourceEngineName",
            target_id = prelude.String.id,
        }),
        TargetEngineName = schema.new({
            id = id.from(_N, "DescribeApplicableIndividualAssessmentsInput", "TargetEngineName"),
            type = "string",
            name = "TargetEngineName",
            target_id = prelude.String.id,
        }),
        MigrationType = schema.new({
            id = id.from(_N, "DescribeApplicableIndividualAssessmentsInput", "MigrationType"),
            type = "string",
            name = "MigrationType",
            target_id = prelude.String.id,
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeApplicableIndividualAssessmentsInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeApplicableIndividualAssessmentsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeApplicableIndividualAssessmentsOutput = schema.new({
    id = id.from(_N, "DescribeApplicableIndividualAssessmentsResponse"),
    type = "structure",
    members = {
        IndividualAssessmentNames = schema.new({
            id = id.from(_N, "DescribeApplicableIndividualAssessmentsOutput", "IndividualAssessmentNames"),
            type = "list",
            name = "IndividualAssessmentNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeApplicableIndividualAssessmentsOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
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
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Values = schema.new({
            id = id.from(_N, "Filter", "Values"),
            type = "list",
            name = "Values",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "Value" } } }),
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeCertificatesInput = schema.new({
    id = id.from(_N, "DescribeCertificatesMessage"),
    type = "structure",
    members = {
        Filters = schema.new({
            id = id.from(_N, "DescribeCertificatesInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Filter, traits = { [traits.XML_NAME] = { name = "Filter" } } }),
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeCertificatesInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeCertificatesInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeCertificatesOutput = schema.new({
    id = id.from(_N, "DescribeCertificatesResponse"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "DescribeCertificatesOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        Certificates = schema.new({
            id = id.from(_N, "DescribeCertificatesOutput", "Certificates"),
            type = "list",
            name = "Certificates",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Certificate, traits = { [traits.XML_NAME] = { name = "Certificate" } } }),
        }),
    },
})

M.DescribeConnectionsInput = schema.new({
    id = id.from(_N, "DescribeConnectionsMessage"),
    type = "structure",
    members = {
        Filters = schema.new({
            id = id.from(_N, "DescribeConnectionsInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Filter, traits = { [traits.XML_NAME] = { name = "Filter" } } }),
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeConnectionsInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeConnectionsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeConnectionsOutput = schema.new({
    id = id.from(_N, "DescribeConnectionsResponse"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "DescribeConnectionsOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        Connections = schema.new({
            id = id.from(_N, "DescribeConnectionsOutput", "Connections"),
            type = "list",
            name = "Connections",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Connection, traits = { [traits.XML_NAME] = { name = "Connection" } } }),
        }),
    },
})

M.DescribeConversionConfigurationInput = schema.new({
    id = id.from(_N, "DescribeConversionConfigurationMessage"),
    type = "structure",
    members = {
        MigrationProjectIdentifier = schema.new({
            id = id.from(_N, "DescribeConversionConfigurationInput", "MigrationProjectIdentifier"),
            type = "string",
            name = "MigrationProjectIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeConversionConfigurationOutput = schema.new({
    id = id.from(_N, "DescribeConversionConfigurationResponse"),
    type = "structure",
    members = {
        MigrationProjectIdentifier = schema.new({
            id = id.from(_N, "DescribeConversionConfigurationOutput", "MigrationProjectIdentifier"),
            type = "string",
            name = "MigrationProjectIdentifier",
            target_id = prelude.String.id,
        }),
        ConversionConfiguration = schema.new({
            id = id.from(_N, "DescribeConversionConfigurationOutput", "ConversionConfiguration"),
            type = "string",
            name = "ConversionConfiguration",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeDataMigrationsInput = schema.new({
    id = id.from(_N, "DescribeDataMigrationsMessage"),
    type = "structure",
    members = {
        Filters = schema.new({
            id = id.from(_N, "DescribeDataMigrationsInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Filter, traits = { [traits.XML_NAME] = { name = "Filter" } } }),
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeDataMigrationsInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeDataMigrationsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        WithoutSettings = schema.new({
            id = id.from(_N, "DescribeDataMigrationsInput", "WithoutSettings"),
            type = "boolean",
            name = "WithoutSettings",
            target_id = prelude.Boolean.id,
        }),
        WithoutStatistics = schema.new({
            id = id.from(_N, "DescribeDataMigrationsInput", "WithoutStatistics"),
            type = "boolean",
            name = "WithoutStatistics",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.DescribeDataMigrationsOutput = schema.new({
    id = id.from(_N, "DescribeDataMigrationsResponse"),
    type = "structure",
    members = {
        DataMigrations = schema.new({
            id = id.from(_N, "DescribeDataMigrationsOutput", "DataMigrations"),
            type = "list",
            name = "DataMigrations",
            target_id = prelude.Document.id,
            list_member = M.DataMigration,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeDataMigrationsOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeDataProvidersInput = schema.new({
    id = id.from(_N, "DescribeDataProvidersMessage"),
    type = "structure",
    members = {
        Filters = schema.new({
            id = id.from(_N, "DescribeDataProvidersInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Filter, traits = { [traits.XML_NAME] = { name = "Filter" } } }),
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeDataProvidersInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeDataProvidersInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeDataProvidersOutput = schema.new({
    id = id.from(_N, "DescribeDataProvidersResponse"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "DescribeDataProvidersOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        DataProviders = schema.new({
            id = id.from(_N, "DescribeDataProvidersOutput", "DataProviders"),
            type = "list",
            name = "DataProviders",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.DataProvider, traits = { [traits.XML_NAME] = { name = "DataProvider" } } }),
        }),
    },
})

M.DescribeEndpointsInput = schema.new({
    id = id.from(_N, "DescribeEndpointsMessage"),
    type = "structure",
    members = {
        Filters = schema.new({
            id = id.from(_N, "DescribeEndpointsInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Filter, traits = { [traits.XML_NAME] = { name = "Filter" } } }),
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeEndpointsInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeEndpointsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeEndpointsOutput = schema.new({
    id = id.from(_N, "DescribeEndpointsResponse"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "DescribeEndpointsOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        Endpoints = schema.new({
            id = id.from(_N, "DescribeEndpointsOutput", "Endpoints"),
            type = "list",
            name = "Endpoints",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Endpoint, traits = { [traits.XML_NAME] = { name = "Endpoint" } } }),
        }),
    },
})

M.DescribeEndpointSettingsInput = schema.new({
    id = id.from(_N, "DescribeEndpointSettingsMessage"),
    type = "structure",
    members = {
        EngineName = schema.new({
            id = id.from(_N, "DescribeEndpointSettingsInput", "EngineName"),
            type = "string",
            name = "EngineName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeEndpointSettingsInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeEndpointSettingsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.EndpointSetting = schema.new({
    id = id.from(_N, "EndpointSetting"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "EndpointSetting", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "EndpointSetting", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        EnumValues = schema.new({
            id = id.from(_N, "EndpointSetting", "EnumValues"),
            type = "list",
            name = "EnumValues",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Sensitive = schema.new({
            id = id.from(_N, "EndpointSetting", "Sensitive"),
            type = "boolean",
            name = "Sensitive",
            target_id = prelude.Boolean.id,
        }),
        Units = schema.new({
            id = id.from(_N, "EndpointSetting", "Units"),
            type = "string",
            name = "Units",
            target_id = prelude.String.id,
        }),
        Applicability = schema.new({
            id = id.from(_N, "EndpointSetting", "Applicability"),
            type = "string",
            name = "Applicability",
            target_id = prelude.String.id,
        }),
        IntValueMin = schema.new({
            id = id.from(_N, "EndpointSetting", "IntValueMin"),
            type = "integer",
            name = "IntValueMin",
            target_id = prelude.Integer.id,
        }),
        IntValueMax = schema.new({
            id = id.from(_N, "EndpointSetting", "IntValueMax"),
            type = "integer",
            name = "IntValueMax",
            target_id = prelude.Integer.id,
        }),
        DefaultValue = schema.new({
            id = id.from(_N, "EndpointSetting", "DefaultValue"),
            type = "string",
            name = "DefaultValue",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeEndpointSettingsOutput = schema.new({
    id = id.from(_N, "DescribeEndpointSettingsResponse"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "DescribeEndpointSettingsOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        EndpointSettings = schema.new({
            id = id.from(_N, "DescribeEndpointSettingsOutput", "EndpointSettings"),
            type = "list",
            name = "EndpointSettings",
            target_id = prelude.Document.id,
            list_member = M.EndpointSetting,
        }),
    },
})

M.DescribeEndpointTypesInput = schema.new({
    id = id.from(_N, "DescribeEndpointTypesMessage"),
    type = "structure",
    members = {
        Filters = schema.new({
            id = id.from(_N, "DescribeEndpointTypesInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Filter, traits = { [traits.XML_NAME] = { name = "Filter" } } }),
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeEndpointTypesInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeEndpointTypesInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.SupportedEndpointType = schema.new({
    id = id.from(_N, "SupportedEndpointType"),
    type = "structure",
    members = {
        EngineName = schema.new({
            id = id.from(_N, "SupportedEndpointType", "EngineName"),
            type = "string",
            name = "EngineName",
            target_id = prelude.String.id,
        }),
        SupportsCDC = schema.new({
            id = id.from(_N, "SupportedEndpointType", "SupportsCDC"),
            type = "boolean",
            name = "SupportsCDC",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        EndpointType = schema.new({
            id = id.from(_N, "SupportedEndpointType", "EndpointType"),
            type = "string",
            name = "EndpointType",
            target_id = prelude.String.id,
        }),
        ReplicationInstanceEngineMinimumVersion = schema.new({
            id = id.from(_N, "SupportedEndpointType", "ReplicationInstanceEngineMinimumVersion"),
            type = "string",
            name = "ReplicationInstanceEngineMinimumVersion",
            target_id = prelude.String.id,
        }),
        EngineDisplayName = schema.new({
            id = id.from(_N, "SupportedEndpointType", "EngineDisplayName"),
            type = "string",
            name = "EngineDisplayName",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeEndpointTypesOutput = schema.new({
    id = id.from(_N, "DescribeEndpointTypesResponse"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "DescribeEndpointTypesOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        SupportedEndpointTypes = schema.new({
            id = id.from(_N, "DescribeEndpointTypesOutput", "SupportedEndpointTypes"),
            type = "list",
            name = "SupportedEndpointTypes",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.SupportedEndpointType, traits = { [traits.XML_NAME] = { name = "SupportedEndpointType" } } }),
        }),
    },
})

M.DescribeEngineVersionsInput = schema.new({
    id = id.from(_N, "DescribeEngineVersionsMessage"),
    type = "structure",
    members = {
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeEngineVersionsInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeEngineVersionsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.EngineVersion = schema.new({
    id = id.from(_N, "EngineVersion"),
    type = "structure",
    members = {
        Version = schema.new({
            id = id.from(_N, "EngineVersion", "Version"),
            type = "string",
            name = "Version",
            target_id = prelude.String.id,
        }),
        Lifecycle = schema.new({
            id = id.from(_N, "EngineVersion", "Lifecycle"),
            type = "string",
            name = "Lifecycle",
            target_id = prelude.String.id,
        }),
        ReleaseStatus = schema.new({
            id = id.from(_N, "EngineVersion", "ReleaseStatus"),
            type = "string",
            name = "ReleaseStatus",
            target_id = prelude.String.id,
        }),
        LaunchDate = schema.new({
            id = id.from(_N, "EngineVersion", "LaunchDate"),
            type = "timestamp",
            name = "LaunchDate",
            target_id = prelude.Timestamp.id,
        }),
        AutoUpgradeDate = schema.new({
            id = id.from(_N, "EngineVersion", "AutoUpgradeDate"),
            type = "timestamp",
            name = "AutoUpgradeDate",
            target_id = prelude.Timestamp.id,
        }),
        DeprecationDate = schema.new({
            id = id.from(_N, "EngineVersion", "DeprecationDate"),
            type = "timestamp",
            name = "DeprecationDate",
            target_id = prelude.Timestamp.id,
        }),
        ForceUpgradeDate = schema.new({
            id = id.from(_N, "EngineVersion", "ForceUpgradeDate"),
            type = "timestamp",
            name = "ForceUpgradeDate",
            target_id = prelude.Timestamp.id,
        }),
        AvailableUpgrades = schema.new({
            id = id.from(_N, "EngineVersion", "AvailableUpgrades"),
            type = "list",
            name = "AvailableUpgrades",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.DescribeEngineVersionsOutput = schema.new({
    id = id.from(_N, "DescribeEngineVersionsResponse"),
    type = "structure",
    members = {
        EngineVersions = schema.new({
            id = id.from(_N, "DescribeEngineVersionsOutput", "EngineVersions"),
            type = "list",
            name = "EngineVersions",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.EngineVersion, traits = { [traits.XML_NAME] = { name = "EngineVersion" } } }),
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeEngineVersionsOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeEventCategoriesInput = schema.new({
    id = id.from(_N, "DescribeEventCategoriesMessage"),
    type = "structure",
    members = {
        SourceType = schema.new({
            id = id.from(_N, "DescribeEventCategoriesInput", "SourceType"),
            type = "string",
            name = "SourceType",
            target_id = prelude.String.id,
        }),
        Filters = schema.new({
            id = id.from(_N, "DescribeEventCategoriesInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Filter, traits = { [traits.XML_NAME] = { name = "Filter" } } }),
        }),
    },
})

M.EventCategoryGroup = schema.new({
    id = id.from(_N, "EventCategoryGroup"),
    type = "structure",
    members = {
        SourceType = schema.new({
            id = id.from(_N, "EventCategoryGroup", "SourceType"),
            type = "string",
            name = "SourceType",
            target_id = prelude.String.id,
        }),
        EventCategories = schema.new({
            id = id.from(_N, "EventCategoryGroup", "EventCategories"),
            type = "list",
            name = "EventCategories",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "EventCategory" } } }),
        }),
    },
})

M.DescribeEventCategoriesOutput = schema.new({
    id = id.from(_N, "DescribeEventCategoriesResponse"),
    type = "structure",
    members = {
        EventCategoryGroupList = schema.new({
            id = id.from(_N, "DescribeEventCategoriesOutput", "EventCategoryGroupList"),
            type = "list",
            name = "EventCategoryGroupList",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.EventCategoryGroup, traits = { [traits.XML_NAME] = { name = "EventCategoryGroup" } } }),
        }),
    },
})

M.DescribeEventsInput = schema.new({
    id = id.from(_N, "DescribeEventsMessage"),
    type = "structure",
    members = {
        SourceIdentifier = schema.new({
            id = id.from(_N, "DescribeEventsInput", "SourceIdentifier"),
            type = "string",
            name = "SourceIdentifier",
            target_id = prelude.String.id,
        }),
        SourceType = schema.new({
            id = id.from(_N, "DescribeEventsInput", "SourceType"),
            type = "string",
            name = "SourceType",
            target_id = prelude.String.id,
        }),
        StartTime = schema.new({
            id = id.from(_N, "DescribeEventsInput", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
        }),
        EndTime = schema.new({
            id = id.from(_N, "DescribeEventsInput", "EndTime"),
            type = "timestamp",
            name = "EndTime",
            target_id = prelude.Timestamp.id,
        }),
        Duration = schema.new({
            id = id.from(_N, "DescribeEventsInput", "Duration"),
            type = "integer",
            name = "Duration",
            target_id = prelude.Integer.id,
        }),
        EventCategories = schema.new({
            id = id.from(_N, "DescribeEventsInput", "EventCategories"),
            type = "list",
            name = "EventCategories",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "EventCategory" } } }),
        }),
        Filters = schema.new({
            id = id.from(_N, "DescribeEventsInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Filter, traits = { [traits.XML_NAME] = { name = "Filter" } } }),
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeEventsInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeEventsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.Event = schema.new({
    id = id.from(_N, "Event"),
    type = "structure",
    members = {
        SourceIdentifier = schema.new({
            id = id.from(_N, "Event", "SourceIdentifier"),
            type = "string",
            name = "SourceIdentifier",
            target_id = prelude.String.id,
        }),
        SourceType = schema.new({
            id = id.from(_N, "Event", "SourceType"),
            type = "string",
            name = "SourceType",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "Event", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        EventCategories = schema.new({
            id = id.from(_N, "Event", "EventCategories"),
            type = "list",
            name = "EventCategories",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "EventCategory" } } }),
        }),
        Date = schema.new({
            id = id.from(_N, "Event", "Date"),
            type = "timestamp",
            name = "Date",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.DescribeEventsOutput = schema.new({
    id = id.from(_N, "DescribeEventsResponse"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "DescribeEventsOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        Events = schema.new({
            id = id.from(_N, "DescribeEventsOutput", "Events"),
            type = "list",
            name = "Events",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Event, traits = { [traits.XML_NAME] = { name = "Event" } } }),
        }),
    },
})

M.DescribeEventSubscriptionsInput = schema.new({
    id = id.from(_N, "DescribeEventSubscriptionsMessage"),
    type = "structure",
    members = {
        SubscriptionName = schema.new({
            id = id.from(_N, "DescribeEventSubscriptionsInput", "SubscriptionName"),
            type = "string",
            name = "SubscriptionName",
            target_id = prelude.String.id,
        }),
        Filters = schema.new({
            id = id.from(_N, "DescribeEventSubscriptionsInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Filter, traits = { [traits.XML_NAME] = { name = "Filter" } } }),
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeEventSubscriptionsInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeEventSubscriptionsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeEventSubscriptionsOutput = schema.new({
    id = id.from(_N, "DescribeEventSubscriptionsResponse"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "DescribeEventSubscriptionsOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        EventSubscriptionsList = schema.new({
            id = id.from(_N, "DescribeEventSubscriptionsOutput", "EventSubscriptionsList"),
            type = "list",
            name = "EventSubscriptionsList",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.EventSubscription, traits = { [traits.XML_NAME] = { name = "EventSubscription" } } }),
        }),
    },
})

M.DescribeExtensionPackAssociationsInput = schema.new({
    id = id.from(_N, "DescribeExtensionPackAssociationsMessage"),
    type = "structure",
    members = {
        MigrationProjectIdentifier = schema.new({
            id = id.from(_N, "DescribeExtensionPackAssociationsInput", "MigrationProjectIdentifier"),
            type = "string",
            name = "MigrationProjectIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Filters = schema.new({
            id = id.from(_N, "DescribeExtensionPackAssociationsInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Filter, traits = { [traits.XML_NAME] = { name = "Filter" } } }),
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeExtensionPackAssociationsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeExtensionPackAssociationsInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
    },
})

M.DescribeExtensionPackAssociationsOutput = schema.new({
    id = id.from(_N, "DescribeExtensionPackAssociationsResponse"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "DescribeExtensionPackAssociationsOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        Requests = schema.new({
            id = id.from(_N, "DescribeExtensionPackAssociationsOutput", "Requests"),
            type = "list",
            name = "Requests",
            target_id = prelude.Document.id,
            list_member = M.SchemaConversionRequest,
        }),
    },
})

M.DescribeFleetAdvisorCollectorsInput = schema.new({
    id = id.from(_N, "DescribeFleetAdvisorCollectorsRequest"),
    type = "structure",
    members = {
        Filters = schema.new({
            id = id.from(_N, "DescribeFleetAdvisorCollectorsInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Filter, traits = { [traits.XML_NAME] = { name = "Filter" } } }),
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeFleetAdvisorCollectorsInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeFleetAdvisorCollectorsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.CollectorHealthCheck = schema.new({
    id = id.from(_N, "CollectorHealthCheck"),
    type = "structure",
    members = {
        CollectorStatus = schema.new({
            id = id.from(_N, "CollectorHealthCheck", "CollectorStatus"),
            type = "string",
            name = "CollectorStatus",
            target_id = prelude.String.id,
        }),
        LocalCollectorS3Access = schema.new({
            id = id.from(_N, "CollectorHealthCheck", "LocalCollectorS3Access"),
            type = "boolean",
            name = "LocalCollectorS3Access",
            target_id = prelude.Boolean.id,
        }),
        WebCollectorS3Access = schema.new({
            id = id.from(_N, "CollectorHealthCheck", "WebCollectorS3Access"),
            type = "boolean",
            name = "WebCollectorS3Access",
            target_id = prelude.Boolean.id,
        }),
        WebCollectorGrantedRoleBasedAccess = schema.new({
            id = id.from(_N, "CollectorHealthCheck", "WebCollectorGrantedRoleBasedAccess"),
            type = "boolean",
            name = "WebCollectorGrantedRoleBasedAccess",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.InventoryData = schema.new({
    id = id.from(_N, "InventoryData"),
    type = "structure",
    members = {
        NumberOfDatabases = schema.new({
            id = id.from(_N, "InventoryData", "NumberOfDatabases"),
            type = "integer",
            name = "NumberOfDatabases",
            target_id = prelude.Integer.id,
        }),
        NumberOfSchemas = schema.new({
            id = id.from(_N, "InventoryData", "NumberOfSchemas"),
            type = "integer",
            name = "NumberOfSchemas",
            target_id = prelude.Integer.id,
        }),
    },
})

M.CollectorResponse = schema.new({
    id = id.from(_N, "CollectorResponse"),
    type = "structure",
    members = {
        CollectorReferencedId = schema.new({
            id = id.from(_N, "CollectorResponse", "CollectorReferencedId"),
            type = "string",
            name = "CollectorReferencedId",
            target_id = prelude.String.id,
        }),
        CollectorName = schema.new({
            id = id.from(_N, "CollectorResponse", "CollectorName"),
            type = "string",
            name = "CollectorName",
            target_id = prelude.String.id,
        }),
        CollectorVersion = schema.new({
            id = id.from(_N, "CollectorResponse", "CollectorVersion"),
            type = "string",
            name = "CollectorVersion",
            target_id = prelude.String.id,
        }),
        VersionStatus = schema.new({
            id = id.from(_N, "CollectorResponse", "VersionStatus"),
            type = "string",
            name = "VersionStatus",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "CollectorResponse", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        S3BucketName = schema.new({
            id = id.from(_N, "CollectorResponse", "S3BucketName"),
            type = "string",
            name = "S3BucketName",
            target_id = prelude.String.id,
        }),
        ServiceAccessRoleArn = schema.new({
            id = id.from(_N, "CollectorResponse", "ServiceAccessRoleArn"),
            type = "string",
            name = "ServiceAccessRoleArn",
            target_id = prelude.String.id,
        }),
        CollectorHealthCheck = schema.new({
            id = id.from(_N, "CollectorResponse", "CollectorHealthCheck"),
            type = "structure",
            name = "CollectorHealthCheck",
            target_id = id.from(_N, "CollectorHealthCheck"),
            target = M.CollectorHealthCheck,
        }),
        LastDataReceived = schema.new({
            id = id.from(_N, "CollectorResponse", "LastDataReceived"),
            type = "string",
            name = "LastDataReceived",
            target_id = prelude.String.id,
        }),
        RegisteredDate = schema.new({
            id = id.from(_N, "CollectorResponse", "RegisteredDate"),
            type = "string",
            name = "RegisteredDate",
            target_id = prelude.String.id,
        }),
        CreatedDate = schema.new({
            id = id.from(_N, "CollectorResponse", "CreatedDate"),
            type = "string",
            name = "CreatedDate",
            target_id = prelude.String.id,
        }),
        ModifiedDate = schema.new({
            id = id.from(_N, "CollectorResponse", "ModifiedDate"),
            type = "string",
            name = "ModifiedDate",
            target_id = prelude.String.id,
        }),
        InventoryData = schema.new({
            id = id.from(_N, "CollectorResponse", "InventoryData"),
            type = "structure",
            name = "InventoryData",
            target_id = id.from(_N, "InventoryData"),
            target = M.InventoryData,
        }),
    },
})

M.DescribeFleetAdvisorCollectorsOutput = schema.new({
    id = id.from(_N, "DescribeFleetAdvisorCollectorsResponse"),
    type = "structure",
    members = {
        Collectors = schema.new({
            id = id.from(_N, "DescribeFleetAdvisorCollectorsOutput", "Collectors"),
            type = "list",
            name = "Collectors",
            target_id = prelude.Document.id,
            list_member = M.CollectorResponse,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeFleetAdvisorCollectorsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeFleetAdvisorDatabasesInput = schema.new({
    id = id.from(_N, "DescribeFleetAdvisorDatabasesRequest"),
    type = "structure",
    members = {
        Filters = schema.new({
            id = id.from(_N, "DescribeFleetAdvisorDatabasesInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Filter, traits = { [traits.XML_NAME] = { name = "Filter" } } }),
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeFleetAdvisorDatabasesInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeFleetAdvisorDatabasesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.CollectorShortInfoResponse = schema.new({
    id = id.from(_N, "CollectorShortInfoResponse"),
    type = "structure",
    members = {
        CollectorReferencedId = schema.new({
            id = id.from(_N, "CollectorShortInfoResponse", "CollectorReferencedId"),
            type = "string",
            name = "CollectorReferencedId",
            target_id = prelude.String.id,
        }),
        CollectorName = schema.new({
            id = id.from(_N, "CollectorShortInfoResponse", "CollectorName"),
            type = "string",
            name = "CollectorName",
            target_id = prelude.String.id,
        }),
    },
})

M.ServerShortInfoResponse = schema.new({
    id = id.from(_N, "ServerShortInfoResponse"),
    type = "structure",
    members = {
        ServerId = schema.new({
            id = id.from(_N, "ServerShortInfoResponse", "ServerId"),
            type = "string",
            name = "ServerId",
            target_id = prelude.String.id,
        }),
        IpAddress = schema.new({
            id = id.from(_N, "ServerShortInfoResponse", "IpAddress"),
            type = "string",
            name = "IpAddress",
            target_id = prelude.String.id,
        }),
        ServerName = schema.new({
            id = id.from(_N, "ServerShortInfoResponse", "ServerName"),
            type = "string",
            name = "ServerName",
            target_id = prelude.String.id,
        }),
    },
})

M.DatabaseInstanceSoftwareDetailsResponse = schema.new({
    id = id.from(_N, "DatabaseInstanceSoftwareDetailsResponse"),
    type = "structure",
    members = {
        Engine = schema.new({
            id = id.from(_N, "DatabaseInstanceSoftwareDetailsResponse", "Engine"),
            type = "string",
            name = "Engine",
            target_id = prelude.String.id,
        }),
        EngineVersion = schema.new({
            id = id.from(_N, "DatabaseInstanceSoftwareDetailsResponse", "EngineVersion"),
            type = "string",
            name = "EngineVersion",
            target_id = prelude.String.id,
        }),
        EngineEdition = schema.new({
            id = id.from(_N, "DatabaseInstanceSoftwareDetailsResponse", "EngineEdition"),
            type = "string",
            name = "EngineEdition",
            target_id = prelude.String.id,
        }),
        ServicePack = schema.new({
            id = id.from(_N, "DatabaseInstanceSoftwareDetailsResponse", "ServicePack"),
            type = "string",
            name = "ServicePack",
            target_id = prelude.String.id,
        }),
        SupportLevel = schema.new({
            id = id.from(_N, "DatabaseInstanceSoftwareDetailsResponse", "SupportLevel"),
            type = "string",
            name = "SupportLevel",
            target_id = prelude.String.id,
        }),
        OsArchitecture = schema.new({
            id = id.from(_N, "DatabaseInstanceSoftwareDetailsResponse", "OsArchitecture"),
            type = "integer",
            name = "OsArchitecture",
            target_id = prelude.Integer.id,
        }),
        Tooltip = schema.new({
            id = id.from(_N, "DatabaseInstanceSoftwareDetailsResponse", "Tooltip"),
            type = "string",
            name = "Tooltip",
            target_id = prelude.String.id,
        }),
    },
})

M.DatabaseResponse = schema.new({
    id = id.from(_N, "DatabaseResponse"),
    type = "structure",
    members = {
        DatabaseId = schema.new({
            id = id.from(_N, "DatabaseResponse", "DatabaseId"),
            type = "string",
            name = "DatabaseId",
            target_id = prelude.String.id,
        }),
        DatabaseName = schema.new({
            id = id.from(_N, "DatabaseResponse", "DatabaseName"),
            type = "string",
            name = "DatabaseName",
            target_id = prelude.String.id,
        }),
        IpAddress = schema.new({
            id = id.from(_N, "DatabaseResponse", "IpAddress"),
            type = "string",
            name = "IpAddress",
            target_id = prelude.String.id,
        }),
        NumberOfSchemas = schema.new({
            id = id.from(_N, "DatabaseResponse", "NumberOfSchemas"),
            type = "long",
            name = "NumberOfSchemas",
            target_id = prelude.Long.id,
        }),
        Server = schema.new({
            id = id.from(_N, "DatabaseResponse", "Server"),
            type = "structure",
            name = "Server",
            target_id = id.from(_N, "ServerShortInfoResponse"),
            target = M.ServerShortInfoResponse,
        }),
        SoftwareDetails = schema.new({
            id = id.from(_N, "DatabaseResponse", "SoftwareDetails"),
            type = "structure",
            name = "SoftwareDetails",
            target_id = id.from(_N, "DatabaseInstanceSoftwareDetailsResponse"),
            target = M.DatabaseInstanceSoftwareDetailsResponse,
        }),
        Collectors = schema.new({
            id = id.from(_N, "DatabaseResponse", "Collectors"),
            type = "list",
            name = "Collectors",
            target_id = prelude.Document.id,
            list_member = M.CollectorShortInfoResponse,
        }),
    },
})

M.DescribeFleetAdvisorDatabasesOutput = schema.new({
    id = id.from(_N, "DescribeFleetAdvisorDatabasesResponse"),
    type = "structure",
    members = {
        Databases = schema.new({
            id = id.from(_N, "DescribeFleetAdvisorDatabasesOutput", "Databases"),
            type = "list",
            name = "Databases",
            target_id = prelude.Document.id,
            list_member = M.DatabaseResponse,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeFleetAdvisorDatabasesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeFleetAdvisorLsaAnalysisInput = schema.new({
    id = id.from(_N, "DescribeFleetAdvisorLsaAnalysisRequest"),
    type = "structure",
    members = {
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeFleetAdvisorLsaAnalysisInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeFleetAdvisorLsaAnalysisInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.FleetAdvisorLsaAnalysisResponse = schema.new({
    id = id.from(_N, "FleetAdvisorLsaAnalysisResponse"),
    type = "structure",
    members = {
        LsaAnalysisId = schema.new({
            id = id.from(_N, "FleetAdvisorLsaAnalysisResponse", "LsaAnalysisId"),
            type = "string",
            name = "LsaAnalysisId",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "FleetAdvisorLsaAnalysisResponse", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeFleetAdvisorLsaAnalysisOutput = schema.new({
    id = id.from(_N, "DescribeFleetAdvisorLsaAnalysisResponse"),
    type = "structure",
    members = {
        Analysis = schema.new({
            id = id.from(_N, "DescribeFleetAdvisorLsaAnalysisOutput", "Analysis"),
            type = "list",
            name = "Analysis",
            target_id = prelude.Document.id,
            list_member = M.FleetAdvisorLsaAnalysisResponse,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeFleetAdvisorLsaAnalysisOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeFleetAdvisorSchemaObjectSummaryInput = schema.new({
    id = id.from(_N, "DescribeFleetAdvisorSchemaObjectSummaryRequest"),
    type = "structure",
    members = {
        Filters = schema.new({
            id = id.from(_N, "DescribeFleetAdvisorSchemaObjectSummaryInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Filter, traits = { [traits.XML_NAME] = { name = "Filter" } } }),
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeFleetAdvisorSchemaObjectSummaryInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeFleetAdvisorSchemaObjectSummaryInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.FleetAdvisorSchemaObjectResponse = schema.new({
    id = id.from(_N, "FleetAdvisorSchemaObjectResponse"),
    type = "structure",
    members = {
        SchemaId = schema.new({
            id = id.from(_N, "FleetAdvisorSchemaObjectResponse", "SchemaId"),
            type = "string",
            name = "SchemaId",
            target_id = prelude.String.id,
        }),
        ObjectType = schema.new({
            id = id.from(_N, "FleetAdvisorSchemaObjectResponse", "ObjectType"),
            type = "string",
            name = "ObjectType",
            target_id = prelude.String.id,
        }),
        NumberOfObjects = schema.new({
            id = id.from(_N, "FleetAdvisorSchemaObjectResponse", "NumberOfObjects"),
            type = "long",
            name = "NumberOfObjects",
            target_id = prelude.Long.id,
        }),
        CodeLineCount = schema.new({
            id = id.from(_N, "FleetAdvisorSchemaObjectResponse", "CodeLineCount"),
            type = "long",
            name = "CodeLineCount",
            target_id = prelude.Long.id,
        }),
        CodeSize = schema.new({
            id = id.from(_N, "FleetAdvisorSchemaObjectResponse", "CodeSize"),
            type = "long",
            name = "CodeSize",
            target_id = prelude.Long.id,
        }),
    },
})

M.DescribeFleetAdvisorSchemaObjectSummaryOutput = schema.new({
    id = id.from(_N, "DescribeFleetAdvisorSchemaObjectSummaryResponse"),
    type = "structure",
    members = {
        FleetAdvisorSchemaObjects = schema.new({
            id = id.from(_N, "DescribeFleetAdvisorSchemaObjectSummaryOutput", "FleetAdvisorSchemaObjects"),
            type = "list",
            name = "FleetAdvisorSchemaObjects",
            target_id = prelude.Document.id,
            list_member = M.FleetAdvisorSchemaObjectResponse,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeFleetAdvisorSchemaObjectSummaryOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeFleetAdvisorSchemasInput = schema.new({
    id = id.from(_N, "DescribeFleetAdvisorSchemasRequest"),
    type = "structure",
    members = {
        Filters = schema.new({
            id = id.from(_N, "DescribeFleetAdvisorSchemasInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Filter, traits = { [traits.XML_NAME] = { name = "Filter" } } }),
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeFleetAdvisorSchemasInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeFleetAdvisorSchemasInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DatabaseShortInfoResponse = schema.new({
    id = id.from(_N, "DatabaseShortInfoResponse"),
    type = "structure",
    members = {
        DatabaseId = schema.new({
            id = id.from(_N, "DatabaseShortInfoResponse", "DatabaseId"),
            type = "string",
            name = "DatabaseId",
            target_id = prelude.String.id,
        }),
        DatabaseName = schema.new({
            id = id.from(_N, "DatabaseShortInfoResponse", "DatabaseName"),
            type = "string",
            name = "DatabaseName",
            target_id = prelude.String.id,
        }),
        DatabaseIpAddress = schema.new({
            id = id.from(_N, "DatabaseShortInfoResponse", "DatabaseIpAddress"),
            type = "string",
            name = "DatabaseIpAddress",
            target_id = prelude.String.id,
        }),
        DatabaseEngine = schema.new({
            id = id.from(_N, "DatabaseShortInfoResponse", "DatabaseEngine"),
            type = "string",
            name = "DatabaseEngine",
            target_id = prelude.String.id,
        }),
    },
})

M.SchemaShortInfoResponse = schema.new({
    id = id.from(_N, "SchemaShortInfoResponse"),
    type = "structure",
    members = {
        SchemaId = schema.new({
            id = id.from(_N, "SchemaShortInfoResponse", "SchemaId"),
            type = "string",
            name = "SchemaId",
            target_id = prelude.String.id,
        }),
        SchemaName = schema.new({
            id = id.from(_N, "SchemaShortInfoResponse", "SchemaName"),
            type = "string",
            name = "SchemaName",
            target_id = prelude.String.id,
        }),
        DatabaseId = schema.new({
            id = id.from(_N, "SchemaShortInfoResponse", "DatabaseId"),
            type = "string",
            name = "DatabaseId",
            target_id = prelude.String.id,
        }),
        DatabaseName = schema.new({
            id = id.from(_N, "SchemaShortInfoResponse", "DatabaseName"),
            type = "string",
            name = "DatabaseName",
            target_id = prelude.String.id,
        }),
        DatabaseIpAddress = schema.new({
            id = id.from(_N, "SchemaShortInfoResponse", "DatabaseIpAddress"),
            type = "string",
            name = "DatabaseIpAddress",
            target_id = prelude.String.id,
        }),
    },
})

M.SchemaResponse = schema.new({
    id = id.from(_N, "SchemaResponse"),
    type = "structure",
    members = {
        CodeLineCount = schema.new({
            id = id.from(_N, "SchemaResponse", "CodeLineCount"),
            type = "long",
            name = "CodeLineCount",
            target_id = prelude.Long.id,
        }),
        CodeSize = schema.new({
            id = id.from(_N, "SchemaResponse", "CodeSize"),
            type = "long",
            name = "CodeSize",
            target_id = prelude.Long.id,
        }),
        Complexity = schema.new({
            id = id.from(_N, "SchemaResponse", "Complexity"),
            type = "string",
            name = "Complexity",
            target_id = prelude.String.id,
        }),
        Server = schema.new({
            id = id.from(_N, "SchemaResponse", "Server"),
            type = "structure",
            name = "Server",
            target_id = id.from(_N, "ServerShortInfoResponse"),
            target = M.ServerShortInfoResponse,
        }),
        DatabaseInstance = schema.new({
            id = id.from(_N, "SchemaResponse", "DatabaseInstance"),
            type = "structure",
            name = "DatabaseInstance",
            target_id = id.from(_N, "DatabaseShortInfoResponse"),
            target = M.DatabaseShortInfoResponse,
        }),
        SchemaId = schema.new({
            id = id.from(_N, "SchemaResponse", "SchemaId"),
            type = "string",
            name = "SchemaId",
            target_id = prelude.String.id,
        }),
        SchemaName = schema.new({
            id = id.from(_N, "SchemaResponse", "SchemaName"),
            type = "string",
            name = "SchemaName",
            target_id = prelude.String.id,
        }),
        OriginalSchema = schema.new({
            id = id.from(_N, "SchemaResponse", "OriginalSchema"),
            type = "structure",
            name = "OriginalSchema",
            target_id = id.from(_N, "SchemaShortInfoResponse"),
            target = M.SchemaShortInfoResponse,
        }),
        Similarity = schema.new({
            id = id.from(_N, "SchemaResponse", "Similarity"),
            type = "double",
            name = "Similarity",
            target_id = prelude.Double.id,
        }),
    },
})

M.DescribeFleetAdvisorSchemasOutput = schema.new({
    id = id.from(_N, "DescribeFleetAdvisorSchemasResponse"),
    type = "structure",
    members = {
        FleetAdvisorSchemas = schema.new({
            id = id.from(_N, "DescribeFleetAdvisorSchemasOutput", "FleetAdvisorSchemas"),
            type = "list",
            name = "FleetAdvisorSchemas",
            target_id = prelude.Document.id,
            list_member = M.SchemaResponse,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeFleetAdvisorSchemasOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeInstanceProfilesInput = schema.new({
    id = id.from(_N, "DescribeInstanceProfilesMessage"),
    type = "structure",
    members = {
        Filters = schema.new({
            id = id.from(_N, "DescribeInstanceProfilesInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Filter, traits = { [traits.XML_NAME] = { name = "Filter" } } }),
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeInstanceProfilesInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeInstanceProfilesInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeInstanceProfilesOutput = schema.new({
    id = id.from(_N, "DescribeInstanceProfilesResponse"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "DescribeInstanceProfilesOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        InstanceProfiles = schema.new({
            id = id.from(_N, "DescribeInstanceProfilesOutput", "InstanceProfiles"),
            type = "list",
            name = "InstanceProfiles",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.InstanceProfile, traits = { [traits.XML_NAME] = { name = "InstanceProfile" } } }),
        }),
    },
})

M.DescribeMetadataModelInput = schema.new({
    id = id.from(_N, "DescribeMetadataModelMessage"),
    type = "structure",
    members = {
        SelectionRules = schema.new({
            id = id.from(_N, "DescribeMetadataModelInput", "SelectionRules"),
            type = "string",
            name = "SelectionRules",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MigrationProjectIdentifier = schema.new({
            id = id.from(_N, "DescribeMetadataModelInput", "MigrationProjectIdentifier"),
            type = "string",
            name = "MigrationProjectIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Origin = schema.new({
            id = id.from(_N, "DescribeMetadataModelInput", "Origin"),
            type = "string",
            name = "Origin",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.MetadataModelReference = schema.new({
    id = id.from(_N, "MetadataModelReference"),
    type = "structure",
    members = {
        MetadataModelName = schema.new({
            id = id.from(_N, "MetadataModelReference", "MetadataModelName"),
            type = "string",
            name = "MetadataModelName",
            target_id = prelude.String.id,
        }),
        SelectionRules = schema.new({
            id = id.from(_N, "MetadataModelReference", "SelectionRules"),
            type = "string",
            name = "SelectionRules",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeMetadataModelOutput = schema.new({
    id = id.from(_N, "DescribeMetadataModelResponse"),
    type = "structure",
    members = {
        MetadataModelName = schema.new({
            id = id.from(_N, "DescribeMetadataModelOutput", "MetadataModelName"),
            type = "string",
            name = "MetadataModelName",
            target_id = prelude.String.id,
        }),
        MetadataModelType = schema.new({
            id = id.from(_N, "DescribeMetadataModelOutput", "MetadataModelType"),
            type = "string",
            name = "MetadataModelType",
            target_id = prelude.String.id,
        }),
        TargetMetadataModels = schema.new({
            id = id.from(_N, "DescribeMetadataModelOutput", "TargetMetadataModels"),
            type = "list",
            name = "TargetMetadataModels",
            target_id = prelude.Document.id,
            list_member = M.MetadataModelReference,
        }),
        Definition = schema.new({
            id = id.from(_N, "DescribeMetadataModelOutput", "Definition"),
            type = "string",
            name = "Definition",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeMetadataModelAssessmentsInput = schema.new({
    id = id.from(_N, "DescribeMetadataModelAssessmentsMessage"),
    type = "structure",
    members = {
        MigrationProjectIdentifier = schema.new({
            id = id.from(_N, "DescribeMetadataModelAssessmentsInput", "MigrationProjectIdentifier"),
            type = "string",
            name = "MigrationProjectIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Filters = schema.new({
            id = id.from(_N, "DescribeMetadataModelAssessmentsInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Filter, traits = { [traits.XML_NAME] = { name = "Filter" } } }),
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeMetadataModelAssessmentsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeMetadataModelAssessmentsInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
    },
})

M.DescribeMetadataModelAssessmentsOutput = schema.new({
    id = id.from(_N, "DescribeMetadataModelAssessmentsResponse"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "DescribeMetadataModelAssessmentsOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        Requests = schema.new({
            id = id.from(_N, "DescribeMetadataModelAssessmentsOutput", "Requests"),
            type = "list",
            name = "Requests",
            target_id = prelude.Document.id,
            list_member = M.SchemaConversionRequest,
        }),
    },
})

M.DescribeMetadataModelChildrenInput = schema.new({
    id = id.from(_N, "DescribeMetadataModelChildrenMessage"),
    type = "structure",
    members = {
        SelectionRules = schema.new({
            id = id.from(_N, "DescribeMetadataModelChildrenInput", "SelectionRules"),
            type = "string",
            name = "SelectionRules",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MigrationProjectIdentifier = schema.new({
            id = id.from(_N, "DescribeMetadataModelChildrenInput", "MigrationProjectIdentifier"),
            type = "string",
            name = "MigrationProjectIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Origin = schema.new({
            id = id.from(_N, "DescribeMetadataModelChildrenInput", "Origin"),
            type = "string",
            name = "Origin",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeMetadataModelChildrenInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeMetadataModelChildrenInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
    },
})

M.DescribeMetadataModelChildrenOutput = schema.new({
    id = id.from(_N, "DescribeMetadataModelChildrenResponse"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "DescribeMetadataModelChildrenOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        MetadataModelChildren = schema.new({
            id = id.from(_N, "DescribeMetadataModelChildrenOutput", "MetadataModelChildren"),
            type = "list",
            name = "MetadataModelChildren",
            target_id = prelude.Document.id,
            list_member = M.MetadataModelReference,
        }),
    },
})

M.DescribeMetadataModelConversionsInput = schema.new({
    id = id.from(_N, "DescribeMetadataModelConversionsMessage"),
    type = "structure",
    members = {
        MigrationProjectIdentifier = schema.new({
            id = id.from(_N, "DescribeMetadataModelConversionsInput", "MigrationProjectIdentifier"),
            type = "string",
            name = "MigrationProjectIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Filters = schema.new({
            id = id.from(_N, "DescribeMetadataModelConversionsInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Filter, traits = { [traits.XML_NAME] = { name = "Filter" } } }),
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeMetadataModelConversionsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeMetadataModelConversionsInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
    },
})

M.DescribeMetadataModelConversionsOutput = schema.new({
    id = id.from(_N, "DescribeMetadataModelConversionsResponse"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "DescribeMetadataModelConversionsOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        Requests = schema.new({
            id = id.from(_N, "DescribeMetadataModelConversionsOutput", "Requests"),
            type = "list",
            name = "Requests",
            target_id = prelude.Document.id,
            list_member = M.SchemaConversionRequest,
        }),
    },
})

M.DescribeMetadataModelCreationsInput = schema.new({
    id = id.from(_N, "DescribeMetadataModelCreationsMessage"),
    type = "structure",
    members = {
        Filters = schema.new({
            id = id.from(_N, "DescribeMetadataModelCreationsInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Filter, traits = { [traits.XML_NAME] = { name = "Filter" } } }),
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeMetadataModelCreationsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeMetadataModelCreationsInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
        MigrationProjectIdentifier = schema.new({
            id = id.from(_N, "DescribeMetadataModelCreationsInput", "MigrationProjectIdentifier"),
            type = "string",
            name = "MigrationProjectIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeMetadataModelCreationsOutput = schema.new({
    id = id.from(_N, "DescribeMetadataModelCreationsResponse"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "DescribeMetadataModelCreationsOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        Requests = schema.new({
            id = id.from(_N, "DescribeMetadataModelCreationsOutput", "Requests"),
            type = "list",
            name = "Requests",
            target_id = prelude.Document.id,
            list_member = M.SchemaConversionRequest,
        }),
    },
})

M.DescribeMetadataModelExportsAsScriptInput = schema.new({
    id = id.from(_N, "DescribeMetadataModelExportsAsScriptMessage"),
    type = "structure",
    members = {
        MigrationProjectIdentifier = schema.new({
            id = id.from(_N, "DescribeMetadataModelExportsAsScriptInput", "MigrationProjectIdentifier"),
            type = "string",
            name = "MigrationProjectIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Filters = schema.new({
            id = id.from(_N, "DescribeMetadataModelExportsAsScriptInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Filter, traits = { [traits.XML_NAME] = { name = "Filter" } } }),
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeMetadataModelExportsAsScriptInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeMetadataModelExportsAsScriptInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
    },
})

M.DescribeMetadataModelExportsAsScriptOutput = schema.new({
    id = id.from(_N, "DescribeMetadataModelExportsAsScriptResponse"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "DescribeMetadataModelExportsAsScriptOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        Requests = schema.new({
            id = id.from(_N, "DescribeMetadataModelExportsAsScriptOutput", "Requests"),
            type = "list",
            name = "Requests",
            target_id = prelude.Document.id,
            list_member = M.SchemaConversionRequest,
        }),
    },
})

M.DescribeMetadataModelExportsToTargetInput = schema.new({
    id = id.from(_N, "DescribeMetadataModelExportsToTargetMessage"),
    type = "structure",
    members = {
        MigrationProjectIdentifier = schema.new({
            id = id.from(_N, "DescribeMetadataModelExportsToTargetInput", "MigrationProjectIdentifier"),
            type = "string",
            name = "MigrationProjectIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Filters = schema.new({
            id = id.from(_N, "DescribeMetadataModelExportsToTargetInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Filter, traits = { [traits.XML_NAME] = { name = "Filter" } } }),
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeMetadataModelExportsToTargetInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeMetadataModelExportsToTargetInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
    },
})

M.DescribeMetadataModelExportsToTargetOutput = schema.new({
    id = id.from(_N, "DescribeMetadataModelExportsToTargetResponse"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "DescribeMetadataModelExportsToTargetOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        Requests = schema.new({
            id = id.from(_N, "DescribeMetadataModelExportsToTargetOutput", "Requests"),
            type = "list",
            name = "Requests",
            target_id = prelude.Document.id,
            list_member = M.SchemaConversionRequest,
        }),
    },
})

M.DescribeMetadataModelImportsInput = schema.new({
    id = id.from(_N, "DescribeMetadataModelImportsMessage"),
    type = "structure",
    members = {
        MigrationProjectIdentifier = schema.new({
            id = id.from(_N, "DescribeMetadataModelImportsInput", "MigrationProjectIdentifier"),
            type = "string",
            name = "MigrationProjectIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Filters = schema.new({
            id = id.from(_N, "DescribeMetadataModelImportsInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Filter, traits = { [traits.XML_NAME] = { name = "Filter" } } }),
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeMetadataModelImportsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeMetadataModelImportsInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
    },
})

M.DescribeMetadataModelImportsOutput = schema.new({
    id = id.from(_N, "DescribeMetadataModelImportsResponse"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "DescribeMetadataModelImportsOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        Requests = schema.new({
            id = id.from(_N, "DescribeMetadataModelImportsOutput", "Requests"),
            type = "list",
            name = "Requests",
            target_id = prelude.Document.id,
            list_member = M.SchemaConversionRequest,
        }),
    },
})

M.DescribeMigrationProjectsInput = schema.new({
    id = id.from(_N, "DescribeMigrationProjectsMessage"),
    type = "structure",
    members = {
        Filters = schema.new({
            id = id.from(_N, "DescribeMigrationProjectsInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Filter, traits = { [traits.XML_NAME] = { name = "Filter" } } }),
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeMigrationProjectsInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeMigrationProjectsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeMigrationProjectsOutput = schema.new({
    id = id.from(_N, "DescribeMigrationProjectsResponse"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "DescribeMigrationProjectsOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        MigrationProjects = schema.new({
            id = id.from(_N, "DescribeMigrationProjectsOutput", "MigrationProjects"),
            type = "list",
            name = "MigrationProjects",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.MigrationProject, traits = { [traits.XML_NAME] = { name = "MigrationProject" } } }),
        }),
    },
})

M.DescribeOrderableReplicationInstancesInput = schema.new({
    id = id.from(_N, "DescribeOrderableReplicationInstancesMessage"),
    type = "structure",
    members = {
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeOrderableReplicationInstancesInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeOrderableReplicationInstancesInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.OrderableReplicationInstance = schema.new({
    id = id.from(_N, "OrderableReplicationInstance"),
    type = "structure",
    members = {
        EngineVersion = schema.new({
            id = id.from(_N, "OrderableReplicationInstance", "EngineVersion"),
            type = "string",
            name = "EngineVersion",
            target_id = prelude.String.id,
        }),
        ReplicationInstanceClass = schema.new({
            id = id.from(_N, "OrderableReplicationInstance", "ReplicationInstanceClass"),
            type = "string",
            name = "ReplicationInstanceClass",
            target_id = prelude.String.id,
        }),
        StorageType = schema.new({
            id = id.from(_N, "OrderableReplicationInstance", "StorageType"),
            type = "string",
            name = "StorageType",
            target_id = prelude.String.id,
        }),
        MinAllocatedStorage = schema.new({
            id = id.from(_N, "OrderableReplicationInstance", "MinAllocatedStorage"),
            type = "integer",
            name = "MinAllocatedStorage",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        MaxAllocatedStorage = schema.new({
            id = id.from(_N, "OrderableReplicationInstance", "MaxAllocatedStorage"),
            type = "integer",
            name = "MaxAllocatedStorage",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        DefaultAllocatedStorage = schema.new({
            id = id.from(_N, "OrderableReplicationInstance", "DefaultAllocatedStorage"),
            type = "integer",
            name = "DefaultAllocatedStorage",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        IncludedAllocatedStorage = schema.new({
            id = id.from(_N, "OrderableReplicationInstance", "IncludedAllocatedStorage"),
            type = "integer",
            name = "IncludedAllocatedStorage",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        AvailabilityZones = schema.new({
            id = id.from(_N, "OrderableReplicationInstance", "AvailabilityZones"),
            type = "list",
            name = "AvailabilityZones",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ReleaseStatus = schema.new({
            id = id.from(_N, "OrderableReplicationInstance", "ReleaseStatus"),
            type = "string",
            name = "ReleaseStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeOrderableReplicationInstancesOutput = schema.new({
    id = id.from(_N, "DescribeOrderableReplicationInstancesResponse"),
    type = "structure",
    members = {
        OrderableReplicationInstances = schema.new({
            id = id.from(_N, "DescribeOrderableReplicationInstancesOutput", "OrderableReplicationInstances"),
            type = "list",
            name = "OrderableReplicationInstances",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.OrderableReplicationInstance, traits = { [traits.XML_NAME] = { name = "OrderableReplicationInstance" } } }),
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeOrderableReplicationInstancesOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribePendingMaintenanceActionsInput = schema.new({
    id = id.from(_N, "DescribePendingMaintenanceActionsMessage"),
    type = "structure",
    members = {
        ReplicationInstanceArn = schema.new({
            id = id.from(_N, "DescribePendingMaintenanceActionsInput", "ReplicationInstanceArn"),
            type = "string",
            name = "ReplicationInstanceArn",
            target_id = prelude.String.id,
        }),
        Filters = schema.new({
            id = id.from(_N, "DescribePendingMaintenanceActionsInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Filter, traits = { [traits.XML_NAME] = { name = "Filter" } } }),
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribePendingMaintenanceActionsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribePendingMaintenanceActionsInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
    },
})

M.DescribePendingMaintenanceActionsOutput = schema.new({
    id = id.from(_N, "DescribePendingMaintenanceActionsResponse"),
    type = "structure",
    members = {
        PendingMaintenanceActions = schema.new({
            id = id.from(_N, "DescribePendingMaintenanceActionsOutput", "PendingMaintenanceActions"),
            type = "list",
            name = "PendingMaintenanceActions",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.ResourcePendingMaintenanceActions, traits = { [traits.XML_NAME] = { name = "ResourcePendingMaintenanceActions" } } }),
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribePendingMaintenanceActionsOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeRecommendationLimitationsInput = schema.new({
    id = id.from(_N, "DescribeRecommendationLimitationsRequest"),
    type = "structure",
    members = {
        Filters = schema.new({
            id = id.from(_N, "DescribeRecommendationLimitationsInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Filter, traits = { [traits.XML_NAME] = { name = "Filter" } } }),
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeRecommendationLimitationsInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeRecommendationLimitationsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.Limitation = schema.new({
    id = id.from(_N, "Limitation"),
    type = "structure",
    members = {
        DatabaseId = schema.new({
            id = id.from(_N, "Limitation", "DatabaseId"),
            type = "string",
            name = "DatabaseId",
            target_id = prelude.String.id,
        }),
        EngineName = schema.new({
            id = id.from(_N, "Limitation", "EngineName"),
            type = "string",
            name = "EngineName",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "Limitation", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "Limitation", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Impact = schema.new({
            id = id.from(_N, "Limitation", "Impact"),
            type = "string",
            name = "Impact",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "Limitation", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeRecommendationLimitationsOutput = schema.new({
    id = id.from(_N, "DescribeRecommendationLimitationsResponse"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "DescribeRecommendationLimitationsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Limitations = schema.new({
            id = id.from(_N, "DescribeRecommendationLimitationsOutput", "Limitations"),
            type = "list",
            name = "Limitations",
            target_id = prelude.Document.id,
            list_member = M.Limitation,
        }),
    },
})

M.DescribeRecommendationsInput = schema.new({
    id = id.from(_N, "DescribeRecommendationsRequest"),
    type = "structure",
    members = {
        Filters = schema.new({
            id = id.from(_N, "DescribeRecommendationsInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Filter, traits = { [traits.XML_NAME] = { name = "Filter" } } }),
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeRecommendationsInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeRecommendationsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.RdsRequirements = schema.new({
    id = id.from(_N, "RdsRequirements"),
    type = "structure",
    members = {
        EngineEdition = schema.new({
            id = id.from(_N, "RdsRequirements", "EngineEdition"),
            type = "string",
            name = "EngineEdition",
            target_id = prelude.String.id,
        }),
        InstanceVcpu = schema.new({
            id = id.from(_N, "RdsRequirements", "InstanceVcpu"),
            type = "double",
            name = "InstanceVcpu",
            target_id = prelude.Double.id,
        }),
        InstanceMemory = schema.new({
            id = id.from(_N, "RdsRequirements", "InstanceMemory"),
            type = "double",
            name = "InstanceMemory",
            target_id = prelude.Double.id,
        }),
        StorageSize = schema.new({
            id = id.from(_N, "RdsRequirements", "StorageSize"),
            type = "integer",
            name = "StorageSize",
            target_id = prelude.Integer.id,
        }),
        StorageIops = schema.new({
            id = id.from(_N, "RdsRequirements", "StorageIops"),
            type = "integer",
            name = "StorageIops",
            target_id = prelude.Integer.id,
        }),
        DeploymentOption = schema.new({
            id = id.from(_N, "RdsRequirements", "DeploymentOption"),
            type = "string",
            name = "DeploymentOption",
            target_id = prelude.String.id,
        }),
        EngineVersion = schema.new({
            id = id.from(_N, "RdsRequirements", "EngineVersion"),
            type = "string",
            name = "EngineVersion",
            target_id = prelude.String.id,
        }),
    },
})

M.RdsConfiguration = schema.new({
    id = id.from(_N, "RdsConfiguration"),
    type = "structure",
    members = {
        EngineEdition = schema.new({
            id = id.from(_N, "RdsConfiguration", "EngineEdition"),
            type = "string",
            name = "EngineEdition",
            target_id = prelude.String.id,
        }),
        InstanceType = schema.new({
            id = id.from(_N, "RdsConfiguration", "InstanceType"),
            type = "string",
            name = "InstanceType",
            target_id = prelude.String.id,
        }),
        InstanceVcpu = schema.new({
            id = id.from(_N, "RdsConfiguration", "InstanceVcpu"),
            type = "double",
            name = "InstanceVcpu",
            target_id = prelude.Double.id,
        }),
        InstanceMemory = schema.new({
            id = id.from(_N, "RdsConfiguration", "InstanceMemory"),
            type = "double",
            name = "InstanceMemory",
            target_id = prelude.Double.id,
        }),
        StorageType = schema.new({
            id = id.from(_N, "RdsConfiguration", "StorageType"),
            type = "string",
            name = "StorageType",
            target_id = prelude.String.id,
        }),
        StorageSize = schema.new({
            id = id.from(_N, "RdsConfiguration", "StorageSize"),
            type = "integer",
            name = "StorageSize",
            target_id = prelude.Integer.id,
        }),
        StorageIops = schema.new({
            id = id.from(_N, "RdsConfiguration", "StorageIops"),
            type = "integer",
            name = "StorageIops",
            target_id = prelude.Integer.id,
        }),
        DeploymentOption = schema.new({
            id = id.from(_N, "RdsConfiguration", "DeploymentOption"),
            type = "string",
            name = "DeploymentOption",
            target_id = prelude.String.id,
        }),
        EngineVersion = schema.new({
            id = id.from(_N, "RdsConfiguration", "EngineVersion"),
            type = "string",
            name = "EngineVersion",
            target_id = prelude.String.id,
        }),
    },
})

M.RdsRecommendation = schema.new({
    id = id.from(_N, "RdsRecommendation"),
    type = "structure",
    members = {
        RequirementsToTarget = schema.new({
            id = id.from(_N, "RdsRecommendation", "RequirementsToTarget"),
            type = "structure",
            name = "RequirementsToTarget",
            target_id = id.from(_N, "RdsRequirements"),
            target = M.RdsRequirements,
        }),
        TargetConfiguration = schema.new({
            id = id.from(_N, "RdsRecommendation", "TargetConfiguration"),
            type = "structure",
            name = "TargetConfiguration",
            target_id = id.from(_N, "RdsConfiguration"),
            target = M.RdsConfiguration,
        }),
    },
})

M.RecommendationData = schema.new({
    id = id.from(_N, "RecommendationData"),
    type = "structure",
    members = {
        RdsEngine = schema.new({
            id = id.from(_N, "RecommendationData", "RdsEngine"),
            type = "structure",
            name = "RdsEngine",
            target_id = id.from(_N, "RdsRecommendation"),
            target = M.RdsRecommendation,
        }),
    },
})

M.Recommendation = schema.new({
    id = id.from(_N, "Recommendation"),
    type = "structure",
    members = {
        DatabaseId = schema.new({
            id = id.from(_N, "Recommendation", "DatabaseId"),
            type = "string",
            name = "DatabaseId",
            target_id = prelude.String.id,
        }),
        EngineName = schema.new({
            id = id.from(_N, "Recommendation", "EngineName"),
            type = "string",
            name = "EngineName",
            target_id = prelude.String.id,
        }),
        CreatedDate = schema.new({
            id = id.from(_N, "Recommendation", "CreatedDate"),
            type = "string",
            name = "CreatedDate",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "Recommendation", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        Preferred = schema.new({
            id = id.from(_N, "Recommendation", "Preferred"),
            type = "boolean",
            name = "Preferred",
            target_id = prelude.Boolean.id,
        }),
        Settings = schema.new({
            id = id.from(_N, "Recommendation", "Settings"),
            type = "structure",
            name = "Settings",
            target_id = id.from(_N, "RecommendationSettings"),
            target = M.RecommendationSettings,
        }),
        Data = schema.new({
            id = id.from(_N, "Recommendation", "Data"),
            type = "structure",
            name = "Data",
            target_id = id.from(_N, "RecommendationData"),
            target = M.RecommendationData,
        }),
    },
})

M.DescribeRecommendationsOutput = schema.new({
    id = id.from(_N, "DescribeRecommendationsResponse"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "DescribeRecommendationsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Recommendations = schema.new({
            id = id.from(_N, "DescribeRecommendationsOutput", "Recommendations"),
            type = "list",
            name = "Recommendations",
            target_id = prelude.Document.id,
            list_member = M.Recommendation,
        }),
    },
})

M.DescribeRefreshSchemasStatusInput = schema.new({
    id = id.from(_N, "DescribeRefreshSchemasStatusMessage"),
    type = "structure",
    members = {
        EndpointArn = schema.new({
            id = id.from(_N, "DescribeRefreshSchemasStatusInput", "EndpointArn"),
            type = "string",
            name = "EndpointArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RefreshSchemasStatus = schema.new({
    id = id.from(_N, "RefreshSchemasStatus"),
    type = "structure",
    members = {
        EndpointArn = schema.new({
            id = id.from(_N, "RefreshSchemasStatus", "EndpointArn"),
            type = "string",
            name = "EndpointArn",
            target_id = prelude.String.id,
        }),
        ReplicationInstanceArn = schema.new({
            id = id.from(_N, "RefreshSchemasStatus", "ReplicationInstanceArn"),
            type = "string",
            name = "ReplicationInstanceArn",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "RefreshSchemasStatus", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        LastRefreshDate = schema.new({
            id = id.from(_N, "RefreshSchemasStatus", "LastRefreshDate"),
            type = "timestamp",
            name = "LastRefreshDate",
            target_id = prelude.Timestamp.id,
        }),
        LastFailureMessage = schema.new({
            id = id.from(_N, "RefreshSchemasStatus", "LastFailureMessage"),
            type = "string",
            name = "LastFailureMessage",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeRefreshSchemasStatusOutput = schema.new({
    id = id.from(_N, "DescribeRefreshSchemasStatusResponse"),
    type = "structure",
    members = {
        RefreshSchemasStatus = schema.new({
            id = id.from(_N, "DescribeRefreshSchemasStatusOutput", "RefreshSchemasStatus"),
            type = "structure",
            name = "RefreshSchemasStatus",
            target_id = id.from(_N, "RefreshSchemasStatus"),
            target = M.RefreshSchemasStatus,
        }),
    },
})

M.DescribeReplicationConfigsInput = schema.new({
    id = id.from(_N, "DescribeReplicationConfigsMessage"),
    type = "structure",
    members = {
        Filters = schema.new({
            id = id.from(_N, "DescribeReplicationConfigsInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Filter, traits = { [traits.XML_NAME] = { name = "Filter" } } }),
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeReplicationConfigsInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeReplicationConfigsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeReplicationConfigsOutput = schema.new({
    id = id.from(_N, "DescribeReplicationConfigsResponse"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "DescribeReplicationConfigsOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        ReplicationConfigs = schema.new({
            id = id.from(_N, "DescribeReplicationConfigsOutput", "ReplicationConfigs"),
            type = "list",
            name = "ReplicationConfigs",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.ReplicationConfig, traits = { [traits.XML_NAME] = { name = "ReplicationConfig" } } }),
        }),
    },
})

M.DescribeReplicationInstancesInput = schema.new({
    id = id.from(_N, "DescribeReplicationInstancesMessage"),
    type = "structure",
    members = {
        Filters = schema.new({
            id = id.from(_N, "DescribeReplicationInstancesInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Filter, traits = { [traits.XML_NAME] = { name = "Filter" } } }),
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeReplicationInstancesInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeReplicationInstancesInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeReplicationInstancesOutput = schema.new({
    id = id.from(_N, "DescribeReplicationInstancesResponse"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "DescribeReplicationInstancesOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        ReplicationInstances = schema.new({
            id = id.from(_N, "DescribeReplicationInstancesOutput", "ReplicationInstances"),
            type = "list",
            name = "ReplicationInstances",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.ReplicationInstance, traits = { [traits.XML_NAME] = { name = "ReplicationInstance" } } }),
        }),
    },
})

M.DescribeReplicationInstanceTaskLogsInput = schema.new({
    id = id.from(_N, "DescribeReplicationInstanceTaskLogsMessage"),
    type = "structure",
    members = {
        ReplicationInstanceArn = schema.new({
            id = id.from(_N, "DescribeReplicationInstanceTaskLogsInput", "ReplicationInstanceArn"),
            type = "string",
            name = "ReplicationInstanceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeReplicationInstanceTaskLogsInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeReplicationInstanceTaskLogsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.ReplicationInstanceTaskLog = schema.new({
    id = id.from(_N, "ReplicationInstanceTaskLog"),
    type = "structure",
    members = {
        ReplicationTaskName = schema.new({
            id = id.from(_N, "ReplicationInstanceTaskLog", "ReplicationTaskName"),
            type = "string",
            name = "ReplicationTaskName",
            target_id = prelude.String.id,
        }),
        ReplicationTaskArn = schema.new({
            id = id.from(_N, "ReplicationInstanceTaskLog", "ReplicationTaskArn"),
            type = "string",
            name = "ReplicationTaskArn",
            target_id = prelude.String.id,
        }),
        ReplicationInstanceTaskLogSize = schema.new({
            id = id.from(_N, "ReplicationInstanceTaskLog", "ReplicationInstanceTaskLogSize"),
            type = "long",
            name = "ReplicationInstanceTaskLogSize",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.DescribeReplicationInstanceTaskLogsOutput = schema.new({
    id = id.from(_N, "DescribeReplicationInstanceTaskLogsResponse"),
    type = "structure",
    members = {
        ReplicationInstanceArn = schema.new({
            id = id.from(_N, "DescribeReplicationInstanceTaskLogsOutput", "ReplicationInstanceArn"),
            type = "string",
            name = "ReplicationInstanceArn",
            target_id = prelude.String.id,
        }),
        ReplicationInstanceTaskLogs = schema.new({
            id = id.from(_N, "DescribeReplicationInstanceTaskLogsOutput", "ReplicationInstanceTaskLogs"),
            type = "list",
            name = "ReplicationInstanceTaskLogs",
            target_id = prelude.Document.id,
            list_member = M.ReplicationInstanceTaskLog,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeReplicationInstanceTaskLogsOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeReplicationsInput = schema.new({
    id = id.from(_N, "DescribeReplicationsMessage"),
    type = "structure",
    members = {
        Filters = schema.new({
            id = id.from(_N, "DescribeReplicationsInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Filter, traits = { [traits.XML_NAME] = { name = "Filter" } } }),
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeReplicationsInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeReplicationsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.PremigrationAssessmentStatus = schema.new({
    id = id.from(_N, "PremigrationAssessmentStatus"),
    type = "structure",
    members = {
        PremigrationAssessmentRunArn = schema.new({
            id = id.from(_N, "PremigrationAssessmentStatus", "PremigrationAssessmentRunArn"),
            type = "string",
            name = "PremigrationAssessmentRunArn",
            target_id = prelude.String.id,
        }),
        FailOnAssessmentFailure = schema.new({
            id = id.from(_N, "PremigrationAssessmentStatus", "FailOnAssessmentFailure"),
            type = "boolean",
            name = "FailOnAssessmentFailure",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        Status = schema.new({
            id = id.from(_N, "PremigrationAssessmentStatus", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        PremigrationAssessmentRunCreationDate = schema.new({
            id = id.from(_N, "PremigrationAssessmentStatus", "PremigrationAssessmentRunCreationDate"),
            type = "timestamp",
            name = "PremigrationAssessmentRunCreationDate",
            target_id = prelude.Timestamp.id,
        }),
        AssessmentProgress = schema.new({
            id = id.from(_N, "PremigrationAssessmentStatus", "AssessmentProgress"),
            type = "structure",
            name = "AssessmentProgress",
            target_id = id.from(_N, "ReplicationTaskAssessmentRunProgress"),
            target = M.ReplicationTaskAssessmentRunProgress,
        }),
        LastFailureMessage = schema.new({
            id = id.from(_N, "PremigrationAssessmentStatus", "LastFailureMessage"),
            type = "string",
            name = "LastFailureMessage",
            target_id = prelude.String.id,
        }),
        ResultLocationBucket = schema.new({
            id = id.from(_N, "PremigrationAssessmentStatus", "ResultLocationBucket"),
            type = "string",
            name = "ResultLocationBucket",
            target_id = prelude.String.id,
        }),
        ResultLocationFolder = schema.new({
            id = id.from(_N, "PremigrationAssessmentStatus", "ResultLocationFolder"),
            type = "string",
            name = "ResultLocationFolder",
            target_id = prelude.String.id,
        }),
        ResultEncryptionMode = schema.new({
            id = id.from(_N, "PremigrationAssessmentStatus", "ResultEncryptionMode"),
            type = "string",
            name = "ResultEncryptionMode",
            target_id = prelude.String.id,
        }),
        ResultKmsKeyArn = schema.new({
            id = id.from(_N, "PremigrationAssessmentStatus", "ResultKmsKeyArn"),
            type = "string",
            name = "ResultKmsKeyArn",
            target_id = prelude.String.id,
        }),
        ResultStatistic = schema.new({
            id = id.from(_N, "PremigrationAssessmentStatus", "ResultStatistic"),
            type = "structure",
            name = "ResultStatistic",
            target_id = id.from(_N, "ReplicationTaskAssessmentRunResultStatistic"),
            target = M.ReplicationTaskAssessmentRunResultStatistic,
        }),
    },
})

M.ProvisionData = schema.new({
    id = id.from(_N, "ProvisionData"),
    type = "structure",
    members = {
        ProvisionState = schema.new({
            id = id.from(_N, "ProvisionData", "ProvisionState"),
            type = "string",
            name = "ProvisionState",
            target_id = prelude.String.id,
        }),
        ProvisionedCapacityUnits = schema.new({
            id = id.from(_N, "ProvisionData", "ProvisionedCapacityUnits"),
            type = "integer",
            name = "ProvisionedCapacityUnits",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        DateProvisioned = schema.new({
            id = id.from(_N, "ProvisionData", "DateProvisioned"),
            type = "timestamp",
            name = "DateProvisioned",
            target_id = prelude.Timestamp.id,
        }),
        IsNewProvisioningAvailable = schema.new({
            id = id.from(_N, "ProvisionData", "IsNewProvisioningAvailable"),
            type = "boolean",
            name = "IsNewProvisioningAvailable",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        DateNewProvisioningDataAvailable = schema.new({
            id = id.from(_N, "ProvisionData", "DateNewProvisioningDataAvailable"),
            type = "timestamp",
            name = "DateNewProvisioningDataAvailable",
            target_id = prelude.Timestamp.id,
        }),
        ReasonForNewProvisioningData = schema.new({
            id = id.from(_N, "ProvisionData", "ReasonForNewProvisioningData"),
            type = "string",
            name = "ReasonForNewProvisioningData",
            target_id = prelude.String.id,
        }),
    },
})

M.ReplicationStats = schema.new({
    id = id.from(_N, "ReplicationStats"),
    type = "structure",
    members = {
        FullLoadProgressPercent = schema.new({
            id = id.from(_N, "ReplicationStats", "FullLoadProgressPercent"),
            type = "integer",
            name = "FullLoadProgressPercent",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        ElapsedTimeMillis = schema.new({
            id = id.from(_N, "ReplicationStats", "ElapsedTimeMillis"),
            type = "long",
            name = "ElapsedTimeMillis",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        TablesLoaded = schema.new({
            id = id.from(_N, "ReplicationStats", "TablesLoaded"),
            type = "integer",
            name = "TablesLoaded",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        TablesLoading = schema.new({
            id = id.from(_N, "ReplicationStats", "TablesLoading"),
            type = "integer",
            name = "TablesLoading",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        TablesQueued = schema.new({
            id = id.from(_N, "ReplicationStats", "TablesQueued"),
            type = "integer",
            name = "TablesQueued",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        TablesErrored = schema.new({
            id = id.from(_N, "ReplicationStats", "TablesErrored"),
            type = "integer",
            name = "TablesErrored",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        FreshStartDate = schema.new({
            id = id.from(_N, "ReplicationStats", "FreshStartDate"),
            type = "timestamp",
            name = "FreshStartDate",
            target_id = prelude.Timestamp.id,
        }),
        StartDate = schema.new({
            id = id.from(_N, "ReplicationStats", "StartDate"),
            type = "timestamp",
            name = "StartDate",
            target_id = prelude.Timestamp.id,
        }),
        StopDate = schema.new({
            id = id.from(_N, "ReplicationStats", "StopDate"),
            type = "timestamp",
            name = "StopDate",
            target_id = prelude.Timestamp.id,
        }),
        FullLoadStartDate = schema.new({
            id = id.from(_N, "ReplicationStats", "FullLoadStartDate"),
            type = "timestamp",
            name = "FullLoadStartDate",
            target_id = prelude.Timestamp.id,
        }),
        FullLoadFinishDate = schema.new({
            id = id.from(_N, "ReplicationStats", "FullLoadFinishDate"),
            type = "timestamp",
            name = "FullLoadFinishDate",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.Replication = schema.new({
    id = id.from(_N, "Replication"),
    type = "structure",
    members = {
        ReplicationConfigIdentifier = schema.new({
            id = id.from(_N, "Replication", "ReplicationConfigIdentifier"),
            type = "string",
            name = "ReplicationConfigIdentifier",
            target_id = prelude.String.id,
        }),
        ReplicationConfigArn = schema.new({
            id = id.from(_N, "Replication", "ReplicationConfigArn"),
            type = "string",
            name = "ReplicationConfigArn",
            target_id = prelude.String.id,
        }),
        SourceEndpointArn = schema.new({
            id = id.from(_N, "Replication", "SourceEndpointArn"),
            type = "string",
            name = "SourceEndpointArn",
            target_id = prelude.String.id,
        }),
        TargetEndpointArn = schema.new({
            id = id.from(_N, "Replication", "TargetEndpointArn"),
            type = "string",
            name = "TargetEndpointArn",
            target_id = prelude.String.id,
        }),
        ReplicationType = schema.new({
            id = id.from(_N, "Replication", "ReplicationType"),
            type = "string",
            name = "ReplicationType",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "Replication", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        ProvisionData = schema.new({
            id = id.from(_N, "Replication", "ProvisionData"),
            type = "structure",
            name = "ProvisionData",
            target_id = id.from(_N, "ProvisionData"),
            target = M.ProvisionData,
        }),
        PremigrationAssessmentStatuses = schema.new({
            id = id.from(_N, "Replication", "PremigrationAssessmentStatuses"),
            type = "list",
            name = "PremigrationAssessmentStatuses",
            target_id = prelude.Document.id,
            list_member = M.PremigrationAssessmentStatus,
        }),
        StopReason = schema.new({
            id = id.from(_N, "Replication", "StopReason"),
            type = "string",
            name = "StopReason",
            target_id = prelude.String.id,
        }),
        FailureMessages = schema.new({
            id = id.from(_N, "Replication", "FailureMessages"),
            type = "list",
            name = "FailureMessages",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ReplicationStats = schema.new({
            id = id.from(_N, "Replication", "ReplicationStats"),
            type = "structure",
            name = "ReplicationStats",
            target_id = id.from(_N, "ReplicationStats"),
            target = M.ReplicationStats,
        }),
        StartReplicationType = schema.new({
            id = id.from(_N, "Replication", "StartReplicationType"),
            type = "string",
            name = "StartReplicationType",
            target_id = prelude.String.id,
        }),
        CdcStartTime = schema.new({
            id = id.from(_N, "Replication", "CdcStartTime"),
            type = "timestamp",
            name = "CdcStartTime",
            target_id = prelude.Timestamp.id,
        }),
        CdcStartPosition = schema.new({
            id = id.from(_N, "Replication", "CdcStartPosition"),
            type = "string",
            name = "CdcStartPosition",
            target_id = prelude.String.id,
        }),
        CdcStopPosition = schema.new({
            id = id.from(_N, "Replication", "CdcStopPosition"),
            type = "string",
            name = "CdcStopPosition",
            target_id = prelude.String.id,
        }),
        RecoveryCheckpoint = schema.new({
            id = id.from(_N, "Replication", "RecoveryCheckpoint"),
            type = "string",
            name = "RecoveryCheckpoint",
            target_id = prelude.String.id,
        }),
        ReplicationCreateTime = schema.new({
            id = id.from(_N, "Replication", "ReplicationCreateTime"),
            type = "timestamp",
            name = "ReplicationCreateTime",
            target_id = prelude.Timestamp.id,
        }),
        ReplicationUpdateTime = schema.new({
            id = id.from(_N, "Replication", "ReplicationUpdateTime"),
            type = "timestamp",
            name = "ReplicationUpdateTime",
            target_id = prelude.Timestamp.id,
        }),
        ReplicationLastStopTime = schema.new({
            id = id.from(_N, "Replication", "ReplicationLastStopTime"),
            type = "timestamp",
            name = "ReplicationLastStopTime",
            target_id = prelude.Timestamp.id,
        }),
        ReplicationDeprovisionTime = schema.new({
            id = id.from(_N, "Replication", "ReplicationDeprovisionTime"),
            type = "timestamp",
            name = "ReplicationDeprovisionTime",
            target_id = prelude.Timestamp.id,
        }),
        IsReadOnly = schema.new({
            id = id.from(_N, "Replication", "IsReadOnly"),
            type = "boolean",
            name = "IsReadOnly",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.DescribeReplicationsOutput = schema.new({
    id = id.from(_N, "DescribeReplicationsResponse"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "DescribeReplicationsOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        Replications = schema.new({
            id = id.from(_N, "DescribeReplicationsOutput", "Replications"),
            type = "list",
            name = "Replications",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Replication, traits = { [traits.XML_NAME] = { name = "Replication" } } }),
        }),
    },
})

M.DescribeReplicationSubnetGroupsInput = schema.new({
    id = id.from(_N, "DescribeReplicationSubnetGroupsMessage"),
    type = "structure",
    members = {
        Filters = schema.new({
            id = id.from(_N, "DescribeReplicationSubnetGroupsInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Filter, traits = { [traits.XML_NAME] = { name = "Filter" } } }),
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeReplicationSubnetGroupsInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeReplicationSubnetGroupsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeReplicationSubnetGroupsOutput = schema.new({
    id = id.from(_N, "DescribeReplicationSubnetGroupsResponse"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "DescribeReplicationSubnetGroupsOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        ReplicationSubnetGroups = schema.new({
            id = id.from(_N, "DescribeReplicationSubnetGroupsOutput", "ReplicationSubnetGroups"),
            type = "list",
            name = "ReplicationSubnetGroups",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.ReplicationSubnetGroup, traits = { [traits.XML_NAME] = { name = "ReplicationSubnetGroup" } } }),
        }),
    },
})

M.DescribeReplicationTableStatisticsInput = schema.new({
    id = id.from(_N, "DescribeReplicationTableStatisticsMessage"),
    type = "structure",
    members = {
        ReplicationConfigArn = schema.new({
            id = id.from(_N, "DescribeReplicationTableStatisticsInput", "ReplicationConfigArn"),
            type = "string",
            name = "ReplicationConfigArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeReplicationTableStatisticsInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeReplicationTableStatisticsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        Filters = schema.new({
            id = id.from(_N, "DescribeReplicationTableStatisticsInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Filter, traits = { [traits.XML_NAME] = { name = "Filter" } } }),
        }),
    },
})

M.TableStatistics = schema.new({
    id = id.from(_N, "TableStatistics"),
    type = "structure",
    members = {
        SchemaName = schema.new({
            id = id.from(_N, "TableStatistics", "SchemaName"),
            type = "string",
            name = "SchemaName",
            target_id = prelude.String.id,
        }),
        TableName = schema.new({
            id = id.from(_N, "TableStatistics", "TableName"),
            type = "string",
            name = "TableName",
            target_id = prelude.String.id,
        }),
        Inserts = schema.new({
            id = id.from(_N, "TableStatistics", "Inserts"),
            type = "long",
            name = "Inserts",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Deletes = schema.new({
            id = id.from(_N, "TableStatistics", "Deletes"),
            type = "long",
            name = "Deletes",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Updates = schema.new({
            id = id.from(_N, "TableStatistics", "Updates"),
            type = "long",
            name = "Updates",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Ddls = schema.new({
            id = id.from(_N, "TableStatistics", "Ddls"),
            type = "long",
            name = "Ddls",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        AppliedInserts = schema.new({
            id = id.from(_N, "TableStatistics", "AppliedInserts"),
            type = "long",
            name = "AppliedInserts",
            target_id = prelude.Long.id,
        }),
        AppliedDeletes = schema.new({
            id = id.from(_N, "TableStatistics", "AppliedDeletes"),
            type = "long",
            name = "AppliedDeletes",
            target_id = prelude.Long.id,
        }),
        AppliedUpdates = schema.new({
            id = id.from(_N, "TableStatistics", "AppliedUpdates"),
            type = "long",
            name = "AppliedUpdates",
            target_id = prelude.Long.id,
        }),
        AppliedDdls = schema.new({
            id = id.from(_N, "TableStatistics", "AppliedDdls"),
            type = "long",
            name = "AppliedDdls",
            target_id = prelude.Long.id,
        }),
        FullLoadRows = schema.new({
            id = id.from(_N, "TableStatistics", "FullLoadRows"),
            type = "long",
            name = "FullLoadRows",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        FullLoadCondtnlChkFailedRows = schema.new({
            id = id.from(_N, "TableStatistics", "FullLoadCondtnlChkFailedRows"),
            type = "long",
            name = "FullLoadCondtnlChkFailedRows",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        FullLoadErrorRows = schema.new({
            id = id.from(_N, "TableStatistics", "FullLoadErrorRows"),
            type = "long",
            name = "FullLoadErrorRows",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        FullLoadStartTime = schema.new({
            id = id.from(_N, "TableStatistics", "FullLoadStartTime"),
            type = "timestamp",
            name = "FullLoadStartTime",
            target_id = prelude.Timestamp.id,
        }),
        FullLoadEndTime = schema.new({
            id = id.from(_N, "TableStatistics", "FullLoadEndTime"),
            type = "timestamp",
            name = "FullLoadEndTime",
            target_id = prelude.Timestamp.id,
        }),
        FullLoadReloaded = schema.new({
            id = id.from(_N, "TableStatistics", "FullLoadReloaded"),
            type = "boolean",
            name = "FullLoadReloaded",
            target_id = prelude.Boolean.id,
        }),
        LastUpdateTime = schema.new({
            id = id.from(_N, "TableStatistics", "LastUpdateTime"),
            type = "timestamp",
            name = "LastUpdateTime",
            target_id = prelude.Timestamp.id,
        }),
        TableState = schema.new({
            id = id.from(_N, "TableStatistics", "TableState"),
            type = "string",
            name = "TableState",
            target_id = prelude.String.id,
        }),
        ValidationPendingRecords = schema.new({
            id = id.from(_N, "TableStatistics", "ValidationPendingRecords"),
            type = "long",
            name = "ValidationPendingRecords",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        ValidationFailedRecords = schema.new({
            id = id.from(_N, "TableStatistics", "ValidationFailedRecords"),
            type = "long",
            name = "ValidationFailedRecords",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        ValidationSuspendedRecords = schema.new({
            id = id.from(_N, "TableStatistics", "ValidationSuspendedRecords"),
            type = "long",
            name = "ValidationSuspendedRecords",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        ValidationState = schema.new({
            id = id.from(_N, "TableStatistics", "ValidationState"),
            type = "string",
            name = "ValidationState",
            target_id = prelude.String.id,
        }),
        ValidationStateDetails = schema.new({
            id = id.from(_N, "TableStatistics", "ValidationStateDetails"),
            type = "string",
            name = "ValidationStateDetails",
            target_id = prelude.String.id,
        }),
        ResyncState = schema.new({
            id = id.from(_N, "TableStatistics", "ResyncState"),
            type = "string",
            name = "ResyncState",
            target_id = prelude.String.id,
        }),
        ResyncRowsAttempted = schema.new({
            id = id.from(_N, "TableStatistics", "ResyncRowsAttempted"),
            type = "long",
            name = "ResyncRowsAttempted",
            target_id = prelude.Long.id,
        }),
        ResyncRowsSucceeded = schema.new({
            id = id.from(_N, "TableStatistics", "ResyncRowsSucceeded"),
            type = "long",
            name = "ResyncRowsSucceeded",
            target_id = prelude.Long.id,
        }),
        ResyncRowsFailed = schema.new({
            id = id.from(_N, "TableStatistics", "ResyncRowsFailed"),
            type = "long",
            name = "ResyncRowsFailed",
            target_id = prelude.Long.id,
        }),
        ResyncProgress = schema.new({
            id = id.from(_N, "TableStatistics", "ResyncProgress"),
            type = "double",
            name = "ResyncProgress",
            target_id = prelude.Double.id,
        }),
    },
})

M.DescribeReplicationTableStatisticsOutput = schema.new({
    id = id.from(_N, "DescribeReplicationTableStatisticsResponse"),
    type = "structure",
    members = {
        ReplicationConfigArn = schema.new({
            id = id.from(_N, "DescribeReplicationTableStatisticsOutput", "ReplicationConfigArn"),
            type = "string",
            name = "ReplicationConfigArn",
            target_id = prelude.String.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeReplicationTableStatisticsOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        ReplicationTableStatistics = schema.new({
            id = id.from(_N, "DescribeReplicationTableStatisticsOutput", "ReplicationTableStatistics"),
            type = "list",
            name = "ReplicationTableStatistics",
            target_id = prelude.Document.id,
            list_member = M.TableStatistics,
        }),
    },
})

M.DescribeReplicationTaskAssessmentResultsInput = schema.new({
    id = id.from(_N, "DescribeReplicationTaskAssessmentResultsMessage"),
    type = "structure",
    members = {
        ReplicationTaskArn = schema.new({
            id = id.from(_N, "DescribeReplicationTaskAssessmentResultsInput", "ReplicationTaskArn"),
            type = "string",
            name = "ReplicationTaskArn",
            target_id = prelude.String.id,
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeReplicationTaskAssessmentResultsInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeReplicationTaskAssessmentResultsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.ReplicationTaskAssessmentResult = schema.new({
    id = id.from(_N, "ReplicationTaskAssessmentResult"),
    type = "structure",
    members = {
        ReplicationTaskIdentifier = schema.new({
            id = id.from(_N, "ReplicationTaskAssessmentResult", "ReplicationTaskIdentifier"),
            type = "string",
            name = "ReplicationTaskIdentifier",
            target_id = prelude.String.id,
        }),
        ReplicationTaskArn = schema.new({
            id = id.from(_N, "ReplicationTaskAssessmentResult", "ReplicationTaskArn"),
            type = "string",
            name = "ReplicationTaskArn",
            target_id = prelude.String.id,
        }),
        ReplicationTaskLastAssessmentDate = schema.new({
            id = id.from(_N, "ReplicationTaskAssessmentResult", "ReplicationTaskLastAssessmentDate"),
            type = "timestamp",
            name = "ReplicationTaskLastAssessmentDate",
            target_id = prelude.Timestamp.id,
        }),
        AssessmentStatus = schema.new({
            id = id.from(_N, "ReplicationTaskAssessmentResult", "AssessmentStatus"),
            type = "string",
            name = "AssessmentStatus",
            target_id = prelude.String.id,
        }),
        AssessmentResultsFile = schema.new({
            id = id.from(_N, "ReplicationTaskAssessmentResult", "AssessmentResultsFile"),
            type = "string",
            name = "AssessmentResultsFile",
            target_id = prelude.String.id,
        }),
        AssessmentResults = schema.new({
            id = id.from(_N, "ReplicationTaskAssessmentResult", "AssessmentResults"),
            type = "string",
            name = "AssessmentResults",
            target_id = prelude.String.id,
        }),
        S3ObjectUrl = schema.new({
            id = id.from(_N, "ReplicationTaskAssessmentResult", "S3ObjectUrl"),
            type = "string",
            name = "S3ObjectUrl",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeReplicationTaskAssessmentResultsOutput = schema.new({
    id = id.from(_N, "DescribeReplicationTaskAssessmentResultsResponse"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "DescribeReplicationTaskAssessmentResultsOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        BucketName = schema.new({
            id = id.from(_N, "DescribeReplicationTaskAssessmentResultsOutput", "BucketName"),
            type = "string",
            name = "BucketName",
            target_id = prelude.String.id,
        }),
        ReplicationTaskAssessmentResults = schema.new({
            id = id.from(_N, "DescribeReplicationTaskAssessmentResultsOutput", "ReplicationTaskAssessmentResults"),
            type = "list",
            name = "ReplicationTaskAssessmentResults",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.ReplicationTaskAssessmentResult, traits = { [traits.XML_NAME] = { name = "ReplicationTaskAssessmentResult" } } }),
        }),
    },
})

M.DescribeReplicationTaskAssessmentRunsInput = schema.new({
    id = id.from(_N, "DescribeReplicationTaskAssessmentRunsMessage"),
    type = "structure",
    members = {
        Filters = schema.new({
            id = id.from(_N, "DescribeReplicationTaskAssessmentRunsInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Filter, traits = { [traits.XML_NAME] = { name = "Filter" } } }),
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeReplicationTaskAssessmentRunsInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeReplicationTaskAssessmentRunsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeReplicationTaskAssessmentRunsOutput = schema.new({
    id = id.from(_N, "DescribeReplicationTaskAssessmentRunsResponse"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "DescribeReplicationTaskAssessmentRunsOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        ReplicationTaskAssessmentRuns = schema.new({
            id = id.from(_N, "DescribeReplicationTaskAssessmentRunsOutput", "ReplicationTaskAssessmentRuns"),
            type = "list",
            name = "ReplicationTaskAssessmentRuns",
            target_id = prelude.Document.id,
            list_member = M.ReplicationTaskAssessmentRun,
        }),
    },
})

M.DescribeReplicationTaskIndividualAssessmentsInput = schema.new({
    id = id.from(_N, "DescribeReplicationTaskIndividualAssessmentsMessage"),
    type = "structure",
    members = {
        Filters = schema.new({
            id = id.from(_N, "DescribeReplicationTaskIndividualAssessmentsInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Filter, traits = { [traits.XML_NAME] = { name = "Filter" } } }),
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeReplicationTaskIndividualAssessmentsInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeReplicationTaskIndividualAssessmentsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.ReplicationTaskIndividualAssessment = schema.new({
    id = id.from(_N, "ReplicationTaskIndividualAssessment"),
    type = "structure",
    members = {
        ReplicationTaskIndividualAssessmentArn = schema.new({
            id = id.from(_N, "ReplicationTaskIndividualAssessment", "ReplicationTaskIndividualAssessmentArn"),
            type = "string",
            name = "ReplicationTaskIndividualAssessmentArn",
            target_id = prelude.String.id,
        }),
        ReplicationTaskAssessmentRunArn = schema.new({
            id = id.from(_N, "ReplicationTaskIndividualAssessment", "ReplicationTaskAssessmentRunArn"),
            type = "string",
            name = "ReplicationTaskAssessmentRunArn",
            target_id = prelude.String.id,
        }),
        IndividualAssessmentName = schema.new({
            id = id.from(_N, "ReplicationTaskIndividualAssessment", "IndividualAssessmentName"),
            type = "string",
            name = "IndividualAssessmentName",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "ReplicationTaskIndividualAssessment", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        ReplicationTaskIndividualAssessmentStartDate = schema.new({
            id = id.from(_N, "ReplicationTaskIndividualAssessment", "ReplicationTaskIndividualAssessmentStartDate"),
            type = "timestamp",
            name = "ReplicationTaskIndividualAssessmentStartDate",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.DescribeReplicationTaskIndividualAssessmentsOutput = schema.new({
    id = id.from(_N, "DescribeReplicationTaskIndividualAssessmentsResponse"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "DescribeReplicationTaskIndividualAssessmentsOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        ReplicationTaskIndividualAssessments = schema.new({
            id = id.from(_N, "DescribeReplicationTaskIndividualAssessmentsOutput", "ReplicationTaskIndividualAssessments"),
            type = "list",
            name = "ReplicationTaskIndividualAssessments",
            target_id = prelude.Document.id,
            list_member = M.ReplicationTaskIndividualAssessment,
        }),
    },
})

M.DescribeReplicationTasksInput = schema.new({
    id = id.from(_N, "DescribeReplicationTasksMessage"),
    type = "structure",
    members = {
        Filters = schema.new({
            id = id.from(_N, "DescribeReplicationTasksInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Filter, traits = { [traits.XML_NAME] = { name = "Filter" } } }),
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeReplicationTasksInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeReplicationTasksInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        WithoutSettings = schema.new({
            id = id.from(_N, "DescribeReplicationTasksInput", "WithoutSettings"),
            type = "boolean",
            name = "WithoutSettings",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.DescribeReplicationTasksOutput = schema.new({
    id = id.from(_N, "DescribeReplicationTasksResponse"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "DescribeReplicationTasksOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        ReplicationTasks = schema.new({
            id = id.from(_N, "DescribeReplicationTasksOutput", "ReplicationTasks"),
            type = "list",
            name = "ReplicationTasks",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.ReplicationTask, traits = { [traits.XML_NAME] = { name = "ReplicationTask" } } }),
        }),
    },
})

M.DescribeSchemasInput = schema.new({
    id = id.from(_N, "DescribeSchemasMessage"),
    type = "structure",
    members = {
        EndpointArn = schema.new({
            id = id.from(_N, "DescribeSchemasInput", "EndpointArn"),
            type = "string",
            name = "EndpointArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeSchemasInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeSchemasInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeSchemasOutput = schema.new({
    id = id.from(_N, "DescribeSchemasResponse"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "DescribeSchemasOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        Schemas = schema.new({
            id = id.from(_N, "DescribeSchemasOutput", "Schemas"),
            type = "list",
            name = "Schemas",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.DescribeTableStatisticsInput = schema.new({
    id = id.from(_N, "DescribeTableStatisticsMessage"),
    type = "structure",
    members = {
        ReplicationTaskArn = schema.new({
            id = id.from(_N, "DescribeTableStatisticsInput", "ReplicationTaskArn"),
            type = "string",
            name = "ReplicationTaskArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeTableStatisticsInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeTableStatisticsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        Filters = schema.new({
            id = id.from(_N, "DescribeTableStatisticsInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Filter, traits = { [traits.XML_NAME] = { name = "Filter" } } }),
        }),
    },
})

M.DescribeTableStatisticsOutput = schema.new({
    id = id.from(_N, "DescribeTableStatisticsResponse"),
    type = "structure",
    members = {
        ReplicationTaskArn = schema.new({
            id = id.from(_N, "DescribeTableStatisticsOutput", "ReplicationTaskArn"),
            type = "string",
            name = "ReplicationTaskArn",
            target_id = prelude.String.id,
        }),
        TableStatistics = schema.new({
            id = id.from(_N, "DescribeTableStatisticsOutput", "TableStatistics"),
            type = "list",
            name = "TableStatistics",
            target_id = prelude.Document.id,
            list_member = M.TableStatistics,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeTableStatisticsOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.ExportMetadataModelAssessmentInput = schema.new({
    id = id.from(_N, "ExportMetadataModelAssessmentMessage"),
    type = "structure",
    members = {
        MigrationProjectIdentifier = schema.new({
            id = id.from(_N, "ExportMetadataModelAssessmentInput", "MigrationProjectIdentifier"),
            type = "string",
            name = "MigrationProjectIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SelectionRules = schema.new({
            id = id.from(_N, "ExportMetadataModelAssessmentInput", "SelectionRules"),
            type = "string",
            name = "SelectionRules",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        FileName = schema.new({
            id = id.from(_N, "ExportMetadataModelAssessmentInput", "FileName"),
            type = "string",
            name = "FileName",
            target_id = prelude.String.id,
        }),
        AssessmentReportTypes = schema.new({
            id = id.from(_N, "ExportMetadataModelAssessmentInput", "AssessmentReportTypes"),
            type = "list",
            name = "AssessmentReportTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ExportMetadataModelAssessmentResultEntry = schema.new({
    id = id.from(_N, "ExportMetadataModelAssessmentResultEntry"),
    type = "structure",
    members = {
        S3ObjectKey = schema.new({
            id = id.from(_N, "ExportMetadataModelAssessmentResultEntry", "S3ObjectKey"),
            type = "string",
            name = "S3ObjectKey",
            target_id = prelude.String.id,
        }),
        ObjectURL = schema.new({
            id = id.from(_N, "ExportMetadataModelAssessmentResultEntry", "ObjectURL"),
            type = "string",
            name = "ObjectURL",
            target_id = prelude.String.id,
        }),
    },
})

M.ExportMetadataModelAssessmentOutput = schema.new({
    id = id.from(_N, "ExportMetadataModelAssessmentResponse"),
    type = "structure",
    members = {
        PdfReport = schema.new({
            id = id.from(_N, "ExportMetadataModelAssessmentOutput", "PdfReport"),
            type = "structure",
            name = "PdfReport",
            target_id = id.from(_N, "ExportMetadataModelAssessmentResultEntry"),
            target = M.ExportMetadataModelAssessmentResultEntry,
        }),
        CsvReport = schema.new({
            id = id.from(_N, "ExportMetadataModelAssessmentOutput", "CsvReport"),
            type = "structure",
            name = "CsvReport",
            target_id = id.from(_N, "ExportMetadataModelAssessmentResultEntry"),
            target = M.ExportMetadataModelAssessmentResultEntry,
        }),
    },
})

M.GetTargetSelectionRulesInput = schema.new({
    id = id.from(_N, "GetTargetSelectionRulesMessage"),
    type = "structure",
    members = {
        MigrationProjectIdentifier = schema.new({
            id = id.from(_N, "GetTargetSelectionRulesInput", "MigrationProjectIdentifier"),
            type = "string",
            name = "MigrationProjectIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SelectionRules = schema.new({
            id = id.from(_N, "GetTargetSelectionRulesInput", "SelectionRules"),
            type = "string",
            name = "SelectionRules",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetTargetSelectionRulesOutput = schema.new({
    id = id.from(_N, "GetTargetSelectionRulesResponse"),
    type = "structure",
    members = {
        TargetSelectionRules = schema.new({
            id = id.from(_N, "GetTargetSelectionRulesOutput", "TargetSelectionRules"),
            type = "string",
            name = "TargetSelectionRules",
            target_id = prelude.String.id,
        }),
    },
})

M.ImportCertificateInput = schema.new({
    id = id.from(_N, "ImportCertificateMessage"),
    type = "structure",
    members = {
        CertificateIdentifier = schema.new({
            id = id.from(_N, "ImportCertificateInput", "CertificateIdentifier"),
            type = "string",
            name = "CertificateIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CertificatePem = schema.new({
            id = id.from(_N, "ImportCertificateInput", "CertificatePem"),
            type = "string",
            name = "CertificatePem",
            target_id = prelude.String.id,
        }),
        CertificateWallet = schema.new({
            id = id.from(_N, "ImportCertificateInput", "CertificateWallet"),
            type = "blob",
            name = "CertificateWallet",
            target_id = prelude.Blob.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "ImportCertificateInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Tag, traits = { [traits.XML_NAME] = { name = "Tag" } } }),
        }),
        KmsKeyId = schema.new({
            id = id.from(_N, "ImportCertificateInput", "KmsKeyId"),
            type = "string",
            name = "KmsKeyId",
            target_id = prelude.String.id,
        }),
    },
})

M.ImportCertificateOutput = schema.new({
    id = id.from(_N, "ImportCertificateResponse"),
    type = "structure",
    members = {
        Certificate = schema.new({
            id = id.from(_N, "ImportCertificateOutput", "Certificate"),
            type = "structure",
            name = "Certificate",
            target_id = id.from(_N, "Certificate"),
            target = M.Certificate,
        }),
    },
})

M.InvalidCertificateFault = schema.new({
    id = id.from(_N, "InvalidCertificateFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidCertificateFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ListTagsForResourceInput = schema.new({
    id = id.from(_N, "ListTagsForResourceMessage"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
        }),
        ResourceArnList = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "ResourceArnList"),
            type = "list",
            name = "ResourceArnList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ListTagsForResourceOutput = schema.new({
    id = id.from(_N, "ListTagsForResourceResponse"),
    type = "structure",
    members = {
        TagList = schema.new({
            id = id.from(_N, "ListTagsForResourceOutput", "TagList"),
            type = "list",
            name = "TagList",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Tag, traits = { [traits.XML_NAME] = { name = "Tag" } } }),
        }),
    },
})

M.ModifyConversionConfigurationInput = schema.new({
    id = id.from(_N, "ModifyConversionConfigurationMessage"),
    type = "structure",
    members = {
        MigrationProjectIdentifier = schema.new({
            id = id.from(_N, "ModifyConversionConfigurationInput", "MigrationProjectIdentifier"),
            type = "string",
            name = "MigrationProjectIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ConversionConfiguration = schema.new({
            id = id.from(_N, "ModifyConversionConfigurationInput", "ConversionConfiguration"),
            type = "string",
            name = "ConversionConfiguration",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ModifyConversionConfigurationOutput = schema.new({
    id = id.from(_N, "ModifyConversionConfigurationResponse"),
    type = "structure",
    members = {
        MigrationProjectIdentifier = schema.new({
            id = id.from(_N, "ModifyConversionConfigurationOutput", "MigrationProjectIdentifier"),
            type = "string",
            name = "MigrationProjectIdentifier",
            target_id = prelude.String.id,
        }),
    },
})

M.ModifyDataMigrationInput = schema.new({
    id = id.from(_N, "ModifyDataMigrationMessage"),
    type = "structure",
    members = {
        DataMigrationIdentifier = schema.new({
            id = id.from(_N, "ModifyDataMigrationInput", "DataMigrationIdentifier"),
            type = "string",
            name = "DataMigrationIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DataMigrationName = schema.new({
            id = id.from(_N, "ModifyDataMigrationInput", "DataMigrationName"),
            type = "string",
            name = "DataMigrationName",
            target_id = prelude.String.id,
        }),
        EnableCloudwatchLogs = schema.new({
            id = id.from(_N, "ModifyDataMigrationInput", "EnableCloudwatchLogs"),
            type = "boolean",
            name = "EnableCloudwatchLogs",
            target_id = prelude.Boolean.id,
        }),
        ServiceAccessRoleArn = schema.new({
            id = id.from(_N, "ModifyDataMigrationInput", "ServiceAccessRoleArn"),
            type = "string",
            name = "ServiceAccessRoleArn",
            target_id = prelude.String.id,
        }),
        DataMigrationType = schema.new({
            id = id.from(_N, "ModifyDataMigrationInput", "DataMigrationType"),
            type = "string",
            name = "DataMigrationType",
            target_id = prelude.String.id,
        }),
        SourceDataSettings = schema.new({
            id = id.from(_N, "ModifyDataMigrationInput", "SourceDataSettings"),
            type = "list",
            name = "SourceDataSettings",
            target_id = prelude.Document.id,
            list_member = M.SourceDataSetting,
        }),
        TargetDataSettings = schema.new({
            id = id.from(_N, "ModifyDataMigrationInput", "TargetDataSettings"),
            type = "list",
            name = "TargetDataSettings",
            target_id = prelude.Document.id,
            list_member = M.TargetDataSetting,
        }),
        NumberOfJobs = schema.new({
            id = id.from(_N, "ModifyDataMigrationInput", "NumberOfJobs"),
            type = "integer",
            name = "NumberOfJobs",
            target_id = prelude.Integer.id,
        }),
        SelectionRules = schema.new({
            id = id.from(_N, "ModifyDataMigrationInput", "SelectionRules"),
            type = "string",
            name = "SelectionRules",
            target_id = prelude.String.id,
        }),
    },
})

M.ModifyDataMigrationOutput = schema.new({
    id = id.from(_N, "ModifyDataMigrationResponse"),
    type = "structure",
    members = {
        DataMigration = schema.new({
            id = id.from(_N, "ModifyDataMigrationOutput", "DataMigration"),
            type = "structure",
            name = "DataMigration",
            target_id = id.from(_N, "DataMigration"),
            target = M.DataMigration,
        }),
    },
})

M.ModifyDataProviderInput = schema.new({
    id = id.from(_N, "ModifyDataProviderMessage"),
    type = "structure",
    members = {
        DataProviderIdentifier = schema.new({
            id = id.from(_N, "ModifyDataProviderInput", "DataProviderIdentifier"),
            type = "string",
            name = "DataProviderIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DataProviderName = schema.new({
            id = id.from(_N, "ModifyDataProviderInput", "DataProviderName"),
            type = "string",
            name = "DataProviderName",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "ModifyDataProviderInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Engine = schema.new({
            id = id.from(_N, "ModifyDataProviderInput", "Engine"),
            type = "string",
            name = "Engine",
            target_id = prelude.String.id,
        }),
        Virtual = schema.new({
            id = id.from(_N, "ModifyDataProviderInput", "Virtual"),
            type = "boolean",
            name = "Virtual",
            target_id = prelude.Boolean.id,
        }),
        ExactSettings = schema.new({
            id = id.from(_N, "ModifyDataProviderInput", "ExactSettings"),
            type = "boolean",
            name = "ExactSettings",
            target_id = prelude.Boolean.id,
        }),
        Settings = schema.new({
            id = id.from(_N, "ModifyDataProviderInput", "Settings"),
            type = "union",
            name = "Settings",
            target_id = id.from(_N, "DataProviderSettings"),
            target = M.DataProviderSettings,
        }),
    },
})

M.ModifyDataProviderOutput = schema.new({
    id = id.from(_N, "ModifyDataProviderResponse"),
    type = "structure",
    members = {
        DataProvider = schema.new({
            id = id.from(_N, "ModifyDataProviderOutput", "DataProvider"),
            type = "structure",
            name = "DataProvider",
            target_id = id.from(_N, "DataProvider"),
            target = M.DataProvider,
        }),
    },
})

M.ModifyEndpointInput = schema.new({
    id = id.from(_N, "ModifyEndpointMessage"),
    type = "structure",
    members = {
        EndpointArn = schema.new({
            id = id.from(_N, "ModifyEndpointInput", "EndpointArn"),
            type = "string",
            name = "EndpointArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EndpointIdentifier = schema.new({
            id = id.from(_N, "ModifyEndpointInput", "EndpointIdentifier"),
            type = "string",
            name = "EndpointIdentifier",
            target_id = prelude.String.id,
        }),
        EndpointType = schema.new({
            id = id.from(_N, "ModifyEndpointInput", "EndpointType"),
            type = "string",
            name = "EndpointType",
            target_id = prelude.String.id,
        }),
        EngineName = schema.new({
            id = id.from(_N, "ModifyEndpointInput", "EngineName"),
            type = "string",
            name = "EngineName",
            target_id = prelude.String.id,
        }),
        Username = schema.new({
            id = id.from(_N, "ModifyEndpointInput", "Username"),
            type = "string",
            name = "Username",
            target_id = prelude.String.id,
        }),
        Password = schema.new({
            id = id.from(_N, "ModifyEndpointInput", "Password"),
            type = "string",
            name = "Password",
            target_id = prelude.String.id,
        }),
        ServerName = schema.new({
            id = id.from(_N, "ModifyEndpointInput", "ServerName"),
            type = "string",
            name = "ServerName",
            target_id = prelude.String.id,
        }),
        Port = schema.new({
            id = id.from(_N, "ModifyEndpointInput", "Port"),
            type = "integer",
            name = "Port",
            target_id = prelude.Integer.id,
        }),
        DatabaseName = schema.new({
            id = id.from(_N, "ModifyEndpointInput", "DatabaseName"),
            type = "string",
            name = "DatabaseName",
            target_id = prelude.String.id,
        }),
        ExtraConnectionAttributes = schema.new({
            id = id.from(_N, "ModifyEndpointInput", "ExtraConnectionAttributes"),
            type = "string",
            name = "ExtraConnectionAttributes",
            target_id = prelude.String.id,
        }),
        CertificateArn = schema.new({
            id = id.from(_N, "ModifyEndpointInput", "CertificateArn"),
            type = "string",
            name = "CertificateArn",
            target_id = prelude.String.id,
        }),
        SslMode = schema.new({
            id = id.from(_N, "ModifyEndpointInput", "SslMode"),
            type = "string",
            name = "SslMode",
            target_id = prelude.String.id,
        }),
        ServiceAccessRoleArn = schema.new({
            id = id.from(_N, "ModifyEndpointInput", "ServiceAccessRoleArn"),
            type = "string",
            name = "ServiceAccessRoleArn",
            target_id = prelude.String.id,
        }),
        ExternalTableDefinition = schema.new({
            id = id.from(_N, "ModifyEndpointInput", "ExternalTableDefinition"),
            type = "string",
            name = "ExternalTableDefinition",
            target_id = prelude.String.id,
        }),
        DynamoDbSettings = schema.new({
            id = id.from(_N, "ModifyEndpointInput", "DynamoDbSettings"),
            type = "structure",
            name = "DynamoDbSettings",
            target_id = id.from(_N, "DynamoDbSettings"),
            target = M.DynamoDbSettings,
        }),
        S3Settings = schema.new({
            id = id.from(_N, "ModifyEndpointInput", "S3Settings"),
            type = "structure",
            name = "S3Settings",
            target_id = id.from(_N, "S3Settings"),
            target = M.S3Settings,
        }),
        DmsTransferSettings = schema.new({
            id = id.from(_N, "ModifyEndpointInput", "DmsTransferSettings"),
            type = "structure",
            name = "DmsTransferSettings",
            target_id = id.from(_N, "DmsTransferSettings"),
            target = M.DmsTransferSettings,
        }),
        MongoDbSettings = schema.new({
            id = id.from(_N, "ModifyEndpointInput", "MongoDbSettings"),
            type = "structure",
            name = "MongoDbSettings",
            target_id = id.from(_N, "MongoDbSettings"),
            target = M.MongoDbSettings,
        }),
        KinesisSettings = schema.new({
            id = id.from(_N, "ModifyEndpointInput", "KinesisSettings"),
            type = "structure",
            name = "KinesisSettings",
            target_id = id.from(_N, "KinesisSettings"),
            target = M.KinesisSettings,
        }),
        KafkaSettings = schema.new({
            id = id.from(_N, "ModifyEndpointInput", "KafkaSettings"),
            type = "structure",
            name = "KafkaSettings",
            target_id = id.from(_N, "KafkaSettings"),
            target = M.KafkaSettings,
        }),
        ElasticsearchSettings = schema.new({
            id = id.from(_N, "ModifyEndpointInput", "ElasticsearchSettings"),
            type = "structure",
            name = "ElasticsearchSettings",
            target_id = id.from(_N, "ElasticsearchSettings"),
            target = M.ElasticsearchSettings,
        }),
        NeptuneSettings = schema.new({
            id = id.from(_N, "ModifyEndpointInput", "NeptuneSettings"),
            type = "structure",
            name = "NeptuneSettings",
            target_id = id.from(_N, "NeptuneSettings"),
            target = M.NeptuneSettings,
        }),
        RedshiftSettings = schema.new({
            id = id.from(_N, "ModifyEndpointInput", "RedshiftSettings"),
            type = "structure",
            name = "RedshiftSettings",
            target_id = id.from(_N, "RedshiftSettings"),
            target = M.RedshiftSettings,
        }),
        PostgreSQLSettings = schema.new({
            id = id.from(_N, "ModifyEndpointInput", "PostgreSQLSettings"),
            type = "structure",
            name = "PostgreSQLSettings",
            target_id = id.from(_N, "PostgreSQLSettings"),
            target = M.PostgreSQLSettings,
        }),
        MySQLSettings = schema.new({
            id = id.from(_N, "ModifyEndpointInput", "MySQLSettings"),
            type = "structure",
            name = "MySQLSettings",
            target_id = id.from(_N, "MySQLSettings"),
            target = M.MySQLSettings,
        }),
        OracleSettings = schema.new({
            id = id.from(_N, "ModifyEndpointInput", "OracleSettings"),
            type = "structure",
            name = "OracleSettings",
            target_id = id.from(_N, "OracleSettings"),
            target = M.OracleSettings,
        }),
        SybaseSettings = schema.new({
            id = id.from(_N, "ModifyEndpointInput", "SybaseSettings"),
            type = "structure",
            name = "SybaseSettings",
            target_id = id.from(_N, "SybaseSettings"),
            target = M.SybaseSettings,
        }),
        MicrosoftSQLServerSettings = schema.new({
            id = id.from(_N, "ModifyEndpointInput", "MicrosoftSQLServerSettings"),
            type = "structure",
            name = "MicrosoftSQLServerSettings",
            target_id = id.from(_N, "MicrosoftSQLServerSettings"),
            target = M.MicrosoftSQLServerSettings,
        }),
        IBMDb2Settings = schema.new({
            id = id.from(_N, "ModifyEndpointInput", "IBMDb2Settings"),
            type = "structure",
            name = "IBMDb2Settings",
            target_id = id.from(_N, "IBMDb2Settings"),
            target = M.IBMDb2Settings,
        }),
        DocDbSettings = schema.new({
            id = id.from(_N, "ModifyEndpointInput", "DocDbSettings"),
            type = "structure",
            name = "DocDbSettings",
            target_id = id.from(_N, "DocDbSettings"),
            target = M.DocDbSettings,
        }),
        RedisSettings = schema.new({
            id = id.from(_N, "ModifyEndpointInput", "RedisSettings"),
            type = "structure",
            name = "RedisSettings",
            target_id = id.from(_N, "RedisSettings"),
            target = M.RedisSettings,
        }),
        ExactSettings = schema.new({
            id = id.from(_N, "ModifyEndpointInput", "ExactSettings"),
            type = "boolean",
            name = "ExactSettings",
            target_id = prelude.Boolean.id,
        }),
        GcpMySQLSettings = schema.new({
            id = id.from(_N, "ModifyEndpointInput", "GcpMySQLSettings"),
            type = "structure",
            name = "GcpMySQLSettings",
            target_id = id.from(_N, "GcpMySQLSettings"),
            target = M.GcpMySQLSettings,
        }),
        TimestreamSettings = schema.new({
            id = id.from(_N, "ModifyEndpointInput", "TimestreamSettings"),
            type = "structure",
            name = "TimestreamSettings",
            target_id = id.from(_N, "TimestreamSettings"),
            target = M.TimestreamSettings,
        }),
    },
})

M.ModifyEndpointOutput = schema.new({
    id = id.from(_N, "ModifyEndpointResponse"),
    type = "structure",
    members = {
        Endpoint = schema.new({
            id = id.from(_N, "ModifyEndpointOutput", "Endpoint"),
            type = "structure",
            name = "Endpoint",
            target_id = id.from(_N, "Endpoint"),
            target = M.Endpoint,
        }),
    },
})

M.ModifyEventSubscriptionInput = schema.new({
    id = id.from(_N, "ModifyEventSubscriptionMessage"),
    type = "structure",
    members = {
        SubscriptionName = schema.new({
            id = id.from(_N, "ModifyEventSubscriptionInput", "SubscriptionName"),
            type = "string",
            name = "SubscriptionName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SnsTopicArn = schema.new({
            id = id.from(_N, "ModifyEventSubscriptionInput", "SnsTopicArn"),
            type = "string",
            name = "SnsTopicArn",
            target_id = prelude.String.id,
        }),
        SourceType = schema.new({
            id = id.from(_N, "ModifyEventSubscriptionInput", "SourceType"),
            type = "string",
            name = "SourceType",
            target_id = prelude.String.id,
        }),
        EventCategories = schema.new({
            id = id.from(_N, "ModifyEventSubscriptionInput", "EventCategories"),
            type = "list",
            name = "EventCategories",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "EventCategory" } } }),
        }),
        Enabled = schema.new({
            id = id.from(_N, "ModifyEventSubscriptionInput", "Enabled"),
            type = "boolean",
            name = "Enabled",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.ModifyEventSubscriptionOutput = schema.new({
    id = id.from(_N, "ModifyEventSubscriptionResponse"),
    type = "structure",
    members = {
        EventSubscription = schema.new({
            id = id.from(_N, "ModifyEventSubscriptionOutput", "EventSubscription"),
            type = "structure",
            name = "EventSubscription",
            target_id = id.from(_N, "EventSubscription"),
            target = M.EventSubscription,
        }),
    },
})

M.ModifyInstanceProfileInput = schema.new({
    id = id.from(_N, "ModifyInstanceProfileMessage"),
    type = "structure",
    members = {
        InstanceProfileIdentifier = schema.new({
            id = id.from(_N, "ModifyInstanceProfileInput", "InstanceProfileIdentifier"),
            type = "string",
            name = "InstanceProfileIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AvailabilityZone = schema.new({
            id = id.from(_N, "ModifyInstanceProfileInput", "AvailabilityZone"),
            type = "string",
            name = "AvailabilityZone",
            target_id = prelude.String.id,
        }),
        KmsKeyArn = schema.new({
            id = id.from(_N, "ModifyInstanceProfileInput", "KmsKeyArn"),
            type = "string",
            name = "KmsKeyArn",
            target_id = prelude.String.id,
        }),
        PubliclyAccessible = schema.new({
            id = id.from(_N, "ModifyInstanceProfileInput", "PubliclyAccessible"),
            type = "boolean",
            name = "PubliclyAccessible",
            target_id = prelude.Boolean.id,
        }),
        NetworkType = schema.new({
            id = id.from(_N, "ModifyInstanceProfileInput", "NetworkType"),
            type = "string",
            name = "NetworkType",
            target_id = prelude.String.id,
        }),
        InstanceProfileName = schema.new({
            id = id.from(_N, "ModifyInstanceProfileInput", "InstanceProfileName"),
            type = "string",
            name = "InstanceProfileName",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "ModifyInstanceProfileInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        SubnetGroupIdentifier = schema.new({
            id = id.from(_N, "ModifyInstanceProfileInput", "SubnetGroupIdentifier"),
            type = "string",
            name = "SubnetGroupIdentifier",
            target_id = prelude.String.id,
        }),
        VpcSecurityGroups = schema.new({
            id = id.from(_N, "ModifyInstanceProfileInput", "VpcSecurityGroups"),
            type = "list",
            name = "VpcSecurityGroups",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ModifyInstanceProfileOutput = schema.new({
    id = id.from(_N, "ModifyInstanceProfileResponse"),
    type = "structure",
    members = {
        InstanceProfile = schema.new({
            id = id.from(_N, "ModifyInstanceProfileOutput", "InstanceProfile"),
            type = "structure",
            name = "InstanceProfile",
            target_id = id.from(_N, "InstanceProfile"),
            target = M.InstanceProfile,
        }),
    },
})

M.ModifyMigrationProjectInput = schema.new({
    id = id.from(_N, "ModifyMigrationProjectMessage"),
    type = "structure",
    members = {
        MigrationProjectIdentifier = schema.new({
            id = id.from(_N, "ModifyMigrationProjectInput", "MigrationProjectIdentifier"),
            type = "string",
            name = "MigrationProjectIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MigrationProjectName = schema.new({
            id = id.from(_N, "ModifyMigrationProjectInput", "MigrationProjectName"),
            type = "string",
            name = "MigrationProjectName",
            target_id = prelude.String.id,
        }),
        SourceDataProviderDescriptors = schema.new({
            id = id.from(_N, "ModifyMigrationProjectInput", "SourceDataProviderDescriptors"),
            type = "list",
            name = "SourceDataProviderDescriptors",
            target_id = prelude.Document.id,
            list_member = M.DataProviderDescriptorDefinition,
        }),
        TargetDataProviderDescriptors = schema.new({
            id = id.from(_N, "ModifyMigrationProjectInput", "TargetDataProviderDescriptors"),
            type = "list",
            name = "TargetDataProviderDescriptors",
            target_id = prelude.Document.id,
            list_member = M.DataProviderDescriptorDefinition,
        }),
        InstanceProfileIdentifier = schema.new({
            id = id.from(_N, "ModifyMigrationProjectInput", "InstanceProfileIdentifier"),
            type = "string",
            name = "InstanceProfileIdentifier",
            target_id = prelude.String.id,
        }),
        TransformationRules = schema.new({
            id = id.from(_N, "ModifyMigrationProjectInput", "TransformationRules"),
            type = "string",
            name = "TransformationRules",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "ModifyMigrationProjectInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        SchemaConversionApplicationAttributes = schema.new({
            id = id.from(_N, "ModifyMigrationProjectInput", "SchemaConversionApplicationAttributes"),
            type = "structure",
            name = "SchemaConversionApplicationAttributes",
            target_id = id.from(_N, "SCApplicationAttributes"),
            target = M.SCApplicationAttributes,
        }),
    },
})

M.ModifyMigrationProjectOutput = schema.new({
    id = id.from(_N, "ModifyMigrationProjectResponse"),
    type = "structure",
    members = {
        MigrationProject = schema.new({
            id = id.from(_N, "ModifyMigrationProjectOutput", "MigrationProject"),
            type = "structure",
            name = "MigrationProject",
            target_id = id.from(_N, "MigrationProject"),
            target = M.MigrationProject,
        }),
    },
})

M.ModifyReplicationConfigInput = schema.new({
    id = id.from(_N, "ModifyReplicationConfigMessage"),
    type = "structure",
    members = {
        ReplicationConfigArn = schema.new({
            id = id.from(_N, "ModifyReplicationConfigInput", "ReplicationConfigArn"),
            type = "string",
            name = "ReplicationConfigArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ReplicationConfigIdentifier = schema.new({
            id = id.from(_N, "ModifyReplicationConfigInput", "ReplicationConfigIdentifier"),
            type = "string",
            name = "ReplicationConfigIdentifier",
            target_id = prelude.String.id,
        }),
        ReplicationType = schema.new({
            id = id.from(_N, "ModifyReplicationConfigInput", "ReplicationType"),
            type = "string",
            name = "ReplicationType",
            target_id = prelude.String.id,
        }),
        TableMappings = schema.new({
            id = id.from(_N, "ModifyReplicationConfigInput", "TableMappings"),
            type = "string",
            name = "TableMappings",
            target_id = prelude.String.id,
        }),
        ReplicationSettings = schema.new({
            id = id.from(_N, "ModifyReplicationConfigInput", "ReplicationSettings"),
            type = "string",
            name = "ReplicationSettings",
            target_id = prelude.String.id,
        }),
        SupplementalSettings = schema.new({
            id = id.from(_N, "ModifyReplicationConfigInput", "SupplementalSettings"),
            type = "string",
            name = "SupplementalSettings",
            target_id = prelude.String.id,
        }),
        ComputeConfig = schema.new({
            id = id.from(_N, "ModifyReplicationConfigInput", "ComputeConfig"),
            type = "structure",
            name = "ComputeConfig",
            target_id = id.from(_N, "ComputeConfig"),
            target = M.ComputeConfig,
        }),
        SourceEndpointArn = schema.new({
            id = id.from(_N, "ModifyReplicationConfigInput", "SourceEndpointArn"),
            type = "string",
            name = "SourceEndpointArn",
            target_id = prelude.String.id,
        }),
        TargetEndpointArn = schema.new({
            id = id.from(_N, "ModifyReplicationConfigInput", "TargetEndpointArn"),
            type = "string",
            name = "TargetEndpointArn",
            target_id = prelude.String.id,
        }),
    },
})

M.ModifyReplicationConfigOutput = schema.new({
    id = id.from(_N, "ModifyReplicationConfigResponse"),
    type = "structure",
    members = {
        ReplicationConfig = schema.new({
            id = id.from(_N, "ModifyReplicationConfigOutput", "ReplicationConfig"),
            type = "structure",
            name = "ReplicationConfig",
            target_id = id.from(_N, "ReplicationConfig"),
            target = M.ReplicationConfig,
        }),
    },
})

M.ModifyReplicationInstanceInput = schema.new({
    id = id.from(_N, "ModifyReplicationInstanceMessage"),
    type = "structure",
    members = {
        ReplicationInstanceArn = schema.new({
            id = id.from(_N, "ModifyReplicationInstanceInput", "ReplicationInstanceArn"),
            type = "string",
            name = "ReplicationInstanceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AllocatedStorage = schema.new({
            id = id.from(_N, "ModifyReplicationInstanceInput", "AllocatedStorage"),
            type = "integer",
            name = "AllocatedStorage",
            target_id = prelude.Integer.id,
        }),
        ApplyImmediately = schema.new({
            id = id.from(_N, "ModifyReplicationInstanceInput", "ApplyImmediately"),
            type = "boolean",
            name = "ApplyImmediately",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        ReplicationInstanceClass = schema.new({
            id = id.from(_N, "ModifyReplicationInstanceInput", "ReplicationInstanceClass"),
            type = "string",
            name = "ReplicationInstanceClass",
            target_id = prelude.String.id,
        }),
        VpcSecurityGroupIds = schema.new({
            id = id.from(_N, "ModifyReplicationInstanceInput", "VpcSecurityGroupIds"),
            type = "list",
            name = "VpcSecurityGroupIds",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "VpcSecurityGroupId" } } }),
        }),
        PreferredMaintenanceWindow = schema.new({
            id = id.from(_N, "ModifyReplicationInstanceInput", "PreferredMaintenanceWindow"),
            type = "string",
            name = "PreferredMaintenanceWindow",
            target_id = prelude.String.id,
        }),
        MultiAZ = schema.new({
            id = id.from(_N, "ModifyReplicationInstanceInput", "MultiAZ"),
            type = "boolean",
            name = "MultiAZ",
            target_id = prelude.Boolean.id,
        }),
        EngineVersion = schema.new({
            id = id.from(_N, "ModifyReplicationInstanceInput", "EngineVersion"),
            type = "string",
            name = "EngineVersion",
            target_id = prelude.String.id,
        }),
        AllowMajorVersionUpgrade = schema.new({
            id = id.from(_N, "ModifyReplicationInstanceInput", "AllowMajorVersionUpgrade"),
            type = "boolean",
            name = "AllowMajorVersionUpgrade",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        AutoMinorVersionUpgrade = schema.new({
            id = id.from(_N, "ModifyReplicationInstanceInput", "AutoMinorVersionUpgrade"),
            type = "boolean",
            name = "AutoMinorVersionUpgrade",
            target_id = prelude.Boolean.id,
        }),
        ReplicationInstanceIdentifier = schema.new({
            id = id.from(_N, "ModifyReplicationInstanceInput", "ReplicationInstanceIdentifier"),
            type = "string",
            name = "ReplicationInstanceIdentifier",
            target_id = prelude.String.id,
        }),
        NetworkType = schema.new({
            id = id.from(_N, "ModifyReplicationInstanceInput", "NetworkType"),
            type = "string",
            name = "NetworkType",
            target_id = prelude.String.id,
        }),
        KerberosAuthenticationSettings = schema.new({
            id = id.from(_N, "ModifyReplicationInstanceInput", "KerberosAuthenticationSettings"),
            type = "structure",
            name = "KerberosAuthenticationSettings",
            target_id = id.from(_N, "KerberosAuthenticationSettings"),
            target = M.KerberosAuthenticationSettings,
        }),
    },
})

M.ModifyReplicationInstanceOutput = schema.new({
    id = id.from(_N, "ModifyReplicationInstanceResponse"),
    type = "structure",
    members = {
        ReplicationInstance = schema.new({
            id = id.from(_N, "ModifyReplicationInstanceOutput", "ReplicationInstance"),
            type = "structure",
            name = "ReplicationInstance",
            target_id = id.from(_N, "ReplicationInstance"),
            target = M.ReplicationInstance,
        }),
    },
})

M.UpgradeDependencyFailureFault = schema.new({
    id = id.from(_N, "UpgradeDependencyFailureFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "UpgradeDependencyFailureFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ModifyReplicationSubnetGroupInput = schema.new({
    id = id.from(_N, "ModifyReplicationSubnetGroupMessage"),
    type = "structure",
    members = {
        ReplicationSubnetGroupIdentifier = schema.new({
            id = id.from(_N, "ModifyReplicationSubnetGroupInput", "ReplicationSubnetGroupIdentifier"),
            type = "string",
            name = "ReplicationSubnetGroupIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ReplicationSubnetGroupDescription = schema.new({
            id = id.from(_N, "ModifyReplicationSubnetGroupInput", "ReplicationSubnetGroupDescription"),
            type = "string",
            name = "ReplicationSubnetGroupDescription",
            target_id = prelude.String.id,
        }),
        SubnetIds = schema.new({
            id = id.from(_N, "ModifyReplicationSubnetGroupInput", "SubnetIds"),
            type = "list",
            name = "SubnetIds",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "SubnetIdentifier" } } }),
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ModifyReplicationSubnetGroupOutput = schema.new({
    id = id.from(_N, "ModifyReplicationSubnetGroupResponse"),
    type = "structure",
    members = {
        ReplicationSubnetGroup = schema.new({
            id = id.from(_N, "ModifyReplicationSubnetGroupOutput", "ReplicationSubnetGroup"),
            type = "structure",
            name = "ReplicationSubnetGroup",
            target_id = id.from(_N, "ReplicationSubnetGroup"),
            target = M.ReplicationSubnetGroup,
        }),
    },
})

M.SubnetAlreadyInUse = schema.new({
    id = id.from(_N, "SubnetAlreadyInUse"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "SubnetAlreadyInUse", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ModifyReplicationTaskInput = schema.new({
    id = id.from(_N, "ModifyReplicationTaskMessage"),
    type = "structure",
    members = {
        ReplicationTaskArn = schema.new({
            id = id.from(_N, "ModifyReplicationTaskInput", "ReplicationTaskArn"),
            type = "string",
            name = "ReplicationTaskArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ReplicationTaskIdentifier = schema.new({
            id = id.from(_N, "ModifyReplicationTaskInput", "ReplicationTaskIdentifier"),
            type = "string",
            name = "ReplicationTaskIdentifier",
            target_id = prelude.String.id,
        }),
        MigrationType = schema.new({
            id = id.from(_N, "ModifyReplicationTaskInput", "MigrationType"),
            type = "string",
            name = "MigrationType",
            target_id = prelude.String.id,
        }),
        TableMappings = schema.new({
            id = id.from(_N, "ModifyReplicationTaskInput", "TableMappings"),
            type = "string",
            name = "TableMappings",
            target_id = prelude.String.id,
        }),
        ReplicationTaskSettings = schema.new({
            id = id.from(_N, "ModifyReplicationTaskInput", "ReplicationTaskSettings"),
            type = "string",
            name = "ReplicationTaskSettings",
            target_id = prelude.String.id,
        }),
        CdcStartTime = schema.new({
            id = id.from(_N, "ModifyReplicationTaskInput", "CdcStartTime"),
            type = "timestamp",
            name = "CdcStartTime",
            target_id = prelude.Timestamp.id,
        }),
        CdcStartPosition = schema.new({
            id = id.from(_N, "ModifyReplicationTaskInput", "CdcStartPosition"),
            type = "string",
            name = "CdcStartPosition",
            target_id = prelude.String.id,
        }),
        CdcStopPosition = schema.new({
            id = id.from(_N, "ModifyReplicationTaskInput", "CdcStopPosition"),
            type = "string",
            name = "CdcStopPosition",
            target_id = prelude.String.id,
        }),
        TaskData = schema.new({
            id = id.from(_N, "ModifyReplicationTaskInput", "TaskData"),
            type = "string",
            name = "TaskData",
            target_id = prelude.String.id,
        }),
    },
})

M.ModifyReplicationTaskOutput = schema.new({
    id = id.from(_N, "ModifyReplicationTaskResponse"),
    type = "structure",
    members = {
        ReplicationTask = schema.new({
            id = id.from(_N, "ModifyReplicationTaskOutput", "ReplicationTask"),
            type = "structure",
            name = "ReplicationTask",
            target_id = id.from(_N, "ReplicationTask"),
            target = M.ReplicationTask,
        }),
    },
})

M.MoveReplicationTaskInput = schema.new({
    id = id.from(_N, "MoveReplicationTaskMessage"),
    type = "structure",
    members = {
        ReplicationTaskArn = schema.new({
            id = id.from(_N, "MoveReplicationTaskInput", "ReplicationTaskArn"),
            type = "string",
            name = "ReplicationTaskArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TargetReplicationInstanceArn = schema.new({
            id = id.from(_N, "MoveReplicationTaskInput", "TargetReplicationInstanceArn"),
            type = "string",
            name = "TargetReplicationInstanceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.MoveReplicationTaskOutput = schema.new({
    id = id.from(_N, "MoveReplicationTaskResponse"),
    type = "structure",
    members = {
        ReplicationTask = schema.new({
            id = id.from(_N, "MoveReplicationTaskOutput", "ReplicationTask"),
            type = "structure",
            name = "ReplicationTask",
            target_id = id.from(_N, "ReplicationTask"),
            target = M.ReplicationTask,
        }),
    },
})

M.RebootReplicationInstanceInput = schema.new({
    id = id.from(_N, "RebootReplicationInstanceMessage"),
    type = "structure",
    members = {
        ReplicationInstanceArn = schema.new({
            id = id.from(_N, "RebootReplicationInstanceInput", "ReplicationInstanceArn"),
            type = "string",
            name = "ReplicationInstanceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ForceFailover = schema.new({
            id = id.from(_N, "RebootReplicationInstanceInput", "ForceFailover"),
            type = "boolean",
            name = "ForceFailover",
            target_id = prelude.Boolean.id,
        }),
        ForcePlannedFailover = schema.new({
            id = id.from(_N, "RebootReplicationInstanceInput", "ForcePlannedFailover"),
            type = "boolean",
            name = "ForcePlannedFailover",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.RebootReplicationInstanceOutput = schema.new({
    id = id.from(_N, "RebootReplicationInstanceResponse"),
    type = "structure",
    members = {
        ReplicationInstance = schema.new({
            id = id.from(_N, "RebootReplicationInstanceOutput", "ReplicationInstance"),
            type = "structure",
            name = "ReplicationInstance",
            target_id = id.from(_N, "ReplicationInstance"),
            target = M.ReplicationInstance,
        }),
    },
})

M.RefreshSchemasInput = schema.new({
    id = id.from(_N, "RefreshSchemasMessage"),
    type = "structure",
    members = {
        EndpointArn = schema.new({
            id = id.from(_N, "RefreshSchemasInput", "EndpointArn"),
            type = "string",
            name = "EndpointArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ReplicationInstanceArn = schema.new({
            id = id.from(_N, "RefreshSchemasInput", "ReplicationInstanceArn"),
            type = "string",
            name = "ReplicationInstanceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RefreshSchemasOutput = schema.new({
    id = id.from(_N, "RefreshSchemasResponse"),
    type = "structure",
    members = {
        RefreshSchemasStatus = schema.new({
            id = id.from(_N, "RefreshSchemasOutput", "RefreshSchemasStatus"),
            type = "structure",
            name = "RefreshSchemasStatus",
            target_id = id.from(_N, "RefreshSchemasStatus"),
            target = M.RefreshSchemasStatus,
        }),
    },
})

M.TableToReload = schema.new({
    id = id.from(_N, "TableToReload"),
    type = "structure",
    members = {
        SchemaName = schema.new({
            id = id.from(_N, "TableToReload", "SchemaName"),
            type = "string",
            name = "SchemaName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TableName = schema.new({
            id = id.from(_N, "TableToReload", "TableName"),
            type = "string",
            name = "TableName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ReloadReplicationTablesInput = schema.new({
    id = id.from(_N, "ReloadReplicationTablesMessage"),
    type = "structure",
    members = {
        ReplicationConfigArn = schema.new({
            id = id.from(_N, "ReloadReplicationTablesInput", "ReplicationConfigArn"),
            type = "string",
            name = "ReplicationConfigArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TablesToReload = schema.new({
            id = id.from(_N, "ReloadReplicationTablesInput", "TablesToReload"),
            type = "list",
            name = "TablesToReload",
            target_id = prelude.Document.id,
            list_member = M.TableToReload,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ReloadOption = schema.new({
            id = id.from(_N, "ReloadReplicationTablesInput", "ReloadOption"),
            type = "string",
            name = "ReloadOption",
            target_id = prelude.String.id,
        }),
    },
})

M.ReloadReplicationTablesOutput = schema.new({
    id = id.from(_N, "ReloadReplicationTablesResponse"),
    type = "structure",
    members = {
        ReplicationConfigArn = schema.new({
            id = id.from(_N, "ReloadReplicationTablesOutput", "ReplicationConfigArn"),
            type = "string",
            name = "ReplicationConfigArn",
            target_id = prelude.String.id,
        }),
    },
})

M.ReloadTablesInput = schema.new({
    id = id.from(_N, "ReloadTablesMessage"),
    type = "structure",
    members = {
        ReplicationTaskArn = schema.new({
            id = id.from(_N, "ReloadTablesInput", "ReplicationTaskArn"),
            type = "string",
            name = "ReplicationTaskArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TablesToReload = schema.new({
            id = id.from(_N, "ReloadTablesInput", "TablesToReload"),
            type = "list",
            name = "TablesToReload",
            target_id = prelude.Document.id,
            list_member = M.TableToReload,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ReloadOption = schema.new({
            id = id.from(_N, "ReloadTablesInput", "ReloadOption"),
            type = "string",
            name = "ReloadOption",
            target_id = prelude.String.id,
        }),
    },
})

M.ReloadTablesOutput = schema.new({
    id = id.from(_N, "ReloadTablesResponse"),
    type = "structure",
    members = {
        ReplicationTaskArn = schema.new({
            id = id.from(_N, "ReloadTablesOutput", "ReplicationTaskArn"),
            type = "string",
            name = "ReplicationTaskArn",
            target_id = prelude.String.id,
        }),
    },
})

M.RemoveTagsFromResourceInput = schema.new({
    id = id.from(_N, "RemoveTagsFromResourceMessage"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "RemoveTagsFromResourceInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TagKeys = schema.new({
            id = id.from(_N, "RemoveTagsFromResourceInput", "TagKeys"),
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

M.RemoveTagsFromResourceOutput = schema.new({
    id = id.from(_N, "RemoveTagsFromResourceResponse"),
    type = "structure",
})

M.RunFleetAdvisorLsaAnalysisInput = prelude.Unit

M.RunFleetAdvisorLsaAnalysisOutput = schema.new({
    id = id.from(_N, "RunFleetAdvisorLsaAnalysisResponse"),
    type = "structure",
    members = {
        LsaAnalysisId = schema.new({
            id = id.from(_N, "RunFleetAdvisorLsaAnalysisOutput", "LsaAnalysisId"),
            type = "string",
            name = "LsaAnalysisId",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "RunFleetAdvisorLsaAnalysisOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
    },
})

M.StartDataMigrationInput = schema.new({
    id = id.from(_N, "StartDataMigrationMessage"),
    type = "structure",
    members = {
        DataMigrationIdentifier = schema.new({
            id = id.from(_N, "StartDataMigrationInput", "DataMigrationIdentifier"),
            type = "string",
            name = "DataMigrationIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        StartType = schema.new({
            id = id.from(_N, "StartDataMigrationInput", "StartType"),
            type = "string",
            name = "StartType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StartDataMigrationOutput = schema.new({
    id = id.from(_N, "StartDataMigrationResponse"),
    type = "structure",
    members = {
        DataMigration = schema.new({
            id = id.from(_N, "StartDataMigrationOutput", "DataMigration"),
            type = "structure",
            name = "DataMigration",
            target_id = id.from(_N, "DataMigration"),
            target = M.DataMigration,
        }),
    },
})

M.StartExtensionPackAssociationInput = schema.new({
    id = id.from(_N, "StartExtensionPackAssociationMessage"),
    type = "structure",
    members = {
        MigrationProjectIdentifier = schema.new({
            id = id.from(_N, "StartExtensionPackAssociationInput", "MigrationProjectIdentifier"),
            type = "string",
            name = "MigrationProjectIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StartExtensionPackAssociationOutput = schema.new({
    id = id.from(_N, "StartExtensionPackAssociationResponse"),
    type = "structure",
    members = {
        RequestIdentifier = schema.new({
            id = id.from(_N, "StartExtensionPackAssociationOutput", "RequestIdentifier"),
            type = "string",
            name = "RequestIdentifier",
            target_id = prelude.String.id,
        }),
    },
})

M.StartMetadataModelAssessmentInput = schema.new({
    id = id.from(_N, "StartMetadataModelAssessmentMessage"),
    type = "structure",
    members = {
        MigrationProjectIdentifier = schema.new({
            id = id.from(_N, "StartMetadataModelAssessmentInput", "MigrationProjectIdentifier"),
            type = "string",
            name = "MigrationProjectIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SelectionRules = schema.new({
            id = id.from(_N, "StartMetadataModelAssessmentInput", "SelectionRules"),
            type = "string",
            name = "SelectionRules",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StartMetadataModelAssessmentOutput = schema.new({
    id = id.from(_N, "StartMetadataModelAssessmentResponse"),
    type = "structure",
    members = {
        RequestIdentifier = schema.new({
            id = id.from(_N, "StartMetadataModelAssessmentOutput", "RequestIdentifier"),
            type = "string",
            name = "RequestIdentifier",
            target_id = prelude.String.id,
        }),
    },
})

M.StartMetadataModelConversionInput = schema.new({
    id = id.from(_N, "StartMetadataModelConversionMessage"),
    type = "structure",
    members = {
        MigrationProjectIdentifier = schema.new({
            id = id.from(_N, "StartMetadataModelConversionInput", "MigrationProjectIdentifier"),
            type = "string",
            name = "MigrationProjectIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SelectionRules = schema.new({
            id = id.from(_N, "StartMetadataModelConversionInput", "SelectionRules"),
            type = "string",
            name = "SelectionRules",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StartMetadataModelConversionOutput = schema.new({
    id = id.from(_N, "StartMetadataModelConversionResponse"),
    type = "structure",
    members = {
        RequestIdentifier = schema.new({
            id = id.from(_N, "StartMetadataModelConversionOutput", "RequestIdentifier"),
            type = "string",
            name = "RequestIdentifier",
            target_id = prelude.String.id,
        }),
    },
})

M.StatementProperties = schema.new({
    id = id.from(_N, "StatementProperties"),
    type = "structure",
    members = {
        Definition = schema.new({
            id = id.from(_N, "StatementProperties", "Definition"),
            type = "string",
            name = "Definition",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.MetadataModelProperties = schema.new({
    id = id.from(_N, "MetadataModelProperties"),
    type = "union",
    members = {
        StatementProperties = schema.new({
            id = id.from(_N, "MetadataModelProperties", "StatementProperties"),
            type = "structure",
            name = "StatementProperties",
            target_id = id.from(_N, "StatementProperties"),
            target = M.StatementProperties,
        }),
    },
})

M.StartMetadataModelCreationInput = schema.new({
    id = id.from(_N, "StartMetadataModelCreationMessage"),
    type = "structure",
    members = {
        MigrationProjectIdentifier = schema.new({
            id = id.from(_N, "StartMetadataModelCreationInput", "MigrationProjectIdentifier"),
            type = "string",
            name = "MigrationProjectIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SelectionRules = schema.new({
            id = id.from(_N, "StartMetadataModelCreationInput", "SelectionRules"),
            type = "string",
            name = "SelectionRules",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MetadataModelName = schema.new({
            id = id.from(_N, "StartMetadataModelCreationInput", "MetadataModelName"),
            type = "string",
            name = "MetadataModelName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Properties = schema.new({
            id = id.from(_N, "StartMetadataModelCreationInput", "Properties"),
            type = "union",
            name = "Properties",
            target_id = id.from(_N, "MetadataModelProperties"),
            target = M.MetadataModelProperties,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StartMetadataModelCreationOutput = schema.new({
    id = id.from(_N, "StartMetadataModelCreationResponse"),
    type = "structure",
    members = {
        RequestIdentifier = schema.new({
            id = id.from(_N, "StartMetadataModelCreationOutput", "RequestIdentifier"),
            type = "string",
            name = "RequestIdentifier",
            target_id = prelude.String.id,
        }),
    },
})

M.StartMetadataModelExportAsScriptInput = schema.new({
    id = id.from(_N, "StartMetadataModelExportAsScriptMessage"),
    type = "structure",
    members = {
        MigrationProjectIdentifier = schema.new({
            id = id.from(_N, "StartMetadataModelExportAsScriptInput", "MigrationProjectIdentifier"),
            type = "string",
            name = "MigrationProjectIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SelectionRules = schema.new({
            id = id.from(_N, "StartMetadataModelExportAsScriptInput", "SelectionRules"),
            type = "string",
            name = "SelectionRules",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Origin = schema.new({
            id = id.from(_N, "StartMetadataModelExportAsScriptInput", "Origin"),
            type = "string",
            name = "Origin",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        FileName = schema.new({
            id = id.from(_N, "StartMetadataModelExportAsScriptInput", "FileName"),
            type = "string",
            name = "FileName",
            target_id = prelude.String.id,
        }),
    },
})

M.StartMetadataModelExportAsScriptOutput = schema.new({
    id = id.from(_N, "StartMetadataModelExportAsScriptResponse"),
    type = "structure",
    members = {
        RequestIdentifier = schema.new({
            id = id.from(_N, "StartMetadataModelExportAsScriptOutput", "RequestIdentifier"),
            type = "string",
            name = "RequestIdentifier",
            target_id = prelude.String.id,
        }),
    },
})

M.StartMetadataModelExportToTargetInput = schema.new({
    id = id.from(_N, "StartMetadataModelExportToTargetMessage"),
    type = "structure",
    members = {
        MigrationProjectIdentifier = schema.new({
            id = id.from(_N, "StartMetadataModelExportToTargetInput", "MigrationProjectIdentifier"),
            type = "string",
            name = "MigrationProjectIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SelectionRules = schema.new({
            id = id.from(_N, "StartMetadataModelExportToTargetInput", "SelectionRules"),
            type = "string",
            name = "SelectionRules",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OverwriteExtensionPack = schema.new({
            id = id.from(_N, "StartMetadataModelExportToTargetInput", "OverwriteExtensionPack"),
            type = "boolean",
            name = "OverwriteExtensionPack",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.StartMetadataModelExportToTargetOutput = schema.new({
    id = id.from(_N, "StartMetadataModelExportToTargetResponse"),
    type = "structure",
    members = {
        RequestIdentifier = schema.new({
            id = id.from(_N, "StartMetadataModelExportToTargetOutput", "RequestIdentifier"),
            type = "string",
            name = "RequestIdentifier",
            target_id = prelude.String.id,
        }),
    },
})

M.StartMetadataModelImportInput = schema.new({
    id = id.from(_N, "StartMetadataModelImportMessage"),
    type = "structure",
    members = {
        MigrationProjectIdentifier = schema.new({
            id = id.from(_N, "StartMetadataModelImportInput", "MigrationProjectIdentifier"),
            type = "string",
            name = "MigrationProjectIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SelectionRules = schema.new({
            id = id.from(_N, "StartMetadataModelImportInput", "SelectionRules"),
            type = "string",
            name = "SelectionRules",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Origin = schema.new({
            id = id.from(_N, "StartMetadataModelImportInput", "Origin"),
            type = "string",
            name = "Origin",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Refresh = schema.new({
            id = id.from(_N, "StartMetadataModelImportInput", "Refresh"),
            type = "boolean",
            name = "Refresh",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.StartMetadataModelImportOutput = schema.new({
    id = id.from(_N, "StartMetadataModelImportResponse"),
    type = "structure",
    members = {
        RequestIdentifier = schema.new({
            id = id.from(_N, "StartMetadataModelImportOutput", "RequestIdentifier"),
            type = "string",
            name = "RequestIdentifier",
            target_id = prelude.String.id,
        }),
    },
})

M.StartRecommendationsInput = schema.new({
    id = id.from(_N, "StartRecommendationsRequest"),
    type = "structure",
    members = {
        DatabaseId = schema.new({
            id = id.from(_N, "StartRecommendationsInput", "DatabaseId"),
            type = "string",
            name = "DatabaseId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Settings = schema.new({
            id = id.from(_N, "StartRecommendationsInput", "Settings"),
            type = "structure",
            name = "Settings",
            target_id = id.from(_N, "RecommendationSettings"),
            target = M.RecommendationSettings,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StartRecommendationsOutput = prelude.Unit

M.StartReplicationInput = schema.new({
    id = id.from(_N, "StartReplicationMessage"),
    type = "structure",
    members = {
        ReplicationConfigArn = schema.new({
            id = id.from(_N, "StartReplicationInput", "ReplicationConfigArn"),
            type = "string",
            name = "ReplicationConfigArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        StartReplicationType = schema.new({
            id = id.from(_N, "StartReplicationInput", "StartReplicationType"),
            type = "string",
            name = "StartReplicationType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PremigrationAssessmentSettings = schema.new({
            id = id.from(_N, "StartReplicationInput", "PremigrationAssessmentSettings"),
            type = "string",
            name = "PremigrationAssessmentSettings",
            target_id = prelude.String.id,
        }),
        CdcStartTime = schema.new({
            id = id.from(_N, "StartReplicationInput", "CdcStartTime"),
            type = "timestamp",
            name = "CdcStartTime",
            target_id = prelude.Timestamp.id,
        }),
        CdcStartPosition = schema.new({
            id = id.from(_N, "StartReplicationInput", "CdcStartPosition"),
            type = "string",
            name = "CdcStartPosition",
            target_id = prelude.String.id,
        }),
        CdcStopPosition = schema.new({
            id = id.from(_N, "StartReplicationInput", "CdcStopPosition"),
            type = "string",
            name = "CdcStopPosition",
            target_id = prelude.String.id,
        }),
    },
})

M.StartReplicationOutput = schema.new({
    id = id.from(_N, "StartReplicationResponse"),
    type = "structure",
    members = {
        Replication = schema.new({
            id = id.from(_N, "StartReplicationOutput", "Replication"),
            type = "structure",
            name = "Replication",
            target_id = id.from(_N, "Replication"),
            target = M.Replication,
        }),
    },
})

M.StartReplicationTaskInput = schema.new({
    id = id.from(_N, "StartReplicationTaskMessage"),
    type = "structure",
    members = {
        ReplicationTaskArn = schema.new({
            id = id.from(_N, "StartReplicationTaskInput", "ReplicationTaskArn"),
            type = "string",
            name = "ReplicationTaskArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        StartReplicationTaskType = schema.new({
            id = id.from(_N, "StartReplicationTaskInput", "StartReplicationTaskType"),
            type = "string",
            name = "StartReplicationTaskType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CdcStartTime = schema.new({
            id = id.from(_N, "StartReplicationTaskInput", "CdcStartTime"),
            type = "timestamp",
            name = "CdcStartTime",
            target_id = prelude.Timestamp.id,
        }),
        CdcStartPosition = schema.new({
            id = id.from(_N, "StartReplicationTaskInput", "CdcStartPosition"),
            type = "string",
            name = "CdcStartPosition",
            target_id = prelude.String.id,
        }),
        CdcStopPosition = schema.new({
            id = id.from(_N, "StartReplicationTaskInput", "CdcStopPosition"),
            type = "string",
            name = "CdcStopPosition",
            target_id = prelude.String.id,
        }),
    },
})

M.StartReplicationTaskOutput = schema.new({
    id = id.from(_N, "StartReplicationTaskResponse"),
    type = "structure",
    members = {
        ReplicationTask = schema.new({
            id = id.from(_N, "StartReplicationTaskOutput", "ReplicationTask"),
            type = "structure",
            name = "ReplicationTask",
            target_id = id.from(_N, "ReplicationTask"),
            target = M.ReplicationTask,
        }),
    },
})

M.StartReplicationTaskAssessmentInput = schema.new({
    id = id.from(_N, "StartReplicationTaskAssessmentMessage"),
    type = "structure",
    members = {
        ReplicationTaskArn = schema.new({
            id = id.from(_N, "StartReplicationTaskAssessmentInput", "ReplicationTaskArn"),
            type = "string",
            name = "ReplicationTaskArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StartReplicationTaskAssessmentOutput = schema.new({
    id = id.from(_N, "StartReplicationTaskAssessmentResponse"),
    type = "structure",
    members = {
        ReplicationTask = schema.new({
            id = id.from(_N, "StartReplicationTaskAssessmentOutput", "ReplicationTask"),
            type = "structure",
            name = "ReplicationTask",
            target_id = id.from(_N, "ReplicationTask"),
            target = M.ReplicationTask,
        }),
    },
})

M.KMSFault = schema.new({
    id = id.from(_N, "KMSFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "KMSFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.StartReplicationTaskAssessmentRunInput = schema.new({
    id = id.from(_N, "StartReplicationTaskAssessmentRunMessage"),
    type = "structure",
    members = {
        ReplicationTaskArn = schema.new({
            id = id.from(_N, "StartReplicationTaskAssessmentRunInput", "ReplicationTaskArn"),
            type = "string",
            name = "ReplicationTaskArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ServiceAccessRoleArn = schema.new({
            id = id.from(_N, "StartReplicationTaskAssessmentRunInput", "ServiceAccessRoleArn"),
            type = "string",
            name = "ServiceAccessRoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResultLocationBucket = schema.new({
            id = id.from(_N, "StartReplicationTaskAssessmentRunInput", "ResultLocationBucket"),
            type = "string",
            name = "ResultLocationBucket",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResultLocationFolder = schema.new({
            id = id.from(_N, "StartReplicationTaskAssessmentRunInput", "ResultLocationFolder"),
            type = "string",
            name = "ResultLocationFolder",
            target_id = prelude.String.id,
        }),
        ResultEncryptionMode = schema.new({
            id = id.from(_N, "StartReplicationTaskAssessmentRunInput", "ResultEncryptionMode"),
            type = "string",
            name = "ResultEncryptionMode",
            target_id = prelude.String.id,
        }),
        ResultKmsKeyArn = schema.new({
            id = id.from(_N, "StartReplicationTaskAssessmentRunInput", "ResultKmsKeyArn"),
            type = "string",
            name = "ResultKmsKeyArn",
            target_id = prelude.String.id,
        }),
        AssessmentRunName = schema.new({
            id = id.from(_N, "StartReplicationTaskAssessmentRunInput", "AssessmentRunName"),
            type = "string",
            name = "AssessmentRunName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IncludeOnly = schema.new({
            id = id.from(_N, "StartReplicationTaskAssessmentRunInput", "IncludeOnly"),
            type = "list",
            name = "IncludeOnly",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Exclude = schema.new({
            id = id.from(_N, "StartReplicationTaskAssessmentRunInput", "Exclude"),
            type = "list",
            name = "Exclude",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Tags = schema.new({
            id = id.from(_N, "StartReplicationTaskAssessmentRunInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Tag, traits = { [traits.XML_NAME] = { name = "Tag" } } }),
        }),
    },
})

M.StartReplicationTaskAssessmentRunOutput = schema.new({
    id = id.from(_N, "StartReplicationTaskAssessmentRunResponse"),
    type = "structure",
    members = {
        ReplicationTaskAssessmentRun = schema.new({
            id = id.from(_N, "StartReplicationTaskAssessmentRunOutput", "ReplicationTaskAssessmentRun"),
            type = "structure",
            name = "ReplicationTaskAssessmentRun",
            target_id = id.from(_N, "ReplicationTaskAssessmentRun"),
            target = M.ReplicationTaskAssessmentRun,
        }),
    },
})

M.StopDataMigrationInput = schema.new({
    id = id.from(_N, "StopDataMigrationMessage"),
    type = "structure",
    members = {
        DataMigrationIdentifier = schema.new({
            id = id.from(_N, "StopDataMigrationInput", "DataMigrationIdentifier"),
            type = "string",
            name = "DataMigrationIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StopDataMigrationOutput = schema.new({
    id = id.from(_N, "StopDataMigrationResponse"),
    type = "structure",
    members = {
        DataMigration = schema.new({
            id = id.from(_N, "StopDataMigrationOutput", "DataMigration"),
            type = "structure",
            name = "DataMigration",
            target_id = id.from(_N, "DataMigration"),
            target = M.DataMigration,
        }),
    },
})

M.StopReplicationInput = schema.new({
    id = id.from(_N, "StopReplicationMessage"),
    type = "structure",
    members = {
        ReplicationConfigArn = schema.new({
            id = id.from(_N, "StopReplicationInput", "ReplicationConfigArn"),
            type = "string",
            name = "ReplicationConfigArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StopReplicationOutput = schema.new({
    id = id.from(_N, "StopReplicationResponse"),
    type = "structure",
    members = {
        Replication = schema.new({
            id = id.from(_N, "StopReplicationOutput", "Replication"),
            type = "structure",
            name = "Replication",
            target_id = id.from(_N, "Replication"),
            target = M.Replication,
        }),
    },
})

M.StopReplicationTaskInput = schema.new({
    id = id.from(_N, "StopReplicationTaskMessage"),
    type = "structure",
    members = {
        ReplicationTaskArn = schema.new({
            id = id.from(_N, "StopReplicationTaskInput", "ReplicationTaskArn"),
            type = "string",
            name = "ReplicationTaskArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StopReplicationTaskOutput = schema.new({
    id = id.from(_N, "StopReplicationTaskResponse"),
    type = "structure",
    members = {
        ReplicationTask = schema.new({
            id = id.from(_N, "StopReplicationTaskOutput", "ReplicationTask"),
            type = "structure",
            name = "ReplicationTask",
            target_id = id.from(_N, "ReplicationTask"),
            target = M.ReplicationTask,
        }),
    },
})

M.TestConnectionInput = schema.new({
    id = id.from(_N, "TestConnectionMessage"),
    type = "structure",
    members = {
        ReplicationInstanceArn = schema.new({
            id = id.from(_N, "TestConnectionInput", "ReplicationInstanceArn"),
            type = "string",
            name = "ReplicationInstanceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EndpointArn = schema.new({
            id = id.from(_N, "TestConnectionInput", "EndpointArn"),
            type = "string",
            name = "EndpointArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TestConnectionOutput = schema.new({
    id = id.from(_N, "TestConnectionResponse"),
    type = "structure",
    members = {
        Connection = schema.new({
            id = id.from(_N, "TestConnectionOutput", "Connection"),
            type = "structure",
            name = "Connection",
            target_id = id.from(_N, "Connection"),
            target = M.Connection,
        }),
    },
})

M.UpdateSubscriptionsToEventBridgeInput = schema.new({
    id = id.from(_N, "UpdateSubscriptionsToEventBridgeMessage"),
    type = "structure",
    members = {
        ForceMove = schema.new({
            id = id.from(_N, "UpdateSubscriptionsToEventBridgeInput", "ForceMove"),
            type = "boolean",
            name = "ForceMove",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.UpdateSubscriptionsToEventBridgeOutput = schema.new({
    id = id.from(_N, "UpdateSubscriptionsToEventBridgeResponse"),
    type = "structure",
    members = {
        Result = schema.new({
            id = id.from(_N, "UpdateSubscriptionsToEventBridgeOutput", "Result"),
            type = "string",
            name = "Result",
            target_id = prelude.String.id,
        }),
    },
})

-- Fix forward references for recursive schemas
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

return M
