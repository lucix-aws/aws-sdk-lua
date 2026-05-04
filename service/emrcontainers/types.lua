local M = {}

M.AllowAWSToRetainLogs = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.CertificateProviderType = {
    PEM = "PEM",
}

M.TLSCertificateConfiguration = {
    type = "structure",
    id = "TLSCertificateConfiguration",
    members = {
        certificateProviderType = {
            type = "string",
        },
        publicCertificateSecretArn = {
            type = "string",
        },
        privateCertificateSecretArn = {
            type = "string",
        },
    },
}

M.InTransitEncryptionConfiguration = {
    type = "structure",
    id = "InTransitEncryptionConfiguration",
    members = {
        tlsCertificateConfiguration = M.TLSCertificateConfiguration,
    },
}

M.EncryptionConfiguration = {
    type = "structure",
    id = "EncryptionConfiguration",
    members = {
        inTransitEncryptionConfiguration = M.InTransitEncryptionConfiguration,
    },
}

M.SecureNamespaceInfo = {
    type = "structure",
    id = "SecureNamespaceInfo",
    members = {
        clusterId = {
            type = "string",
        },
        namespace = {
            type = "string",
        },
    },
}

M.LakeFormationConfiguration = {
    type = "structure",
    id = "LakeFormationConfiguration",
    members = {
        authorizedSessionTagValue = {
            type = "string",
        },
        secureNamespaceInfo = M.SecureNamespaceInfo,
        queryEngineRoleArn = {
            type = "string",
        },
    },
}

M.AuthorizationConfiguration = {
    type = "structure",
    id = "AuthorizationConfiguration",
    members = {
        lakeFormationConfiguration = M.LakeFormationConfiguration,
        encryptionConfiguration = M.EncryptionConfiguration,
    },
}

