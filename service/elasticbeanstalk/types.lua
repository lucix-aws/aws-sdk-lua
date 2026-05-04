local M = {}

M.AbortEnvironmentUpdateInput = {
    type = "structure",
    id = "AbortEnvironmentUpdateInput",
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
    id = "AbortEnvironmentUpdateOutput",
}

M.InsufficientPrivilegesException = {
    type = "structure",
    id = "InsufficientPrivilegesException",
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
    id = "MaxAgeRule",
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
    id = "MaxCountRule",
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
    id = "ApplicationVersionLifecycleConfig",
    members = {
        MaxCountRule = M.MaxCountRule,
        MaxAgeRule = M.MaxAgeRule,
    },
}

M.ApplicationResourceLifecycleConfig = {
    type = "structure",
    id = "ApplicationResourceLifecycleConfig",
    members = {
        ServiceRole = {
            type = "string",
        },
        VersionLifecycleConfig = M.ApplicationVersionLifecycleConfig,
    },
}

M.ApplicationDescription = {
    type = "structure",
    id = "ApplicationDescription",
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
    id = "Latency",
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
    id = "StatusCodes",
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
    id = "ApplicationMetrics",
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
    id = "SourceBuildInformation",
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
    id = "S3Location",
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
    id = "ApplicationVersionDescription",
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
    id = "ApplyEnvironmentManagedActionInput",
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
    id = "ApplyEnvironmentManagedActionOutput",
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
    id = "ElasticBeanstalkServiceException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ManagedActionInvalidStateException = {
    type = "structure",
    id = "ManagedActionInvalidStateException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AssociateEnvironmentOperationsRoleInput = {
    type = "structure",
    id = "AssociateEnvironmentOperationsRoleInput",
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
    id = "AssociateEnvironmentOperationsRoleOutput",
}

