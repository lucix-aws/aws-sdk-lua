local M = {}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AccessType = {
    PRIVATE = "PRIVATE",
    PUBLIC = "PUBLIC",
}

M.AuthenticationProviderType = {
    SECRETS_MANAGER = "SECRETS_MANAGER",
    AWS_LAMBDA = "AWS_LAMBDA",
    AWS_IAM_ROLE = "AWS_IAM_ROLE",
    AWS_INTERNAL = "AWS_INTERNAL",
}

M.Authentication = {
    type = "structure",
    members = {
        providerType = {
            type = "string",
        },
        value = {
            type = "string",
        },
    },
}

M.Actor = {
    type = "structure",
    members = {
        identifier = {
            type = "string",
        },
        uris = {
            type = "list",
            member = { type = "string" },
        },
        authentication = M.Authentication,
        description = {
            type = "string",
        },
    },
}

M.ArtifactType = {
    TXT = "TXT",
    PNG = "PNG",
    JPEG = "JPEG",
    MD = "MD",
    PDF = "PDF",
    DOCX = "DOCX",
    DOC = "DOC",
    JSON = "JSON",
    YAML = "YAML",
}

M.AddArtifactInput = {
    type = "structure",
    members = {
        agentSpaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        artifactContent = {
            type = "blob",
            traits = {
                required = true,
            },
        },
        artifactType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fileName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AddArtifactOutput = {
    type = "structure",
    members = {
        artifactId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InternalServerException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
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
            traits = {
                required = true,
            },
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        serviceCode = {
            type = "string",
        },
        quotaCode = {
            type = "string",
        },
    },
}

M.ValidationExceptionField = {
    type = "structure",
    members = {
        path = {
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

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fieldList = {
            type = "list",
            member = M.ValidationExceptionField,
        },
    },
}

M.VpcConfig = {
    type = "structure",
    members = {
        vpcArn = {
            type = "string",
        },
        securityGroupArns = {
            type = "list",
            member = { type = "string" },
        },
        subnetArns = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.AWSResources = {
    type = "structure",
    members = {
        vpcs = {
            type = "list",
            member = M.VpcConfig,
        },
        logGroups = {
            type = "list",
            member = { type = "string" },
        },
        s3Buckets = {
            type = "list",
            member = { type = "string" },
        },
        secretArns = {
            type = "list",
            member = { type = "string" },
        },
        lambdaFunctionArns = {
            type = "list",
            member = { type = "string" },
        },
        iamRoles = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CodeReviewSettings = {
    type = "structure",
    members = {
        controlsScanning = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        generalPurposeScanning = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.AgentSpace = {
    type = "structure",
    members = {
        agentSpaceId = {
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
        description = {
            type = "string",
        },
        awsResources = M.AWSResources,
        targetDomainIds = {
            type = "list",
            member = { type = "string" },
        },
        codeReviewSettings = M.CodeReviewSettings,
        kmsKeyId = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.BatchGetAgentSpacesInput = {
    type = "structure",
    members = {
        agentSpaceIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetAgentSpacesOutput = {
    type = "structure",
    members = {
        agentSpaces = {
            type = "list",
            member = M.AgentSpace,
        },
        notFound = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CreateAgentSpaceInput = {
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
        awsResources = M.AWSResources,
        targetDomainIds = {
            type = "list",
            member = { type = "string" },
        },
        codeReviewSettings = M.CodeReviewSettings,
        kmsKeyId = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateAgentSpaceOutput = {
    type = "structure",
    members = {
        agentSpaceId = {
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
        description = {
            type = "string",
        },
        awsResources = M.AWSResources,
        targetDomainIds = {
            type = "list",
            member = { type = "string" },
        },
        codeReviewSettings = M.CodeReviewSettings,
        kmsKeyId = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.DeleteAgentSpaceInput = {
    type = "structure",
    members = {
        agentSpaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteAgentSpaceOutput = {
    type = "structure",
    members = {
        agentSpaceId = {
            type = "string",
        },
    },
}

M.ListAgentSpacesInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.AgentSpaceSummary = {
    type = "structure",
    members = {
        agentSpaceId = {
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
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListAgentSpacesOutput = {
    type = "structure",
    members = {
        agentSpaceSummaries = {
            type = "list",
            member = M.AgentSpaceSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateAgentSpaceInput = {
    type = "structure",
    members = {
        agentSpaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        awsResources = M.AWSResources,
        targetDomainIds = {
            type = "list",
            member = { type = "string" },
        },
        codeReviewSettings = M.CodeReviewSettings,
    },
}

M.UpdateAgentSpaceOutput = {
    type = "structure",
    members = {
        agentSpaceId = {
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
        description = {
            type = "string",
        },
        awsResources = M.AWSResources,
        targetDomainIds = {
            type = "list",
            member = { type = "string" },
        },
        codeReviewSettings = M.CodeReviewSettings,
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.CreateApplicationInput = {
    type = "structure",
    members = {
        idcInstanceArn = {
            type = "string",
        },
        roleArn = {
            type = "string",
        },
        defaultKmsKeyId = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateApplicationOutput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteApplicationInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteApplicationOutput = {
    type = "structure",
}

M.GetApplicationInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.IdCConfiguration = {
    type = "structure",
    members = {
        idcApplicationArn = {
            type = "string",
        },
        idcInstanceArn = {
            type = "string",
        },
    },
}

M.GetApplicationOutput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        domain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        applicationName = {
            type = "string",
        },
        idcConfiguration = M.IdCConfiguration,
        roleArn = {
            type = "string",
        },
        defaultKmsKeyId = {
            type = "string",
        },
    },
}

M.ListApplicationsInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.ApplicationSummary = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        applicationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        domain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        defaultKmsKeyId = {
            type = "string",
        },
    },
}

M.ListApplicationsOutput = {
    type = "structure",
    members = {
        applicationSummaries = {
            type = "list",
            member = M.ApplicationSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateApplicationInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        roleArn = {
            type = "string",
        },
        defaultKmsKeyId = {
            type = "string",
        },
    },
}

M.UpdateApplicationOutput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Artifact = {
    type = "structure",
    members = {
        contents = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ArtifactMetadataItem = {
    type = "structure",
    members = {
        agentSpaceId = {
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
        fileName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.ArtifactSummary = {
    type = "structure",
    members = {
        artifactId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fileName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        artifactType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DocumentInfo = {
    type = "structure",
    members = {
        s3Location = {
            type = "string",
        },
        artifactId = {
            type = "string",
        },
    },
}

M.Endpoint = {
    type = "structure",
    members = {
        uri = {
            type = "string",
        },
    },
}

M.IntegratedRepository = {
    type = "structure",
    members = {
        integrationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        providerResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SourceCodeRepository = {
    type = "structure",
    members = {
        s3Location = {
            type = "string",
        },
    },
}

M.Assets = {
    type = "structure",
    members = {
        endpoints = {
            type = "list",
            member = M.Endpoint,
        },
        actors = {
            type = "list",
            member = M.Actor,
        },
        documents = {
            type = "list",
            member = M.DocumentInfo,
        },
        sourceCode = {
            type = "list",
            member = M.SourceCodeRepository,
        },
        integratedRepositories = {
            type = "list",
            member = M.IntegratedRepository,
        },
    },
}

M.BatchDeletePentestsInput = {
    type = "structure",
    members = {
        pentestIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        agentSpaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CodeRemediationStrategy = {
    AUTOMATIC = "AUTOMATIC",
    DISABLED = "DISABLED",
}

M.RiskType = {
    CROSS_SITE_SCRIPTING = "CROSS_SITE_SCRIPTING",
    DEFAULT_CREDENTIALS = "DEFAULT_CREDENTIALS",
    INSECURE_DIRECT_OBJECT_REFERENCE = "INSECURE_DIRECT_OBJECT_REFERENCE",
    PRIVILEGE_ESCALATION = "PRIVILEGE_ESCALATION",
    SERVER_SIDE_TEMPLATE_INJECTION = "SERVER_SIDE_TEMPLATE_INJECTION",
    COMMAND_INJECTION = "COMMAND_INJECTION",
    CODE_INJECTION = "CODE_INJECTION",
    SQL_INJECTION = "SQL_INJECTION",
    ARBITRARY_FILE_UPLOAD = "ARBITRARY_FILE_UPLOAD",
    INSECURE_DESERIALIZATION = "INSECURE_DESERIALIZATION",
    LOCAL_FILE_INCLUSION = "LOCAL_FILE_INCLUSION",
    INFORMATION_DISCLOSURE = "INFORMATION_DISCLOSURE",
    PATH_TRAVERSAL = "PATH_TRAVERSAL",
    SERVER_SIDE_REQUEST_FORGERY = "SERVER_SIDE_REQUEST_FORGERY",
    JSON_WEB_TOKEN_VULNERABILITIES = "JSON_WEB_TOKEN_VULNERABILITIES",
    XML_EXTERNAL_ENTITY = "XML_EXTERNAL_ENTITY",
    FILE_DELETION = "FILE_DELETION",
    OTHER = "OTHER",
    GRAPHQL_VULNERABILITIES = "GRAPHQL_VULNERABILITIES",
    BUSINESS_LOGIC_VULNERABILITIES = "BUSINESS_LOGIC_VULNERABILITIES",
    CRYPTOGRAPHIC_VULNERABILITIES = "CRYPTOGRAPHIC_VULNERABILITIES",
    DENIAL_OF_SERVICE = "DENIAL_OF_SERVICE",
    FILE_ACCESS = "FILE_ACCESS",
    FILE_CREATION = "FILE_CREATION",
    DATABASE_MODIFICATION = "DATABASE_MODIFICATION",
    DATABASE_ACCESS = "DATABASE_ACCESS",
    OUTBOUND_SERVICE_REQUEST = "OUTBOUND_SERVICE_REQUEST",
    UNKNOWN = "UNKNOWN",
}

M.CloudWatchLog = {
    type = "structure",
    members = {
        logGroup = {
            type = "string",
        },
        logStream = {
            type = "string",
        },
    },
}

M.CustomHeader = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        value = {
            type = "string",
        },
    },
}

M.NetworkTrafficRuleEffect = {
    ALLOW = "ALLOW",
    DENY = "DENY",
}

M.NetworkTrafficRuleType = {
    URL = "URL",
}

M.NetworkTrafficRule = {
    type = "structure",
    members = {
        effect = {
            type = "string",
        },
        pattern = {
            type = "string",
        },
        networkTrafficRuleType = {
            type = "string",
        },
    },
}

M.NetworkTrafficConfig = {
    type = "structure",
    members = {
        rules = {
            type = "list",
            member = M.NetworkTrafficRule,
        },
        customHeaders = {
            type = "list",
            member = M.CustomHeader,
        },
    },
}

M.Pentest = {
    type = "structure",
    members = {
        pentestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        agentSpaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        title = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assets = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Assets }),
        excludeRiskTypes = {
            type = "list",
            member = { type = "string" },
        },
        serviceRole = {
            type = "string",
        },
        logConfig = M.CloudWatchLog,
        vpcConfig = M.VpcConfig,
        networkTrafficConfig = M.NetworkTrafficConfig,
        codeRemediationStrategy = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.DeletePentestFailure = {
    type = "structure",
    members = {
        pentestId = {
            type = "string",
        },
        reason = {
            type = "string",
        },
    },
}

M.BatchDeletePentestsOutput = {
    type = "structure",
    members = {
        deleted = {
            type = "list",
            member = M.Pentest,
        },
        failed = {
            type = "list",
            member = M.DeletePentestFailure,
        },
    },
}

M.BatchGetArtifactMetadataInput = {
    type = "structure",
    members = {
        agentSpaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        artifactIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetArtifactMetadataOutput = {
    type = "structure",
    members = {
        artifactMetadataList = {
            type = "list",
            member = M.ArtifactMetadataItem,
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetFindingsInput = {
    type = "structure",
    members = {
        findingIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        agentSpaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CodeRemediationTaskStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
}

M.CodeRemediationTaskDetails = {
    type = "structure",
    members = {
        repoName = {
            type = "string",
        },
        codeDiffLink = {
            type = "string",
        },
        pullRequestLink = {
            type = "string",
        },
    },
}

M.CodeRemediationTask = {
    type = "structure",
    members = {
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusReason = {
            type = "string",
        },
        taskDetails = {
            type = "list",
            member = M.CodeRemediationTaskDetails,
        },
    },
}

M.ConfidenceLevel = {
    FALSE_POSITIVE = "FALSE_POSITIVE",
    UNCONFIRMED = "UNCONFIRMED",
    LOW = "LOW",
    MEDIUM = "MEDIUM",
    HIGH = "HIGH",
}

M.RiskLevel = {
    UNKNOWN = "UNKNOWN",
    INFORMATIONAL = "INFORMATIONAL",
    LOW = "LOW",
    MEDIUM = "MEDIUM",
    HIGH = "HIGH",
    CRITICAL = "CRITICAL",
}

M.FindingStatus = {
    ACTIVE = "ACTIVE",
    RESOLVED = "RESOLVED",
    ACCEPTED = "ACCEPTED",
    FALSE_POSITIVE = "FALSE_POSITIVE",
}

M.Finding = {
    type = "structure",
    members = {
        findingId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        agentSpaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        pentestId = {
            type = "string",
        },
        pentestJobId = {
            type = "string",
        },
        taskId = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        status = {
            type = "string",
        },
        riskType = {
            type = "string",
        },
        riskLevel = {
            type = "string",
        },
        riskScore = {
            type = "string",
        },
        reasoning = {
            type = "string",
        },
        confidence = {
            type = "string",
        },
        attackScript = {
            type = "string",
        },
        codeRemediationTask = M.CodeRemediationTask,
        lastUpdatedBy = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.BatchGetFindingsOutput = {
    type = "structure",
    members = {
        findings = {
            type = "list",
            member = M.Finding,
        },
        notFound = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.BatchGetPentestJobsInput = {
    type = "structure",
    members = {
        pentestJobIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        agentSpaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ErrorCode = {
    CLIENT_ERROR = "CLIENT_ERROR",
    INTERNAL_ERROR = "INTERNAL_ERROR",
    STOPPED_BY_USER = "STOPPED_BY_USER",
}

M.ErrorInformation = {
    type = "structure",
    members = {
        code = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.ContextType = {
    ERROR = "ERROR",
    CLIENT_ERROR = "CLIENT_ERROR",
    WARNING = "WARNING",
    INFO = "INFO",
}

M.ExecutionContext = {
    type = "structure",
    members = {
        contextType = {
            type = "string",
        },
        context = {
            type = "string",
        },
        timestamp = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.JobStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    STOPPING = "STOPPING",
    STOPPED = "STOPPED",
    FAILED = "FAILED",
    COMPLETED = "COMPLETED",
}

M.StepName = {
    PREFLIGHT = "PREFLIGHT",
    STATIC_ANALYSIS = "STATIC_ANALYSIS",
    PENTEST = "PENTEST",
    FINALIZING = "FINALIZING",
}

M.StepStatus = {
    NOT_STARTED = "NOT_STARTED",
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
    STOPPED = "STOPPED",
}

M.Step = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        status = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.PentestJob = {
    type = "structure",
    members = {
        pentestJobId = {
            type = "string",
        },
        pentestId = {
            type = "string",
        },
        title = {
            type = "string",
        },
        overview = {
            type = "string",
        },
        status = {
            type = "string",
        },
        endpoints = {
            type = "list",
            member = M.Endpoint,
        },
        actors = {
            type = "list",
            member = M.Actor,
        },
        documents = {
            type = "list",
            member = M.DocumentInfo,
        },
        sourceCode = {
            type = "list",
            member = M.SourceCodeRepository,
        },
        excludePaths = {
            type = "list",
            member = M.Endpoint,
        },
        allowedDomains = {
            type = "list",
            member = M.Endpoint,
        },
        excludeRiskTypes = {
            type = "list",
            member = { type = "string" },
        },
        steps = {
            type = "list",
            member = M.Step,
        },
        executionContext = {
            type = "list",
            member = M.ExecutionContext,
        },
        serviceRole = {
            type = "string",
        },
        logConfig = M.CloudWatchLog,
        vpcConfig = M.VpcConfig,
        networkTrafficConfig = M.NetworkTrafficConfig,
        errorInformation = M.ErrorInformation,
        integratedRepositories = {
            type = "list",
            member = M.IntegratedRepository,
        },
        codeRemediationStrategy = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.BatchGetPentestJobsOutput = {
    type = "structure",
    members = {
        pentestJobs = {
            type = "list",
            member = M.PentestJob,
        },
        notFound = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.BatchGetPentestJobTasksInput = {
    type = "structure",
    members = {
        agentSpaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        taskIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.Category = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        isPrimary = {
            type = "boolean",
        },
    },
}

M.TaskExecutionStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    ABORTED = "ABORTED",
    COMPLETED = "COMPLETED",
    INTERNAL_ERROR = "INTERNAL_ERROR",
    FAILED = "FAILED",
}

M.LogType = {
    CLOUDWATCH = "CLOUDWATCH",
}

M.LogLocation = {
    type = "structure",
    members = {
        logType = {
            type = "string",
        },
        cloudWatchLog = M.CloudWatchLog,
    },
}

M.Task = {
    type = "structure",
    members = {
        taskId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        pentestId = {
            type = "string",
        },
        pentestJobId = {
            type = "string",
        },
        agentSpaceId = {
            type = "string",
        },
        title = {
            type = "string",
        },
        description = {
            type = "string",
        },
        categories = {
            type = "list",
            member = M.Category,
        },
        riskType = {
            type = "string",
        },
        targetEndpoint = M.Endpoint,
        executionStatus = {
            type = "string",
        },
        logsLocation = M.LogLocation,
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.BatchGetPentestJobTasksOutput = {
    type = "structure",
    members = {
        tasks = {
            type = "list",
            member = M.Task,
        },
        notFound = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.BatchGetPentestsInput = {
    type = "structure",
    members = {
        pentestIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        agentSpaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetPentestsOutput = {
    type = "structure",
    members = {
        pentests = {
            type = "list",
            member = M.Pentest,
        },
        notFound = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.BatchGetTargetDomainsInput = {
    type = "structure",
    members = {
        targetDomainIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DNSRecordType = {
    TXT = "TXT",
}

M.DnsVerification = {
    type = "structure",
    members = {
        token = {
            type = "string",
        },
        dnsRecordName = {
            type = "string",
        },
        dnsRecordType = {
            type = "string",
        },
    },
}

M.HttpVerification = {
    type = "structure",
    members = {
        token = {
            type = "string",
        },
        routePath = {
            type = "string",
        },
    },
}

M.DomainVerificationMethod = {
    DNS_TXT = "DNS_TXT",
    HTTP_ROUTE = "HTTP_ROUTE",
}

M.VerificationDetails = {
    type = "structure",
    members = {
        method = {
            type = "string",
        },
        dnsTxt = M.DnsVerification,
        httpRoute = M.HttpVerification,
    },
}

M.TargetDomainStatus = {
    PENDING = "PENDING",
    VERIFIED = "VERIFIED",
    FAILED = "FAILED",
    UNREACHABLE = "UNREACHABLE",
}

M.TargetDomain = {
    type = "structure",
    members = {
        targetDomainId = {
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
        verificationStatus = {
            type = "string",
        },
        verificationDetails = M.VerificationDetails,
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        verifiedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.BatchGetTargetDomainsOutput = {
    type = "structure",
    members = {
        targetDomains = {
            type = "list",
            member = M.TargetDomain,
        },
        notFound = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ConflictException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GitHubIntegrationInput = {
    type = "structure",
    members = {
        code = {
            type = "string",
            traits = {
                required = true,
            },
        },
        state = {
            type = "string",
            traits = {
                required = true,
            },
        },
        organizationName = {
            type = "string",
        },
    },
}

M.ProviderInput = {
    type = "union",
    members = {
        github = M.GitHubIntegrationInput,
    },
}

M.Provider = {
    GITHUB = "GITHUB",
}

M.CreateIntegrationInput = {
    type = "structure",
    members = {
        provider = {
            type = "string",
            traits = {
                required = true,
            },
        },
        input = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ProviderInput }),
        integrationDisplayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        kmsKeyId = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateIntegrationOutput = {
    type = "structure",
    members = {
        integrationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UserRole = {
    MEMBER = "MEMBER",
}

M.UserConfig = {
    type = "structure",
    members = {
        role = {
            type = "string",
        },
    },
}

M.MembershipConfig = {
    type = "union",
    members = {
        user = M.UserConfig,
    },
}

M.MembershipType = {
    USER = "USER",
}

M.CreateMembershipInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        agentSpaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        membershipId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        memberType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        config = M.MembershipConfig,
    },
}

M.CreateMembershipOutput = {
    type = "structure",
}

M.CreatePentestInput = {
    type = "structure",
    members = {
        title = {
            type = "string",
            traits = {
                required = true,
            },
        },
        agentSpaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assets = M.Assets,
        excludeRiskTypes = {
            type = "list",
            member = { type = "string" },
        },
        serviceRole = {
            type = "string",
        },
        logConfig = M.CloudWatchLog,
        vpcConfig = M.VpcConfig,
        networkTrafficConfig = M.NetworkTrafficConfig,
        codeRemediationStrategy = {
            type = "string",
        },
    },
}

M.CreatePentestOutput = {
    type = "structure",
    members = {
        pentestId = {
            type = "string",
        },
        title = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        assets = M.Assets,
        excludeRiskTypes = {
            type = "list",
            member = { type = "string" },
        },
        serviceRole = {
            type = "string",
        },
        logConfig = M.CloudWatchLog,
        agentSpaceId = {
            type = "string",
        },
    },
}

M.CreateTargetDomainInput = {
    type = "structure",
    members = {
        targetDomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        verificationMethod = {
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
    },
}

M.CreateTargetDomainOutput = {
    type = "structure",
    members = {
        targetDomainId = {
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
        verificationStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        verificationDetails = M.VerificationDetails,
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        verifiedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.DeleteArtifactInput = {
    type = "structure",
    members = {
        agentSpaceId = {
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

M.DeleteArtifactOutput = {
    type = "structure",
}

M.DeleteIntegrationInput = {
    type = "structure",
    members = {
        integrationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteIntegrationOutput = {
    type = "structure",
}

M.DeleteMembershipInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        agentSpaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        membershipId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        memberType = {
            type = "string",
        },
    },
}

M.DeleteMembershipOutput = {
    type = "structure",
}

M.DeleteTargetDomainInput = {
    type = "structure",
    members = {
        targetDomainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteTargetDomainOutput = {
    type = "structure",
    members = {
        targetDomainId = {
            type = "string",
        },
    },
}

M.DiscoveredEndpoint = {
    type = "structure",
    members = {
        uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        pentestJobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        taskId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        agentSpaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        evidence = {
            type = "string",
        },
        operation = {
            type = "string",
        },
        description = {
            type = "string",
        },
    },
}

M.FindingSummary = {
    type = "structure",
    members = {
        findingId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        agentSpaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        pentestId = {
            type = "string",
        },
        pentestJobId = {
            type = "string",
        },
        name = {
            type = "string",
        },
        status = {
            type = "string",
        },
        riskType = {
            type = "string",
        },
        riskLevel = {
            type = "string",
        },
        confidence = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.GetArtifactInput = {
    type = "structure",
    members = {
        agentSpaceId = {
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

M.GetArtifactOutput = {
    type = "structure",
    members = {
        agentSpaceId = {
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
        artifact = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Artifact }),
        fileName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.GetIntegrationInput = {
    type = "structure",
    members = {
        integrationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ProviderType = {
    SOURCE_CODE = "SOURCE_CODE",
    DOCUMENTATION = "DOCUMENTATION",
}

M.GetIntegrationOutput = {
    type = "structure",
    members = {
        integrationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        installationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        provider = {
            type = "string",
            traits = {
                required = true,
            },
        },
        providerType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        displayName = {
            type = "string",
        },
        kmsKeyId = {
            type = "string",
        },
    },
}

M.GitHubRepositoryMetadata = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        providerResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        owner = {
            type = "string",
            traits = {
                required = true,
            },
        },
        accessType = {
            type = "string",
        },
    },
}

M.GitHubRepositoryResource = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        owner = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GitHubResourceCapabilities = {
    type = "structure",
    members = {
        leaveComments = {
            type = "boolean",
        },
        remediateCode = {
            type = "boolean",
        },
    },
}

M.InitiateProviderRegistrationInput = {
    type = "structure",
    members = {
        provider = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InitiateProviderRegistrationOutput = {
    type = "structure",
    members = {
        redirectTo = {
            type = "string",
            traits = {
                required = true,
            },
        },
        csrfState = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.IntegratedResource = {
    type = "union",
    members = {
        githubRepository = M.GitHubRepositoryResource,
    },
}

M.ProviderResourceCapabilities = {
    type = "union",
    members = {
        github = M.GitHubResourceCapabilities,
    },
}

M.IntegratedResourceInputItem = {
    type = "structure",
    members = {
        resource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IntegratedResource }),
        capabilities = M.ProviderResourceCapabilities,
    },
}

M.IntegratedResourceMetadata = {
    type = "union",
    members = {
        githubRepository = M.GitHubRepositoryMetadata,
    },
}

M.IntegratedResourceSummary = {
    type = "structure",
    members = {
        integrationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IntegratedResourceMetadata }),
        capabilities = M.ProviderResourceCapabilities,
    },
}

M.IntegrationFilter = {
    type = "union",
    members = {
        provider = {
            type = "string",
        },
        providerType = {
            type = "string",
        },
    },
}

M.ListIntegrationsInput = {
    type = "structure",
    members = {
        filter = M.IntegrationFilter,
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.IntegrationSummary = {
    type = "structure",
    members = {
        integrationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        installationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        provider = {
            type = "string",
            traits = {
                required = true,
            },
        },
        providerType = {
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
    },
}

M.ListIntegrationsOutput = {
    type = "structure",
    members = {
        integrationSummaries = {
            type = "list",
            member = M.IntegrationSummary,
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
        agentSpaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.ListArtifactsOutput = {
    type = "structure",
    members = {
        artifactSummaries = {
            type = "list",
            member = M.ArtifactSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListDiscoveredEndpointsInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "integer",
        },
        pentestJobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        agentSpaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        prefix = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListDiscoveredEndpointsOutput = {
    type = "structure",
    members = {
        discoveredEndpoints = {
            type = "list",
            member = M.DiscoveredEndpoint,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListFindingsInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "integer",
        },
        pentestJobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        agentSpaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
        riskType = {
            type = "string",
        },
        riskLevel = {
            type = "string",
        },
        status = {
            type = "string",
        },
        confidence = {
            type = "string",
        },
        name = {
            type = "string",
        },
    },
}

M.ListFindingsOutput = {
    type = "structure",
    members = {
        findingsSummaries = {
            type = "list",
            member = M.FindingSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ResourceType = {
    CODE_REPOSITORY = "CODE_REPOSITORY",
}

M.ListIntegratedResourcesInput = {
    type = "structure",
    members = {
        agentSpaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        integrationId = {
            type = "string",
        },
        resourceType = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.ListIntegratedResourcesOutput = {
    type = "structure",
    members = {
        integratedResourceSummaries = {
            type = "list",
            member = M.IntegratedResourceSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.MembershipTypeFilter = {
    USER = "USER",
    ALL = "ALL",
}

M.ListMembershipsInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        agentSpaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        memberType = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UserMetadata = {
    type = "structure",
    members = {
        username = {
            type = "string",
            traits = {
                required = true,
            },
        },
        email = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MemberMetadata = {
    type = "union",
    members = {
        user = M.UserMetadata,
    },
}

M.MembershipSummary = {
    type = "structure",
    members = {
        membershipId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        applicationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        agentSpaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        memberType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        config = M.MembershipConfig,
        metadata = M.MemberMetadata,
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        createdBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        updatedBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListMembershipsOutput = {
    type = "structure",
    members = {
        membershipSummaries = {
            type = "list",
            member = M.MembershipSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListPentestJobsForPentestInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "integer",
        },
        pentestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        agentSpaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.PentestJobSummary = {
    type = "structure",
    members = {
        pentestJobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        pentestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        title = {
            type = "string",
        },
        status = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListPentestJobsForPentestOutput = {
    type = "structure",
    members = {
        pentestJobSummaries = {
            type = "list",
            member = M.PentestJobSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListPentestJobTasksInput = {
    type = "structure",
    members = {
        agentSpaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxResults = {
            type = "integer",
        },
        pentestJobId = {
            type = "string",
        },
        stepName = {
            type = "string",
        },
        categoryName = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.TaskSummary = {
    type = "structure",
    members = {
        taskId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        pentestId = {
            type = "string",
        },
        pentestJobId = {
            type = "string",
        },
        agentSpaceId = {
            type = "string",
        },
        title = {
            type = "string",
        },
        riskType = {
            type = "string",
        },
        executionStatus = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListPentestJobTasksOutput = {
    type = "structure",
    members = {
        taskSummaries = {
            type = "list",
            member = M.TaskSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListPentestsInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
        agentSpaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PentestSummary = {
    type = "structure",
    members = {
        pentestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        agentSpaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        title = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListPentestsOutput = {
    type = "structure",
    members = {
        pentestSummaries = {
            type = "list",
            member = M.PentestSummary,
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

M.ListTargetDomainsInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.TargetDomainSummary = {
    type = "structure",
    members = {
        targetDomainId = {
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
        verificationStatus = {
            type = "string",
        },
    },
}

M.ListTargetDomainsOutput = {
    type = "structure",
    members = {
        targetDomainSummaries = {
            type = "list",
            member = M.TargetDomainSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.StartCodeRemediationInput = {
    type = "structure",
    members = {
        agentSpaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        pentestJobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        findingIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.StartCodeRemediationOutput = {
    type = "structure",
}

M.StartPentestJobInput = {
    type = "structure",
    members = {
        agentSpaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        pentestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartPentestJobOutput = {
    type = "structure",
    members = {
        title = {
            type = "string",
        },
        status = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        pentestId = {
            type = "string",
        },
        pentestJobId = {
            type = "string",
        },
        agentSpaceId = {
            type = "string",
        },
    },
}

M.StopPentestJobInput = {
    type = "structure",
    members = {
        agentSpaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        pentestJobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopPentestJobOutput = {
    type = "structure",
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

M.UpdateTargetDomainInput = {
    type = "structure",
    members = {
        targetDomainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        verificationMethod = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateTargetDomainOutput = {
    type = "structure",
    members = {
        targetDomainId = {
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
        verificationStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        verificationDetails = M.VerificationDetails,
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        verifiedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
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

M.UpdateFindingInput = {
    type = "structure",
    members = {
        findingId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        agentSpaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        riskLevel = {
            type = "string",
        },
        status = {
            type = "string",
        },
    },
}

M.UpdateFindingOutput = {
    type = "structure",
}

M.UpdateIntegratedResourcesInput = {
    type = "structure",
    members = {
        agentSpaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        integrationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        items = {
            type = "list",
            member = M.IntegratedResourceInputItem,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateIntegratedResourcesOutput = {
    type = "structure",
}

M.UpdatePentestInput = {
    type = "structure",
    members = {
        pentestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        agentSpaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        title = {
            type = "string",
        },
        assets = M.Assets,
        excludeRiskTypes = {
            type = "list",
            member = { type = "string" },
        },
        serviceRole = {
            type = "string",
        },
        logConfig = M.CloudWatchLog,
        vpcConfig = M.VpcConfig,
        networkTrafficConfig = M.NetworkTrafficConfig,
        codeRemediationStrategy = {
            type = "string",
        },
    },
}

M.UpdatePentestOutput = {
    type = "structure",
    members = {
        pentestId = {
            type = "string",
        },
        title = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        assets = M.Assets,
        excludeRiskTypes = {
            type = "list",
            member = { type = "string" },
        },
        serviceRole = {
            type = "string",
        },
        logConfig = M.CloudWatchLog,
        agentSpaceId = {
            type = "string",
        },
    },
}

M.VerifyTargetDomainInput = {
    type = "structure",
    members = {
        targetDomainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.VerifyTargetDomainOutput = {
    type = "structure",
    members = {
        targetDomainId = {
            type = "string",
        },
        domainName = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        verifiedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        status = {
            type = "string",
        },
    },
}

return M
