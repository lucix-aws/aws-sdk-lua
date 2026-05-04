local M = {}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AccountHasOngoingImportException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AccountNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AccountNotRegisteredException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AccountRegisteredException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.Tag = {
    type = "structure",
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
}

M.ChannelARNInvalidException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ChannelNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CloudTrailARNInvalidException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ConflictException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.EventDataStoreARNInvalidException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.EventDataStoreNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InactiveEventDataStoreException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidTagParameterException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidTrailNameException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.NoManagementAccountSLRExistsException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.NotOrganizationMasterAccountException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.OperationNotPermittedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceTypeNotSupportedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TagsLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.UnsupportedOperationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AdvancedFieldSelector = {
    type = "structure",
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
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidParameterException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.QueryIdNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CannotDelegateManagementAccountException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.Channel = {
    type = "structure",
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
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ChannelExistsForEDSException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ChannelMaxLimitExceededException = {
    type = "structure",
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
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidSourceException = {
    type = "structure",
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
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidQueryStatementException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CloudTrailAccessNotEnabledException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateEventDataStoreInput = {
    type = "structure",
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
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.EventDataStoreMaxLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InsufficientDependencyServiceAccessPermissionException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidEventSelectorsException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidKmsKeyIdException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.KmsException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.KmsKeyNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.OrganizationNotInAllFeaturesModeException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.OrganizationsNotInUseException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CloudTrailInvalidClientTokenIdException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CloudWatchLogsDeliveryUnavailableException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateTrailInput = {
    type = "structure",
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
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InsufficientSnsTopicPolicyException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidCloudWatchLogsLogGroupArnException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidCloudWatchLogsRoleArnException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidParameterCombinationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidS3BucketNameException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidS3PrefixException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidSnsTopicNameException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.KmsKeyDisabledException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.MaximumNumberOfTrailsExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.S3BucketDoesNotExistException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TrailAlreadyExistsException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TrailNotProvidedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteChannelInput = {
    type = "structure",
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
}

M.DeleteDashboardInput = {
    type = "structure",
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
}

M.DeleteEventDataStoreInput = {
    type = "structure",
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
}

M.EventDataStoreFederationEnabledException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.EventDataStoreHasOngoingImportException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.EventDataStoreTerminationProtectedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteResourcePolicyInput = {
    type = "structure",
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
}

M.ResourceARNNotValidException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourcePolicyNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteTrailInput = {
    type = "structure",
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
}

M.InvalidHomeRegionException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TrailNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeregisterOrganizationDelegatedAdminInput = {
    type = "structure",
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
}

M.NotOrganizationManagementAccountException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DescribeQueryInput = {
    type = "structure",
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
    members = {
        trailList = {
            type = "list",
            member = M.Trail,
        },
    },
}

M.ConcurrentModificationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DisableFederationInput = {
    type = "structure",
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
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.GetChannelInput = {
    type = "structure",
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
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.GetEventDataStoreInput = {
    type = "structure",
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
    members = {
        S3 = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3ImportSource }),
    },
}

M.ImportStatistics = {
    type = "structure",
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
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.GetInsightSelectorsInput = {
    type = "structure",
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
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.GetQueryResultsInput = {
    type = "structure",
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
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidNextTokenException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.GetResourcePolicyInput = {
    type = "structure",
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
    members = {
        Trail = M.Trail,
    },
}

M.GetTrailStatusInput = {
    type = "structure",
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
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidTokenException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ListPublicKeysInput = {
    type = "structure",
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
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidQueryStatusException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ListQueriesInput = {
    type = "structure",
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
    members = {
        NextToken = {
            type = "string",
        },
    },
}

M.TrailInfo = {
    type = "structure",
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
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidLookupAttributesException = {
    type = "structure",
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
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.PutEventConfigurationInput = {
    type = "structure",
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
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.PutInsightSelectorsInput = {
    type = "structure",
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
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DelegatedAdminAccountLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.RegisterOrganizationDelegatedAdminInput = {
    type = "structure",
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
}

M.RemoveTagsInput = {
    type = "structure",
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
}

M.RestoreEventDataStoreInput = {
    type = "structure",
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
    members = {
        RefreshId = {
            type = "string",
        },
    },
}

M.StartEventDataStoreIngestionInput = {
    type = "structure",
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
}

M.InvalidImportSourceException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.StartImportInput = {
    type = "structure",
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
}

M.MaxConcurrentQueriesException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.StartQueryInput = {
    type = "structure",
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
}

M.StopImportInput = {
    type = "structure",
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
}

M.UpdateChannelInput = {
    type = "structure",
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
