local M = {}

M.AbortEnvironmentUpdateInput = {
    type = "structure",
    members = {
        EnvironmentId = {
            type = "string",
        },
        EnvironmentName = {
            type = "string",
        },
    },
}

M.AbortEnvironmentUpdateOutput = {
    type = "structure",
}

M.InsufficientPrivilegesException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ActionHistoryStatus = {
    Completed = "Completed",
    Failed = "Failed",
    Unknown = "Unknown",
}

M.ActionStatus = {
    Scheduled = "Scheduled",
    Pending = "Pending",
    Running = "Running",
    Unknown = "Unknown",
}

M.ActionType = {
    InstanceRefresh = "InstanceRefresh",
    PlatformUpdate = "PlatformUpdate",
    Unknown = "Unknown",
}

M.MaxAgeRule = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        MaxAgeInDays = {
            type = "integer",
        },
        DeleteSourceFromS3 = {
            type = "boolean",
        },
    },
}

M.MaxCountRule = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        MaxCount = {
            type = "integer",
        },
        DeleteSourceFromS3 = {
            type = "boolean",
        },
    },
}

M.ApplicationVersionLifecycleConfig = {
    type = "structure",
    members = {
        MaxCountRule = M.MaxCountRule,
        MaxAgeRule = M.MaxAgeRule,
    },
}

M.ApplicationResourceLifecycleConfig = {
    type = "structure",
    members = {
        ServiceRole = {
            type = "string",
        },
        VersionLifecycleConfig = M.ApplicationVersionLifecycleConfig,
    },
}

M.ApplicationDescription = {
    type = "structure",
    members = {
        ApplicationArn = {
            type = "string",
        },
        ApplicationName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        DateCreated = {
            type = "timestamp",
        },
        DateUpdated = {
            type = "timestamp",
        },
        Versions = {
            type = "list",
            member = { type = "string" },
        },
        ConfigurationTemplates = {
            type = "list",
            member = { type = "string" },
        },
        ResourceLifecycleConfig = M.ApplicationResourceLifecycleConfig,
    },
}

M.Latency = {
    type = "structure",
    members = {
        P999 = {
            type = "double",
        },
        P99 = {
            type = "double",
        },
        P95 = {
            type = "double",
        },
        P90 = {
            type = "double",
        },
        P85 = {
            type = "double",
        },
        P75 = {
            type = "double",
        },
        P50 = {
            type = "double",
        },
        P10 = {
            type = "double",
        },
    },
}

M.StatusCodes = {
    type = "structure",
    members = {
        Status2xx = {
            type = "integer",
        },
        Status3xx = {
            type = "integer",
        },
        Status4xx = {
            type = "integer",
        },
        Status5xx = {
            type = "integer",
        },
    },
}

M.ApplicationMetrics = {
    type = "structure",
    members = {
        Duration = {
            type = "integer",
        },
        RequestCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        StatusCodes = M.StatusCodes,
        Latency = M.Latency,
    },
}

M.SourceRepository = {
    CodeCommit = "CodeCommit",
    S3 = "S3",
}

M.SourceType = {
    Git = "Git",
    Zip = "Zip",
}

