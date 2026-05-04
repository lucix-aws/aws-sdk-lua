local M = {}

M.BadRequestException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.Stage = {
    PRODUCTION = "PRODUCTION",
    BETA = "BETA",
    DEVELOPMENT = "DEVELOPMENT",
    EXPERIMENTAL = "EXPERIMENTAL",
    PULL_REQUEST = "PULL_REQUEST",
}

M.AutoBranchCreationConfig = {
    type = "structure",
    members = {
        stage = {
            type = "string",
        },
        framework = {
            type = "string",
        },
        enableAutoBuild = {
            type = "boolean",
        },
        environmentVariables = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        basicAuthCredentials = {
            type = "string",
        },
        enableBasicAuth = {
            type = "boolean",
        },
        enablePerformanceMode = {
            type = "boolean",
        },
        buildSpec = {
            type = "string",
        },
        enablePullRequestPreview = {
            type = "boolean",
        },
        pullRequestEnvironmentName = {
            type = "string",
        },
    },
}

M.CacheConfigType = {
    AMPLIFY_MANAGED = "AMPLIFY_MANAGED",
    AMPLIFY_MANAGED_NO_COOKIES = "AMPLIFY_MANAGED_NO_COOKIES",
}

M.CacheConfig = {
    type = "structure",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CustomRule = {
    type = "structure",
    members = {
        source = {
            type = "string",
            traits = {
                required = true,
            },
        },
        target = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
        },
        condition = {
            type = "string",
        },
    },
}

M.BuildComputeType = {
    STANDARD_8GB = "STANDARD_8GB",
    LARGE_16GB = "LARGE_16GB",
    XLARGE_72GB = "XLARGE_72GB",
}

