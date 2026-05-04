local M = {}

M.AccessDeniedException = {
    type = "structure",
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
    members = {
        Action = {
            type = "string",
        },
    },
}

M.AdvancedFieldSelector = {
    type = "structure",
    members = {
        Field = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Equals = {
            type = "list",
            member_type = "string",
        },
        StartsWith = {
            type = "list",
            member_type = "string",
        },
        EndsWith = {
            type = "list",
            member_type = "string",
        },
        NotEquals = {
            type = "list",
            member_type = "string",
        },
        NotStartsWith = {
            type = "list",
            member_type = "string",
        },
        NotEndsWith = {
            type = "list",
            member_type = "string",
        },
    },
}

M.AdvancedEventSelector = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        FieldSelectors = {
            type = "list",
            member_type = "structure",
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
    members = {
        LogsEncryptionConfiguration = {
            type = "structure",
        },
        BackupConfiguration = {
            type = "structure",
        },
        LogGroupNameConfiguration = {
            type = "structure",
        },
    },
}

M.CentralizationRuleDestination = {
    type = "structure",
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
        DestinationLogsConfiguration = {
            type = "structure",
        },
    },
}

M.EncryptedLogGroupStrategy = {
    ALLOW = "ALLOW",
    SKIP = "SKIP",
}