M.AutoScalingGroup = {
    type = "structure",
    id = "AutoScalingGroup",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.SolutionStackDescription = {
    type = "structure",
    id = "SolutionStackDescription",
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
    id = "CheckDNSAvailabilityInput",
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
    id = "CheckDNSAvailabilityOutput",
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
    id = "ComposeEnvironmentsInput",
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
    id = "EnvironmentLink",
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
    id = "Listener",
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
    id = "LoadBalancerDescription",
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
    id = "EnvironmentResourcesDescription",
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
    id = "EnvironmentTier",
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
    id = "EnvironmentDescription",
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
    id = "ComposeEnvironmentsOutput",
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
    id = "TooManyEnvironmentsException",
    error = "client",
    members = {
        message = {
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
        },
        Value = {
            type = "string",
        },
    },
}

M.CreateApplicationInput = {
    type = "structure",
    id = "CreateApplicationInput",
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
    id = "CreateApplicationOutput",
    members = {
        Application = M.ApplicationDescription,
    },
}

M.TooManyApplicationsException = {
    type = "structure",
    id = "TooManyApplicationsException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CodeBuildNotInServiceRegionException = {
    type = "structure",
    id = "CodeBuildNotInServiceRegionException",
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
    id = "BuildConfiguration",
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
    id = "CreateApplicationVersionInput",
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
    id = "CreateApplicationVersionOutput",
    members = {
        ApplicationVersion = M.ApplicationVersionDescription,
    },
}

M.S3LocationNotInServiceRegionException = {
    type = "structure",
    id = "S3LocationNotInServiceRegionException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TooManyApplicationVersionsException = {
    type = "structure",
    id = "TooManyApplicationVersionsException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ConfigurationOptionSetting = {
    type = "structure",
    id = "ConfigurationOptionSetting",
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
    id = "SourceConfiguration",
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
    id = "CreateConfigurationTemplateInput",
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
    id = "CreateConfigurationTemplateOutput",
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
    id = "TooManyBucketsException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TooManyConfigurationTemplatesException = {
    type = "structure",
    id = "TooManyConfigurationTemplatesException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.OptionSpecification = {
    type = "structure",
    id = "OptionSpecification",
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
    id = "CreateEnvironmentInput",
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
    id = "CreateEnvironmentOutput",
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
    id = "CreatePlatformVersionInput",
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
    id = "Builder",
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
    id = "PlatformSummary",
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
    id = "CreatePlatformVersionOutput",
    members = {
        PlatformSummary = M.PlatformSummary,
        Builder = M.Builder,
    },
}

M.TooManyPlatformsException = {
    type = "structure",
    id = "TooManyPlatformsException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateStorageLocationInput = {
    type = "structure",
    id = "CreateStorageLocationInput",
}

M.CreateStorageLocationOutput = {
    type = "structure",
    id = "CreateStorageLocationOutput",
    members = {
        S3Bucket = {
            type = "string",
        },
    },
}

M.S3SubscriptionRequiredException = {
    type = "structure",
    id = "S3SubscriptionRequiredException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteApplicationInput = {
    type = "structure",
    id = "DeleteApplicationInput",
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
    id = "DeleteApplicationOutput",
}

M.OperationInProgressException = {
    type = "structure",
    id = "OperationInProgressException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteApplicationVersionInput = {
    type = "structure",
    id = "DeleteApplicationVersionInput",
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
    id = "DeleteApplicationVersionOutput",
}

M.SourceBundleDeletionException = {
    type = "structure",
    id = "SourceBundleDeletionException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteConfigurationTemplateInput = {
    type = "structure",
    id = "DeleteConfigurationTemplateInput",
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
    id = "DeleteConfigurationTemplateOutput",
}

M.DeleteEnvironmentConfigurationInput = {
    type = "structure",
    id = "DeleteEnvironmentConfigurationInput",
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
    id = "DeleteEnvironmentConfigurationOutput",
}

M.DeletePlatformVersionInput = {
    type = "structure",
    id = "DeletePlatformVersionInput",
    members = {
        PlatformArn = {
            type = "string",
        },
    },
}

M.DeletePlatformVersionOutput = {
    type = "structure",
    id = "DeletePlatformVersionOutput",
    members = {
        PlatformSummary = M.PlatformSummary,
    },
}

M.PlatformVersionStillReferencedException = {
    type = "structure",
    id = "PlatformVersionStillReferencedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DescribeAccountAttributesInput = {
    type = "structure",
    id = "DescribeAccountAttributesInput",
}

M.ResourceQuota = {
    type = "structure",
    id = "ResourceQuota",
    members = {
        Maximum = {
            type = "integer",
        },
    },
}

M.ResourceQuotas = {
    type = "structure",
    id = "ResourceQuotas",
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
    id = "DescribeAccountAttributesOutput",
    members = {
        ResourceQuotas = M.ResourceQuotas,
    },
}

M.DescribeApplicationsInput = {
    type = "structure",
    id = "DescribeApplicationsInput",
    members = {
        ApplicationNames = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeApplicationsOutput = {
    type = "structure",
    id = "DescribeApplicationsOutput",
    members = {
        Applications = {
            type = "list",
            member = M.ApplicationDescription,
        },
    },
}

M.DescribeApplicationVersionsInput = {
    type = "structure",
    id = "DescribeApplicationVersionsInput",
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
    id = "DescribeApplicationVersionsOutput",
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
    id = "DescribeConfigurationOptionsInput",
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
    id = "OptionRestrictionRegex",
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
    id = "ConfigurationOptionDescription",
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
    id = "DescribeConfigurationOptionsOutput",
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
    id = "DescribeConfigurationSettingsInput",
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
    id = "ConfigurationSettingsDescription",
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
    id = "DescribeConfigurationSettingsOutput",
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
    id = "DescribeEnvironmentHealthInput",
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
    id = "InstanceHealthSummary",
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
    id = "DescribeEnvironmentHealthOutput",
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
    id = "InvalidRequestException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DescribeEnvironmentManagedActionHistoryInput = {
    type = "structure",
    id = "DescribeEnvironmentManagedActionHistoryInput",
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
    id = "ManagedActionHistoryItem",
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
    id = "DescribeEnvironmentManagedActionHistoryOutput",
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
    id = "DescribeEnvironmentManagedActionsInput",
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
    id = "ManagedAction",
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
    id = "DescribeEnvironmentManagedActionsOutput",
    members = {
        ManagedActions = {
            type = "list",
            member = M.ManagedAction,
        },
    },
}

M.DescribeEnvironmentResourcesInput = {
    type = "structure",
    id = "DescribeEnvironmentResourcesInput",
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
    id = "Instance",
    members = {
        Id = {
            type = "string",
        },
    },
}

M.LaunchConfiguration = {
    type = "structure",
    id = "LaunchConfiguration",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.LaunchTemplate = {
    type = "structure",
    id = "LaunchTemplate",
    members = {
        Id = {
            type = "string",
        },
    },
}

M.LoadBalancer = {
    type = "structure",
    id = "LoadBalancer",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.Queue = {
    type = "structure",
    id = "Queue",
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
    id = "Trigger",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.EnvironmentResourceDescription = {
    type = "structure",
    id = "EnvironmentResourceDescription",
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
    id = "DescribeEnvironmentResourcesOutput",
    members = {
        EnvironmentResources = M.EnvironmentResourceDescription,
    },
}

M.DescribeEnvironmentsInput = {
    type = "structure",
    id = "DescribeEnvironmentsInput",
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
    id = "DescribeEnvironmentsOutput",
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
    id = "DescribeEventsInput",
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
    id = "EventDescription",
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
    id = "DescribeEventsOutput",
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
    id = "DescribeInstancesHealthInput",
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
    id = "Deployment",
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
    id = "CPUUtilization",
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
    id = "SystemStatus",
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
    id = "SingleInstanceHealth",
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
    id = "DescribeInstancesHealthOutput",
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
    id = "DescribePlatformVersionInput",
    members = {
        PlatformArn = {
            type = "string",
        },
    },
}

M.CustomAmi = {
    type = "structure",
    id = "CustomAmi",
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
    id = "PlatformFramework",
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
    id = "PlatformProgrammingLanguage",
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
    id = "PlatformDescription",
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
    id = "DescribePlatformVersionOutput",
    members = {
        PlatformDescription = M.PlatformDescription,
    },
}

M.DisassociateEnvironmentOperationsRoleInput = {
    type = "structure",
    id = "DisassociateEnvironmentOperationsRoleInput",
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
    id = "DisassociateEnvironmentOperationsRoleOutput",
}

M.ListAvailableSolutionStacksInput = {
    type = "structure",
    id = "ListAvailableSolutionStacksInput",
}

M.ListAvailableSolutionStacksOutput = {
    type = "structure",
    id = "ListAvailableSolutionStacksOutput",
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
    id = "SearchFilter",
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
    id = "ListPlatformBranchesInput",
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
    id = "PlatformBranchSummary",
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
    id = "ListPlatformBranchesOutput",
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
    id = "PlatformFilter",
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
    id = "ListPlatformVersionsInput",
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
    id = "ListPlatformVersionsOutput",
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
    id = "ListTagsForResourceInput",
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
    id = "ListTagsForResourceOutput",
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
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResourceTypeNotSupportedException = {
    type = "structure",
    id = "ResourceTypeNotSupportedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RebuildEnvironmentInput = {
    type = "structure",
    id = "RebuildEnvironmentInput",
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
    id = "RebuildEnvironmentOutput",
}

M.EnvironmentInfoType = {
    tail = "tail",
    bundle = "bundle",
    analyze = "analyze",
}

M.RequestEnvironmentInfoInput = {
    type = "structure",
    id = "RequestEnvironmentInfoInput",
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
    id = "RequestEnvironmentInfoOutput",
}

M.RestartAppServerInput = {
    type = "structure",
    id = "RestartAppServerInput",
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
    id = "RestartAppServerOutput",
}

M.RetrieveEnvironmentInfoInput = {
    type = "structure",
    id = "RetrieveEnvironmentInfoInput",
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
    id = "EnvironmentInfoDescription",
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
    id = "RetrieveEnvironmentInfoOutput",
    members = {
        EnvironmentInfo = {
            type = "list",
            member = M.EnvironmentInfoDescription,
        },
    },
}

M.SwapEnvironmentCNAMEsInput = {
    type = "structure",
    id = "SwapEnvironmentCNAMEsInput",
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
    id = "SwapEnvironmentCNAMEsOutput",
}

M.TerminateEnvironmentInput = {
    type = "structure",
    id = "TerminateEnvironmentInput",
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
    id = "TerminateEnvironmentOutput",
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
    id = "UpdateApplicationInput",
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
    id = "UpdateApplicationOutput",
    members = {
        Application = M.ApplicationDescription,
    },
}

M.UpdateApplicationResourceLifecycleInput = {
    type = "structure",
    id = "UpdateApplicationResourceLifecycleInput",
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
    id = "UpdateApplicationResourceLifecycleOutput",
    members = {
        ApplicationName = {
            type = "string",
        },
        ResourceLifecycleConfig = M.ApplicationResourceLifecycleConfig,
    },
}

M.UpdateApplicationVersionInput = {
    type = "structure",
    id = "UpdateApplicationVersionInput",
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
    id = "UpdateApplicationVersionOutput",
    members = {
        ApplicationVersion = M.ApplicationVersionDescription,
    },
}

M.UpdateConfigurationTemplateInput = {
    type = "structure",
    id = "UpdateConfigurationTemplateInput",
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
    id = "UpdateConfigurationTemplateOutput",
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
    id = "UpdateEnvironmentInput",
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
    id = "UpdateEnvironmentOutput",
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
    id = "TooManyTagsException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UpdateTagsForResourceInput = {
    type = "structure",
    id = "UpdateTagsForResourceInput",
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
    id = "UpdateTagsForResourceOutput",
}

M.ValidateConfigurationSettingsInput = {
    type = "structure",
    id = "ValidateConfigurationSettingsInput",
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
    id = "ValidationMessage",
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
    id = "ValidateConfigurationSettingsOutput",
    members = {
        Messages = {
            type = "list",
            member = M.ValidationMessage,
        },
    },
}

return M
