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
            type = "number",
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
            type = "number",
        },
        DeleteSourceFromS3 = {
            type = "boolean",
        },
    },
}

M.ApplicationVersionLifecycleConfig = {
    type = "structure",
    members = {
        MaxCountRule = {
            type = "structure",
        },
        MaxAgeRule = {
            type = "structure",
        },
    },
}

M.ApplicationResourceLifecycleConfig = {
    type = "structure",
    members = {
        ServiceRole = {
            type = "string",
        },
        VersionLifecycleConfig = {
            type = "structure",
        },
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
            member_type = "string",
        },
        ConfigurationTemplates = {
            type = "list",
            member_type = "string",
        },
        ResourceLifecycleConfig = {
            type = "structure",
        },
    },
}

M.Latency = {
    type = "structure",
    members = {
        P999 = {
            type = "number",
        },
        P99 = {
            type = "number",
        },
        P95 = {
            type = "number",
        },
        P90 = {
            type = "number",
        },
        P85 = {
            type = "number",
        },
        P75 = {
            type = "number",
        },
        P50 = {
            type = "number",
        },
        P10 = {
            type = "number",
        },
    },
}

M.StatusCodes = {
    type = "structure",
    members = {
        Status2xx = {
            type = "number",
        },
        Status3xx = {
            type = "number",
        },
        Status4xx = {
            type = "number",
        },
        Status5xx = {
            type = "number",
        },
    },
}

M.ApplicationMetrics = {
    type = "structure",
    members = {
        Duration = {
            type = "number",
        },
        RequestCount = {
            type = "number",
        },
        StatusCodes = {
            type = "structure",
        },
        Latency = {
            type = "structure",
        },
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
        SourceBuildInformation = {
            type = "structure",
        },
        BuildArn = {
            type = "string",
        },
        SourceBundle = {
            type = "structure",
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
            member_type = "string",
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
            member_type = "string",
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
            type = "number",
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
            member_type = "structure",
        },
    },
}

