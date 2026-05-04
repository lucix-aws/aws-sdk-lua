local M = {}

M.BadRequestException = {
    type = "structure",
    id = "BadRequestException",
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
    id = "AutoBranchCreationConfig",
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
    id = "CacheConfig",
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
    id = "CustomRule",
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
    id = "JobConfig",
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
    id = "CreateAppInput",
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
    id = "ProductionBranch",
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
    id = "WafConfiguration",
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
    id = "App",
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
    id = "CreateAppOutput",
    members = {
        app = setmetatable({ traits = {
            required = true,
        } }, { __index = M.App }),
    },
}

M.DependentServiceFailureException = {
    type = "structure",
    id = "DependentServiceFailureException",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InternalFailureException = {
    type = "structure",
    id = "InternalFailureException",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.LimitExceededException = {
    type = "structure",
    id = "LimitExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UnauthorizedException = {
    type = "structure",
    id = "UnauthorizedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateBackendEnvironmentInput = {
    type = "structure",
    id = "CreateBackendEnvironmentInput",
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
    id = "BackendEnvironment",
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
    id = "CreateBackendEnvironmentOutput",
    members = {
        backendEnvironment = setmetatable({ traits = {
            required = true,
        } }, { __index = M.BackendEnvironment }),
    },
}

M.NotFoundException = {
    type = "structure",
    id = "NotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.Backend = {
    type = "structure",
    id = "Backend",
    members = {
        stackArn = {
            type = "string",
        },
    },
}

M.CreateBranchInput = {
    type = "structure",
    id = "CreateBranchInput",
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
    id = "Branch",
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
    id = "CreateBranchOutput",
    members = {
        branch = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Branch }),
    },
}

M.CreateDeploymentInput = {
    type = "structure",
    id = "CreateDeploymentInput",
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
    id = "CreateDeploymentOutput",
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
    id = "CertificateSettings",
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
    id = "SubDomainSetting",
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
    id = "CreateDomainAssociationInput",
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
    id = "Certificate",
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
    id = "SubDomain",
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
    id = "DomainAssociation",
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
    id = "CreateDomainAssociationOutput",
    members = {
        domainAssociation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DomainAssociation }),
    },
}

M.CreateWebhookInput = {
    type = "structure",
    id = "CreateWebhookInput",
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
    id = "Webhook",
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
    id = "CreateWebhookOutput",
    members = {
        webhook = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Webhook }),
    },
}

M.DeleteAppInput = {
    type = "structure",
    id = "DeleteAppInput",
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
    id = "DeleteAppOutput",
    members = {
        app = setmetatable({ traits = {
            required = true,
        } }, { __index = M.App }),
    },
}

M.DeleteBackendEnvironmentInput = {
    type = "structure",
    id = "DeleteBackendEnvironmentInput",
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
    id = "DeleteBackendEnvironmentOutput",
    members = {
        backendEnvironment = setmetatable({ traits = {
            required = true,
        } }, { __index = M.BackendEnvironment }),
    },
}

M.DeleteBranchInput = {
    type = "structure",
    id = "DeleteBranchInput",
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
    id = "DeleteBranchOutput",
    members = {
        branch = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Branch }),
    },
}

M.DeleteDomainAssociationInput = {
    type = "structure",
    id = "DeleteDomainAssociationInput",
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
    id = "DeleteDomainAssociationOutput",
    members = {
        domainAssociation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DomainAssociation }),
    },
}

M.DeleteJobInput = {
    type = "structure",
    id = "DeleteJobInput",
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
    id = "JobSummary",
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
    id = "DeleteJobOutput",
    members = {
        jobSummary = setmetatable({ traits = {
            required = true,
        } }, { __index = M.JobSummary }),
    },
}

M.DeleteWebhookInput = {
    type = "structure",
    id = "DeleteWebhookInput",
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
    id = "DeleteWebhookOutput",
    members = {
        webhook = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Webhook }),
    },
}