M.SourceBuildInformation = {
    type = "structure",
    members = {
        SourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceRepository = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceLocation = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.S3Location = {
    type = "structure",
    members = {
        S3Bucket = {
            type = "string",
        },
        S3Key = {
            type = "string",
        },
    },
}

M.ApplicationVersionStatus = {
    Processed = "Processed",
    Unprocessed = "Unprocessed",
    Failed = "Failed",
    Processing = "Processing",
    Building = "Building",
}

M.ApplicationVersionDescription = {
    type = "structure",
    members = {
        ApplicationVersionArn = {
            type = "string",
        },
        ApplicationName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        VersionLabel = {
            type = "string",
        },
        SourceBuildInformation = M.SourceBuildInformation,
        BuildArn = {
            type = "string",
        },
        SourceBundle = M.S3Location,
        DateCreated = {
            type = "timestamp",
        },
        DateUpdated = {
            type = "timestamp",
        },
        Status = {
            type = "string",
        },
    },
}

M.ApplyEnvironmentManagedActionInput = {
    type = "structure",
    members = {
        EnvironmentName = {
            type = "string",
        },
        EnvironmentId = {
            type = "string",
        },
        ActionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ApplyEnvironmentManagedActionOutput = {
    type = "structure",
    members = {
        ActionId = {
            type = "string",
        },
        ActionDescription = {
            type = "string",
        },
        ActionType = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.ElasticBeanstalkServiceException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ManagedActionInvalidStateException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AssociateEnvironmentOperationsRoleInput = {
    type = "structure",
    members = {
        EnvironmentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OperationsRole = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateEnvironmentOperationsRoleOutput = {
    type = "structure",
}

M.AutoScalingGroup = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.SolutionStackDescription = {
    type = "structure",
    members = {
        SolutionStackName = {
            type = "string",
        },
        PermittedFileTypes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CheckDNSAvailabilityInput = {
    type = "structure",
    members = {
        CNAMEPrefix = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CheckDNSAvailabilityOutput = {
    type = "structure",
    members = {
        Available = {
            type = "boolean",
        },
        FullyQualifiedCNAME = {
            type = "string",
        },
    },
}

M.ComposeEnvironmentsInput = {
    type = "structure",
    members = {
        ApplicationName = {
            type = "string",
        },
        GroupName = {
            type = "string",
        },
        VersionLabels = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.EnvironmentLink = {
    type = "structure",
    members = {
        LinkName = {
            type = "string",
        },
        EnvironmentName = {
            type = "string",
        },
    },
}

M.EnvironmentHealth = {
    Green = "Green",
    Yellow = "Yellow",
    Red = "Red",
    Grey = "Grey",
}

M.EnvironmentHealthStatus = {
    NoData = "NoData",
    Unknown = "Unknown",
    Pending = "Pending",
    Ok = "Ok",
    Info = "Info",
    Warning = "Warning",
    Degraded = "Degraded",
    Severe = "Severe",
    Suspended = "Suspended",
}

M.Listener = {
    type = "structure",
    members = {
        Protocol = {
            type = "string",
        },
        Port = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.LoadBalancerDescription = {
    type = "structure",
    members = {
        LoadBalancerName = {
            type = "string",
        },
        Domain = {
            type = "string",
        },
        Listeners = {
            type = "list",
            member = M.Listener,
        },
    },
}

M.EnvironmentResourcesDescription = {
    type = "structure",
    members = {
        LoadBalancer = M.LoadBalancerDescription,
    },
}

M.EnvironmentStatus = {
    Aborting = "Aborting",
    Launching = "Launching",
    Updating = "Updating",
    LinkingFrom = "LinkingFrom",
    LinkingTo = "LinkingTo",
    Ready = "Ready",
    Terminating = "Terminating",
    Terminated = "Terminated",
}

M.EnvironmentTier = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Version = {
            type = "string",
        },
    },
}

M.EnvironmentDescription = {
    type = "structure",
    members = {
        EnvironmentName = {
            type = "string",
        },
        EnvironmentId = {
            type = "string",
        },
        ApplicationName = {
            type = "string",
        },
        VersionLabel = {
            type = "string",
        },
        SolutionStackName = {
            type = "string",
        },
        PlatformArn = {
            type = "string",
        },
        TemplateName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        EndpointURL = {
            type = "string",
        },
        CNAME = {
            type = "string",
        },
        DateCreated = {
            type = "timestamp",
        },
        DateUpdated = {
            type = "timestamp",
        },
        Status = {
            type = "string",
        },
        AbortableOperationInProgress = {
            type = "boolean",
        },
        Health = {
            type = "string",
        },
        HealthStatus = {
            type = "string",
        },
        Resources = M.EnvironmentResourcesDescription,
        Tier = M.EnvironmentTier,
        EnvironmentLinks = {
            type = "list",
            member = M.EnvironmentLink,
        },
        EnvironmentArn = {
            type = "string",
        },
        OperationsRole = {
            type = "string",
        },
    },
}

M.ComposeEnvironmentsOutput = {
    type = "structure",
    members = {
        Environments = {
            type = "list",
            member = M.EnvironmentDescription,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.TooManyEnvironmentsException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.Tag = {
    type = "structure",
    members = {
        Key = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.CreateApplicationInput = {
    type = "structure",
    members = {
        ApplicationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        ResourceLifecycleConfig = M.ApplicationResourceLifecycleConfig,
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateApplicationOutput = {
    type = "structure",
    members = {
        Application = M.ApplicationDescription,
    },
}

M.TooManyApplicationsException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CodeBuildNotInServiceRegionException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ComputeType = {
    BUILD_GENERAL1_SMALL = "BUILD_GENERAL1_SMALL",
    BUILD_GENERAL1_MEDIUM = "BUILD_GENERAL1_MEDIUM",
    BUILD_GENERAL1_LARGE = "BUILD_GENERAL1_LARGE",
}

M.BuildConfiguration = {
    type = "structure",
    members = {
        ArtifactName = {
            type = "string",
        },
        CodeBuildServiceRole = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ComputeType = {
            type = "string",
        },
        Image = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TimeoutInMinutes = {
            type = "integer",
        },
    },
}

M.CreateApplicationVersionInput = {
    type = "structure",
    members = {
        ApplicationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VersionLabel = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        SourceBuildInformation = M.SourceBuildInformation,
        SourceBundle = M.S3Location,
        BuildConfiguration = M.BuildConfiguration,
        AutoCreateApplication = {
            type = "boolean",
        },
        Process = {
            type = "boolean",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateApplicationVersionOutput = {
    type = "structure",
    members = {
        ApplicationVersion = M.ApplicationVersionDescription,
    },
}

M.S3LocationNotInServiceRegionException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TooManyApplicationVersionsException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ConfigurationOptionSetting = {
    type = "structure",
    members = {
        ResourceName = {
            type = "string",
        },
        Namespace = {
            type = "string",
        },
        OptionName = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.SourceConfiguration = {
    type = "structure",
    members = {
        ApplicationName = {
            type = "string",
        },
        TemplateName = {
            type = "string",
        },
    },
}

M.CreateConfigurationTemplateInput = {
    type = "structure",
    members = {
        ApplicationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TemplateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SolutionStackName = {
            type = "string",
        },
        PlatformArn = {
            type = "string",
        },
        SourceConfiguration = M.SourceConfiguration,
        EnvironmentId = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        OptionSettings = {
            type = "list",
            member = M.ConfigurationOptionSetting,
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.ConfigurationDeploymentStatus = {
    deployed = "deployed",
    pending = "pending",
    failed = "failed",
}

M.CreateConfigurationTemplateOutput = {
    type = "structure",
    members = {
        SolutionStackName = {
            type = "string",
        },
        PlatformArn = {
            type = "string",
        },
        ApplicationName = {
            type = "string",
        },
        TemplateName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        EnvironmentName = {
            type = "string",
        },
        DeploymentStatus = {
            type = "string",
        },
        DateCreated = {
            type = "timestamp",
        },
        DateUpdated = {
            type = "timestamp",
        },
        OptionSettings = {
            type = "list",
            member = M.ConfigurationOptionSetting,
        },
    },
}

M.TooManyBucketsException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TooManyConfigurationTemplatesException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.OptionSpecification = {
    type = "structure",
    members = {
        ResourceName = {
            type = "string",
        },
        Namespace = {
            type = "string",
        },
        OptionName = {
            type = "string",
        },
    },
}

M.CreateEnvironmentInput = {
    type = "structure",
    members = {
        ApplicationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EnvironmentName = {
            type = "string",
        },
        GroupName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        CNAMEPrefix = {
            type = "string",
        },
        Tier = M.EnvironmentTier,
        Tags = {
            type = "list",
            member = M.Tag,
        },
        VersionLabel = {
            type = "string",
        },
        TemplateName = {
            type = "string",
        },
        SolutionStackName = {
            type = "string",
        },
        PlatformArn = {
            type = "string",
        },
        OptionSettings = {
            type = "list",
            member = M.ConfigurationOptionSetting,
        },
        OptionsToRemove = {
            type = "list",
            member = M.OptionSpecification,
        },
        OperationsRole = {
            type = "string",
        },
    },
}

M.CreateEnvironmentOutput = {
    type = "structure",
    members = {
        EnvironmentName = {
            type = "string",
        },
        EnvironmentId = {
            type = "string",
        },
        ApplicationName = {
            type = "string",
        },
        VersionLabel = {
            type = "string",
        },
        SolutionStackName = {
            type = "string",
        },
        PlatformArn = {
            type = "string",
        },
        TemplateName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        EndpointURL = {
            type = "string",
        },
        CNAME = {
            type = "string",
        },
        DateCreated = {
            type = "timestamp",
        },
        DateUpdated = {
            type = "timestamp",
        },
        Status = {
            type = "string",
        },
        AbortableOperationInProgress = {
            type = "boolean",
        },
        Health = {
            type = "string",
        },
        HealthStatus = {
            type = "string",
        },
        Resources = M.EnvironmentResourcesDescription,
        Tier = M.EnvironmentTier,
        EnvironmentLinks = {
            type = "list",
            member = M.EnvironmentLink,
        },
        EnvironmentArn = {
            type = "string",
        },
        OperationsRole = {
            type = "string",
        },
    },
}

M.CreatePlatformVersionInput = {
    type = "structure",
    members = {
        PlatformName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PlatformVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PlatformDefinitionBundle = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3Location }),
        EnvironmentName = {
            type = "string",
        },
        OptionSettings = {
            type = "list",
            member = M.ConfigurationOptionSetting,
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.Builder = {
    type = "structure",
    members = {
        ARN = {
            type = "string",
        },
    },
}

M.PlatformStatus = {
    Creating = "Creating",
    Failed = "Failed",
    Ready = "Ready",
    Deleting = "Deleting",
    Deleted = "Deleted",
}

M.PlatformSummary = {
    type = "structure",
    members = {
        PlatformArn = {
            type = "string",
        },
        PlatformOwner = {
            type = "string",
        },
        PlatformStatus = {
            type = "string",
        },
        PlatformCategory = {
            type = "string",
        },
        OperatingSystemName = {
            type = "string",
        },
        OperatingSystemVersion = {
            type = "string",
        },
        SupportedTierList = {
            type = "list",
            member = { type = "string" },
        },
        SupportedAddonList = {
            type = "list",
            member = { type = "string" },
        },
        PlatformLifecycleState = {
            type = "string",
        },
        PlatformVersion = {
            type = "string",
        },
        PlatformBranchName = {
            type = "string",
        },
        PlatformBranchLifecycleState = {
            type = "string",
        },
    },
}

M.CreatePlatformVersionOutput = {
    type = "structure",
    members = {
        PlatformSummary = M.PlatformSummary,
        Builder = M.Builder,
    },
}

M.TooManyPlatformsException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateStorageLocationInput = {
    type = "structure",
}

M.CreateStorageLocationOutput = {
    type = "structure",
    members = {
        S3Bucket = {
            type = "string",
        },
    },
}

M.S3SubscriptionRequiredException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteApplicationInput = {
    type = "structure",
    members = {
        ApplicationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TerminateEnvByForce = {
            type = "boolean",
        },
    },
}

M.DeleteApplicationOutput = {
    type = "structure",
}

M.OperationInProgressException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteApplicationVersionInput = {
    type = "structure",
    members = {
        ApplicationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VersionLabel = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeleteSourceBundle = {
            type = "boolean",
        },
    },
}

M.DeleteApplicationVersionOutput = {
    type = "structure",
}

M.SourceBundleDeletionException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteConfigurationTemplateInput = {
    type = "structure",
    members = {
        ApplicationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TemplateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteConfigurationTemplateOutput = {
    type = "structure",
}

M.DeleteEnvironmentConfigurationInput = {
    type = "structure",
    members = {
        ApplicationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EnvironmentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteEnvironmentConfigurationOutput = {
    type = "structure",
}

M.DeletePlatformVersionInput = {
    type = "structure",
    members = {
        PlatformArn = {
            type = "string",
        },
    },
}

M.DeletePlatformVersionOutput = {
    type = "structure",
    members = {
        PlatformSummary = M.PlatformSummary,
    },
}

M.PlatformVersionStillReferencedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DescribeAccountAttributesInput = {
    type = "structure",
}

M.ResourceQuota = {
    type = "structure",
    members = {
        Maximum = {
            type = "integer",
        },
    },
}

M.ResourceQuotas = {
    type = "structure",
    members = {
        ApplicationQuota = M.ResourceQuota,
        ApplicationVersionQuota = M.ResourceQuota,
        EnvironmentQuota = M.ResourceQuota,
        ConfigurationTemplateQuota = M.ResourceQuota,
        CustomPlatformQuota = M.ResourceQuota,
    },
}

M.DescribeAccountAttributesOutput = {
    type = "structure",
    members = {
        ResourceQuotas = M.ResourceQuotas,
    },
}

M.DescribeApplicationsInput = {
    type = "structure",
    members = {
        ApplicationNames = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeApplicationsOutput = {
    type = "structure",
    members = {
        Applications = {
            type = "list",
            member = M.ApplicationDescription,
        },
    },
}

M.DescribeApplicationVersionsInput = {
    type = "structure",
    members = {
        ApplicationName = {
            type = "string",
        },
        VersionLabels = {
            type = "list",
            member = { type = "string" },
        },
        MaxRecords = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeApplicationVersionsOutput = {
    type = "structure",
    members = {
        ApplicationVersions = {
            type = "list",
            member = M.ApplicationVersionDescription,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeConfigurationOptionsInput = {
    type = "structure",
    members = {
        ApplicationName = {
            type = "string",
        },
        TemplateName = {
            type = "string",
        },
        EnvironmentName = {
            type = "string",
        },
        SolutionStackName = {
            type = "string",
        },
        PlatformArn = {
            type = "string",
        },
        Options = {
            type = "list",
            member = M.OptionSpecification,
        },
    },
}

M.OptionRestrictionRegex = {
    type = "structure",
    members = {
        Pattern = {
            type = "string",
        },
        Label = {
            type = "string",
        },
    },
}

M.ConfigurationOptionValueType = {
    Scalar = "Scalar",
    List = "List",
}

M.ConfigurationOptionDescription = {
    type = "structure",
    members = {
        Namespace = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        DefaultValue = {
            type = "string",
        },
        ChangeSeverity = {
            type = "string",
        },
        UserDefined = {
            type = "boolean",
        },
        ValueType = {
            type = "string",
        },
        ValueOptions = {
            type = "list",
            member = { type = "string" },
        },
        MinValue = {
            type = "integer",
        },
        MaxValue = {
            type = "integer",
        },
        MaxLength = {
            type = "integer",
        },
        Regex = M.OptionRestrictionRegex,
    },
}

M.DescribeConfigurationOptionsOutput = {
    type = "structure",
    members = {
        SolutionStackName = {
            type = "string",
        },
        PlatformArn = {
            type = "string",
        },
        Options = {
            type = "list",
            member = M.ConfigurationOptionDescription,
        },
    },
}

M.DescribeConfigurationSettingsInput = {
    type = "structure",
    members = {
        ApplicationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TemplateName = {
            type = "string",
        },
        EnvironmentName = {
            type = "string",
        },
    },
}

M.ConfigurationSettingsDescription = {
    type = "structure",
    members = {
        SolutionStackName = {
            type = "string",
        },
        PlatformArn = {
            type = "string",
        },
        ApplicationName = {
            type = "string",
        },
        TemplateName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        EnvironmentName = {
            type = "string",
        },
        DeploymentStatus = {
            type = "string",
        },
        DateCreated = {
            type = "timestamp",
        },
        DateUpdated = {
            type = "timestamp",
        },
        OptionSettings = {
            type = "list",
            member = M.ConfigurationOptionSetting,
        },
    },
}

M.DescribeConfigurationSettingsOutput = {
    type = "structure",
    members = {
        ConfigurationSettings = {
            type = "list",
            member = M.ConfigurationSettingsDescription,
        },
    },
}

M.EnvironmentHealthAttribute = {
    Status = "Status",
    Color = "Color",
    Causes = "Causes",
    ApplicationMetrics = "ApplicationMetrics",
    InstancesHealth = "InstancesHealth",
    All = "All",
    HealthStatus = "HealthStatus",
    RefreshedAt = "RefreshedAt",
}

M.DescribeEnvironmentHealthInput = {
    type = "structure",
    members = {
        EnvironmentName = {
            type = "string",
        },
        EnvironmentId = {
            type = "string",
        },
        AttributeNames = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.InstanceHealthSummary = {
    type = "structure",
    members = {
        NoData = {
            type = "integer",
        },
        Unknown = {
            type = "integer",
        },
        Pending = {
            type = "integer",
        },
        Ok = {
            type = "integer",
        },
        Info = {
            type = "integer",
        },
        Warning = {
            type = "integer",
        },
        Degraded = {
            type = "integer",
        },
        Severe = {
            type = "integer",
        },
    },
}

M.DescribeEnvironmentHealthOutput = {
    type = "structure",
    members = {
        EnvironmentName = {
            type = "string",
        },
        HealthStatus = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Color = {
            type = "string",
        },
        Causes = {
            type = "list",
            member = { type = "string" },
        },
        ApplicationMetrics = M.ApplicationMetrics,
        InstancesHealth = M.InstanceHealthSummary,
        RefreshedAt = {
            type = "timestamp",
        },
    },
}

M.InvalidRequestException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DescribeEnvironmentManagedActionHistoryInput = {
    type = "structure",
    members = {
        EnvironmentId = {
            type = "string",
        },
        EnvironmentName = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
        },
    },
}

M.FailureType = {
    UpdateCancelled = "UpdateCancelled",
    CancellationFailed = "CancellationFailed",
    RollbackFailed = "RollbackFailed",
    RollbackSuccessful = "RollbackSuccessful",
    InternalFailure = "InternalFailure",
    InvalidEnvironmentState = "InvalidEnvironmentState",
    PermissionsError = "PermissionsError",
}

M.ManagedActionHistoryItem = {
    type = "structure",
    members = {
        ActionId = {
            type = "string",
        },
        ActionType = {
            type = "string",
        },
        ActionDescription = {
            type = "string",
        },
        FailureType = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        FailureDescription = {
            type = "string",
        },
        ExecutedTime = {
            type = "timestamp",
        },
        FinishedTime = {
            type = "timestamp",
        },
    },
}

M.DescribeEnvironmentManagedActionHistoryOutput = {
    type = "structure",
    members = {
        ManagedActionHistoryItems = {
            type = "list",
            member = M.ManagedActionHistoryItem,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeEnvironmentManagedActionsInput = {
    type = "structure",
    members = {
        EnvironmentName = {
            type = "string",
        },
        EnvironmentId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.ManagedAction = {
    type = "structure",
    members = {
        ActionId = {
            type = "string",
        },
        ActionDescription = {
            type = "string",
        },
        ActionType = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        WindowStartTime = {
            type = "timestamp",
        },
    },
}

M.DescribeEnvironmentManagedActionsOutput = {
    type = "structure",
    members = {
        ManagedActions = {
            type = "list",
            member = M.ManagedAction,
        },
    },
}

M.DescribeEnvironmentResourcesInput = {
    type = "structure",
    members = {
        EnvironmentId = {
            type = "string",
        },
        EnvironmentName = {
            type = "string",
        },
    },
}

M.Instance = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
    },
}

M.LaunchConfiguration = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.LaunchTemplate = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
    },
}

M.LoadBalancer = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.Queue = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        URL = {
            type = "string",
        },
    },
}

M.Trigger = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.EnvironmentResourceDescription = {
    type = "structure",
    members = {
        EnvironmentName = {
            type = "string",
        },
        AutoScalingGroups = {
            type = "list",
            member = M.AutoScalingGroup,
        },
        Instances = {
            type = "list",
            member = M.Instance,
        },
        LaunchConfigurations = {
            type = "list",
            member = M.LaunchConfiguration,
        },
        LaunchTemplates = {
            type = "list",
            member = M.LaunchTemplate,
        },
        LoadBalancers = {
            type = "list",
            member = M.LoadBalancer,
        },
        Triggers = {
            type = "list",
            member = M.Trigger,
        },
        Queues = {
            type = "list",
            member = M.Queue,
        },
    },
}

M.DescribeEnvironmentResourcesOutput = {
    type = "structure",
    members = {
        EnvironmentResources = M.EnvironmentResourceDescription,
    },
}

M.DescribeEnvironmentsInput = {
    type = "structure",
    members = {
        ApplicationName = {
            type = "string",
        },
        VersionLabel = {
            type = "string",
        },
        EnvironmentIds = {
            type = "list",
            member = { type = "string" },
        },
        EnvironmentNames = {
            type = "list",
            member = { type = "string" },
        },
        IncludeDeleted = {
            type = "boolean",
        },
        IncludedDeletedBackTo = {
            type = "timestamp",
        },
        MaxRecords = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeEnvironmentsOutput = {
    type = "structure",
    members = {
        Environments = {
            type = "list",
            member = M.EnvironmentDescription,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.EventSeverity = {
    TRACE = "TRACE",
    DEBUG = "DEBUG",
    INFO = "INFO",
    WARN = "WARN",
    ERROR = "ERROR",
    FATAL = "FATAL",
}

M.DescribeEventsInput = {
    type = "structure",
    members = {
        ApplicationName = {
            type = "string",
        },
        VersionLabel = {
            type = "string",
        },
        TemplateName = {
            type = "string",
        },
        EnvironmentId = {
            type = "string",
        },
        EnvironmentName = {
            type = "string",
        },
        PlatformArn = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Severity = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        MaxRecords = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.EventDescription = {
    type = "structure",
    members = {
        EventDate = {
            type = "timestamp",
        },
        Message = {
            type = "string",
        },
        ApplicationName = {
            type = "string",
        },
        VersionLabel = {
            type = "string",
        },
        TemplateName = {
            type = "string",
        },
        EnvironmentName = {
            type = "string",
        },
        PlatformArn = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Severity = {
            type = "string",
        },
    },
}

M.DescribeEventsOutput = {
    type = "structure",
    members = {
        Events = {
            type = "list",
            member = M.EventDescription,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.InstancesHealthAttribute = {
    HealthStatus = "HealthStatus",
    Color = "Color",
    Causes = "Causes",
    ApplicationMetrics = "ApplicationMetrics",
    RefreshedAt = "RefreshedAt",
    LaunchedAt = "LaunchedAt",
    System = "System",
    Deployment = "Deployment",
    AvailabilityZone = "AvailabilityZone",
    InstanceType = "InstanceType",
    All = "All",
}

M.DescribeInstancesHealthInput = {
    type = "structure",
    members = {
        EnvironmentName = {
            type = "string",
        },
        EnvironmentId = {
            type = "string",
        },
        AttributeNames = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.Deployment = {
    type = "structure",
    members = {
        VersionLabel = {
            type = "string",
        },
        DeploymentId = {
            type = "long",
        },
        Status = {
            type = "string",
        },
        DeploymentTime = {
            type = "timestamp",
        },
    },
}

M.CPUUtilization = {
    type = "structure",
    members = {
        User = {
            type = "double",
        },
        Nice = {
            type = "double",
        },
        System = {
            type = "double",
        },
        Idle = {
            type = "double",
        },
        IOWait = {
            type = "double",
        },
        IRQ = {
            type = "double",
        },
        SoftIRQ = {
            type = "double",
        },
        Privileged = {
            type = "double",
        },
    },
}

M.SystemStatus = {
    type = "structure",
    members = {
        CPUUtilization = M.CPUUtilization,
        LoadAverage = {
            type = "list",
            member = { type = "double" },
        },
    },
}

M.SingleInstanceHealth = {
    type = "structure",
    members = {
        InstanceId = {
            type = "string",
        },
        HealthStatus = {
            type = "string",
        },
        Color = {
            type = "string",
        },
        Causes = {
            type = "list",
            member = { type = "string" },
        },
        LaunchedAt = {
            type = "timestamp",
        },
        ApplicationMetrics = M.ApplicationMetrics,
        System = M.SystemStatus,
        Deployment = M.Deployment,
        AvailabilityZone = {
            type = "string",
        },
        InstanceType = {
            type = "string",
        },
    },
}

M.DescribeInstancesHealthOutput = {
    type = "structure",
    members = {
        InstanceHealthList = {
            type = "list",
            member = M.SingleInstanceHealth,
        },
        RefreshedAt = {
            type = "timestamp",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribePlatformVersionInput = {
    type = "structure",
    members = {
        PlatformArn = {
            type = "string",
        },
    },
}

M.CustomAmi = {
    type = "structure",
    members = {
        VirtualizationType = {
            type = "string",
        },
        ImageId = {
            type = "string",
        },
    },
}

M.PlatformFramework = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Version = {
            type = "string",
        },
    },
}

M.PlatformProgrammingLanguage = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Version = {
            type = "string",
        },
    },
}

M.PlatformDescription = {
    type = "structure",
    members = {
        PlatformArn = {
            type = "string",
        },
        PlatformOwner = {
            type = "string",
        },
        PlatformName = {
            type = "string",
        },
        PlatformVersion = {
            type = "string",
        },
        SolutionStackName = {
            type = "string",
        },
        PlatformStatus = {
            type = "string",
        },
        DateCreated = {
            type = "timestamp",
        },
        DateUpdated = {
            type = "timestamp",
        },
        PlatformCategory = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Maintainer = {
            type = "string",
        },
        OperatingSystemName = {
            type = "string",
        },
        OperatingSystemVersion = {
            type = "string",
        },
        ProgrammingLanguages = {
            type = "list",
            member = M.PlatformProgrammingLanguage,
        },
        Frameworks = {
            type = "list",
            member = M.PlatformFramework,
        },
        CustomAmiList = {
            type = "list",
            member = M.CustomAmi,
        },
        SupportedTierList = {
            type = "list",
            member = { type = "string" },
        },
        SupportedAddonList = {
            type = "list",
            member = { type = "string" },
        },
        PlatformLifecycleState = {
            type = "string",
        },
        PlatformBranchName = {
            type = "string",
        },
        PlatformBranchLifecycleState = {
            type = "string",
        },
    },
}

M.DescribePlatformVersionOutput = {
    type = "structure",
    members = {
        PlatformDescription = M.PlatformDescription,
    },
}

M.DisassociateEnvironmentOperationsRoleInput = {
    type = "structure",
    members = {
        EnvironmentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateEnvironmentOperationsRoleOutput = {
    type = "structure",
}

M.ListAvailableSolutionStacksInput = {
    type = "structure",
}

M.ListAvailableSolutionStacksOutput = {
    type = "structure",
    members = {
        SolutionStacks = {
            type = "list",
            member = { type = "string" },
        },
        SolutionStackDetails = {
            type = "list",
            member = M.SolutionStackDescription,
        },
    },
}

M.SearchFilter = {
    type = "structure",
    members = {
        Attribute = {
            type = "string",
        },
        Operator = {
            type = "string",
        },
        Values = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListPlatformBranchesInput = {
    type = "structure",
    members = {
        Filters = {
            type = "list",
            member = M.SearchFilter,
        },
        MaxRecords = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.PlatformBranchSummary = {
    type = "structure",
    members = {
        PlatformName = {
            type = "string",
        },
        BranchName = {
            type = "string",
        },
        LifecycleState = {
            type = "string",
        },
        BranchOrder = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        SupportedTierList = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListPlatformBranchesOutput = {
    type = "structure",
    members = {
        PlatformBranchSummaryList = {
            type = "list",
            member = M.PlatformBranchSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.PlatformFilter = {
    type = "structure",
    members = {
        Type = {
            type = "string",
        },
        Operator = {
            type = "string",
        },
        Values = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListPlatformVersionsInput = {
    type = "structure",
    members = {
        Filters = {
            type = "list",
            member = M.PlatformFilter,
        },
        MaxRecords = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListPlatformVersionsOutput = {
    type = "structure",
    members = {
        PlatformSummaryList = {
            type = "list",
            member = M.PlatformSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
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

M.ListTagsForResourceOutput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
        },
        ResourceTags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResourceTypeNotSupportedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RebuildEnvironmentInput = {
    type = "structure",
    members = {
        EnvironmentId = {
            type = "string",
        },
        EnvironmentName = {
            type = "string",
        },
    },
}

M.RebuildEnvironmentOutput = {
    type = "structure",
}

M.EnvironmentInfoType = {
    tail = "tail",
    bundle = "bundle",
    analyze = "analyze",
}

M.RequestEnvironmentInfoInput = {
    type = "structure",
    members = {
        EnvironmentId = {
            type = "string",
        },
        EnvironmentName = {
            type = "string",
        },
        InfoType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RequestEnvironmentInfoOutput = {
    type = "structure",
}

M.RestartAppServerInput = {
    type = "structure",
    members = {
        EnvironmentId = {
            type = "string",
        },
        EnvironmentName = {
            type = "string",
        },
    },
}

M.RestartAppServerOutput = {
    type = "structure",
}

M.RetrieveEnvironmentInfoInput = {
    type = "structure",
    members = {
        EnvironmentId = {
            type = "string",
        },
        EnvironmentName = {
            type = "string",
        },
        InfoType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EnvironmentInfoDescription = {
    type = "structure",
    members = {
        InfoType = {
            type = "string",
        },
        Ec2InstanceId = {
            type = "string",
        },
        SampleTimestamp = {
            type = "timestamp",
        },
        Message = {
            type = "string",
        },
    },
}

M.RetrieveEnvironmentInfoOutput = {
    type = "structure",
    members = {
        EnvironmentInfo = {
            type = "list",
            member = M.EnvironmentInfoDescription,
        },
    },
}

M.SwapEnvironmentCNAMEsInput = {
    type = "structure",
    members = {
        SourceEnvironmentId = {
            type = "string",
        },
        SourceEnvironmentName = {
            type = "string",
        },
        DestinationEnvironmentId = {
            type = "string",
        },
        DestinationEnvironmentName = {
            type = "string",
        },
    },
}

M.SwapEnvironmentCNAMEsOutput = {
    type = "structure",
}

M.TerminateEnvironmentInput = {
    type = "structure",
    members = {
        EnvironmentId = {
            type = "string",
        },
        EnvironmentName = {
            type = "string",
        },
        TerminateResources = {
            type = "boolean",
        },
        ForceTerminate = {
            type = "boolean",
        },
    },
}

M.TerminateEnvironmentOutput = {
    type = "structure",
    members = {
        EnvironmentName = {
            type = "string",
        },
        EnvironmentId = {
            type = "string",
        },
        ApplicationName = {
            type = "string",
        },
        VersionLabel = {
            type = "string",
        },
        SolutionStackName = {
            type = "string",
        },
        PlatformArn = {
            type = "string",
        },
        TemplateName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        EndpointURL = {
            type = "string",
        },
        CNAME = {
            type = "string",
        },
        DateCreated = {
            type = "timestamp",
        },
        DateUpdated = {
            type = "timestamp",
        },
        Status = {
            type = "string",
        },
        AbortableOperationInProgress = {
            type = "boolean",
        },
        Health = {
            type = "string",
        },
        HealthStatus = {
            type = "string",
        },
        Resources = M.EnvironmentResourcesDescription,
        Tier = M.EnvironmentTier,
        EnvironmentLinks = {
            type = "list",
            member = M.EnvironmentLink,
        },
        EnvironmentArn = {
            type = "string",
        },
        OperationsRole = {
            type = "string",
        },
    },
}

M.UpdateApplicationInput = {
    type = "structure",
    members = {
        ApplicationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
    },
}

M.UpdateApplicationOutput = {
    type = "structure",
    members = {
        Application = M.ApplicationDescription,
    },
}

M.UpdateApplicationResourceLifecycleInput = {
    type = "structure",
    members = {
        ApplicationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceLifecycleConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ApplicationResourceLifecycleConfig }),
    },
}

M.UpdateApplicationResourceLifecycleOutput = {
    type = "structure",
    members = {
        ApplicationName = {
            type = "string",
        },
        ResourceLifecycleConfig = M.ApplicationResourceLifecycleConfig,
    },
}

M.UpdateApplicationVersionInput = {
    type = "structure",
    members = {
        ApplicationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VersionLabel = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
    },
}

M.UpdateApplicationVersionOutput = {
    type = "structure",
    members = {
        ApplicationVersion = M.ApplicationVersionDescription,
    },
}

M.UpdateConfigurationTemplateInput = {
    type = "structure",
    members = {
        ApplicationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TemplateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        OptionSettings = {
            type = "list",
            member = M.ConfigurationOptionSetting,
        },
        OptionsToRemove = {
            type = "list",
            member = M.OptionSpecification,
        },
    },
}

M.UpdateConfigurationTemplateOutput = {
    type = "structure",
    members = {
        SolutionStackName = {
            type = "string",
        },
        PlatformArn = {
            type = "string",
        },
        ApplicationName = {
            type = "string",
        },
        TemplateName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        EnvironmentName = {
            type = "string",
        },
        DeploymentStatus = {
            type = "string",
        },
        DateCreated = {
            type = "timestamp",
        },
        DateUpdated = {
            type = "timestamp",
        },
        OptionSettings = {
            type = "list",
            member = M.ConfigurationOptionSetting,
        },
    },
}

M.UpdateEnvironmentInput = {
    type = "structure",
    members = {
        ApplicationName = {
            type = "string",
        },
        EnvironmentId = {
            type = "string",
        },
        EnvironmentName = {
            type = "string",
        },
        GroupName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Tier = M.EnvironmentTier,
        VersionLabel = {
            type = "string",
        },
        TemplateName = {
            type = "string",
        },
        SolutionStackName = {
            type = "string",
        },
        PlatformArn = {
            type = "string",
        },
        OptionSettings = {
            type = "list",
            member = M.ConfigurationOptionSetting,
        },
        OptionsToRemove = {
            type = "list",
            member = M.OptionSpecification,
        },
    },
}

M.UpdateEnvironmentOutput = {
    type = "structure",
    members = {
        EnvironmentName = {
            type = "string",
        },
        EnvironmentId = {
            type = "string",
        },
        ApplicationName = {
            type = "string",
        },
        VersionLabel = {
            type = "string",
        },
        SolutionStackName = {
            type = "string",
        },
        PlatformArn = {
            type = "string",
        },
        TemplateName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        EndpointURL = {
            type = "string",
        },
        CNAME = {
            type = "string",
        },
        DateCreated = {
            type = "timestamp",
        },
        DateUpdated = {
            type = "timestamp",
        },
        Status = {
            type = "string",
        },
        AbortableOperationInProgress = {
            type = "boolean",
        },
        Health = {
            type = "string",
        },
        HealthStatus = {
            type = "string",
        },
        Resources = M.EnvironmentResourcesDescription,
        Tier = M.EnvironmentTier,
        EnvironmentLinks = {
            type = "list",
            member = M.EnvironmentLink,
        },
        EnvironmentArn = {
            type = "string",
        },
        OperationsRole = {
            type = "string",
        },
    },
}

M.TooManyTagsException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UpdateTagsForResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagsToAdd = {
            type = "list",
            member = M.Tag,
        },
        TagsToRemove = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UpdateTagsForResourceOutput = {
    type = "structure",
}

M.ValidateConfigurationSettingsInput = {
    type = "structure",
    members = {
        ApplicationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TemplateName = {
            type = "string",
        },
        EnvironmentName = {
            type = "string",
        },
        OptionSettings = {
            type = "list",
            member = M.ConfigurationOptionSetting,
            traits = {
                required = true,
            },
        },
    },
}

M.ValidationSeverity = {
    error = "error",
    warning = "warning",
}

M.ValidationMessage = {
    type = "structure",
    members = {
        Message = {
            type = "string",
        },
        Severity = {
            type = "string",
        },
        Namespace = {
            type = "string",
        },
        OptionName = {
            type = "string",
        },
    },
}

M.ValidateConfigurationSettingsOutput = {
    type = "structure",
    members = {
        Messages = {
            type = "list",
            member = M.ValidationMessage,
        },
    },
}

return M