M.EnvironmentResourcesDescription = {
    type = "structure",
    members = {
        LoadBalancer = {
            type = "structure",
        },
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
        Resources = {
            type = "structure",
        },
        Tier = {
            type = "structure",
        },
        EnvironmentLinks = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
        ResourceLifecycleConfig = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateApplicationOutput = {
    type = "structure",
    members = {
        Application = {
            type = "structure",
        },
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
            type = "number",
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
        SourceBuildInformation = {
            type = "structure",
        },
        SourceBundle = {
            type = "structure",
        },
        BuildConfiguration = {
            type = "structure",
        },
        AutoCreateApplication = {
            type = "boolean",
        },
        Process = {
            type = "boolean",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateApplicationVersionOutput = {
    type = "structure",
    members = {
        ApplicationVersion = {
            type = "structure",
        },
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
        SourceConfiguration = {
            type = "structure",
        },
        EnvironmentId = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        OptionSettings = {
            type = "list",
            member_type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
        Tier = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
        OptionsToRemove = {
            type = "list",
            member_type = "structure",
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
        Resources = {
            type = "structure",
        },
        Tier = {
            type = "structure",
        },
        EnvironmentLinks = {
            type = "list",
            member_type = "structure",
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
        PlatformDefinitionBundle = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        EnvironmentName = {
            type = "string",
        },
        OptionSettings = {
            type = "list",
            member_type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
        },
        SupportedAddonList = {
            type = "list",
            member_type = "string",
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
        PlatformSummary = {
            type = "structure",
        },
        Builder = {
            type = "structure",
        },
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
        PlatformSummary = {
            type = "structure",
        },
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
            type = "number",
        },
    },
}

M.ResourceQuotas = {
    type = "structure",
    members = {
        ApplicationQuota = {
            type = "structure",
        },
        ApplicationVersionQuota = {
            type = "structure",
        },
        EnvironmentQuota = {
            type = "structure",
        },
        ConfigurationTemplateQuota = {
            type = "structure",
        },
        CustomPlatformQuota = {
            type = "structure",
        },
    },
}

M.DescribeAccountAttributesOutput = {
    type = "structure",
    members = {
        ResourceQuotas = {
            type = "structure",
        },
    },
}

M.DescribeApplicationsInput = {
    type = "structure",
    members = {
        ApplicationNames = {
            type = "list",
            member_type = "string",
        },
    },
}

M.DescribeApplicationsOutput = {
    type = "structure",
    members = {
        Applications = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
        },
        MaxRecords = {
            type = "number",
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
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "string",
        },
        MinValue = {
            type = "number",
        },
        MaxValue = {
            type = "number",
        },
        MaxLength = {
            type = "number",
        },
        Regex = {
            type = "structure",
        },
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
            member_type = "structure",
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
            member_type = "structure",
        },
    },
}

M.DescribeConfigurationSettingsOutput = {
    type = "structure",
    members = {
        ConfigurationSettings = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
        },
    },
}

M.InstanceHealthSummary = {
    type = "structure",
    members = {
        NoData = {
            type = "number",
        },
        Unknown = {
            type = "number",
        },
        Pending = {
            type = "number",
        },
        Ok = {
            type = "number",
        },
        Info = {
            type = "number",
        },
        Warning = {
            type = "number",
        },
        Degraded = {
            type = "number",
        },
        Severe = {
            type = "number",
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
            member_type = "string",
        },
        ApplicationMetrics = {
            type = "structure",
        },
        InstancesHealth = {
            type = "structure",
        },
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
            type = "number",
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
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
        },
        Instances = {
            type = "list",
            member_type = "structure",
        },
        LaunchConfigurations = {
            type = "list",
            member_type = "structure",
        },
        LaunchTemplates = {
            type = "list",
            member_type = "structure",
        },
        LoadBalancers = {
            type = "list",
            member_type = "structure",
        },
        Triggers = {
            type = "list",
            member_type = "structure",
        },
        Queues = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeEnvironmentResourcesOutput = {
    type = "structure",
    members = {
        EnvironmentResources = {
            type = "structure",
        },
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
            member_type = "string",
        },
        EnvironmentNames = {
            type = "list",
            member_type = "string",
        },
        IncludeDeleted = {
            type = "boolean",
        },
        IncludedDeletedBackTo = {
            type = "timestamp",
        },
        MaxRecords = {
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            member_type = "string",
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
            type = "number",
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
            type = "number",
        },
        Nice = {
            type = "number",
        },
        System = {
            type = "number",
        },
        Idle = {
            type = "number",
        },
        IOWait = {
            type = "number",
        },
        IRQ = {
            type = "number",
        },
        SoftIRQ = {
            type = "number",
        },
        Privileged = {
            type = "number",
        },
    },
}

M.SystemStatus = {
    type = "structure",
    members = {
        CPUUtilization = {
            type = "structure",
        },
        LoadAverage = {
            type = "list",
            member_type = "number",
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
            member_type = "string",
        },
        LaunchedAt = {
            type = "timestamp",
        },
        ApplicationMetrics = {
            type = "structure",
        },
        System = {
            type = "structure",
        },
        Deployment = {
            type = "structure",
        },
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
            member_type = "structure",
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
            member_type = "structure",
        },
        Frameworks = {
            type = "list",
            member_type = "structure",
        },
        CustomAmiList = {
            type = "list",
            member_type = "structure",
        },
        SupportedTierList = {
            type = "list",
            member_type = "string",
        },
        SupportedAddonList = {
            type = "list",
            member_type = "string",
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
        PlatformDescription = {
            type = "structure",
        },
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
            member_type = "string",
        },
        SolutionStackDetails = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
        },
    },
}

M.ListPlatformBranchesInput = {
    type = "structure",
    members = {
        Filters = {
            type = "list",
            member_type = "structure",
        },
        MaxRecords = {
            type = "number",
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
            type = "number",
        },
        SupportedTierList = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ListPlatformBranchesOutput = {
    type = "structure",
    members = {
        PlatformBranchSummaryList = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
        },
    },
}

M.ListPlatformVersionsInput = {
    type = "structure",
    members = {
        Filters = {
            type = "list",
            member_type = "structure",
        },
        MaxRecords = {
            type = "number",
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
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
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
        Resources = {
            type = "structure",
        },
        Tier = {
            type = "structure",
        },
        EnvironmentLinks = {
            type = "list",
            member_type = "structure",
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
        Application = {
            type = "structure",
        },
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
        ResourceLifecycleConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateApplicationResourceLifecycleOutput = {
    type = "structure",
    members = {
        ApplicationName = {
            type = "string",
        },
        ResourceLifecycleConfig = {
            type = "structure",
        },
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
        ApplicationVersion = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        OptionsToRemove = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
        Tier = {
            type = "structure",
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
            member_type = "structure",
        },
        OptionsToRemove = {
            type = "list",
            member_type = "structure",
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
        Resources = {
            type = "structure",
        },
        Tier = {
            type = "structure",
        },
        EnvironmentLinks = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
        TagsToRemove = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
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
            member_type = "structure",
        },
    },
}

return M