M.GenerateAccessLogsInput = {
    type = "structure",
    id = "GenerateAccessLogsInput",
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
    id = "GenerateAccessLogsOutput",
    members = {
        logUrl = {
            type = "string",
        },
    },
}

M.GetAppInput = {
    type = "structure",
    id = "GetAppInput",
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
    id = "GetAppOutput",
    members = {
        app = setmetatable({ traits = {
            required = true,
        } }, { __index = M.App }),
    },
}

M.GetArtifactUrlInput = {
    type = "structure",
    id = "GetArtifactUrlInput",
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
    id = "GetArtifactUrlOutput",
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
    id = "GetBackendEnvironmentInput",
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
    id = "GetBackendEnvironmentOutput",
    members = {
        backendEnvironment = setmetatable({ traits = {
            required = true,
        } }, { __index = M.BackendEnvironment }),
    },
}

M.GetBranchInput = {
    type = "structure",
    id = "GetBranchInput",
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
    id = "GetBranchOutput",
    members = {
        branch = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Branch }),
    },
}

M.GetDomainAssociationInput = {
    type = "structure",
    id = "GetDomainAssociationInput",
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
    id = "GetDomainAssociationOutput",
    members = {
        domainAssociation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DomainAssociation }),
    },
}

M.GetJobInput = {
    type = "structure",
    id = "GetJobInput",
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
    id = "Step",
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
    id = "Job",
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
    id = "GetJobOutput",
    members = {
        job = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Job }),
    },
}

M.GetWebhookInput = {
    type = "structure",
    id = "GetWebhookInput",
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
    id = "GetWebhookOutput",
    members = {
        webhook = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Webhook }),
    },
}

M.ListAppsInput = {
    type = "structure",
    id = "ListAppsInput",
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
    id = "ListAppsOutput",
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
    id = "ListArtifactsInput",
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
    id = "Artifact",
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
    id = "ListArtifactsOutput",
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
    id = "ListBackendEnvironmentsInput",
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
    id = "ListBackendEnvironmentsOutput",
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
    id = "ListBranchesInput",
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
    id = "ListBranchesOutput",
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
    id = "ListDomainAssociationsInput",
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
    id = "ListDomainAssociationsOutput",
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
    id = "ListJobsInput",
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
    id = "ListJobsOutput",
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

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
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
    id = "ListWebhooksInput",
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
    id = "ListWebhooksOutput",
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
    id = "StartDeploymentInput",
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
    id = "StartDeploymentOutput",
    members = {
        jobSummary = setmetatable({ traits = {
            required = true,
        } }, { __index = M.JobSummary }),
    },
}

M.StartJobInput = {
    type = "structure",
    id = "StartJobInput",
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
    id = "StartJobOutput",
    members = {
        jobSummary = setmetatable({ traits = {
            required = true,
        } }, { __index = M.JobSummary }),
    },
}

M.StopJobInput = {
    type = "structure",
    id = "StopJobInput",
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
    id = "StopJobOutput",
    members = {
        jobSummary = setmetatable({ traits = {
            required = true,
        } }, { __index = M.JobSummary }),
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

M.UpdateAppInput = {
    type = "structure",
    id = "UpdateAppInput",
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
    id = "UpdateAppOutput",
    members = {
        app = setmetatable({ traits = {
            required = true,
        } }, { __index = M.App }),
    },
}

M.UpdateBranchInput = {
    type = "structure",
    id = "UpdateBranchInput",
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
    id = "UpdateBranchOutput",
    members = {
        branch = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Branch }),
    },
}

M.UpdateDomainAssociationInput = {
    type = "structure",
    id = "UpdateDomainAssociationInput",
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
    id = "UpdateDomainAssociationOutput",
    members = {
        domainAssociation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DomainAssociation }),
    },
}

M.UpdateWebhookInput = {
    type = "structure",
    id = "UpdateWebhookInput",
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
    id = "UpdateWebhookOutput",
    members = {
        webhook = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Webhook }),
    },
}

return M