M.JobConfig = {
    type = "structure",
    members = {
        buildComputeType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Platform = {
    WEB = "WEB",
    WEB_DYNAMIC = "WEB_DYNAMIC",
    WEB_COMPUTE = "WEB_COMPUTE",
}

M.CreateAppInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        repository = {
            type = "string",
        },
        platform = {
            type = "string",
        },
        computeRoleArn = {
            type = "string",
        },
        iamServiceRoleArn = {
            type = "string",
        },
        oauthToken = {
            type = "string",
        },
        accessToken = {
            type = "string",
        },
        environmentVariables = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        enableBranchAutoBuild = {
            type = "boolean",
        },
        enableBranchAutoDeletion = {
            type = "boolean",
        },
        enableBasicAuth = {
            type = "boolean",
        },
        basicAuthCredentials = {
            type = "string",
        },
        customRules = {
            type = "list",
            member = M.CustomRule,
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        buildSpec = {
            type = "string",
        },
        customHeaders = {
            type = "string",
        },
        enableAutoBranchCreation = {
            type = "boolean",
        },
        autoBranchCreationPatterns = {
            type = "list",
            member = { type = "string" },
        },
        autoBranchCreationConfig = M.AutoBranchCreationConfig,
        jobConfig = M.JobConfig,
        cacheConfig = M.CacheConfig,
    },
}

M.ProductionBranch = {
    type = "structure",
    members = {
        lastDeployTime = {
            type = "timestamp",
        },
        status = {
            type = "string",
        },
        thumbnailUrl = {
            type = "string",
        },
        branchName = {
            type = "string",
        },
    },
}

M.RepositoryCloneMethod = {
    SSH = "SSH",
    TOKEN = "TOKEN",
    SIGV4 = "SIGV4",
}

M.WafStatus = {
    ASSOCIATING = "ASSOCIATING",
    ASSOCIATION_FAILED = "ASSOCIATION_FAILED",
    ASSOCIATION_SUCCESS = "ASSOCIATION_SUCCESS",
    DISASSOCIATING = "DISASSOCIATING",
    DISASSOCIATION_FAILED = "DISASSOCIATION_FAILED",
}

M.WafConfiguration = {
    type = "structure",
    members = {
        webAclArn = {
            type = "string",
        },
        wafStatus = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
    },
}

M.App = {
    type = "structure",
    members = {
        appId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        appArn = {
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
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        repository = {
            type = "string",
            traits = {
                required = true,
            },
        },
        platform = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        computeRoleArn = {
            type = "string",
        },
        iamServiceRoleArn = {
            type = "string",
        },
        environmentVariables = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
        defaultDomain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        enableBranchAutoBuild = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        enableBranchAutoDeletion = {
            type = "boolean",
        },
        enableBasicAuth = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        basicAuthCredentials = {
            type = "string",
        },
        customRules = {
            type = "list",
            member = M.CustomRule,
        },
        productionBranch = M.ProductionBranch,
        buildSpec = {
            type = "string",
        },
        customHeaders = {
            type = "string",
        },
        enableAutoBranchCreation = {
            type = "boolean",
        },
        autoBranchCreationPatterns = {
            type = "list",
            member = { type = "string" },
        },
        autoBranchCreationConfig = M.AutoBranchCreationConfig,
        repositoryCloneMethod = {
            type = "string",
        },
        cacheConfig = M.CacheConfig,
        webhookCreateTime = {
            type = "timestamp",
        },
        wafConfiguration = M.WafConfiguration,
        jobConfig = M.JobConfig,
    },
}

M.CreateAppOutput = {
    type = "structure",
    members = {
        app = setmetatable({ traits = {
            required = true,
        } }, { __index = M.App }),
    },
}

M.DependentServiceFailureException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InternalFailureException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.LimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UnauthorizedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateBackendEnvironmentInput = {
    type = "structure",
    members = {
        appId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        environmentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        stackName = {
            type = "string",
        },
        deploymentArtifacts = {
            type = "string",
        },
    },
}

M.BackendEnvironment = {
    type = "structure",
    members = {
        backendEnvironmentArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        environmentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        stackName = {
            type = "string",
        },
        deploymentArtifacts = {
            type = "string",
        },
        createTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateBackendEnvironmentOutput = {
    type = "structure",
    members = {
        backendEnvironment = setmetatable({ traits = {
            required = true,
        } }, { __index = M.BackendEnvironment }),
    },
}

M.NotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.Backend = {
    type = "structure",
    members = {
        stackArn = {
            type = "string",
        },
    },
}

M.CreateBranchInput = {
    type = "structure",
    members = {
        appId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        branchName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        stage = {
            type = "string",
        },
        framework = {
            type = "string",
        },
        enableNotification = {
            type = "boolean",
        },
        enableAutoBuild = {
            type = "boolean",
        },
        enableSkewProtection = {
            type = "boolean",
        },
        environmentVariables = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        basicAuthCredentials = {
            type = "string",
        },
        enableBasicAuth = {
            type = "boolean",
        },
        enablePerformanceMode = {
            type = "boolean",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        buildSpec = {
            type = "string",
        },
        ttl = {
            type = "string",
        },
        displayName = {
            type = "string",
        },
        enablePullRequestPreview = {
            type = "boolean",
        },
        pullRequestEnvironmentName = {
            type = "string",
        },
        backendEnvironmentArn = {
            type = "string",
        },
        backend = M.Backend,
        computeRoleArn = {
            type = "string",
        },
    },
}

M.Branch = {
    type = "structure",
    members = {
        branchArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        branchName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        stage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        displayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        enableNotification = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        createTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        environmentVariables = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
        enableAutoBuild = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        enableSkewProtection = {
            type = "boolean",
        },
        customDomains = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        framework = {
            type = "string",
            traits = {
                required = true,
            },
        },
        activeJobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        totalNumberOfJobs = {
            type = "string",
            traits = {
                required = true,
            },
        },
        enableBasicAuth = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        enablePerformanceMode = {
            type = "boolean",
        },
        thumbnailUrl = {
            type = "string",
        },
        basicAuthCredentials = {
            type = "string",
        },
        buildSpec = {
            type = "string",
        },
        ttl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        associatedResources = {
            type = "list",
            member = { type = "string" },
        },
        enablePullRequestPreview = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        pullRequestEnvironmentName = {
            type = "string",
        },
        destinationBranch = {
            type = "string",
        },
        sourceBranch = {
            type = "string",
        },
        backendEnvironmentArn = {
            type = "string",
        },
        backend = M.Backend,
        computeRoleArn = {
            type = "string",
        },
    },
}

M.CreateBranchOutput = {
    type = "structure",
    members = {
        branch = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Branch }),
    },
}

M.CreateDeploymentInput = {
    type = "structure",
    members = {
        appId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        branchName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        fileMap = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateDeploymentOutput = {
    type = "structure",
    members = {
        jobId = {
            type = "string",
        },
        fileUploadUrls = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
        zipUploadUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CertificateType = {
    AMPLIFY_MANAGED = "AMPLIFY_MANAGED",
    CUSTOM = "CUSTOM",
}

M.CertificateSettings = {
    type = "structure",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        customCertificateArn = {
            type = "string",
        },
    },
}

M.SubDomainSetting = {
    type = "structure",
    members = {
        prefix = {
            type = "string",
            traits = {
                required = true,
            },
        },
        branchName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateDomainAssociationInput = {
    type = "structure",
    members = {
        appId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        domainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        enableAutoSubDomain = {
            type = "boolean",
        },
        subDomainSettings = {
            type = "list",
            member = M.SubDomainSetting,
            traits = {
                required = true,
            },
        },
        autoSubDomainCreationPatterns = {
            type = "list",
            member = { type = "string" },
        },
        autoSubDomainIAMRole = {
            type = "string",
        },
        certificateSettings = M.CertificateSettings,
    },
}

M.Certificate = {
    type = "structure",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        customCertificateArn = {
            type = "string",
        },
        certificateVerificationDNSRecord = {
            type = "string",
        },
    },
}

M.DomainStatus = {
    PENDING_VERIFICATION = "PENDING_VERIFICATION",
    IN_PROGRESS = "IN_PROGRESS",
    AVAILABLE = "AVAILABLE",
    IMPORTING_CUSTOM_CERTIFICATE = "IMPORTING_CUSTOM_CERTIFICATE",
    PENDING_DEPLOYMENT = "PENDING_DEPLOYMENT",
    AWAITING_APP_CNAME = "AWAITING_APP_CNAME",
    FAILED = "FAILED",
    CREATING = "CREATING",
    REQUESTING_CERTIFICATE = "REQUESTING_CERTIFICATE",
    UPDATING = "UPDATING",
}

M.SubDomain = {
    type = "structure",
    members = {
        subDomainSetting = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SubDomainSetting }),
        verified = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        dnsRecord = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateStatus = {
    REQUESTING_CERTIFICATE = "REQUESTING_CERTIFICATE",
    PENDING_VERIFICATION = "PENDING_VERIFICATION",
    IMPORTING_CUSTOM_CERTIFICATE = "IMPORTING_CUSTOM_CERTIFICATE",
    PENDING_DEPLOYMENT = "PENDING_DEPLOYMENT",
    AWAITING_APP_CNAME = "AWAITING_APP_CNAME",
    UPDATE_COMPLETE = "UPDATE_COMPLETE",
    UPDATE_FAILED = "UPDATE_FAILED",
}

M.DomainAssociation = {
    type = "structure",
    members = {
        domainAssociationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        domainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        enableAutoSubDomain = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        autoSubDomainCreationPatterns = {
            type = "list",
            member = { type = "string" },
        },
        autoSubDomainIAMRole = {
            type = "string",
        },
        domainStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        updateStatus = {
            type = "string",
        },
        statusReason = {
            type = "string",
            traits = {
                required = true,
            },
        },
        certificateVerificationDNSRecord = {
            type = "string",
        },
        subDomains = {
            type = "list",
            member = M.SubDomain,
            traits = {
                required = true,
            },
        },
        certificate = M.Certificate,
    },
}

M.CreateDomainAssociationOutput = {
    type = "structure",
    members = {
        domainAssociation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DomainAssociation }),
    },
}

M.CreateWebhookInput = {
    type = "structure",
    members = {
        appId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        branchName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
    },
}

M.Webhook = {
    type = "structure",
    members = {
        webhookArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        webhookId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        webhookUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        appId = {
            type = "string",
        },
        branchName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateWebhookOutput = {
    type = "structure",
    members = {
        webhook = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Webhook }),
    },
}

M.DeleteAppInput = {
    type = "structure",
    members = {
        appId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteAppOutput = {
    type = "structure",
    members = {
        app = setmetatable({ traits = {
            required = true,
        } }, { __index = M.App }),
    },
}

M.DeleteBackendEnvironmentInput = {
    type = "structure",
    members = {
        appId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        environmentName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteBackendEnvironmentOutput = {
    type = "structure",
    members = {
        backendEnvironment = setmetatable({ traits = {
            required = true,
        } }, { __index = M.BackendEnvironment }),
    },
}

M.DeleteBranchInput = {
    type = "structure",
    members = {
        appId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        branchName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteBranchOutput = {
    type = "structure",
    members = {
        branch = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Branch }),
    },
}

M.DeleteDomainAssociationInput = {
    type = "structure",
    members = {
        appId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        domainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteDomainAssociationOutput = {
    type = "structure",
    members = {
        domainAssociation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DomainAssociation }),
    },
}

M.DeleteJobInput = {
    type = "structure",
    members = {
        appId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        branchName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        jobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.JobType = {
    RELEASE = "RELEASE",
    RETRY = "RETRY",
    MANUAL = "MANUAL",
    WEB_HOOK = "WEB_HOOK",
}

M.SourceUrlType = {
    ZIP = "ZIP",
    BUCKET_PREFIX = "BUCKET_PREFIX",
}

M.JobStatus = {
    CREATED = "CREATED",
    PENDING = "PENDING",
    PROVISIONING = "PROVISIONING",
    RUNNING = "RUNNING",
    FAILED = "FAILED",
    SUCCEED = "SUCCEED",
    CANCELLING = "CANCELLING",
    CANCELLED = "CANCELLED",
}

M.JobSummary = {
    type = "structure",
    members = {
        jobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        commitId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        commitMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        commitTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        startTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        endTime = {
            type = "timestamp",
        },
        jobType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sourceUrl = {
            type = "string",
        },
        sourceUrlType = {
            type = "string",
        },
    },
}

M.DeleteJobOutput = {
    type = "structure",
    members = {
        jobSummary = setmetatable({ traits = {
            required = true,
        } }, { __index = M.JobSummary }),
    },
}

M.DeleteWebhookInput = {
    type = "structure",
    members = {
        webhookId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteWebhookOutput = {
    type = "structure",
    members = {
        webhook = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Webhook }),
    },
}

M.GenerateAccessLogsInput = {
    type = "structure",
    members = {
        startTime = {
            type = "timestamp",
        },
        endTime = {
            type = "timestamp",
        },
        domainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        appId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GenerateAccessLogsOutput = {
    type = "structure",
    members = {
        logUrl = {
            type = "string",
        },
    },
}

M.GetAppInput = {
    type = "structure",
    members = {
        appId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetAppOutput = {
    type = "structure",
    members = {
        app = setmetatable({ traits = {
            required = true,
        } }, { __index = M.App }),
    },
}

M.GetArtifactUrlInput = {
    type = "structure",
    members = {
        artifactId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetArtifactUrlOutput = {
    type = "structure",
    members = {
        artifactId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        artifactUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetBackendEnvironmentInput = {
    type = "structure",
    members = {
        appId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        environmentName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetBackendEnvironmentOutput = {
    type = "structure",
    members = {
        backendEnvironment = setmetatable({ traits = {
            required = true,
        } }, { __index = M.BackendEnvironment }),
    },
}

M.GetBranchInput = {
    type = "structure",
    members = {
        appId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        branchName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetBranchOutput = {
    type = "structure",
    members = {
        branch = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Branch }),
    },
}

M.GetDomainAssociationInput = {
    type = "structure",
    members = {
        appId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        domainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetDomainAssociationOutput = {
    type = "structure",
    members = {
        domainAssociation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DomainAssociation }),
    },
}

M.GetJobInput = {
    type = "structure",
    members = {
        appId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        branchName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        jobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.Step = {
    type = "structure",
    members = {
        stepName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        startTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        endTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        logUrl = {
            type = "string",
        },
        artifactsUrl = {
            type = "string",
        },
        testArtifactsUrl = {
            type = "string",
        },
        testConfigUrl = {
            type = "string",
        },
        screenshots = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        statusReason = {
            type = "string",
        },
        context = {
            type = "string",
        },
    },
}

M.Job = {
    type = "structure",
    members = {
        summary = setmetatable({ traits = {
            required = true,
        } }, { __index = M.JobSummary }),
        steps = {
            type = "list",
            member = M.Step,
            traits = {
                required = true,
            },
        },
    },
}

M.GetJobOutput = {
    type = "structure",
    members = {
        job = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Job }),
    },
}

M.GetWebhookInput = {
    type = "structure",
    members = {
        webhookId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetWebhookOutput = {
    type = "structure",
    members = {
        webhook = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Webhook }),
    },
}

M.ListAppsInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 0,
                http_query = "maxResults",
            },
        },
    },
}

M.ListAppsOutput = {
    type = "structure",
    members = {
        apps = {
            type = "list",
            member = M.App,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListArtifactsInput = {
    type = "structure",
    members = {
        appId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        branchName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        jobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 0,
                http_query = "maxResults",
            },
        },
    },
}

M.Artifact = {
    type = "structure",
    members = {
        artifactFileName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        artifactId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListArtifactsOutput = {
    type = "structure",
    members = {
        artifacts = {
            type = "list",
            member = M.Artifact,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListBackendEnvironmentsInput = {
    type = "structure",
    members = {
        appId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        environmentName = {
            type = "string",
            traits = {
                http_query = "environmentName",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 0,
                http_query = "maxResults",
            },
        },
    },
}

M.ListBackendEnvironmentsOutput = {
    type = "structure",
    members = {
        backendEnvironments = {
            type = "list",
            member = M.BackendEnvironment,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListBranchesInput = {
    type = "structure",
    members = {
        appId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 0,
                http_query = "maxResults",
            },
        },
    },
}

M.ListBranchesOutput = {
    type = "structure",
    members = {
        branches = {
            type = "list",
            member = M.Branch,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListDomainAssociationsInput = {
    type = "structure",
    members = {
        appId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 0,
                http_query = "maxResults",
            },
        },
    },
}

M.ListDomainAssociationsOutput = {
    type = "structure",
    members = {
        domainAssociations = {
            type = "list",
            member = M.DomainAssociation,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListJobsInput = {
    type = "structure",
    members = {
        appId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        branchName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 0,
                http_query = "maxResults",
            },
        },
    },
}

M.ListJobsOutput = {
    type = "structure",
    members = {
        jobSummaries = {
            type = "list",
            member = M.JobSummary,
            traits = {
                required = true,
            },
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

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        code = {
            type = "string",
            traits = {
                required = true,
            },
        },
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListWebhooksInput = {
    type = "structure",
    members = {
        appId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 0,
                http_query = "maxResults",
            },
        },
    },
}

M.ListWebhooksOutput = {
    type = "structure",
    members = {
        webhooks = {
            type = "list",
            member = M.Webhook,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.StartDeploymentInput = {
    type = "structure",
    members = {
        appId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        branchName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        jobId = {
            type = "string",
        },
        sourceUrl = {
            type = "string",
        },
        sourceUrlType = {
            type = "string",
        },
    },
}

M.StartDeploymentOutput = {
    type = "structure",
    members = {
        jobSummary = setmetatable({ traits = {
            required = true,
        } }, { __index = M.JobSummary }),
    },
}

M.StartJobInput = {
    type = "structure",
    members = {
        appId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        branchName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        jobId = {
            type = "string",
        },
        jobType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobReason = {
            type = "string",
        },
        commitId = {
            type = "string",
        },
        commitMessage = {
            type = "string",
        },
        commitTime = {
            type = "timestamp",
        },
    },
}

M.StartJobOutput = {
    type = "structure",
    members = {
        jobSummary = setmetatable({ traits = {
            required = true,
        } }, { __index = M.JobSummary }),
    },
}

M.StopJobInput = {
    type = "structure",
    members = {
        appId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        branchName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        jobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StopJobOutput = {
    type = "structure",
    members = {
        jobSummary = setmetatable({ traits = {
            required = true,
        } }, { __index = M.JobSummary }),
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

M.UpdateAppInput = {
    type = "structure",
    members = {
        appId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        platform = {
            type = "string",
        },
        computeRoleArn = {
            type = "string",
        },
        iamServiceRoleArn = {
            type = "string",
        },
        environmentVariables = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        enableBranchAutoBuild = {
            type = "boolean",
        },
        enableBranchAutoDeletion = {
            type = "boolean",
        },
        enableBasicAuth = {
            type = "boolean",
        },
        basicAuthCredentials = {
            type = "string",
        },
        customRules = {
            type = "list",
            member = M.CustomRule,
        },
        buildSpec = {
            type = "string",
        },
        customHeaders = {
            type = "string",
        },
        enableAutoBranchCreation = {
            type = "boolean",
        },
        autoBranchCreationPatterns = {
            type = "list",
            member = { type = "string" },
        },
        autoBranchCreationConfig = M.AutoBranchCreationConfig,
        repository = {
            type = "string",
        },
        oauthToken = {
            type = "string",
        },
        accessToken = {
            type = "string",
        },
        jobConfig = M.JobConfig,
        cacheConfig = M.CacheConfig,
    },
}

M.UpdateAppOutput = {
    type = "structure",
    members = {
        app = setmetatable({ traits = {
            required = true,
        } }, { __index = M.App }),
    },
}

M.UpdateBranchInput = {
    type = "structure",
    members = {
        appId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        branchName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        description = {
            type = "string",
        },
        framework = {
            type = "string",
        },
        stage = {
            type = "string",
        },
        enableNotification = {
            type = "boolean",
        },
        enableAutoBuild = {
            type = "boolean",
        },
        enableSkewProtection = {
            type = "boolean",
        },
        environmentVariables = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        basicAuthCredentials = {
            type = "string",
        },
        enableBasicAuth = {
            type = "boolean",
        },
        enablePerformanceMode = {
            type = "boolean",
        },
        buildSpec = {
            type = "string",
        },
        ttl = {
            type = "string",
        },
        displayName = {
            type = "string",
        },
        enablePullRequestPreview = {
            type = "boolean",
        },
        pullRequestEnvironmentName = {
            type = "string",
        },
        backendEnvironmentArn = {
            type = "string",
        },
        backend = M.Backend,
        computeRoleArn = {
            type = "string",
        },
    },
}

M.UpdateBranchOutput = {
    type = "structure",
    members = {
        branch = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Branch }),
    },
}

M.UpdateDomainAssociationInput = {
    type = "structure",
    members = {
        appId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        domainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        enableAutoSubDomain = {
            type = "boolean",
        },
        subDomainSettings = {
            type = "list",
            member = M.SubDomainSetting,
        },
        autoSubDomainCreationPatterns = {
            type = "list",
            member = { type = "string" },
        },
        autoSubDomainIAMRole = {
            type = "string",
        },
        certificateSettings = M.CertificateSettings,
    },
}

M.UpdateDomainAssociationOutput = {
    type = "structure",
    members = {
        domainAssociation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DomainAssociation }),
    },
}

M.UpdateWebhookInput = {
    type = "structure",
    members = {
        webhookId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        branchName = {
            type = "string",
        },
        description = {
            type = "string",
        },
    },
}

M.UpdateWebhookOutput = {
    type = "structure",
    members = {
        webhook = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Webhook }),
    },
}

return M
