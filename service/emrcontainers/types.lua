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
    members = {
        tlsCertificateConfiguration = M.TLSCertificateConfiguration,
    },
}

M.EncryptionConfiguration = {
    type = "structure",
    members = {
        inTransitEncryptionConfiguration = M.InTransitEncryptionConfiguration,
    },
}

M.SecureNamespaceInfo = {
    type = "structure",
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
    members = {
        lakeFormationConfiguration = M.LakeFormationConfiguration,
        encryptionConfiguration = M.EncryptionConfiguration,
    },
}

M.CancelJobRunInput = {
    type = "structure",
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
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ParametricCloudWatchMonitoringConfiguration = {
    type = "structure",
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
    members = {
        logUri = {
            type = "string",
        },
    },
}

M.ParametricMonitoringConfiguration = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CloudWatchMonitoringConfiguration = {
    type = "structure",
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
    members = {
        eksInfo = M.EksInfo,
    },
}

M.ContainerProviderType = {
    EKS = "EKS",
}

M.ContainerProvider = {
    type = "structure",
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
    members = {
        authorizationConfiguration = M.AuthorizationConfiguration,
    },
}

M.CreateSecurityConfigurationInput = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteJobTemplateInput = {
    type = "structure",
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
    members = {
        id = {
            type = "string",
        },
    },
}

M.DeleteManagedEndpointInput = {
    type = "structure",
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
    members = {
        id = {
            type = "string",
        },
    },
}

M.DescribeJobRunInput = {
    type = "structure",
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
    members = {
        securityConfiguration = M.SecurityConfiguration,
    },
}

M.DescribeVirtualClusterInput = {
    type = "structure",
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
    members = {
        virtualCluster = M.VirtualCluster,
    },
}

M.GetManagedEndpointSessionCredentialsInput = {
    type = "structure",
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
    members = {
        token = {
            type = "string",
        },
    },
}

M.GetManagedEndpointSessionCredentialsOutput = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ListJobRunsInput = {
    type = "structure",
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
}

M.UntagResourceInput = {
    type = "structure",
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
}

M.Configuration = {
    type = "structure",
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
    members = {
        jobRun = M.JobRun,
    },
}

M.DescribeManagedEndpointOutput = {
    type = "structure",
    members = {
        endpoint = M.Endpoint,
    },
}

M.JobTemplate = {
    type = "structure",
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
    members = {
        jobTemplate = M.JobTemplate,
    },
}

M.ListJobRunsOutput = {
    type = "structure",
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
