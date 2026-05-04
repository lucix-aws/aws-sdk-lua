local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        amznErrorType = {
            type = "string",
            traits = {
                http_header = "x-amzn-ErrorType",
            },
        },
    },
}

M.Action = {
    ALLOW = "ALLOW",
    BLOCK = "BLOCK",
    COUNT = "COUNT",
    CAPTCHA = "CAPTCHA",
    CHALLENGE = "CHALLENGE",
    EXCLUDED_AS_COUNT = "EXCLUDED_AS_COUNT",
}

M.ActionCondition = {
    type = "structure",
    id = "ActionCondition",
    members = {
        Action = {
            type = "string",
        },
    },
}

M.AdvancedFieldSelector = {
    type = "structure",
    id = "AdvancedFieldSelector",
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
    id = "AdvancedEventSelector",
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

M.CentralizationFailureReason = {
    TRUSTED_ACCESS_NOT_ENABLED = "TRUSTED_ACCESS_NOT_ENABLED",
    DESTINATION_ACCOUNT_NOT_IN_ORGANIZATION = "DESTINATION_ACCOUNT_NOT_IN_ORGANIZATION",
    INTERNAL_SERVER_ERROR = "INTERNAL_SERVER_ERROR",
}

M.LogsBackupConfiguration = {
    type = "structure",
    id = "LogsBackupConfiguration",
    members = {
        Region = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KmsKeyArn = {
            type = "string",
        },
    },
}

M.LogGroupNameConfiguration = {
    type = "structure",
    id = "LogGroupNameConfiguration",
    members = {
        LogGroupNamePattern = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EncryptionConflictResolutionStrategy = {
    ALLOW = "ALLOW",
    SKIP = "SKIP",
}

M.EncryptionStrategy = {
    CUSTOMER_MANAGED = "CUSTOMER_MANAGED",
    AWS_OWNED = "AWS_OWNED",
}

M.LogsEncryptionConfiguration = {
    type = "structure",
    id = "LogsEncryptionConfiguration",
    members = {
        EncryptionStrategy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KmsKeyArn = {
            type = "string",
        },
        EncryptionConflictResolutionStrategy = {
            type = "string",
        },
    },
}

M.DestinationLogsConfiguration = {
    type = "structure",
    id = "DestinationLogsConfiguration",
    members = {
        LogsEncryptionConfiguration = M.LogsEncryptionConfiguration,
        BackupConfiguration = M.LogsBackupConfiguration,
        LogGroupNameConfiguration = M.LogGroupNameConfiguration,
    },
}

M.CentralizationRuleDestination = {
    type = "structure",
    id = "CentralizationRuleDestination",
    members = {
        Region = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Account = {
            type = "string",
        },
        DestinationLogsConfiguration = M.DestinationLogsConfiguration,
    },
}

M.EncryptedLogGroupStrategy = {
    ALLOW = "ALLOW",
    SKIP = "SKIP",
}

M.SourceLogsConfiguration = {
    type = "structure",
    id = "SourceLogsConfiguration",
    members = {
        LogGroupSelectionCriteria = {
            type = "string",
            traits = {
                default = "*",
            },
        },
        DataSourceSelectionCriteria = {
            type = "string",
        },
        EncryptedLogGroupStrategy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CentralizationRuleSource = {
    type = "structure",
    id = "CentralizationRuleSource",
    members = {
        Regions = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Scope = {
            type = "string",
        },
        SourceLogsConfiguration = M.SourceLogsConfiguration,
    },
}

M.CentralizationRule = {
    type = "structure",
    id = "CentralizationRule",
    members = {
        Source = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CentralizationRuleSource }),
        Destination = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CentralizationRuleDestination }),
    },
}

M.RuleHealth = {
    HEALTHY = "Healthy",
    UNHEALTHY = "Unhealthy",
    PROVISIONING = "Provisioning",
}

M.CentralizationRuleSummary = {
    type = "structure",
    id = "CentralizationRuleSummary",
    members = {
        RuleName = {
            type = "string",
        },
        RuleArn = {
            type = "string",
        },
        CreatorAccountId = {
            type = "string",
        },
        CreatedTimeStamp = {
            type = "long",
        },
        CreatedRegion = {
            type = "string",
        },
        LastUpdateTimeStamp = {
            type = "long",
        },
        RuleHealth = {
            type = "string",
        },
        FailureReason = {
            type = "string",
        },
        DestinationAccountId = {
            type = "string",
        },
        DestinationRegion = {
            type = "string",
        },
    },
}

M.CloudtrailParameters = {
    type = "structure",
    id = "CloudtrailParameters",
    members = {
        AdvancedEventSelectors = {
            type = "list",
            member = M.AdvancedEventSelector,
            traits = {
                required = true,
            },
        },
    },
}

M.LabelNameCondition = {
    type = "structure",
    id = "LabelNameCondition",
    members = {
        LabelName = {
            type = "string",
        },
    },
}

M.Condition = {
    type = "structure",
    id = "Condition",
    members = {
        ActionCondition = M.ActionCondition,
        LabelNameCondition = M.LabelNameCondition,
    },
}

M.DataSource = {
    type = "structure",
    id = "DataSource",
    members = {
        Name = {
            type = "string",
        },
        Type = {
            type = "string",
        },
    },
}

M.Source = {
    type = "structure",
    id = "Source",
    members = {
        Type = {
            type = "string",
        },
    },
}

M.ConfigurationSummary = {
    type = "structure",
    id = "ConfigurationSummary",
    members = {
        Sources = {
            type = "list",
            member = M.Source,
        },
        DataSources = {
            type = "list",
            member = M.DataSource,
        },
        Processors = {
            type = "list",
            member = { type = "string" },
        },
        ProcessorCount = {
            type = "integer",
        },
        Sinks = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ConflictException = {
    type = "structure",
    id = "ConflictException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        ResourceId = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
    },
}

M.CreateCentralizationRuleForOrganizationInput = {
    type = "structure",
    id = "CreateCentralizationRuleForOrganizationInput",
    members = {
        RuleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Rule = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CentralizationRule }),
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateCentralizationRuleForOrganizationOutput = {
    type = "structure",
    id = "CreateCentralizationRuleForOrganizationOutput",
    members = {
        RuleArn = {
            type = "string",
        },
    },
}

M.InternalServerException = {
    type = "structure",
    id = "InternalServerException",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
        amznErrorType = {
            type = "string",
            traits = {
                http_header = "x-amzn-ErrorType",
            },
        },
        retryAfterSeconds = {
            type = "integer",
            traits = {
                http_header = "Retry-After",
            },
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    id = "ServiceQuotaExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        ResourceId = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        ServiceCode = {
            type = "string",
        },
        QuotaCode = {
            type = "string",
        },
        amznErrorType = {
            type = "string",
            traits = {
                http_header = "x-amzn-ErrorType",
            },
        },
    },
}

M.TooManyRequestsException = {
    type = "structure",
    id = "TooManyRequestsException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ValidationError = {
    type = "structure",
    id = "ValidationError",
    members = {
        Message = {
            type = "string",
        },
        Reason = {
            type = "string",
        },
        FieldMap = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Errors = {
            type = "list",
            member = M.ValidationError,
        },
    },
}

M.SSEAlgorithm = {
    SSE_KMS = "aws:kms",
    SSE_S3 = "AES256",
}

M.Encryption = {
    type = "structure",
    id = "Encryption",
    members = {
        SseAlgorithm = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KmsKeyArn = {
            type = "string",
        },
    },
}

M.CreateS3TableIntegrationInput = {
    type = "structure",
    id = "CreateS3TableIntegrationInput",
    members = {
        Encryption = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Encryption }),
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateS3TableIntegrationOutput = {
    type = "structure",
    id = "CreateS3TableIntegrationOutput",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.TelemetryPipelineConfiguration = {
    type = "structure",
    id = "TelemetryPipelineConfiguration",
    members = {
        Body = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateTelemetryPipelineInput = {
    type = "structure",
    id = "CreateTelemetryPipelineInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Configuration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TelemetryPipelineConfiguration }),
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateTelemetryPipelineOutput = {
    type = "structure",
    id = "CreateTelemetryPipelineOutput",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.DestinationType = {
    CLOUDWATCH_LOGS = "cloud-watch-logs",
}

M.OutputFormat = {
    PLAIN = "plain",
    JSON = "json",
}

M.ELBLoadBalancerLoggingParameters = {
    type = "structure",
    id = "ELBLoadBalancerLoggingParameters",
    members = {
        OutputFormat = {
            type = "string",
        },
        FieldDelimiter = {
            type = "string",
        },
    },
}

M.LogType = {
    APPLICATION = "APPLICATION_LOGS",
    USAGE = "USAGE_LOGS",
    SECURITY_FINDING = "SECURITY_FINDING_LOGS",
    ACCESS = "ACCESS_LOGS",
    CONNECTION = "CONNECTION_LOGS",
}

M.LogDeliveryParameters = {
    type = "structure",
    id = "LogDeliveryParameters",
    members = {
        LogTypes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.MskEnhancedMonitoringLevel = {
    DEFAULT = "DEFAULT",
    PER_BROKER = "PER_BROKER",
    PER_TOPIC_PER_BROKER = "PER_TOPIC_PER_BROKER",
    PER_TOPIC_PER_PARTITION = "PER_TOPIC_PER_PARTITION",
}

M.MskMonitoringParameters = {
    type = "structure",
    id = "MskMonitoringParameters",
    members = {
        EnhancedMonitoring = {
            type = "string",
        },
    },
}

M.VPCFlowLogParameters = {
    type = "structure",
    id = "VPCFlowLogParameters",
    members = {
        LogFormat = {
            type = "string",
        },
        TrafficType = {
            type = "string",
        },
        MaxAggregationInterval = {
            type = "integer",
        },
    },
}

M.FilterBehavior = {
    KEEP = "KEEP",
    DROP = "DROP",
}

M.FilterRequirement = {
    MEETS_ALL = "MEETS_ALL",
    MEETS_ANY = "MEETS_ANY",
}

M.Filter = {
    type = "structure",
    id = "Filter",
    members = {
        Behavior = {
            type = "string",
        },
        Requirement = {
            type = "string",
        },
        Conditions = {
            type = "list",
            member = M.Condition,
        },
    },
}

M.LoggingFilter = {
    type = "structure",
    id = "LoggingFilter",
    members = {
        Filters = {
            type = "list",
            member = M.Filter,
        },
        DefaultBehavior = {
            type = "string",
        },
    },
}

M.WAFLogType = {
    WAF_LOGS = "WAF_LOGS",
}

M.SingleHeader = {
    type = "structure",
    id = "SingleHeader",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.FieldToMatch = {
    type = "structure",
    id = "FieldToMatch",
    members = {
        SingleHeader = M.SingleHeader,
        UriPath = {
            type = "string",
        },
        QueryString = {
            type = "string",
        },
        Method = {
            type = "string",
        },
    },
}

M.WAFLoggingParameters = {
    type = "structure",
    id = "WAFLoggingParameters",
    members = {
        RedactedFields = {
            type = "list",
            member = M.FieldToMatch,
        },
        LoggingFilter = M.LoggingFilter,
        LogType = {
            type = "string",
        },
    },
}

M.TelemetryDestinationConfiguration = {
    type = "structure",
    id = "TelemetryDestinationConfiguration",
    members = {
        DestinationType = {
            type = "string",
        },
        DestinationPattern = {
            type = "string",
        },
        RetentionInDays = {
            type = "integer",
        },
        VPCFlowLogParameters = M.VPCFlowLogParameters,
        CloudtrailParameters = M.CloudtrailParameters,
        ELBLoadBalancerLoggingParameters = M.ELBLoadBalancerLoggingParameters,
        WAFLoggingParameters = M.WAFLoggingParameters,
        LogDeliveryParameters = M.LogDeliveryParameters,
        MskMonitoringParameters = M.MskMonitoringParameters,
    },
}

M.ResourceType = {
    AWS_EC2_INSTANCE = "AWS::EC2::Instance",
    AWS_EC2_VPC = "AWS::EC2::VPC",
    AWS_LAMDBA_FUNCTION = "AWS::Lambda::Function",
    AWS_CLOUDTRAIL = "AWS::CloudTrail",
    AWS_EKS_CLUSTER = "AWS::EKS::Cluster",
    AWS_WAF_V2_WEB_ACL = "AWS::WAFv2::WebACL",
    AWS_ELB_LOADBALANCER = "AWS::ElasticLoadBalancingV2::LoadBalancer",
    AWS_ROUTE53_RESOLVER_RESOLVER_ENDPOINT = "AWS::Route53Resolver::ResolverEndpoint",
    AWS_BEDROCK_AGENTCORE_RUNTIME = "AWS::BedrockAgentCore::Runtime",
    AWS_BEDROCK_AGENTCORE_BROWSER = "AWS::BedrockAgentCore::Browser",
    AWS_BEDROCK_AGENTCORE_CODE_INTERPRETER = "AWS::BedrockAgentCore::CodeInterpreter",
    AWS_BEDROCK_AGENTCORE_GATEWAY = "AWS::BedrockAgentCore::Gateway",
    AWS_BEDROCK_AGENTCORE_MEMORY = "AWS::BedrockAgentCore::Memory",
    AWS_BEDROCK_AGENTCORE_WORKLOAD_IDENTITY = "AWS::BedrockAgentCore::WorkloadIdentity",
    AWS_SECURITY_HUB = "AWS::SecurityHub::Hub",
    AWS_CLOUDFRONT_DISTRIBUTION = "AWS::CloudFront::Distribution",
    AWS_SECURITY_HUB_HUBV2 = "AWS::SecurityHub::HubV2",
    AWS_OTEL_ENRICHMENT = "AWS::CloudWatch::OTelEnrichment",
    AWS_MSK_CLUSTER = "AWS::MSK::Cluster",
}

M.TelemetrySourceType = {
    VPC_FLOW_LOGS = "VPC_FLOW_LOGS",
    ROUTE53_RESOLVER_QUERY_LOGS = "ROUTE53_RESOLVER_QUERY_LOGS",
    EKS_AUDIT_LOGS = "EKS_AUDIT_LOGS",
    EKS_AUTHENTICATOR_LOGS = "EKS_AUTHENTICATOR_LOGS",
    EKS_CONTROLLER_MANAGER_LOGS = "EKS_CONTROLLER_MANAGER_LOGS",
    EKS_SCHEDULER_LOGS = "EKS_SCHEDULER_LOGS",
    EKS_API_LOGS = "EKS_API_LOGS",
}

M.TelemetryType = {
    LOGS = "Logs",
    METRICS = "Metrics",
    TRACES = "Traces",
}

M.TelemetryRule = {
    type = "structure",
    id = "TelemetryRule",
    members = {
        ResourceType = {
            type = "string",
        },
        TelemetryType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TelemetrySourceTypes = {
            type = "list",
            member = { type = "string" },
        },
        DestinationConfiguration = M.TelemetryDestinationConfiguration,
        Scope = {
            type = "string",
        },
        SelectionCriteria = {
            type = "string",
        },
        AllowFieldUpdates = {
            type = "boolean",
        },
        Regions = {
            type = "list",
            member = { type = "string" },
        },
        AllRegions = {
            type = "boolean",
        },
    },
}

M.CreateTelemetryRuleInput = {
    type = "structure",
    id = "CreateTelemetryRuleInput",
    members = {
        RuleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Rule = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TelemetryRule }),
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateTelemetryRuleOutput = {
    type = "structure",
    id = "CreateTelemetryRuleOutput",
    members = {
        RuleArn = {
            type = "string",
        },
    },
}

M.CreateTelemetryRuleForOrganizationInput = {
    type = "structure",
    id = "CreateTelemetryRuleForOrganizationInput",
    members = {
        RuleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Rule = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TelemetryRule }),
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateTelemetryRuleForOrganizationOutput = {
    type = "structure",
    id = "CreateTelemetryRuleForOrganizationOutput",
    members = {
        RuleArn = {
            type = "string",
        },
    },
}

M.DeleteCentralizationRuleForOrganizationInput = {
    type = "structure",
    id = "DeleteCentralizationRuleForOrganizationInput",
    members = {
        RuleIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteCentralizationRuleForOrganizationOutput = {
    type = "structure",
    id = "DeleteCentralizationRuleForOrganizationOutput",
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        ResourceId = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
    },
}

M.DeleteS3TableIntegrationInput = {
    type = "structure",
    id = "DeleteS3TableIntegrationInput",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteS3TableIntegrationOutput = {
    type = "structure",
    id = "DeleteS3TableIntegrationOutput",
}

M.InvalidStateException = {
    type = "structure",
    id = "InvalidStateException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteTelemetryPipelineInput = {
    type = "structure",
    id = "DeleteTelemetryPipelineInput",
    members = {
        PipelineIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteTelemetryPipelineOutput = {
    type = "structure",
    id = "DeleteTelemetryPipelineOutput",
}

M.DeleteTelemetryRuleInput = {
    type = "structure",
    id = "DeleteTelemetryRuleInput",
    members = {
        RuleIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteTelemetryRuleOutput = {
    type = "structure",
    id = "DeleteTelemetryRuleOutput",
}

M.DeleteTelemetryRuleForOrganizationInput = {
    type = "structure",
    id = "DeleteTelemetryRuleForOrganizationInput",
    members = {
        RuleIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteTelemetryRuleForOrganizationOutput = {
    type = "structure",
    id = "DeleteTelemetryRuleForOrganizationOutput",
}

M.GetCentralizationRuleForOrganizationInput = {
    type = "structure",
    id = "GetCentralizationRuleForOrganizationInput",
    members = {
        RuleIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetCentralizationRuleForOrganizationOutput = {
    type = "structure",
    id = "GetCentralizationRuleForOrganizationOutput",
    members = {
        RuleName = {
            type = "string",
        },
        RuleArn = {
            type = "string",
        },
        CreatorAccountId = {
            type = "string",
        },
        CreatedTimeStamp = {
            type = "long",
        },
        CreatedRegion = {
            type = "string",
        },
        LastUpdateTimeStamp = {
            type = "long",
        },
        RuleHealth = {
            type = "string",
        },
        FailureReason = {
            type = "string",
        },
        CentralizationRule = M.CentralizationRule,
    },
}

M.GetS3TableIntegrationInput = {
    type = "structure",
    id = "GetS3TableIntegrationInput",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.IntegrationStatus = {
    ACTIVE = "ACTIVE",
    DELETING = "DELETING",
}

M.GetS3TableIntegrationOutput = {
    type = "structure",
    id = "GetS3TableIntegrationOutput",
    members = {
        Arn = {
            type = "string",
        },
        RoleArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Encryption = M.Encryption,
        DestinationTableBucketArn = {
            type = "string",
        },
        CreatedTimeStamp = {
            type = "long",
        },
    },
}

M.GetTelemetryEnrichmentStatusInput = {
    type = "structure",
    id = "GetTelemetryEnrichmentStatusInput",
}

M.TelemetryEnrichmentStatus = {
    RUNNING = "Running",
    STOPPED = "Stopped",
    IMPAIRED = "Impaired",
}

M.GetTelemetryEnrichmentStatusOutput = {
    type = "structure",
    id = "GetTelemetryEnrichmentStatusOutput",
    members = {
        Status = {
            type = "string",
        },
        AwsResourceExplorerManagedViewArn = {
            type = "string",
        },
    },
}

M.GetTelemetryEvaluationStatusInput = {
    type = "structure",
    id = "GetTelemetryEvaluationStatusInput",
}

M.RegionStatus = {
    type = "structure",
    id = "RegionStatus",
    members = {
        Region = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        FailureReason = {
            type = "string",
        },
        RuleArn = {
            type = "string",
        },
    },
}

M.Status = {
    NOT_STARTED = "NOT_STARTED",
    STARTING = "STARTING",
    FAILED_START = "FAILED_START",
    RUNNING = "RUNNING",
    STOPPING = "STOPPING",
    FAILED_STOP = "FAILED_STOP",
    STOPPED = "STOPPED",
}

M.GetTelemetryEvaluationStatusOutput = {
    type = "structure",
    id = "GetTelemetryEvaluationStatusOutput",
    members = {
        Status = {
            type = "string",
        },
        FailureReason = {
            type = "string",
        },
        HomeRegion = {
            type = "string",
        },
        RegionStatuses = {
            type = "list",
            member = M.RegionStatus,
        },
    },
}

M.GetTelemetryEvaluationStatusForOrganizationInput = {
    type = "structure",
    id = "GetTelemetryEvaluationStatusForOrganizationInput",
}

M.GetTelemetryEvaluationStatusForOrganizationOutput = {
    type = "structure",
    id = "GetTelemetryEvaluationStatusForOrganizationOutput",
    members = {
        Status = {
            type = "string",
        },
        FailureReason = {
            type = "string",
        },
        HomeRegion = {
            type = "string",
        },
        RegionStatuses = {
            type = "list",
            member = M.RegionStatus,
        },
    },
}

M.GetTelemetryPipelineInput = {
    type = "structure",
    id = "GetTelemetryPipelineInput",
    members = {
        PipelineIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TelemetryPipelineStatus = {
    CREATING = "CREATING",
    ACTIVE = "ACTIVE",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
    CREATE_FAILED = "CREATE_FAILED",
    UPDATE_FAILED = "UPDATE_FAILED",
}

M.TelemetryPipelineStatusReason = {
    type = "structure",
    id = "TelemetryPipelineStatusReason",
    members = {
        Description = {
            type = "string",
        },
    },
}

M.TelemetryPipeline = {
    type = "structure",
    id = "TelemetryPipeline",
    members = {
        CreatedTimeStamp = {
            type = "long",
        },
        LastUpdateTimeStamp = {
            type = "long",
        },
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Configuration = M.TelemetryPipelineConfiguration,
        Status = {
            type = "string",
        },
        StatusReason = M.TelemetryPipelineStatusReason,
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetTelemetryPipelineOutput = {
    type = "structure",
    id = "GetTelemetryPipelineOutput",
    members = {
        Pipeline = M.TelemetryPipeline,
    },
}

M.GetTelemetryRuleInput = {
    type = "structure",
    id = "GetTelemetryRuleInput",
    members = {
        RuleIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetTelemetryRuleOutput = {
    type = "structure",
    id = "GetTelemetryRuleOutput",
    members = {
        RuleName = {
            type = "string",
        },
        RuleArn = {
            type = "string",
        },
        CreatedTimeStamp = {
            type = "long",
        },
        LastUpdateTimeStamp = {
            type = "long",
        },
        TelemetryRule = M.TelemetryRule,
        HomeRegion = {
            type = "string",
        },
        IsReplicated = {
            type = "boolean",
        },
        RegionStatuses = {
            type = "list",
            member = M.RegionStatus,
        },
    },
}

M.GetTelemetryRuleForOrganizationInput = {
    type = "structure",
    id = "GetTelemetryRuleForOrganizationInput",
    members = {
        RuleIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetTelemetryRuleForOrganizationOutput = {
    type = "structure",
    id = "GetTelemetryRuleForOrganizationOutput",
    members = {
        RuleName = {
            type = "string",
        },
        RuleArn = {
            type = "string",
        },
        CreatedTimeStamp = {
            type = "long",
        },
        LastUpdateTimeStamp = {
            type = "long",
        },
        TelemetryRule = M.TelemetryRule,
        HomeRegion = {
            type = "string",
        },
        IsReplicated = {
            type = "boolean",
        },
        RegionStatuses = {
            type = "list",
            member = M.RegionStatus,
        },
    },
}

M.IntegrationSummary = {
    type = "structure",
    id = "IntegrationSummary",
    members = {
        Arn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.ListCentralizationRulesForOrganizationInput = {
    type = "structure",
    id = "ListCentralizationRulesForOrganizationInput",
    members = {
        RuleNamePrefix = {
            type = "string",
        },
        AllRegions = {
            type = "boolean",
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListCentralizationRulesForOrganizationOutput = {
    type = "structure",
    id = "ListCentralizationRulesForOrganizationOutput",
    members = {
        CentralizationRuleSummaries = {
            type = "list",
            member = M.CentralizationRuleSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.TelemetryState = {
    ENABLED = "Enabled",
    DISABLED = "Disabled",
    NOT_APPLICABLE = "NotApplicable",
}

M.ListResourceTelemetryInput = {
    type = "structure",
    id = "ListResourceTelemetryInput",
    members = {
        ResourceIdentifierPrefix = {
            type = "string",
        },
        ResourceTypes = {
            type = "list",
            member = { type = "string" },
        },
        TelemetryConfigurationState = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        ResourceTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.TelemetryConfiguration = {
    type = "structure",
    id = "TelemetryConfiguration",
    members = {
        AccountIdentifier = {
            type = "string",
        },
        TelemetryConfigurationState = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        ResourceType = {
            type = "string",
        },
        ResourceIdentifier = {
            type = "string",
        },
        ResourceTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        LastUpdateTimeStamp = {
            type = "long",
        },
        TelemetrySourceType = {
            type = "string",
        },
    },
}

M.ListResourceTelemetryOutput = {
    type = "structure",
    id = "ListResourceTelemetryOutput",
    members = {
        TelemetryConfigurations = {
            type = "list",
            member = M.TelemetryConfiguration,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListResourceTelemetryForOrganizationInput = {
    type = "structure",
    id = "ListResourceTelemetryForOrganizationInput",
    members = {
        AccountIdentifiers = {
            type = "list",
            member = { type = "string" },
        },
        ResourceIdentifierPrefix = {
            type = "string",
        },
        ResourceTypes = {
            type = "list",
            member = { type = "string" },
        },
        TelemetryConfigurationState = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        ResourceTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListResourceTelemetryForOrganizationOutput = {
    type = "structure",
    id = "ListResourceTelemetryForOrganizationOutput",
    members = {
        TelemetryConfigurations = {
            type = "list",
            member = M.TelemetryConfiguration,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListS3TableIntegrationsInput = {
    type = "structure",
    id = "ListS3TableIntegrationsInput",
    members = {
        MaxResults = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListS3TableIntegrationsOutput = {
    type = "structure",
    id = "ListS3TableIntegrationsOutput",
    members = {
        IntegrationSummaries = {
            type = "list",
            member = M.IntegrationSummary,
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
        ResourceARN = {
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
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.ListTelemetryPipelinesInput = {
    type = "structure",
    id = "ListTelemetryPipelinesInput",
    members = {
        MaxResults = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.TelemetryPipelineSummary = {
    type = "structure",
    id = "TelemetryPipelineSummary",
    members = {
        CreatedTimeStamp = {
            type = "long",
        },
        LastUpdateTimeStamp = {
            type = "long",
        },
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        ConfigurationSummary = M.ConfigurationSummary,
    },
}

M.ListTelemetryPipelinesOutput = {
    type = "structure",
    id = "ListTelemetryPipelinesOutput",
    members = {
        PipelineSummaries = {
            type = "list",
            member = M.TelemetryPipelineSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTelemetryRulesInput = {
    type = "structure",
    id = "ListTelemetryRulesInput",
    members = {
        RuleNamePrefix = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.TelemetryRuleSummary = {
    type = "structure",
    id = "TelemetryRuleSummary",
    members = {
        RuleName = {
            type = "string",
        },
        RuleArn = {
            type = "string",
        },
        CreatedTimeStamp = {
            type = "long",
        },
        LastUpdateTimeStamp = {
            type = "long",
        },
        ResourceType = {
            type = "string",
        },
        TelemetryType = {
            type = "string",
        },
        TelemetrySourceTypes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListTelemetryRulesOutput = {
    type = "structure",
    id = "ListTelemetryRulesOutput",
    members = {
        TelemetryRuleSummaries = {
            type = "list",
            member = M.TelemetryRuleSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTelemetryRulesForOrganizationInput = {
    type = "structure",
    id = "ListTelemetryRulesForOrganizationInput",
    members = {
        RuleNamePrefix = {
            type = "string",
        },
        SourceAccountIds = {
            type = "list",
            member = { type = "string" },
        },
        SourceOrganizationUnitIds = {
            type = "list",
            member = { type = "string" },
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTelemetryRulesForOrganizationOutput = {
    type = "structure",
    id = "ListTelemetryRulesForOrganizationOutput",
    members = {
        TelemetryRuleSummaries = {
            type = "list",
            member = M.TelemetryRuleSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.StartTelemetryEnrichmentInput = {
    type = "structure",
    id = "StartTelemetryEnrichmentInput",
}

M.StartTelemetryEnrichmentOutput = {
    type = "structure",
    id = "StartTelemetryEnrichmentOutput",
    members = {
        Status = {
            type = "string",
        },
        AwsResourceExplorerManagedViewArn = {
            type = "string",
        },
    },
}

M.StartTelemetryEvaluationInput = {
    type = "structure",
    id = "StartTelemetryEvaluationInput",
    members = {
        Regions = {
            type = "list",
            member = { type = "string" },
        },
        AllRegions = {
            type = "boolean",
        },
    },
}

M.StartTelemetryEvaluationOutput = {
    type = "structure",
    id = "StartTelemetryEvaluationOutput",
}

M.StartTelemetryEvaluationForOrganizationInput = {
    type = "structure",
    id = "StartTelemetryEvaluationForOrganizationInput",
    members = {
        Regions = {
            type = "list",
            member = { type = "string" },
        },
        AllRegions = {
            type = "boolean",
        },
    },
}

M.StartTelemetryEvaluationForOrganizationOutput = {
    type = "structure",
    id = "StartTelemetryEvaluationForOrganizationOutput",
}

M.StopTelemetryEnrichmentInput = {
    type = "structure",
    id = "StopTelemetryEnrichmentInput",
}

M.StopTelemetryEnrichmentOutput = {
    type = "structure",
    id = "StopTelemetryEnrichmentOutput",
    members = {
        Status = {
            type = "string",
        },
    },
}

M.StopTelemetryEvaluationInput = {
    type = "structure",
    id = "StopTelemetryEvaluationInput",
}

M.StopTelemetryEvaluationOutput = {
    type = "structure",
    id = "StopTelemetryEvaluationOutput",
}

M.StopTelemetryEvaluationForOrganizationInput = {
    type = "structure",
    id = "StopTelemetryEvaluationForOrganizationInput",
}

M.StopTelemetryEvaluationForOrganizationOutput = {
    type = "structure",
    id = "StopTelemetryEvaluationForOrganizationOutput",
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        ResourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
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

M.UpdateTelemetryPipelineInput = {
    type = "structure",
    id = "UpdateTelemetryPipelineInput",
    members = {
        PipelineIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Configuration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TelemetryPipelineConfiguration }),
    },
}

M.UpdateTelemetryPipelineOutput = {
    type = "structure",
    id = "UpdateTelemetryPipelineOutput",
}

M.RecordFormat = {
    STRING = "STRING",
    JSON = "JSON",
}

M.Record = {
    type = "structure",
    id = "Record",
    members = {
        Data = {
            type = "string",
        },
        Type = {
            type = "string",
        },
    },
}

M.TestTelemetryPipelineInput = {
    type = "structure",
    id = "TestTelemetryPipelineInput",
    members = {
        Records = {
            type = "list",
            member = M.Record,
            traits = {
                required = true,
            },
        },
        Configuration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TelemetryPipelineConfiguration }),
    },
}

M.PipelineOutputError = {
    type = "structure",
    id = "PipelineOutputError",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.PipelineOutput = {
    type = "structure",
    id = "PipelineOutput",
    members = {
        Record = M.Record,
        Error = M.PipelineOutputError,
    },
}

M.TestTelemetryPipelineOutput = {
    type = "structure",
    id = "TestTelemetryPipelineOutput",
    members = {
        Results = {
            type = "list",
            member = M.PipelineOutput,
        },
    },
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
    members = {
        ResourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
    id = "UntagResourceOutput",
}

M.UpdateCentralizationRuleForOrganizationInput = {
    type = "structure",
    id = "UpdateCentralizationRuleForOrganizationInput",
    members = {
        RuleIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Rule = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CentralizationRule }),
    },
}

M.UpdateCentralizationRuleForOrganizationOutput = {
    type = "structure",
    id = "UpdateCentralizationRuleForOrganizationOutput",
    members = {
        RuleArn = {
            type = "string",
        },
    },
}

M.UpdateTelemetryRuleInput = {
    type = "structure",
    id = "UpdateTelemetryRuleInput",
    members = {
        RuleIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Rule = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TelemetryRule }),
    },
}

M.UpdateTelemetryRuleOutput = {
    type = "structure",
    id = "UpdateTelemetryRuleOutput",
    members = {
        RuleArn = {
            type = "string",
        },
    },
}

M.UpdateTelemetryRuleForOrganizationInput = {
    type = "structure",
    id = "UpdateTelemetryRuleForOrganizationInput",
    members = {
        RuleIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Rule = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TelemetryRule }),
    },
}

M.UpdateTelemetryRuleForOrganizationOutput = {
    type = "structure",
    id = "UpdateTelemetryRuleForOrganizationOutput",
    members = {
        RuleArn = {
            type = "string",
        },
    },
}

M.ValidateTelemetryPipelineConfigurationInput = {
    type = "structure",
    id = "ValidateTelemetryPipelineConfigurationInput",
    members = {
        Configuration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TelemetryPipelineConfiguration }),
    },
}

M.ValidateTelemetryPipelineConfigurationOutput = {
    type = "structure",
    id = "ValidateTelemetryPipelineConfigurationOutput",
    members = {
        Errors = {
            type = "list",
            member = M.ValidationError,
        },
    },
}

return M