M.CancelJobRunInput = {
    type = "structure",
    id = "CancelJobRunInput",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        virtualClusterId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.CancelJobRunOutput = {
    type = "structure",
    id = "CancelJobRunOutput",
    members = {
        id = {
            type = "string",
        },
        virtualClusterId = {
            type = "string",
        },
    },
}

M.InternalServerException = {
    type = "structure",
    id = "InternalServerException",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ParametricCloudWatchMonitoringConfiguration = {
    type = "structure",
    id = "ParametricCloudWatchMonitoringConfiguration",
    members = {
        logGroupName = {
            type = "string",
        },
        logStreamNamePrefix = {
            type = "string",
        },
    },
}

M.ParametricS3MonitoringConfiguration = {
    type = "structure",
    id = "ParametricS3MonitoringConfiguration",
    members = {
        logUri = {
            type = "string",
        },
    },
}

M.ParametricMonitoringConfiguration = {
    type = "structure",
    id = "ParametricMonitoringConfiguration",
    members = {
        persistentAppUI = {
            type = "string",
        },
        cloudWatchMonitoringConfiguration = M.ParametricCloudWatchMonitoringConfiguration,
        s3MonitoringConfiguration = M.ParametricS3MonitoringConfiguration,
    },
}

M.SparkSqlJobDriver = {
    type = "structure",
    id = "SparkSqlJobDriver",
    members = {
        entryPoint = {
            type = "string",
        },
        sparkSqlParameters = {
            type = "string",
        },
    },
}

M.SparkSubmitJobDriver = {
    type = "structure",
    id = "SparkSubmitJobDriver",
    members = {
        entryPoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
        entryPointArguments = {
            type = "list",
            member = { type = "string" },
        },
        sparkSubmitParameters = {
            type = "string",
        },
    },
}

M.JobDriver = {
    type = "structure",
    id = "JobDriver",
    members = {
        sparkSubmitJobDriver = M.SparkSubmitJobDriver,
        sparkSqlJobDriver = M.SparkSqlJobDriver,
    },
}

M.TemplateParameterDataType = {
    NUMBER = "NUMBER",
    STRING = "STRING",
}

M.TemplateParameterConfiguration = {
    type = "structure",
    id = "TemplateParameterConfiguration",
    members = {
        type = {
            type = "string",
        },
        defaultValue = {
            type = "string",
        },
    },
}

M.CreateJobTemplateOutput = {
    type = "structure",
    id = "CreateJobTemplateOutput",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
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

M.CloudWatchMonitoringConfiguration = {
    type = "structure",
    id = "CloudWatchMonitoringConfiguration",
    members = {
        logGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        logStreamNamePrefix = {
            type = "string",
        },
    },
}

M.ContainerLogRotationConfiguration = {
    type = "structure",
    id = "ContainerLogRotationConfiguration",
    members = {
        rotationSize = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxFilesToKeep = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.ManagedLogs = {
    type = "structure",
    id = "ManagedLogs",
    members = {
        allowAWSToRetainLogs = {
            type = "string",
        },
        encryptionKeyArn = {
            type = "string",
        },
    },
}

M.PersistentAppUI = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.S3MonitoringConfiguration = {
    type = "structure",
    id = "S3MonitoringConfiguration",
    members = {
        logUri = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MonitoringConfiguration = {
    type = "structure",
    id = "MonitoringConfiguration",
    members = {
        managedLogs = M.ManagedLogs,
        persistentAppUI = {
            type = "string",
        },
        cloudWatchMonitoringConfiguration = M.CloudWatchMonitoringConfiguration,
        s3MonitoringConfiguration = M.S3MonitoringConfiguration,
        containerLogRotationConfiguration = M.ContainerLogRotationConfiguration,
    },
}

M.CreateManagedEndpointOutput = {
    type = "structure",
    id = "CreateManagedEndpointOutput",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        virtualClusterId = {
            type = "string",
        },
    },
}

M.EksInfo = {
    type = "structure",
    id = "EksInfo",
    members = {
        namespace = {
            type = "string",
        },
        nodeLabel = {
            type = "string",
        },
    },
}

M.ContainerInfo = {
    type = "union",
    id = "ContainerInfo",
    members = {
        eksInfo = M.EksInfo,
    },
}

M.ContainerProviderType = {
    EKS = "EKS",
}

M.ContainerProvider = {
    type = "structure",
    id = "ContainerProvider",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        info = M.ContainerInfo,
    },
}

M.SecurityConfigurationData = {
    type = "structure",
    id = "SecurityConfigurationData",
    members = {
        authorizationConfiguration = M.AuthorizationConfiguration,
    },
}

M.CreateSecurityConfigurationInput = {
    type = "structure",
    id = "CreateSecurityConfigurationInput",
    members = {
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        containerProvider = M.ContainerProvider,
        securityConfigurationData = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SecurityConfigurationData }),
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateSecurityConfigurationOutput = {
    type = "structure",
    id = "CreateSecurityConfigurationOutput",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        arn = {
            type = "string",
        },
    },
}

M.CreateVirtualClusterInput = {
    type = "structure",
    id = "CreateVirtualClusterInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        containerProvider = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ContainerProvider }),
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        securityConfigurationId = {
            type = "string",
        },
    },
}

M.CreateVirtualClusterOutput = {
    type = "structure",
    id = "CreateVirtualClusterOutput",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        arn = {
            type = "string",
        },
    },
}

M.EKSRequestThrottledException = {
    type = "structure",
    id = "EKSRequestThrottledException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteJobTemplateInput = {
    type = "structure",
    id = "DeleteJobTemplateInput",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteJobTemplateOutput = {
    type = "structure",
    id = "DeleteJobTemplateOutput",
    members = {
        id = {
            type = "string",
        },
    },
}

M.DeleteManagedEndpointInput = {
    type = "structure",
    id = "DeleteManagedEndpointInput",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        virtualClusterId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteManagedEndpointOutput = {
    type = "structure",
    id = "DeleteManagedEndpointOutput",
    members = {
        id = {
            type = "string",
        },
        virtualClusterId = {
            type = "string",
        },
    },
}

M.DeleteVirtualClusterInput = {
    type = "structure",
    id = "DeleteVirtualClusterInput",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteVirtualClusterOutput = {
    type = "structure",
    id = "DeleteVirtualClusterOutput",
    members = {
        id = {
            type = "string",
        },
    },
}

M.DescribeJobRunInput = {
    type = "structure",
    id = "DescribeJobRunInput",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        virtualClusterId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.FailureReason = {
    INTERNAL_ERROR = "INTERNAL_ERROR",
    USER_ERROR = "USER_ERROR",
    VALIDATION_ERROR = "VALIDATION_ERROR",
    CLUSTER_UNAVAILABLE = "CLUSTER_UNAVAILABLE",
}

M.RetryPolicyConfiguration = {
    type = "structure",
    id = "RetryPolicyConfiguration",
    members = {
        maxAttempts = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.RetryPolicyExecution = {
    type = "structure",
    id = "RetryPolicyExecution",
    members = {
        currentAttemptCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.JobRunState = {
    PENDING = "PENDING",
    SUBMITTED = "SUBMITTED",
    RUNNING = "RUNNING",
    FAILED = "FAILED",
    CANCELLED = "CANCELLED",
    CANCEL_PENDING = "CANCEL_PENDING",
    COMPLETED = "COMPLETED",
}

M.DescribeJobTemplateInput = {
    type = "structure",
    id = "DescribeJobTemplateInput",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeManagedEndpointInput = {
    type = "structure",
    id = "DescribeManagedEndpointInput",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        virtualClusterId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.Certificate = {
    type = "structure",
    id = "Certificate",
    members = {
        certificateArn = {
            type = "string",
        },
        certificateData = {
            type = "string",
        },
    },
}

M.EndpointState = {
    CREATING = "CREATING",
    ACTIVE = "ACTIVE",
    TERMINATING = "TERMINATING",
    TERMINATED = "TERMINATED",
    TERMINATED_WITH_ERRORS = "TERMINATED_WITH_ERRORS",
}

M.DescribeSecurityConfigurationInput = {
    type = "structure",
    id = "DescribeSecurityConfigurationInput",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.SecurityConfiguration = {
    type = "structure",
    id = "SecurityConfiguration",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        createdBy = {
            type = "string",
        },
        securityConfigurationData = M.SecurityConfigurationData,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.DescribeSecurityConfigurationOutput = {
    type = "structure",
    id = "DescribeSecurityConfigurationOutput",
    members = {
        securityConfiguration = M.SecurityConfiguration,
    },
}

M.DescribeVirtualClusterInput = {
    type = "structure",
    id = "DescribeVirtualClusterInput",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.VirtualClusterState = {
    RUNNING = "RUNNING",
    TERMINATING = "TERMINATING",
    TERMINATED = "TERMINATED",
    ARRESTED = "ARRESTED",
}

M.VirtualCluster = {
    type = "structure",
    id = "VirtualCluster",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        state = {
            type = "string",
        },
        containerProvider = M.ContainerProvider,
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        securityConfigurationId = {
            type = "string",
        },
    },
}

M.DescribeVirtualClusterOutput = {
    type = "structure",
    id = "DescribeVirtualClusterOutput",
    members = {
        virtualCluster = M.VirtualCluster,
    },
}

M.GetManagedEndpointSessionCredentialsInput = {
    type = "structure",
    id = "GetManagedEndpointSessionCredentialsInput",
    members = {
        endpointIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        virtualClusterIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        executionRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        credentialType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        durationInSeconds = {
            type = "integer",
        },
        logContext = {
            type = "string",
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.Credentials = {
    type = "union",
    id = "Credentials",
    members = {
        token = {
            type = "string",
        },
    },
}

M.GetManagedEndpointSessionCredentialsOutput = {
    type = "structure",
    id = "GetManagedEndpointSessionCredentialsOutput",
    members = {
        id = {
            type = "string",
        },
        credentials = M.Credentials,
        expiresAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.RequestThrottledException = {
    type = "structure",
    id = "RequestThrottledException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ListJobRunsInput = {
    type = "structure",
    id = "ListJobRunsInput",
    members = {
        virtualClusterId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        createdBefore = {
            type = "timestamp",
            traits = {
                http_query = "createdBefore",
                timestamp_format = "date-time",
            },
        },
        createdAfter = {
            type = "timestamp",
            traits = {
                http_query = "createdAfter",
                timestamp_format = "date-time",
            },
        },
        name = {
            type = "string",
            traits = {
                http_query = "name",
            },
        },
        states = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "states",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.ListJobTemplatesInput = {
    type = "structure",
    id = "ListJobTemplatesInput",
    members = {
        createdAfter = {
            type = "timestamp",
            traits = {
                http_query = "createdAfter",
                timestamp_format = "date-time",
            },
        },
        createdBefore = {
            type = "timestamp",
            traits = {
                http_query = "createdBefore",
                timestamp_format = "date-time",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.ListManagedEndpointsInput = {
    type = "structure",
    id = "ListManagedEndpointsInput",
    members = {
        virtualClusterId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        createdBefore = {
            type = "timestamp",
            traits = {
                http_query = "createdBefore",
                timestamp_format = "date-time",
            },
        },
        createdAfter = {
            type = "timestamp",
            traits = {
                http_query = "createdAfter",
                timestamp_format = "date-time",
            },
        },
        types = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "types",
            },
        },
        states = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "states",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.ListSecurityConfigurationsInput = {
    type = "structure",
    id = "ListSecurityConfigurationsInput",
    members = {
        createdAfter = {
            type = "timestamp",
            traits = {
                http_query = "createdAfter",
                timestamp_format = "date-time",
            },
        },
        createdBefore = {
            type = "timestamp",
            traits = {
                http_query = "createdBefore",
                timestamp_format = "date-time",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.ListSecurityConfigurationsOutput = {
    type = "structure",
    id = "ListSecurityConfigurationsOutput",
    members = {
        securityConfigurations = {
            type = "list",
            member = M.SecurityConfiguration,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    id = "ListTagsForResourceInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    id = "ListTagsForResourceOutput",
    members = {
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListVirtualClustersInput = {
    type = "structure",
    id = "ListVirtualClustersInput",
    members = {
        containerProviderId = {
            type = "string",
            traits = {
                http_query = "containerProviderId",
            },
        },
        containerProviderType = {
            type = "string",
            traits = {
                http_query = "containerProviderType",
            },
        },
        createdAfter = {
            type = "timestamp",
            traits = {
                http_query = "createdAfter",
                timestamp_format = "date-time",
            },
        },
        createdBefore = {
            type = "timestamp",
            traits = {
                http_query = "createdBefore",
                timestamp_format = "date-time",
            },
        },
        states = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "states",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        eksAccessEntryIntegrated = {
            type = "boolean",
            traits = {
                http_query = "eksAccessEntryIntegrated",
            },
        },
    },
}

M.ListVirtualClustersOutput = {
    type = "structure",
    id = "ListVirtualClustersOutput",
    members = {
        virtualClusters = {
            type = "list",
            member = M.VirtualCluster,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.StartJobRunOutput = {
    type = "structure",
    id = "StartJobRunOutput",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        virtualClusterId = {
            type = "string",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceOutput = {
    type = "structure",
    id = "TagResourceOutput",
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        tagKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "tagKeys",
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
    id = "UntagResourceOutput",
}

M.Configuration = {
    type = "structure",
    id = "Configuration",
    members = {
        classification = {
            type = "string",
            traits = {
                required = true,
            },
        },
        properties = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        configurations = {
            type = "list",
            member = M.Configuration,
        },
    },
}

M.ConfigurationOverrides = {
    type = "structure",
    id = "ConfigurationOverrides",
    members = {
        applicationConfiguration = {
            type = "list",
            member = M.Configuration,
        },
        monitoringConfiguration = M.MonitoringConfiguration,
    },
}

M.ParametricConfigurationOverrides = {
    type = "structure",
    id = "ParametricConfigurationOverrides",
    members = {
        applicationConfiguration = {
            type = "list",
            member = M.Configuration,
        },
        monitoringConfiguration = M.ParametricMonitoringConfiguration,
    },
}

M.CreateManagedEndpointInput = {
    type = "structure",
    id = "CreateManagedEndpointInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        virtualClusterId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        releaseLabel = {
            type = "string",
            traits = {
                required = true,
            },
        },
        executionRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        certificateArn = {
            type = "string",
        },
        configurationOverrides = M.ConfigurationOverrides,
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.Endpoint = {
    type = "structure",
    id = "Endpoint",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        virtualClusterId = {
            type = "string",
        },
        type = {
            type = "string",
        },
        state = {
            type = "string",
        },
        releaseLabel = {
            type = "string",
        },
        executionRoleArn = {
            type = "string",
        },
        certificateArn = {
            type = "string",
        },
        certificateAuthority = M.Certificate,
        configurationOverrides = M.ConfigurationOverrides,
        serverUrl = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        securityGroup = {
            type = "string",
        },
        subnetIds = {
            type = "list",
            member = { type = "string" },
        },
        stateDetails = {
            type = "string",
        },
        failureReason = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.JobRun = {
    type = "structure",
    id = "JobRun",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        virtualClusterId = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        state = {
            type = "string",
        },
        clientToken = {
            type = "string",
        },
        executionRoleArn = {
            type = "string",
        },
        releaseLabel = {
            type = "string",
        },
        configurationOverrides = M.ConfigurationOverrides,
        jobDriver = M.JobDriver,
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        createdBy = {
            type = "string",
        },
        finishedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        stateDetails = {
            type = "string",
        },
        failureReason = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        retryPolicyConfiguration = M.RetryPolicyConfiguration,
        retryPolicyExecution = M.RetryPolicyExecution,
    },
}

M.JobTemplateData = {
    type = "structure",
    id = "JobTemplateData",
    members = {
        executionRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        releaseLabel = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configurationOverrides = M.ParametricConfigurationOverrides,
        jobDriver = setmetatable({ traits = {
            required = true,
        } }, { __index = M.JobDriver }),
        parameterConfiguration = {
            type = "map",
            key = { type = "string" },
            value = M.TemplateParameterConfiguration,
        },
        jobTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.StartJobRunInput = {
    type = "structure",
    id = "StartJobRunInput",
    members = {
        name = {
            type = "string",
        },
        virtualClusterId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
        executionRoleArn = {
            type = "string",
        },
        releaseLabel = {
            type = "string",
        },
        jobDriver = M.JobDriver,
        configurationOverrides = M.ConfigurationOverrides,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        jobTemplateId = {
            type = "string",
        },
        jobTemplateParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        retryPolicyConfiguration = M.RetryPolicyConfiguration,
    },
}

M.CreateJobTemplateInput = {
    type = "structure",
    id = "CreateJobTemplateInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
        jobTemplateData = setmetatable({ traits = {
            required = true,
        } }, { __index = M.JobTemplateData }),
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        kmsKeyArn = {
            type = "string",
        },
    },
}

M.DescribeJobRunOutput = {
    type = "structure",
    id = "DescribeJobRunOutput",
    members = {
        jobRun = M.JobRun,
    },
}

M.DescribeManagedEndpointOutput = {
    type = "structure",
    id = "DescribeManagedEndpointOutput",
    members = {
        endpoint = M.Endpoint,
    },
}

M.JobTemplate = {
    type = "structure",
    id = "JobTemplate",
    members = {
        name = {
            type = "string",
        },
        id = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        createdBy = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        jobTemplateData = setmetatable({ traits = {
            required = true,
        } }, { __index = M.JobTemplateData }),
        kmsKeyArn = {
            type = "string",
        },
        decryptionError = {
            type = "string",
        },
    },
}

M.DescribeJobTemplateOutput = {
    type = "structure",
    id = "DescribeJobTemplateOutput",
    members = {
        jobTemplate = M.JobTemplate,
    },
}

M.ListJobRunsOutput = {
    type = "structure",
    id = "ListJobRunsOutput",
    members = {
        jobRuns = {
            type = "list",
            member = M.JobRun,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListManagedEndpointsOutput = {
    type = "structure",
    id = "ListManagedEndpointsOutput",
    members = {
        endpoints = {
            type = "list",
            member = M.Endpoint,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListJobTemplatesOutput = {
    type = "structure",
    id = "ListJobTemplatesOutput",
    members = {
        templates = {
            type = "list",
            member = M.JobTemplate,
        },
        nextToken = {
            type = "string",
        },
    },
}

return M
