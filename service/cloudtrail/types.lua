local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AccountHasOngoingImportException = {
    type = "structure",
    id = "AccountHasOngoingImportException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AccountNotFoundException = {
    type = "structure",
    id = "AccountNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AccountNotRegisteredException = {
    type = "structure",
    id = "AccountNotRegisteredException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AccountRegisteredException = {
    type = "structure",
    id = "AccountRegisteredException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.Tag = {
    type = "structure",
    id = "Tag",
    members = {
        Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "string",
        },
    },
}

M.AddTagsInput = {
    type = "structure",
    id = "AddTagsInput",
    members = {
        ResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagsList = {
            type = "list",
            member = M.Tag,
            traits = {
                required = true,
            },
        },
    },
}

M.AddTagsOutput = {
    type = "structure",
    id = "AddTagsOutput",
}

M.ChannelARNInvalidException = {
    type = "structure",
    id = "ChannelARNInvalidException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ChannelNotFoundException = {
    type = "structure",
    id = "ChannelNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CloudTrailARNInvalidException = {
    type = "structure",
    id = "CloudTrailARNInvalidException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ConflictException = {
    type = "structure",
    id = "ConflictException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.EventDataStoreARNInvalidException = {
    type = "structure",
    id = "EventDataStoreARNInvalidException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.EventDataStoreNotFoundException = {
    type = "structure",
    id = "EventDataStoreNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InactiveEventDataStoreException = {
    type = "structure",
    id = "InactiveEventDataStoreException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidTagParameterException = {
    type = "structure",
    id = "InvalidTagParameterException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidTrailNameException = {
    type = "structure",
    id = "InvalidTrailNameException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.NoManagementAccountSLRExistsException = {
    type = "structure",
    id = "NoManagementAccountSLRExistsException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.NotOrganizationMasterAccountException = {
    type = "structure",
    id = "NotOrganizationMasterAccountException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.OperationNotPermittedException = {
    type = "structure",
    id = "OperationNotPermittedException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceTypeNotSupportedException = {
    type = "structure",
    id = "ResourceTypeNotSupportedException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TagsLimitExceededException = {
    type = "structure",
    id = "TagsLimitExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.UnsupportedOperationException = {
    type = "structure",
    id = "UnsupportedOperationException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AdvancedFieldSelector = {
    type = "structure",
    id = "AdvancedFieldSelector",
    members = {
        Field = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Equals = {
            type = "list",
            member = { type = "string" },
        },
        StartsWith = {
            type = "list",
            member = { type = "string" },
        },
        EndsWith = {
            type = "list",
            member = { type = "string" },
        },
        NotEquals = {
            type = "list",
            member = { type = "string" },
        },
        NotStartsWith = {
            type = "list",
            member = { type = "string" },
        },
        NotEndsWith = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.AdvancedEventSelector = {
    type = "structure",
    id = "AdvancedEventSelector",
    members = {
        Name = {
            type = "string",
        },
        FieldSelectors = {
            type = "list",
            member = M.AdvancedFieldSelector,
            traits = {
                required = true,
            },
        },
    },
}

M.EventCategoryAggregation = {
    Data = "Data",
}

M.Template = {
    API_ACTIVITY = "API_ACTIVITY",
    RESOURCE_ACCESS = "RESOURCE_ACCESS",
    USER_ACTIONS = "USER_ACTIONS",
}

M.AggregationConfiguration = {
    type = "structure",
    id = "AggregationConfiguration",
    members = {
        Templates = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        EventCategory = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BillingMode = {
    EXTENDABLE_RETENTION_PRICING = "EXTENDABLE_RETENTION_PRICING",
    FIXED_RETENTION_PRICING = "FIXED_RETENTION_PRICING",
}

M.CancelQueryInput = {
    type = "structure",
    id = "CancelQueryInput",
    members = {
        EventDataStore = {
            type = "string",
        },
        QueryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EventDataStoreOwnerAccountId = {
            type = "string",
        },
    },
}

M.QueryStatus = {
    QUEUED = "QUEUED",
    RUNNING = "RUNNING",
    FINISHED = "FINISHED",
    FAILED = "FAILED",
    CANCELLED = "CANCELLED",
    TIMED_OUT = "TIMED_OUT",
}

M.CancelQueryOutput = {
    type = "structure",
    id = "CancelQueryOutput",
    members = {
        QueryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        QueryStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EventDataStoreOwnerAccountId = {
            type = "string",
        },
    },
}

M.InactiveQueryException = {
    type = "structure",
    id = "InactiveQueryException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidParameterException = {
    type = "structure",
    id = "InvalidParameterException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.QueryIdNotFoundException = {
    type = "structure",
    id = "QueryIdNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CannotDelegateManagementAccountException = {
    type = "structure",
    id = "CannotDelegateManagementAccountException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.Channel = {
    type = "structure",
    id = "Channel",
    members = {
        ChannelArn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
    },
}

M.ChannelAlreadyExistsException = {
    type = "structure",
    id = "ChannelAlreadyExistsException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ChannelExistsForEDSException = {
    type = "structure",
    id = "ChannelExistsForEDSException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ChannelMaxLimitExceededException = {
    type = "structure",
    id = "ChannelMaxLimitExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DestinationType = {
    EVENT_DATA_STORE = "EVENT_DATA_STORE",
    AWS_SERVICE = "AWS_SERVICE",
}

M.Destination = {
    type = "structure",
    id = "Destination",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Location = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateChannelInput = {
    type = "structure",
    id = "CreateChannelInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Source = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Destinations = {
            type = "list",
            member = M.Destination,
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateChannelOutput = {
    type = "structure",
    id = "CreateChannelOutput",
    members = {
        ChannelArn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Source = {
            type = "string",
        },
        Destinations = {
            type = "list",
            member = M.Destination,
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.InvalidEventDataStoreCategoryException = {
    type = "structure",
    id = "InvalidEventDataStoreCategoryException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidSourceException = {
    type = "structure",
    id = "InvalidSourceException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.RefreshScheduleFrequencyUnit = {
    HOURS = "HOURS",
    DAYS = "DAYS",
}

M.RefreshScheduleFrequency = {
    type = "structure",
    id = "RefreshScheduleFrequency",
    members = {
        Unit = {
            type = "string",
        },
        Value = {
            type = "integer",
        },
    },
}

M.RefreshScheduleStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.RefreshSchedule = {
    type = "structure",
    id = "RefreshSchedule",
    members = {
        Frequency = M.RefreshScheduleFrequency,
        Status = {
            type = "string",
        },
        TimeOfDay = {
            type = "string",
        },
    },
}

M.RequestWidget = {
    type = "structure",
    id = "RequestWidget",
    members = {
        QueryStatement = {
            type = "string",
            traits = {
                required = true,
            },
        },
        QueryParameters = {
            type = "list",
            member = { type = "string" },
        },
        ViewProperties = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.CreateDashboardInput = {
    type = "structure",
    id = "CreateDashboardInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RefreshSchedule = M.RefreshSchedule,
        TagsList = {
            type = "list",
            member = M.Tag,
        },
        TerminationProtectionEnabled = {
            type = "boolean",
        },
        Widgets = {
            type = "list",
            member = M.RequestWidget,
        },
    },
}

M.DashboardType = {
    MANAGED = "MANAGED",
    CUSTOM = "CUSTOM",
}

M.Widget = {
    type = "structure",
    id = "Widget",
    members = {
        QueryAlias = {
            type = "string",
        },
        QueryStatement = {
            type = "string",
        },
        QueryParameters = {
            type = "list",
            member = { type = "string" },
        },
        ViewProperties = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateDashboardOutput = {
    type = "structure",
    id = "CreateDashboardOutput",
    members = {
        DashboardArn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Widgets = {
            type = "list",
            member = M.Widget,
        },
        TagsList = {
            type = "list",
            member = M.Tag,
        },
        RefreshSchedule = M.RefreshSchedule,
        TerminationProtectionEnabled = {
            type = "boolean",
        },
    },
}

M.InsufficientEncryptionPolicyException = {
    type = "structure",
    id = "InsufficientEncryptionPolicyException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidQueryStatementException = {
    type = "structure",
    id = "InvalidQueryStatementException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    id = "ServiceQuotaExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CloudTrailAccessNotEnabledException = {
    type = "structure",
    id = "CloudTrailAccessNotEnabledException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateEventDataStoreInput = {
    type = "structure",
    id = "CreateEventDataStoreInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AdvancedEventSelectors = {
            type = "list",
            member = M.AdvancedEventSelector,
        },
        MultiRegionEnabled = {
            type = "boolean",
        },
        OrganizationEnabled = {
            type = "boolean",
        },
        RetentionPeriod = {
            type = "integer",
        },
        TerminationProtectionEnabled = {
            type = "boolean",
        },
        TagsList = {
            type = "list",
            member = M.Tag,
        },
        KmsKeyId = {
            type = "string",
        },
        StartIngestion = {
            type = "boolean",
        },
        BillingMode = {
            type = "string",
        },
    },
}

M.EventDataStoreStatus = {
    CREATED = "CREATED",
    ENABLED = "ENABLED",
    PENDING_DELETION = "PENDING_DELETION",
    STARTING_INGESTION = "STARTING_INGESTION",
    STOPPING_INGESTION = "STOPPING_INGESTION",
    STOPPED_INGESTION = "STOPPED_INGESTION",
}

M.CreateEventDataStoreOutput = {
    type = "structure",
    id = "CreateEventDataStoreOutput",
    members = {
        EventDataStoreArn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        AdvancedEventSelectors = {
            type = "list",
            member = M.AdvancedEventSelector,
        },
        MultiRegionEnabled = {
            type = "boolean",
        },
        OrganizationEnabled = {
            type = "boolean",
        },
        RetentionPeriod = {
            type = "integer",
        },
        TerminationProtectionEnabled = {
            type = "boolean",
        },
        TagsList = {
            type = "list",
            member = M.Tag,
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
        UpdatedTimestamp = {
            type = "timestamp",
        },
        KmsKeyId = {
            type = "string",
        },
        BillingMode = {
            type = "string",
        },
    },
}

M.EventDataStoreAlreadyExistsException = {
    type = "structure",
    id = "EventDataStoreAlreadyExistsException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.EventDataStoreMaxLimitExceededException = {
    type = "structure",
    id = "EventDataStoreMaxLimitExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InsufficientDependencyServiceAccessPermissionException = {
    type = "structure",
    id = "InsufficientDependencyServiceAccessPermissionException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidEventSelectorsException = {
    type = "structure",
    id = "InvalidEventSelectorsException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidKmsKeyIdException = {
    type = "structure",
    id = "InvalidKmsKeyIdException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.KmsException = {
    type = "structure",
    id = "KmsException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.KmsKeyNotFoundException = {
    type = "structure",
    id = "KmsKeyNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.OrganizationNotInAllFeaturesModeException = {
    type = "structure",
    id = "OrganizationNotInAllFeaturesModeException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.OrganizationsNotInUseException = {
    type = "structure",
    id = "OrganizationsNotInUseException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    id = "ThrottlingException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CloudTrailInvalidClientTokenIdException = {
    type = "structure",
    id = "CloudTrailInvalidClientTokenIdException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CloudWatchLogsDeliveryUnavailableException = {
    type = "structure",
    id = "CloudWatchLogsDeliveryUnavailableException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateTrailInput = {
    type = "structure",
    id = "CreateTrailInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        S3BucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        S3KeyPrefix = {
            type = "string",
        },
        SnsTopicName = {
            type = "string",
        },
        IncludeGlobalServiceEvents = {
            type = "boolean",
        },
        IsMultiRegionTrail = {
            type = "boolean",
        },
        EnableLogFileValidation = {
            type = "boolean",
        },
        CloudWatchLogsLogGroupArn = {
            type = "string",
        },
        CloudWatchLogsRoleArn = {
            type = "string",
        },
        KmsKeyId = {
            type = "string",
        },
        IsOrganizationTrail = {
            type = "boolean",
        },
        TagsList = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateTrailOutput = {
    type = "structure",
    id = "CreateTrailOutput",
    members = {
        Name = {
            type = "string",
        },
        S3BucketName = {
            type = "string",
        },
        S3KeyPrefix = {
            type = "string",
        },
        SnsTopicName = {
            type = "string",
        },
        SnsTopicARN = {
            type = "string",
        },
        IncludeGlobalServiceEvents = {
            type = "boolean",
        },
        IsMultiRegionTrail = {
            type = "boolean",
        },
        TrailARN = {
            type = "string",
        },
        LogFileValidationEnabled = {
            type = "boolean",
        },
        CloudWatchLogsLogGroupArn = {
            type = "string",
        },
        CloudWatchLogsRoleArn = {
            type = "string",
        },
        KmsKeyId = {
            type = "string",
        },
        IsOrganizationTrail = {
            type = "boolean",
        },
    },
}

M.InsufficientS3BucketPolicyException = {
    type = "structure",
    id = "InsufficientS3BucketPolicyException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InsufficientSnsTopicPolicyException = {
    type = "structure",
    id = "InsufficientSnsTopicPolicyException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidCloudWatchLogsLogGroupArnException = {
    type = "structure",
    id = "InvalidCloudWatchLogsLogGroupArnException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidCloudWatchLogsRoleArnException = {
    type = "structure",
    id = "InvalidCloudWatchLogsRoleArnException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidParameterCombinationException = {
    type = "structure",
    id = "InvalidParameterCombinationException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidS3BucketNameException = {
    type = "structure",
    id = "InvalidS3BucketNameException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidS3PrefixException = {
    type = "structure",
    id = "InvalidS3PrefixException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidSnsTopicNameException = {
    type = "structure",
    id = "InvalidSnsTopicNameException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.KmsKeyDisabledException = {
    type = "structure",
    id = "KmsKeyDisabledException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.MaximumNumberOfTrailsExceededException = {
    type = "structure",
    id = "MaximumNumberOfTrailsExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.S3BucketDoesNotExistException = {
    type = "structure",
    id = "S3BucketDoesNotExistException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TrailAlreadyExistsException = {
    type = "structure",
    id = "TrailAlreadyExistsException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TrailNotProvidedException = {
    type = "structure",
    id = "TrailNotProvidedException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteChannelInput = {
    type = "structure",
    id = "DeleteChannelInput",
    members = {
        Channel = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteChannelOutput = {
    type = "structure",
    id = "DeleteChannelOutput",
}

M.DeleteDashboardInput = {
    type = "structure",
    id = "DeleteDashboardInput",
    members = {
        DashboardId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteDashboardOutput = {
    type = "structure",
    id = "DeleteDashboardOutput",
}

M.DeleteEventDataStoreInput = {
    type = "structure",
    id = "DeleteEventDataStoreInput",
    members = {
        EventDataStore = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteEventDataStoreOutput = {
    type = "structure",
    id = "DeleteEventDataStoreOutput",
}

M.EventDataStoreFederationEnabledException = {
    type = "structure",
    id = "EventDataStoreFederationEnabledException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.EventDataStoreHasOngoingImportException = {
    type = "structure",
    id = "EventDataStoreHasOngoingImportException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.EventDataStoreTerminationProtectedException = {
    type = "structure",
    id = "EventDataStoreTerminationProtectedException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteResourcePolicyInput = {
    type = "structure",
    id = "DeleteResourcePolicyInput",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteResourcePolicyOutput = {
    type = "structure",
    id = "DeleteResourcePolicyOutput",
}

M.ResourceARNNotValidException = {
    type = "structure",
    id = "ResourceARNNotValidException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourcePolicyNotFoundException = {
    type = "structure",
    id = "ResourcePolicyNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteTrailInput = {
    type = "structure",
    id = "DeleteTrailInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteTrailOutput = {
    type = "structure",
    id = "DeleteTrailOutput",
}

M.InvalidHomeRegionException = {
    type = "structure",
    id = "InvalidHomeRegionException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TrailNotFoundException = {
    type = "structure",
    id = "TrailNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeregisterOrganizationDelegatedAdminInput = {
    type = "structure",
    id = "DeregisterOrganizationDelegatedAdminInput",
    members = {
        DelegatedAdminAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeregisterOrganizationDelegatedAdminOutput = {
    type = "structure",
    id = "DeregisterOrganizationDelegatedAdminOutput",
}

M.NotOrganizationManagementAccountException = {
    type = "structure",
    id = "NotOrganizationManagementAccountException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DescribeQueryInput = {
    type = "structure",
    id = "DescribeQueryInput",
    members = {
        EventDataStore = {
            type = "string",
        },
        QueryId = {
            type = "string",
        },
        QueryAlias = {
            type = "string",
        },
        RefreshId = {
            type = "string",
        },
        EventDataStoreOwnerAccountId = {
            type = "string",
        },
    },
}

M.DeliveryStatus = {
    SUCCESS = "SUCCESS",
    FAILED = "FAILED",
    FAILED_SIGNING_FILE = "FAILED_SIGNING_FILE",
    PENDING = "PENDING",
    RESOURCE_NOT_FOUND = "RESOURCE_NOT_FOUND",
    ACCESS_DENIED = "ACCESS_DENIED",
    ACCESS_DENIED_SIGNING_FILE = "ACCESS_DENIED_SIGNING_FILE",
    CANCELLED = "CANCELLED",
    UNKNOWN = "UNKNOWN",
}

M.QueryStatisticsForDescribeQuery = {
    type = "structure",
    id = "QueryStatisticsForDescribeQuery",
    members = {
        EventsMatched = {
            type = "long",
        },
        EventsScanned = {
            type = "long",
        },
        BytesScanned = {
            type = "long",
        },
        ExecutionTimeInMillis = {
            type = "integer",
        },
        CreationTime = {
            type = "timestamp",
        },
    },
}

M.DescribeQueryOutput = {
    type = "structure",
    id = "DescribeQueryOutput",
    members = {
        QueryId = {
            type = "string",
        },
        QueryString = {
            type = "string",
        },
        QueryStatus = {
            type = "string",
        },
        QueryStatistics = M.QueryStatisticsForDescribeQuery,
        ErrorMessage = {
            type = "string",
        },
        DeliveryS3Uri = {
            type = "string",
        },
        DeliveryStatus = {
            type = "string",
        },
        Prompt = {
            type = "string",
        },
        EventDataStoreOwnerAccountId = {
            type = "string",
        },
    },
}

M.DescribeTrailsInput = {
    type = "structure",
    id = "DescribeTrailsInput",
    members = {
        trailNameList = {
            type = "list",
            member = { type = "string" },
        },
        includeShadowTrails = {
            type = "boolean",
        },
    },
}

M.Trail = {
    type = "structure",
    id = "Trail",
    members = {
        Name = {
            type = "string",
        },
        S3BucketName = {
            type = "string",
        },
        S3KeyPrefix = {
            type = "string",
        },
        SnsTopicName = {
            type = "string",
        },
        SnsTopicARN = {
            type = "string",
        },
        IncludeGlobalServiceEvents = {
            type = "boolean",
        },
        IsMultiRegionTrail = {
            type = "boolean",
        },
        HomeRegion = {
            type = "string",
        },
        TrailARN = {
            type = "string",
        },
        LogFileValidationEnabled = {
            type = "boolean",
        },
        CloudWatchLogsLogGroupArn = {
            type = "string",
        },
        CloudWatchLogsRoleArn = {
            type = "string",
        },
        KmsKeyId = {
            type = "string",
        },
        HasCustomEventSelectors = {
            type = "boolean",
        },
        HasInsightSelectors = {
            type = "boolean",
        },
        IsOrganizationTrail = {
            type = "boolean",
        },
    },
}

M.DescribeTrailsOutput = {
    type = "structure",
    id = "DescribeTrailsOutput",
    members = {
        trailList = {
            type = "list",
            member = M.Trail,
        },
    },
}

M.ConcurrentModificationException = {
    type = "structure",
    id = "ConcurrentModificationException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DisableFederationInput = {
    type = "structure",
    id = "DisableFederationInput",
    members = {
        EventDataStore = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.FederationStatus = {
    ENABLING = "ENABLING",
    ENABLED = "ENABLED",
    DISABLING = "DISABLING",
    DISABLED = "DISABLED",
}

M.DisableFederationOutput = {
    type = "structure",
    id = "DisableFederationOutput",
    members = {
        EventDataStoreArn = {
            type = "string",
        },
        FederationStatus = {
            type = "string",
        },
    },
}

M.EnableFederationInput = {
    type = "structure",
    id = "EnableFederationInput",
    members = {
        EventDataStore = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FederationRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EnableFederationOutput = {
    type = "structure",
    id = "EnableFederationOutput",
    members = {
        EventDataStoreArn = {
            type = "string",
        },
        FederationStatus = {
            type = "string",
        },
        FederationRoleArn = {
            type = "string",
        },
    },
}

M.GenerateQueryInput = {
    type = "structure",
    id = "GenerateQueryInput",
    members = {
        EventDataStores = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Prompt = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GenerateQueryOutput = {
    type = "structure",
    id = "GenerateQueryOutput",
    members = {
        QueryStatement = {
            type = "string",
        },
        QueryAlias = {
            type = "string",
        },
        EventDataStoreOwnerAccountId = {
            type = "string",
        },
    },
}

M.GenerateResponseException = {
    type = "structure",
    id = "GenerateResponseException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.GetChannelInput = {
    type = "structure",
    id = "GetChannelInput",
    members = {
        Channel = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.IngestionStatus = {
    type = "structure",
    id = "IngestionStatus",
    members = {
        LatestIngestionSuccessTime = {
            type = "timestamp",
        },
        LatestIngestionSuccessEventID = {
            type = "string",
        },
        LatestIngestionErrorCode = {
            type = "string",
        },
        LatestIngestionAttemptTime = {
            type = "timestamp",
        },
        LatestIngestionAttemptEventID = {
            type = "string",
        },
    },
}

M.SourceConfig = {
    type = "structure",
    id = "SourceConfig",
    members = {
        ApplyToAllRegions = {
            type = "boolean",
        },
        AdvancedEventSelectors = {
            type = "list",
            member = M.AdvancedEventSelector,
        },
    },
}

M.GetChannelOutput = {
    type = "structure",
    id = "GetChannelOutput",
    members = {
        ChannelArn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Source = {
            type = "string",
        },
        SourceConfig = M.SourceConfig,
        Destinations = {
            type = "list",
            member = M.Destination,
        },
        IngestionStatus = M.IngestionStatus,
    },
}

M.GetDashboardInput = {
    type = "structure",
    id = "GetDashboardInput",
    members = {
        DashboardId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DashboardStatus = {
    CREATING = "CREATING",
    CREATED = "CREATED",
    UPDATING = "UPDATING",
    UPDATED = "UPDATED",
    DELETING = "DELETING",
}

M.GetDashboardOutput = {
    type = "structure",
    id = "GetDashboardOutput",
    members = {
        DashboardArn = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Widgets = {
            type = "list",
            member = M.Widget,
        },
        RefreshSchedule = M.RefreshSchedule,
        CreatedTimestamp = {
            type = "timestamp",
        },
        UpdatedTimestamp = {
            type = "timestamp",
        },
        LastRefreshId = {
            type = "string",
        },
        LastRefreshFailureReason = {
            type = "string",
        },
        TerminationProtectionEnabled = {
            type = "boolean",
        },
    },
}

M.GetEventConfigurationInput = {
    type = "structure",
    id = "GetEventConfigurationInput",
    members = {
        TrailName = {
            type = "string",
        },
        EventDataStore = {
            type = "string",
        },
    },
}

M.Type = {
    TagContext = "TagContext",
    RequestContext = "RequestContext",
}

M.ContextKeySelector = {
    type = "structure",
    id = "ContextKeySelector",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Equals = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.MaxEventSize = {
    Standard = "Standard",
    Large = "Large",
}

M.GetEventConfigurationOutput = {
    type = "structure",
    id = "GetEventConfigurationOutput",
    members = {
        TrailARN = {
            type = "string",
        },
        EventDataStoreArn = {
            type = "string",
        },
        MaxEventSize = {
            type = "string",
        },
        ContextKeySelectors = {
            type = "list",
            member = M.ContextKeySelector,
        },
        AggregationConfigurations = {
            type = "list",
            member = M.AggregationConfiguration,
        },
    },
}

M.InvalidEventDataStoreStatusException = {
    type = "structure",
    id = "InvalidEventDataStoreStatusException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.GetEventDataStoreInput = {
    type = "structure",
    id = "GetEventDataStoreInput",
    members = {
        EventDataStore = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PartitionKey = {
    type = "structure",
    id = "PartitionKey",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetEventDataStoreOutput = {
    type = "structure",
    id = "GetEventDataStoreOutput",
    members = {
        EventDataStoreArn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        AdvancedEventSelectors = {
            type = "list",
            member = M.AdvancedEventSelector,
        },
        MultiRegionEnabled = {
            type = "boolean",
        },
        OrganizationEnabled = {
            type = "boolean",
        },
        RetentionPeriod = {
            type = "integer",
        },
        TerminationProtectionEnabled = {
            type = "boolean",
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
        UpdatedTimestamp = {
            type = "timestamp",
        },
        KmsKeyId = {
            type = "string",
        },
        BillingMode = {
            type = "string",
        },
        FederationStatus = {
            type = "string",
        },
        FederationRoleArn = {
            type = "string",
        },
        PartitionKeys = {
            type = "list",
            member = M.PartitionKey,
        },
    },
}

M.GetEventSelectorsInput = {
    type = "structure",
    id = "GetEventSelectorsInput",
    members = {
        TrailName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DataResource = {
    type = "structure",
    id = "DataResource",
    members = {
        Type = {
            type = "string",
        },
        Values = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ReadWriteType = {
    ReadOnly = "ReadOnly",
    WriteOnly = "WriteOnly",
    All = "All",
}

M.EventSelector = {
    type = "structure",
    id = "EventSelector",
    members = {
        ReadWriteType = {
            type = "string",
        },
        IncludeManagementEvents = {
            type = "boolean",
        },
        DataResources = {
            type = "list",
            member = M.DataResource,
        },
        ExcludeManagementEventSources = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GetEventSelectorsOutput = {
    type = "structure",
    id = "GetEventSelectorsOutput",
    members = {
        TrailARN = {
            type = "string",
        },
        EventSelectors = {
            type = "list",
            member = M.EventSelector,
        },
        AdvancedEventSelectors = {
            type = "list",
            member = M.AdvancedEventSelector,
        },
    },
}

M.GetImportInput = {
    type = "structure",
    id = "GetImportInput",
    members = {
        ImportId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.S3ImportSource = {
    type = "structure",
    id = "S3ImportSource",
    members = {
        S3LocationUri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        S3BucketRegion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        S3BucketAccessRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ImportSource = {
    type = "structure",
    id = "ImportSource",
    members = {
        S3 = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3ImportSource }),
    },
}

M.ImportStatistics = {
    type = "structure",
    id = "ImportStatistics",
    members = {
        PrefixesFound = {
            type = "long",
        },
        PrefixesCompleted = {
            type = "long",
        },
        FilesCompleted = {
            type = "long",
        },
        EventsCompleted = {
            type = "long",
        },
        FailedEntries = {
            type = "long",
        },
    },
}

M.ImportStatus = {
    INITIALIZING = "INITIALIZING",
    IN_PROGRESS = "IN_PROGRESS",
    FAILED = "FAILED",
    STOPPED = "STOPPED",
    COMPLETED = "COMPLETED",
}

M.GetImportOutput = {
    type = "structure",
    id = "GetImportOutput",
    members = {
        ImportId = {
            type = "string",
        },
        Destinations = {
            type = "list",
            member = { type = "string" },
        },
        ImportSource = M.ImportSource,
        StartEventTime = {
            type = "timestamp",
        },
        EndEventTime = {
            type = "timestamp",
        },
        ImportStatus = {
            type = "string",
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
        UpdatedTimestamp = {
            type = "timestamp",
        },
        ImportStatistics = M.ImportStatistics,
    },
}

M.ImportNotFoundException = {
    type = "structure",
    id = "ImportNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.GetInsightSelectorsInput = {
    type = "structure",
    id = "GetInsightSelectorsInput",
    members = {
        TrailName = {
            type = "string",
        },
        EventDataStore = {
            type = "string",
        },
    },
}

M.SourceEventCategory = {
    Management = "Management",
    Data = "Data",
}

M.InsightType = {
    ApiCallRateInsight = "ApiCallRateInsight",
    ApiErrorRateInsight = "ApiErrorRateInsight",
}

M.InsightSelector = {
    type = "structure",
    id = "InsightSelector",
    members = {
        InsightType = {
            type = "string",
        },
        EventCategories = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GetInsightSelectorsOutput = {
    type = "structure",
    id = "GetInsightSelectorsOutput",
    members = {
        TrailARN = {
            type = "string",
        },
        InsightSelectors = {
            type = "list",
            member = M.InsightSelector,
        },
        EventDataStoreArn = {
            type = "string",
        },
        InsightsDestination = {
            type = "string",
        },
    },
}

M.InsightNotEnabledException = {
    type = "structure",
    id = "InsightNotEnabledException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.GetQueryResultsInput = {
    type = "structure",
    id = "GetQueryResultsInput",
    members = {
        EventDataStore = {
            type = "string",
        },
        QueryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxQueryResults = {
            type = "integer",
        },
        EventDataStoreOwnerAccountId = {
            type = "string",
        },
    },
}

M.QueryStatistics = {
    type = "structure",
    id = "QueryStatistics",
    members = {
        ResultsCount = {
            type = "integer",
        },
        TotalResultsCount = {
            type = "integer",
        },
        BytesScanned = {
            type = "long",
        },
    },
}

M.GetQueryResultsOutput = {
    type = "structure",
    id = "GetQueryResultsOutput",
    members = {
        QueryStatus = {
            type = "string",
        },
        QueryStatistics = M.QueryStatistics,
        QueryResultRows = {
            type = "list",
            member = { type = "list" },
        },
        NextToken = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
    },
}

M.InvalidMaxResultsException = {
    type = "structure",
    id = "InvalidMaxResultsException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidNextTokenException = {
    type = "structure",
    id = "InvalidNextTokenException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.GetResourcePolicyInput = {
    type = "structure",
    id = "GetResourcePolicyInput",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetResourcePolicyOutput = {
    type = "structure",
    id = "GetResourcePolicyOutput",
    members = {
        ResourceArn = {
            type = "string",
        },
        ResourcePolicy = {
            type = "string",
        },
        DelegatedAdminResourcePolicy = {
            type = "string",
        },
    },
}

M.GetTrailInput = {
    type = "structure",
    id = "GetTrailInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetTrailOutput = {
    type = "structure",
    id = "GetTrailOutput",
    members = {
        Trail = M.Trail,
    },
}

M.GetTrailStatusInput = {
    type = "structure",
    id = "GetTrailStatusInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetTrailStatusOutput = {
    type = "structure",
    id = "GetTrailStatusOutput",
    members = {
        IsLogging = {
            type = "boolean",
        },
        LatestDeliveryError = {
            type = "string",
        },
        LatestNotificationError = {
            type = "string",
        },
        LatestDeliveryTime = {
            type = "timestamp",
        },
        LatestNotificationTime = {
            type = "timestamp",
        },
        StartLoggingTime = {
            type = "timestamp",
        },
        StopLoggingTime = {
            type = "timestamp",
        },
        LatestCloudWatchLogsDeliveryError = {
            type = "string",
        },
        LatestCloudWatchLogsDeliveryTime = {
            type = "timestamp",
        },
        LatestDigestDeliveryTime = {
            type = "timestamp",
        },
        LatestDigestDeliveryError = {
            type = "string",
        },
        LatestDeliveryAttemptTime = {
            type = "string",
        },
        LatestNotificationAttemptTime = {
            type = "string",
        },
        LatestNotificationAttemptSucceeded = {
            type = "string",
        },
        LatestDeliveryAttemptSucceeded = {
            type = "string",
        },
        TimeLoggingStarted = {
            type = "string",
        },
        TimeLoggingStopped = {
            type = "string",
        },
    },
}

M.ListChannelsInput = {
    type = "structure",
    id = "ListChannelsInput",
    members = {
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListChannelsOutput = {
    type = "structure",
    id = "ListChannelsOutput",
    members = {
        Channels = {
            type = "list",
            member = M.Channel,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListDashboardsInput = {
    type = "structure",
    id = "ListDashboardsInput",
    members = {
        NamePrefix = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.DashboardDetail = {
    type = "structure",
    id = "DashboardDetail",
    members = {
        DashboardArn = {
            type = "string",
        },
        Type = {
            type = "string",
        },
    },
}

M.ListDashboardsOutput = {
    type = "structure",
    id = "ListDashboardsOutput",
    members = {
        Dashboards = {
            type = "list",
            member = M.DashboardDetail,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListEventDataStoresInput = {
    type = "structure",
    id = "ListEventDataStoresInput",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.EventDataStore = {
    type = "structure",
    id = "EventDataStore",
    members = {
        EventDataStoreArn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        TerminationProtectionEnabled = {
            type = "boolean",
        },
        Status = {
            type = "string",
        },
        AdvancedEventSelectors = {
            type = "list",
            member = M.AdvancedEventSelector,
        },
        MultiRegionEnabled = {
            type = "boolean",
        },
        OrganizationEnabled = {
            type = "boolean",
        },
        RetentionPeriod = {
            type = "integer",
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
        UpdatedTimestamp = {
            type = "timestamp",
        },
    },
}

M.ListEventDataStoresOutput = {
    type = "structure",
    id = "ListEventDataStoresOutput",
    members = {
        EventDataStores = {
            type = "list",
            member = M.EventDataStore,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListImportFailuresInput = {
    type = "structure",
    id = "ListImportFailuresInput",
    members = {
        ImportId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ImportFailureStatus = {
    FAILED = "FAILED",
    RETRY = "RETRY",
    SUCCEEDED = "SUCCEEDED",
}

M.ImportFailureListItem = {
    type = "structure",
    id = "ImportFailureListItem",
    members = {
        Location = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        ErrorType = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
    },
}

M.ListImportFailuresOutput = {
    type = "structure",
    id = "ListImportFailuresOutput",
    members = {
        Failures = {
            type = "list",
            member = M.ImportFailureListItem,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListImportsInput = {
    type = "structure",
    id = "ListImportsInput",
    members = {
        MaxResults = {
            type = "integer",
        },
        Destination = {
            type = "string",
        },
        ImportStatus = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ImportsListItem = {
    type = "structure",
    id = "ImportsListItem",
    members = {
        ImportId = {
            type = "string",
        },
        ImportStatus = {
            type = "string",
        },
        Destinations = {
            type = "list",
            member = { type = "string" },
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
        UpdatedTimestamp = {
            type = "timestamp",
        },
    },
}

M.ListImportsOutput = {
    type = "structure",
    id = "ListImportsOutput",
    members = {
        Imports = {
            type = "list",
            member = M.ImportsListItem,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListInsightsDataType = {
    INSIGHTS_EVENTS = "InsightsEvents",
}

M.ListInsightsDataDimensionKey = {
    EVENT_ID = "EventId",
    EVENT_NAME = "EventName",
    EVENT_SOURCE = "EventSource",
}

M.ListInsightsDataInput = {
    type = "structure",
    id = "ListInsightsDataInput",
    members = {
        InsightSource = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Dimensions = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.Resource = {
    type = "structure",
    id = "Resource",
    members = {
        ResourceType = {
            type = "string",
        },
        ResourceName = {
            type = "string",
        },
    },
}

M.Event = {
    type = "structure",
    id = "Event",
    members = {
        EventId = {
            type = "string",
        },
        EventName = {
            type = "string",
        },
        ReadOnly = {
            type = "string",
        },
        AccessKeyId = {
            type = "string",
        },
        EventTime = {
            type = "timestamp",
        },
        EventSource = {
            type = "string",
        },
        Username = {
            type = "string",
        },
        Resources = {
            type = "list",
            member = M.Resource,
        },
        CloudTrailEvent = {
            type = "string",
        },
    },
}

M.ListInsightsDataOutput = {
    type = "structure",
    id = "ListInsightsDataOutput",
    members = {
        Events = {
            type = "list",
            member = M.Event,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.InsightsMetricDataType = {
    FILL_WITH_ZEROS = "FillWithZeros",
    NON_ZERO_DATA = "NonZeroData",
}

M.ListInsightsMetricDataInput = {
    type = "structure",
    id = "ListInsightsMetricDataInput",
    members = {
        TrailName = {
            type = "string",
        },
        EventSource = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EventName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InsightType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ErrorCode = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        Period = {
            type = "integer",
        },
        DataType = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListInsightsMetricDataOutput = {
    type = "structure",
    id = "ListInsightsMetricDataOutput",
    members = {
        TrailARN = {
            type = "string",
        },
        EventSource = {
            type = "string",
        },
        EventName = {
            type = "string",
        },
        InsightType = {
            type = "string",
        },
        ErrorCode = {
            type = "string",
        },
        Timestamps = {
            type = "list",
            member = { type = "timestamp" },
        },
        Values = {
            type = "list",
            member = { type = "double" },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.InvalidTimeRangeException = {
    type = "structure",
    id = "InvalidTimeRangeException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidTokenException = {
    type = "structure",
    id = "InvalidTokenException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ListPublicKeysInput = {
    type = "structure",
    id = "ListPublicKeysInput",
    members = {
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.PublicKey = {
    type = "structure",
    id = "PublicKey",
    members = {
        Value = {
            type = "blob",
        },
        ValidityStartTime = {
            type = "timestamp",
        },
        ValidityEndTime = {
            type = "timestamp",
        },
        Fingerprint = {
            type = "string",
        },
    },
}

M.ListPublicKeysOutput = {
    type = "structure",
    id = "ListPublicKeysOutput",
    members = {
        PublicKeyList = {
            type = "list",
            member = M.PublicKey,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.InvalidDateRangeException = {
    type = "structure",
    id = "InvalidDateRangeException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidQueryStatusException = {
    type = "structure",
    id = "InvalidQueryStatusException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ListQueriesInput = {
    type = "structure",
    id = "ListQueriesInput",
    members = {
        EventDataStore = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        QueryStatus = {
            type = "string",
        },
    },
}

M.Query = {
    type = "structure",
    id = "Query",
    members = {
        QueryId = {
            type = "string",
        },
        QueryStatus = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
    },
}

M.ListQueriesOutput = {
    type = "structure",
    id = "ListQueriesOutput",
    members = {
        Queries = {
            type = "list",
            member = M.Query,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTagsInput = {
    type = "structure",
    id = "ListTagsInput",
    members = {
        ResourceIdList = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ResourceTag = {
    type = "structure",
    id = "ResourceTag",
    members = {
        ResourceId = {
            type = "string",
        },
        TagsList = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.ListTagsOutput = {
    type = "structure",
    id = "ListTagsOutput",
    members = {
        ResourceTagList = {
            type = "list",
            member = M.ResourceTag,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTrailsInput = {
    type = "structure",
    id = "ListTrailsInput",
    members = {
        NextToken = {
            type = "string",
        },
    },
}

M.TrailInfo = {
    type = "structure",
    id = "TrailInfo",
    members = {
        TrailARN = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        HomeRegion = {
            type = "string",
        },
    },
}

M.ListTrailsOutput = {
    type = "structure",
    id = "ListTrailsOutput",
    members = {
        Trails = {
            type = "list",
            member = M.TrailInfo,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.InvalidEventCategoryException = {
    type = "structure",
    id = "InvalidEventCategoryException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidLookupAttributesException = {
    type = "structure",
    id = "InvalidLookupAttributesException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.EventCategory = {
    Insight = "insight",
}

M.LookupAttributeKey = {
    EVENT_ID = "EventId",
    EVENT_NAME = "EventName",
    READ_ONLY = "ReadOnly",
    USERNAME = "Username",
    RESOURCE_TYPE = "ResourceType",
    RESOURCE_NAME = "ResourceName",
    EVENT_SOURCE = "EventSource",
    ACCESS_KEY_ID = "AccessKeyId",
}

M.LookupAttribute = {
    type = "structure",
    id = "LookupAttribute",
    members = {
        AttributeKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AttributeValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.LookupEventsInput = {
    type = "structure",
    id = "LookupEventsInput",
    members = {
        LookupAttributes = {
            type = "list",
            member = M.LookupAttribute,
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        EventCategory = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.LookupEventsOutput = {
    type = "structure",
    id = "LookupEventsOutput",
    members = {
        Events = {
            type = "list",
            member = M.Event,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.InsufficientIAMAccessPermissionException = {
    type = "structure",
    id = "InsufficientIAMAccessPermissionException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.PutEventConfigurationInput = {
    type = "structure",
    id = "PutEventConfigurationInput",
    members = {
        TrailName = {
            type = "string",
        },
        EventDataStore = {
            type = "string",
        },
        MaxEventSize = {
            type = "string",
        },
        ContextKeySelectors = {
            type = "list",
            member = M.ContextKeySelector,
        },
        AggregationConfigurations = {
            type = "list",
            member = M.AggregationConfiguration,
        },
    },
}

M.PutEventConfigurationOutput = {
    type = "structure",
    id = "PutEventConfigurationOutput",
    members = {
        TrailARN = {
            type = "string",
        },
        EventDataStoreArn = {
            type = "string",
        },
        MaxEventSize = {
            type = "string",
        },
        ContextKeySelectors = {
            type = "list",
            member = M.ContextKeySelector,
        },
        AggregationConfigurations = {
            type = "list",
            member = M.AggregationConfiguration,
        },
    },
}

M.PutEventSelectorsInput = {
    type = "structure",
    id = "PutEventSelectorsInput",
    members = {
        TrailName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EventSelectors = {
            type = "list",
            member = M.EventSelector,
        },
        AdvancedEventSelectors = {
            type = "list",
            member = M.AdvancedEventSelector,
        },
    },
}

M.PutEventSelectorsOutput = {
    type = "structure",
    id = "PutEventSelectorsOutput",
    members = {
        TrailARN = {
            type = "string",
        },
        EventSelectors = {
            type = "list",
            member = M.EventSelector,
        },
        AdvancedEventSelectors = {
            type = "list",
            member = M.AdvancedEventSelector,
        },
    },
}

M.InvalidInsightSelectorsException = {
    type = "structure",
    id = "InvalidInsightSelectorsException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.PutInsightSelectorsInput = {
    type = "structure",
    id = "PutInsightSelectorsInput",
    members = {
        TrailName = {
            type = "string",
        },
        InsightSelectors = {
            type = "list",
            member = M.InsightSelector,
            traits = {
                required = true,
            },
        },
        EventDataStore = {
            type = "string",
        },
        InsightsDestination = {
            type = "string",
        },
    },
}

M.PutInsightSelectorsOutput = {
    type = "structure",
    id = "PutInsightSelectorsOutput",
    members = {
        TrailARN = {
            type = "string",
        },
        InsightSelectors = {
            type = "list",
            member = M.InsightSelector,
        },
        EventDataStoreArn = {
            type = "string",
        },
        InsightsDestination = {
            type = "string",
        },
    },
}

M.PutResourcePolicyInput = {
    type = "structure",
    id = "PutResourcePolicyInput",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourcePolicy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutResourcePolicyOutput = {
    type = "structure",
    id = "PutResourcePolicyOutput",
    members = {
        ResourceArn = {
            type = "string",
        },
        ResourcePolicy = {
            type = "string",
        },
        DelegatedAdminResourcePolicy = {
            type = "string",
        },
    },
}

M.ResourcePolicyNotValidException = {
    type = "structure",
    id = "ResourcePolicyNotValidException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DelegatedAdminAccountLimitExceededException = {
    type = "structure",
    id = "DelegatedAdminAccountLimitExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.RegisterOrganizationDelegatedAdminInput = {
    type = "structure",
    id = "RegisterOrganizationDelegatedAdminInput",
    members = {
        MemberAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RegisterOrganizationDelegatedAdminOutput = {
    type = "structure",
    id = "RegisterOrganizationDelegatedAdminOutput",
}

M.RemoveTagsInput = {
    type = "structure",
    id = "RemoveTagsInput",
    members = {
        ResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagsList = {
            type = "list",
            member = M.Tag,
            traits = {
                required = true,
            },
        },
    },
}

M.RemoveTagsOutput = {
    type = "structure",
    id = "RemoveTagsOutput",
}

M.RestoreEventDataStoreInput = {
    type = "structure",
    id = "RestoreEventDataStoreInput",
    members = {
        EventDataStore = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RestoreEventDataStoreOutput = {
    type = "structure",
    id = "RestoreEventDataStoreOutput",
    members = {
        EventDataStoreArn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        AdvancedEventSelectors = {
            type = "list",
            member = M.AdvancedEventSelector,
        },
        MultiRegionEnabled = {
            type = "boolean",
        },
        OrganizationEnabled = {
            type = "boolean",
        },
        RetentionPeriod = {
            type = "integer",
        },
        TerminationProtectionEnabled = {
            type = "boolean",
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
        UpdatedTimestamp = {
            type = "timestamp",
        },
        KmsKeyId = {
            type = "string",
        },
        BillingMode = {
            type = "string",
        },
    },
}

M.SearchSampleQueriesInput = {
    type = "structure",
    id = "SearchSampleQueriesInput",
    members = {
        SearchPhrase = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.SearchSampleQueriesSearchResult = {
    type = "structure",
    id = "SearchSampleQueriesSearchResult",
    members = {
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        SQL = {
            type = "string",
        },
        Relevance = {
            type = "float",
            traits = {
                default = 0,
            },
        },
    },
}

M.SearchSampleQueriesOutput = {
    type = "structure",
    id = "SearchSampleQueriesOutput",
    members = {
        SearchResults = {
            type = "list",
            member = M.SearchSampleQueriesSearchResult,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.StartDashboardRefreshInput = {
    type = "structure",
    id = "StartDashboardRefreshInput",
    members = {
        DashboardId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        QueryParameterValues = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.StartDashboardRefreshOutput = {
    type = "structure",
    id = "StartDashboardRefreshOutput",
    members = {
        RefreshId = {
            type = "string",
        },
    },
}

M.StartEventDataStoreIngestionInput = {
    type = "structure",
    id = "StartEventDataStoreIngestionInput",
    members = {
        EventDataStore = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartEventDataStoreIngestionOutput = {
    type = "structure",
    id = "StartEventDataStoreIngestionOutput",
}

M.InvalidImportSourceException = {
    type = "structure",
    id = "InvalidImportSourceException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.StartImportInput = {
    type = "structure",
    id = "StartImportInput",
    members = {
        Destinations = {
            type = "list",
            member = { type = "string" },
        },
        ImportSource = M.ImportSource,
        StartEventTime = {
            type = "timestamp",
        },
        EndEventTime = {
            type = "timestamp",
        },
        ImportId = {
            type = "string",
        },
    },
}

M.StartImportOutput = {
    type = "structure",
    id = "StartImportOutput",
    members = {
        ImportId = {
            type = "string",
        },
        Destinations = {
            type = "list",
            member = { type = "string" },
        },
        ImportSource = M.ImportSource,
        StartEventTime = {
            type = "timestamp",
        },
        EndEventTime = {
            type = "timestamp",
        },
        ImportStatus = {
            type = "string",
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
        UpdatedTimestamp = {
            type = "timestamp",
        },
    },
}

M.StartLoggingInput = {
    type = "structure",
    id = "StartLoggingInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartLoggingOutput = {
    type = "structure",
    id = "StartLoggingOutput",
}

M.MaxConcurrentQueriesException = {
    type = "structure",
    id = "MaxConcurrentQueriesException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.StartQueryInput = {
    type = "structure",
    id = "StartQueryInput",
    members = {
        QueryStatement = {
            type = "string",
        },
        DeliveryS3Uri = {
            type = "string",
        },
        QueryAlias = {
            type = "string",
        },
        QueryParameters = {
            type = "list",
            member = { type = "string" },
        },
        EventDataStoreOwnerAccountId = {
            type = "string",
        },
    },
}

M.StartQueryOutput = {
    type = "structure",
    id = "StartQueryOutput",
    members = {
        QueryId = {
            type = "string",
        },
        EventDataStoreOwnerAccountId = {
            type = "string",
        },
    },
}

M.StopEventDataStoreIngestionInput = {
    type = "structure",
    id = "StopEventDataStoreIngestionInput",
    members = {
        EventDataStore = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopEventDataStoreIngestionOutput = {
    type = "structure",
    id = "StopEventDataStoreIngestionOutput",
}

M.StopImportInput = {
    type = "structure",
    id = "StopImportInput",
    members = {
        ImportId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopImportOutput = {
    type = "structure",
    id = "StopImportOutput",
    members = {
        ImportId = {
            type = "string",
        },
        ImportSource = M.ImportSource,
        Destinations = {
            type = "list",
            member = { type = "string" },
        },
        ImportStatus = {
            type = "string",
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
        UpdatedTimestamp = {
            type = "timestamp",
        },
        StartEventTime = {
            type = "timestamp",
        },
        EndEventTime = {
            type = "timestamp",
        },
        ImportStatistics = M.ImportStatistics,
    },
}

M.StopLoggingInput = {
    type = "structure",
    id = "StopLoggingInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopLoggingOutput = {
    type = "structure",
    id = "StopLoggingOutput",
}

M.UpdateChannelInput = {
    type = "structure",
    id = "UpdateChannelInput",
    members = {
        Channel = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Destinations = {
            type = "list",
            member = M.Destination,
        },
        Name = {
            type = "string",
        },
    },
}

M.UpdateChannelOutput = {
    type = "structure",
    id = "UpdateChannelOutput",
    members = {
        ChannelArn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Source = {
            type = "string",
        },
        Destinations = {
            type = "list",
            member = M.Destination,
        },
    },
}

M.UpdateDashboardInput = {
    type = "structure",
    id = "UpdateDashboardInput",
    members = {
        DashboardId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Widgets = {
            type = "list",
            member = M.RequestWidget,
        },
        RefreshSchedule = M.RefreshSchedule,
        TerminationProtectionEnabled = {
            type = "boolean",
        },
    },
}

M.UpdateDashboardOutput = {
    type = "structure",
    id = "UpdateDashboardOutput",
    members = {
        DashboardArn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Widgets = {
            type = "list",
            member = M.Widget,
        },
        RefreshSchedule = M.RefreshSchedule,
        TerminationProtectionEnabled = {
            type = "boolean",
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
        UpdatedTimestamp = {
            type = "timestamp",
        },
    },
}

M.UpdateEventDataStoreInput = {
    type = "structure",
    id = "UpdateEventDataStoreInput",
    members = {
        EventDataStore = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        AdvancedEventSelectors = {
            type = "list",
            member = M.AdvancedEventSelector,
        },
        MultiRegionEnabled = {
            type = "boolean",
        },
        OrganizationEnabled = {
            type = "boolean",
        },
        RetentionPeriod = {
            type = "integer",
        },
        TerminationProtectionEnabled = {
            type = "boolean",
        },
        KmsKeyId = {
            type = "string",
        },
        BillingMode = {
            type = "string",
        },
    },
}

M.UpdateEventDataStoreOutput = {
    type = "structure",
    id = "UpdateEventDataStoreOutput",
    members = {
        EventDataStoreArn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        AdvancedEventSelectors = {
            type = "list",
            member = M.AdvancedEventSelector,
        },
        MultiRegionEnabled = {
            type = "boolean",
        },
        OrganizationEnabled = {
            type = "boolean",
        },
        RetentionPeriod = {
            type = "integer",
        },
        TerminationProtectionEnabled = {
            type = "boolean",
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
        UpdatedTimestamp = {
            type = "timestamp",
        },
        KmsKeyId = {
            type = "string",
        },
        BillingMode = {
            type = "string",
        },
        FederationStatus = {
            type = "string",
        },
        FederationRoleArn = {
            type = "string",
        },
    },
}

M.UpdateTrailInput = {
    type = "structure",
    id = "UpdateTrailInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        S3BucketName = {
            type = "string",
        },
        S3KeyPrefix = {
            type = "string",
        },
        SnsTopicName = {
            type = "string",
        },
        IncludeGlobalServiceEvents = {
            type = "boolean",
        },
        IsMultiRegionTrail = {
            type = "boolean",
        },
        EnableLogFileValidation = {
            type = "boolean",
        },
        CloudWatchLogsLogGroupArn = {
            type = "string",
        },
        CloudWatchLogsRoleArn = {
            type = "string",
        },
        KmsKeyId = {
            type = "string",
        },
        IsOrganizationTrail = {
            type = "boolean",
        },
    },
}

M.UpdateTrailOutput = {
    type = "structure",
    id = "UpdateTrailOutput",
    members = {
        Name = {
            type = "string",
        },
        S3BucketName = {
            type = "string",
        },
        S3KeyPrefix = {
            type = "string",
        },
        SnsTopicName = {
            type = "string",
        },
        SnsTopicARN = {
            type = "string",
        },
        IncludeGlobalServiceEvents = {
            type = "boolean",
        },
        IsMultiRegionTrail = {
            type = "boolean",
        },
        TrailARN = {
            type = "string",
        },
        LogFileValidationEnabled = {
            type = "boolean",
        },
        CloudWatchLogsLogGroupArn = {
            type = "string",
        },
        CloudWatchLogsRoleArn = {
            type = "string",
        },
        KmsKeyId = {
            type = "string",
        },
        IsOrganizationTrail = {
            type = "boolean",
        },
    },
}

return M