M.SourceLogsConfiguration = {
    type = "structure",
    members = {
        LogGroupSelectionCriteria = {
            type = "string",
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
    members = {
        Regions = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        Scope = {
            type = "string",
        },
        SourceLogsConfiguration = {
            type = "structure",
        },
    },
}

M.CentralizationRule = {
    type = "structure",
    members = {
        Source = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Destination = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.RuleHealth = {
    HEALTHY = "Healthy",
    UNHEALTHY = "Unhealthy",
    PROVISIONING = "Provisioning",
}

M.CentralizationRuleSummary = {
    type = "structure",
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
            type = "number",
        },
        CreatedRegion = {
            type = "string",
        },
        LastUpdateTimeStamp = {
            type = "number",
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
    members = {
        AdvancedEventSelectors = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.LabelNameCondition = {
    type = "structure",
    members = {
        LabelName = {
            type = "string",
        },
    },
}

M.Condition = {
    type = "structure",
    members = {
        ActionCondition = {
            type = "structure",
        },
        LabelNameCondition = {
            type = "structure",
        },
    },
}

M.DataSource = {
    type = "structure",
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
    members = {
        Type = {
            type = "string",
        },
    },
}

M.ConfigurationSummary = {
    type = "structure",
    members = {
        Sources = {
            type = "list",
            member_type = "structure",
        },
        DataSources = {
            type = "list",
            member_type = "structure",
        },
        Processors = {
            type = "list",
            member_type = "string",
        },
        ProcessorCount = {
            type = "number",
        },
        Sinks = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ConflictException = {
    type = "structure",
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
    members = {
        RuleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Rule = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateCentralizationRuleForOrganizationOutput = {
    type = "structure",
    members = {
        RuleArn = {
            type = "string",
        },
    },
}

M.InternalServerException = {
    type = "structure",
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
            type = "number",
            traits = {
                http_header = "Retry-After",
            },
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
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
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ValidationError = {
    type = "structure",
    members = {
        Message = {
            type = "string",
        },
        Reason = {
            type = "string",
        },
        FieldMap = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Errors = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.SSEAlgorithm = {
    SSE_KMS = "aws:kms",
    SSE_S3 = "AES256",
}

M.Encryption = {
    type = "structure",
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
    members = {
        Encryption = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateS3TableIntegrationOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.TelemetryPipelineConfiguration = {
    type = "structure",
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
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Configuration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateTelemetryPipelineOutput = {
    type = "structure",
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
    members = {
        LogTypes = {
            type = "list",
            member_type = "string",
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
    members = {
        EnhancedMonitoring = {
            type = "string",
        },
    },
}

M.VPCFlowLogParameters = {
    type = "structure",
    members = {
        LogFormat = {
            type = "string",
        },
        TrafficType = {
            type = "string",
        },
        MaxAggregationInterval = {
            type = "number",
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
    members = {
        Behavior = {
            type = "string",
        },
        Requirement = {
            type = "string",
        },
        Conditions = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.LoggingFilter = {
    type = "structure",
    members = {
        Filters = {
            type = "list",
            member_type = "structure",
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
    members = {
        Name = {
            type = "string",
        },
    },
}

M.FieldToMatch = {
    type = "structure",
    members = {
        SingleHeader = {
            type = "structure",
        },
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
    members = {
        RedactedFields = {
            type = "list",
            member_type = "structure",
        },
        LoggingFilter = {
            type = "structure",
        },
        LogType = {
            type = "string",
        },
    },
}

M.TelemetryDestinationConfiguration = {
    type = "structure",
    members = {
        DestinationType = {
            type = "string",
        },
        DestinationPattern = {
            type = "string",
        },
        RetentionInDays = {
            type = "number",
        },
        VPCFlowLogParameters = {
            type = "structure",
        },
        CloudtrailParameters = {
            type = "structure",
        },
        ELBLoadBalancerLoggingParameters = {
            type = "structure",
        },
        WAFLoggingParameters = {
            type = "structure",
        },
        LogDeliveryParameters = {
            type = "structure",
        },
        MskMonitoringParameters = {
            type = "structure",
        },
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
            member_type = "string",
        },
        DestinationConfiguration = {
            type = "structure",
        },
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
            member_type = "string",
        },
        AllRegions = {
            type = "boolean",
        },
    },
}

M.CreateTelemetryRuleInput = {
    type = "structure",
    members = {
        RuleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Rule = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateTelemetryRuleOutput = {
    type = "structure",
    members = {
        RuleArn = {
            type = "string",
        },
    },
}

M.CreateTelemetryRuleForOrganizationInput = {
    type = "structure",
    members = {
        RuleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Rule = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateTelemetryRuleForOrganizationOutput = {
    type = "structure",
    members = {
        RuleArn = {
            type = "string",
        },
    },
}

M.DeleteCentralizationRuleForOrganizationInput = {
    type = "structure",
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
}

M.ResourceNotFoundException = {
    type = "structure",
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
}

M.InvalidStateException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteTelemetryPipelineInput = {
    type = "structure",
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
}

M.DeleteTelemetryRuleInput = {
    type = "structure",
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
}

M.DeleteTelemetryRuleForOrganizationInput = {
    type = "structure",
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
}

M.GetCentralizationRuleForOrganizationInput = {
    type = "structure",
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
            type = "number",
        },
        CreatedRegion = {
            type = "string",
        },
        LastUpdateTimeStamp = {
            type = "number",
        },
        RuleHealth = {
            type = "string",
        },
        FailureReason = {
            type = "string",
        },
        CentralizationRule = {
            type = "structure",
        },
    },
}

M.GetS3TableIntegrationInput = {
    type = "structure",
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
        Encryption = {
            type = "structure",
        },
        DestinationTableBucketArn = {
            type = "string",
        },
        CreatedTimeStamp = {
            type = "number",
        },
    },
}

M.GetTelemetryEnrichmentStatusInput = {
    type = "structure",
}

M.TelemetryEnrichmentStatus = {
    RUNNING = "Running",
    STOPPED = "Stopped",
    IMPAIRED = "Impaired",
}

M.GetTelemetryEnrichmentStatusOutput = {
    type = "structure",
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
}

M.RegionStatus = {
    type = "structure",
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
            member_type = "structure",
        },
    },
}

M.GetTelemetryEvaluationStatusForOrganizationInput = {
    type = "structure",
}

M.GetTelemetryEvaluationStatusForOrganizationOutput = {
    type = "structure",
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
            member_type = "structure",
        },
    },
}

M.GetTelemetryPipelineInput = {
    type = "structure",
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
    members = {
        Description = {
            type = "string",
        },
    },
}

M.TelemetryPipeline = {
    type = "structure",
    members = {
        CreatedTimeStamp = {
            type = "number",
        },
        LastUpdateTimeStamp = {
            type = "number",
        },
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Configuration = {
            type = "structure",
        },
        Status = {
            type = "string",
        },
        StatusReason = {
            type = "structure",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.GetTelemetryPipelineOutput = {
    type = "structure",
    members = {
        Pipeline = {
            type = "structure",
        },
    },
}

M.GetTelemetryRuleInput = {
    type = "structure",
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
    members = {
        RuleName = {
            type = "string",
        },
        RuleArn = {
            type = "string",
        },
        CreatedTimeStamp = {
            type = "number",
        },
        LastUpdateTimeStamp = {
            type = "number",
        },
        TelemetryRule = {
            type = "structure",
        },
        HomeRegion = {
            type = "string",
        },
        IsReplicated = {
            type = "boolean",
        },
        RegionStatuses = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetTelemetryRuleForOrganizationInput = {
    type = "structure",
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
    members = {
        RuleName = {
            type = "string",
        },
        RuleArn = {
            type = "string",
        },
        CreatedTimeStamp = {
            type = "number",
        },
        LastUpdateTimeStamp = {
            type = "number",
        },
        TelemetryRule = {
            type = "structure",
        },
        HomeRegion = {
            type = "string",
        },
        IsReplicated = {
            type = "boolean",
        },
        RegionStatuses = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.IntegrationSummary = {
    type = "structure",
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
    members = {
        RuleNamePrefix = {
            type = "string",
        },
        AllRegions = {
            type = "boolean",
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListCentralizationRulesForOrganizationOutput = {
    type = "structure",
    members = {
        CentralizationRuleSummaries = {
            type = "list",
            member_type = "structure",
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
    members = {
        ResourceIdentifierPrefix = {
            type = "string",
        },
        ResourceTypes = {
            type = "list",
            member_type = "string",
        },
        TelemetryConfigurationState = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        ResourceTags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.TelemetryConfiguration = {
    type = "structure",
    members = {
        AccountIdentifier = {
            type = "string",
        },
        TelemetryConfigurationState = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        ResourceType = {
            type = "string",
        },
        ResourceIdentifier = {
            type = "string",
        },
        ResourceTags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        LastUpdateTimeStamp = {
            type = "number",
        },
        TelemetrySourceType = {
            type = "string",
        },
    },
}

M.ListResourceTelemetryOutput = {
    type = "structure",
    members = {
        TelemetryConfigurations = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListResourceTelemetryForOrganizationInput = {
    type = "structure",
    members = {
        AccountIdentifiers = {
            type = "list",
            member_type = "string",
        },
        ResourceIdentifierPrefix = {
            type = "string",
        },
        ResourceTypes = {
            type = "list",
            member_type = "string",
        },
        TelemetryConfigurationState = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        ResourceTags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListResourceTelemetryForOrganizationOutput = {
    type = "structure",
    members = {
        TelemetryConfigurations = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListS3TableIntegrationsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListS3TableIntegrationsOutput = {
    type = "structure",
    members = {
        IntegrationSummaries = {
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
    members = {
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListTelemetryPipelinesInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.TelemetryPipelineSummary = {
    type = "structure",
    members = {
        CreatedTimeStamp = {
            type = "number",
        },
        LastUpdateTimeStamp = {
            type = "number",
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
            key_type = "string",
            value_type = "string",
        },
        ConfigurationSummary = {
            type = "structure",
        },
    },
}

M.ListTelemetryPipelinesOutput = {
    type = "structure",
    members = {
        PipelineSummaries = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTelemetryRulesInput = {
    type = "structure",
    members = {
        RuleNamePrefix = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.TelemetryRuleSummary = {
    type = "structure",
    members = {
        RuleName = {
            type = "string",
        },
        RuleArn = {
            type = "string",
        },
        CreatedTimeStamp = {
            type = "number",
        },
        LastUpdateTimeStamp = {
            type = "number",
        },
        ResourceType = {
            type = "string",
        },
        TelemetryType = {
            type = "string",
        },
        TelemetrySourceTypes = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ListTelemetryRulesOutput = {
    type = "structure",
    members = {
        TelemetryRuleSummaries = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTelemetryRulesForOrganizationInput = {
    type = "structure",
    members = {
        RuleNamePrefix = {
            type = "string",
        },
        SourceAccountIds = {
            type = "list",
            member_type = "string",
        },
        SourceOrganizationUnitIds = {
            type = "list",
            member_type = "string",
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTelemetryRulesForOrganizationOutput = {
    type = "structure",
    members = {
        TelemetryRuleSummaries = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.StartTelemetryEnrichmentInput = {
    type = "structure",
}

M.StartTelemetryEnrichmentOutput = {
    type = "structure",
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
    members = {
        Regions = {
            type = "list",
            member_type = "string",
        },
        AllRegions = {
            type = "boolean",
        },
    },
}

M.StartTelemetryEvaluationOutput = {
    type = "structure",
}

M.StartTelemetryEvaluationForOrganizationInput = {
    type = "structure",
    members = {
        Regions = {
            type = "list",
            member_type = "string",
        },
        AllRegions = {
            type = "boolean",
        },
    },
}

M.StartTelemetryEvaluationForOrganizationOutput = {
    type = "structure",
}

M.StopTelemetryEnrichmentInput = {
    type = "structure",
}

M.StopTelemetryEnrichmentOutput = {
    type = "structure",
    members = {
        Status = {
            type = "string",
        },
    },
}

M.StopTelemetryEvaluationInput = {
    type = "structure",
}

M.StopTelemetryEvaluationOutput = {
    type = "structure",
}

M.StopTelemetryEvaluationForOrganizationInput = {
    type = "structure",
}

M.StopTelemetryEvaluationForOrganizationOutput = {
    type = "structure",
}

M.TagResourceInput = {
    type = "structure",
    members = {
        ResourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
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

M.UpdateTelemetryPipelineInput = {
    type = "structure",
    members = {
        PipelineIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Configuration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateTelemetryPipelineOutput = {
    type = "structure",
}

M.RecordFormat = {
    STRING = "STRING",
    JSON = "JSON",
}

M.Record = {
    type = "structure",
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
    members = {
        Records = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        Configuration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PipelineOutputError = {
    type = "structure",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.PipelineOutput = {
    type = "structure",
    members = {
        Record = {
            type = "structure",
        },
        Error = {
            type = "structure",
        },
    },
}

M.TestTelemetryPipelineOutput = {
    type = "structure",
    members = {
        Results = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.UntagResourceInput = {
    type = "structure",
    members = {
        ResourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagKeys = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
}

M.UpdateCentralizationRuleForOrganizationInput = {
    type = "structure",
    members = {
        RuleIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Rule = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateCentralizationRuleForOrganizationOutput = {
    type = "structure",
    members = {
        RuleArn = {
            type = "string",
        },
    },
}

M.UpdateTelemetryRuleInput = {
    type = "structure",
    members = {
        RuleIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Rule = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateTelemetryRuleOutput = {
    type = "structure",
    members = {
        RuleArn = {
            type = "string",
        },
    },
}

M.UpdateTelemetryRuleForOrganizationInput = {
    type = "structure",
    members = {
        RuleIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Rule = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateTelemetryRuleForOrganizationOutput = {
    type = "structure",
    members = {
        RuleArn = {
            type = "string",
        },
    },
}

M.ValidateTelemetryPipelineConfigurationInput = {
    type = "structure",
    members = {
        Configuration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ValidateTelemetryPipelineConfigurationOutput = {
    type = "structure",
    members = {
        Errors = {
            type = "list",
            member_type = "structure",
        },
    },
}

return M
