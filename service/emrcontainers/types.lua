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
        tlsCertificateConfiguration = {
            type = "structure",
        },
    },
}

M.EncryptionConfiguration = {
    type = "structure",
    members = {
        inTransitEncryptionConfiguration = {
            type = "structure",
        },
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
        secureNamespaceInfo = {
            type = "structure",
        },
        queryEngineRoleArn = {
            type = "string",
        },
    },
}

M.AuthorizationConfiguration = {
    type = "structure",
    members = {
        lakeFormationConfiguration = {
            type = "structure",
        },
        encryptionConfiguration = {
            type = "structure",
        },
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
        cloudWatchMonitoringConfiguration = {
            type = "structure",
        },
        s3MonitoringConfiguration = {
            type = "structure",
        },
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
            member_type = "string",
        },
        sparkSubmitParameters = {
            type = "string",
        },
    },
}

M.JobDriver = {
    type = "structure",
    members = {
        sparkSubmitJobDriver = {
            type = "structure",
        },
        sparkSqlJobDriver = {
            type = "structure",
        },
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
            type = "number",
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
        managedLogs = {
            type = "structure",
        },
        persistentAppUI = {
            type = "string",
        },
        cloudWatchMonitoringConfiguration = {
            type = "structure",
        },
        s3MonitoringConfiguration = {
            type = "structure",
        },
        containerLogRotationConfiguration = {
            type = "structure",
        },
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
        eksInfo = {
            type = "structure",
        },
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
        info = {
            type = "union",
        },
    },
}

M.SecurityConfigurationData = {
    type = "structure",
    members = {
        authorizationConfiguration = {
            type = "structure",
        },
    },
}

M.CreateSecurityConfigurationInput = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        containerProvider = {
            type = "structure",
        },
        securityConfigurationData = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
        containerProvider = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            type = "number",
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
            type = "number",
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
        },
        createdBy = {
            type = "string",
        },
        securityConfigurationData = {
            type = "structure",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.DescribeSecurityConfigurationOutput = {
    type = "structure",
    members = {
        securityConfiguration = {
            type = "structure",
        },
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
        containerProvider = {
            type = "structure",
        },
        createdAt = {
            type = "timestamp",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        securityConfigurationId = {
            type = "string",
        },
    },
}

M.DescribeVirtualClusterOutput = {
    type = "structure",
    members = {
        virtualCluster = {
            type = "structure",
        },
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
            type = "number",
        },
        logContext = {
            type = "string",
        },
        clientToken = {
            type = "string",
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
        credentials = {
            type = "union",
        },
        expiresAt = {
            type = "timestamp",
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
            },
        },
        createdAfter = {
            type = "timestamp",
            traits = {
                http_query = "createdAfter",
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
            member_type = "string",
            traits = {
                http_query = "states",
            },
        },
        maxResults = {
            type = "number",
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
            },
        },
        createdBefore = {
            type = "timestamp",
            traits = {
                http_query = "createdBefore",
            },
        },
        maxResults = {
            type = "number",
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
            },
        },
        createdAfter = {
            type = "timestamp",
            traits = {
                http_query = "createdAfter",
            },
        },
        types = {
            type = "list",
            member_type = "string",
            traits = {
                http_query = "types",
            },
        },
        states = {
            type = "list",
            member_type = "string",
            traits = {
                http_query = "states",
            },
        },
        maxResults = {
            type = "number",
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
            },
        },
        createdBefore = {
            type = "timestamp",
            traits = {
                http_query = "createdBefore",
            },
        },
        maxResults = {
            type = "number",
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
            member_type = "structure",
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
            key_type = "string",
            value_type = "string",
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
            },
        },
        createdBefore = {
            type = "timestamp",
            traits = {
                http_query = "createdBefore",
            },
        },
        states = {
            type = "list",
            member_type = "string",
            traits = {
                http_query = "states",
            },
        },
        maxResults = {
            type = "number",
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
            member_type = "structure",
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
            key_type = "string",
            value_type = "string",
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
            member_type = "string",
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
            key_type = "string",
            value_type = "string",
        },
        configurations = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ConfigurationOverrides = {
    type = "structure",
    members = {
        applicationConfiguration = {
            type = "list",
            member_type = "structure",
        },
        monitoringConfiguration = {
            type = "structure",
        },
    },
}

M.ParametricConfigurationOverrides = {
    type = "structure",
    members = {
        applicationConfiguration = {
            type = "list",
            member_type = "structure",
        },
        monitoringConfiguration = {
            type = "structure",
        },
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
        configurationOverrides = {
            type = "structure",
        },
        clientToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
        certificateAuthority = {
            type = "structure",
        },
        configurationOverrides = {
            type = "structure",
        },
        serverUrl = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        securityGroup = {
            type = "string",
        },
        subnetIds = {
            type = "list",
            member_type = "string",
        },
        stateDetails = {
            type = "string",
        },
        failureReason = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
        configurationOverrides = {
            type = "structure",
        },
        jobDriver = {
            type = "structure",
        },
        createdAt = {
            type = "timestamp",
        },
        createdBy = {
            type = "string",
        },
        finishedAt = {
            type = "timestamp",
        },
        stateDetails = {
            type = "string",
        },
        failureReason = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        retryPolicyConfiguration = {
            type = "structure",
        },
        retryPolicyExecution = {
            type = "structure",
        },
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
        configurationOverrides = {
            type = "structure",
        },
        jobDriver = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        parameterConfiguration = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        jobTags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
                required = true,
            },
        },
        executionRoleArn = {
            type = "string",
        },
        releaseLabel = {
            type = "string",
        },
        jobDriver = {
            type = "structure",
        },
        configurationOverrides = {
            type = "structure",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        jobTemplateId = {
            type = "string",
        },
        jobTemplateParameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        retryPolicyConfiguration = {
            type = "structure",
        },
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
                required = true,
            },
        },
        jobTemplateData = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        kmsKeyArn = {
            type = "string",
        },
    },
}

M.DescribeJobRunOutput = {
    type = "structure",
    members = {
        jobRun = {
            type = "structure",
        },
    },
}

M.DescribeManagedEndpointOutput = {
    type = "structure",
    members = {
        endpoint = {
            type = "structure",
        },
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
        },
        createdBy = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        jobTemplateData = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        jobTemplate = {
            type = "structure",
        },
    },
}

M.ListJobRunsOutput = {
    type = "structure",
    members = {
        jobRuns = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

return M
