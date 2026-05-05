local M = {}

M.Action = {
    ALLOW = "ALLOW",
    BLOCK = "BLOCK",
    COUNT = "COUNT",
    CAPTCHA = "CAPTCHA",
    CHALLENGE = "CHALLENGE",
    EXCLUDED_AS_COUNT = "EXCLUDED_AS_COUNT",
}

M.CentralizationFailureReason = {
    TRUSTED_ACCESS_NOT_ENABLED = "TRUSTED_ACCESS_NOT_ENABLED",
    DESTINATION_ACCOUNT_NOT_IN_ORGANIZATION = "DESTINATION_ACCOUNT_NOT_IN_ORGANIZATION",
    INTERNAL_SERVER_ERROR = "INTERNAL_SERVER_ERROR",
}

M.EncryptionConflictResolutionStrategy = {
    ALLOW = "ALLOW",
    SKIP = "SKIP",
}

M.EncryptionStrategy = {
    CUSTOMER_MANAGED = "CUSTOMER_MANAGED",
    AWS_OWNED = "AWS_OWNED",
}

M.EncryptedLogGroupStrategy = {
    ALLOW = "ALLOW",
    SKIP = "SKIP",
}

M.RuleHealth = {
    HEALTHY = "Healthy",
    UNHEALTHY = "Unhealthy",
    PROVISIONING = "Provisioning",
}

M.SSEAlgorithm = {
    SSE_KMS = "aws:kms",
    SSE_S3 = "AES256",
}

M.DestinationType = {
    CLOUDWATCH_LOGS = "cloud-watch-logs",
}

M.OutputFormat = {
    PLAIN = "plain",
    JSON = "json",
}

M.LogType = {
    APPLICATION = "APPLICATION_LOGS",
    USAGE = "USAGE_LOGS",
    SECURITY_FINDING = "SECURITY_FINDING_LOGS",
    ACCESS = "ACCESS_LOGS",
    CONNECTION = "CONNECTION_LOGS",
}

M.MskEnhancedMonitoringLevel = {
    DEFAULT = "DEFAULT",
    PER_BROKER = "PER_BROKER",
    PER_TOPIC_PER_BROKER = "PER_TOPIC_PER_BROKER",
    PER_TOPIC_PER_PARTITION = "PER_TOPIC_PER_PARTITION",
}

M.FilterBehavior = {
    KEEP = "KEEP",
    DROP = "DROP",
}

M.FilterRequirement = {
    MEETS_ALL = "MEETS_ALL",
    MEETS_ANY = "MEETS_ANY",
}

M.WAFLogType = {
    WAF_LOGS = "WAF_LOGS",
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

M.IntegrationStatus = {
    ACTIVE = "ACTIVE",
    DELETING = "DELETING",
}

M.TelemetryEnrichmentStatus = {
    RUNNING = "Running",
    STOPPED = "Stopped",
    IMPAIRED = "Impaired",
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

M.TelemetryPipelineStatus = {
    CREATING = "CREATING",
    ACTIVE = "ACTIVE",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
    CREATE_FAILED = "CREATE_FAILED",
    UPDATE_FAILED = "UPDATE_FAILED",
}

M.TelemetryState = {
    ENABLED = "Enabled",
    DISABLED = "Disabled",
    NOT_APPLICABLE = "NotApplicable",
}

M.RecordFormat = {
    STRING = "STRING",
    JSON = "JSON",
}

return M
