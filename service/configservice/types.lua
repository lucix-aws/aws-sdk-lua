local M = {}

M.AccountAggregationSource = {
    type = "structure",
    id = "AccountAggregationSource",
    members = {
        AccountIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        AllAwsRegions = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        AwsRegions = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ComplianceContributorCount = {
    type = "structure",
    id = "ComplianceContributorCount",
    members = {
        CappedCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        CapExceeded = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.ComplianceType = {
    Compliant = "COMPLIANT",
    Non_Compliant = "NON_COMPLIANT",
    Not_Applicable = "NOT_APPLICABLE",
    Insufficient_Data = "INSUFFICIENT_DATA",
}

M.Compliance = {
    type = "structure",
    id = "Compliance",
    members = {
        ComplianceType = {
            type = "string",
        },
        ComplianceContributorCount = M.ComplianceContributorCount,
    },
}

M.AggregateComplianceByConfigRule = {
    type = "structure",
    id = "AggregateComplianceByConfigRule",
    members = {
        ConfigRuleName = {
            type = "string",
        },
        Compliance = M.Compliance,
        AccountId = {
            type = "string",
        },
        AwsRegion = {
            type = "string",
        },
    },
}

M.ConformancePackComplianceType = {
    COMPLIANT = "COMPLIANT",
    NON_COMPLIANT = "NON_COMPLIANT",
    INSUFFICIENT_DATA = "INSUFFICIENT_DATA",
}

M.AggregateConformancePackCompliance = {
    type = "structure",
    id = "AggregateConformancePackCompliance",
    members = {
        ComplianceType = {
            type = "string",
        },
        CompliantRuleCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        NonCompliantRuleCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        TotalRuleCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.AggregateComplianceByConformancePack = {
    type = "structure",
    id = "AggregateComplianceByConformancePack",
    members = {
        ConformancePackName = {
            type = "string",
        },
        Compliance = M.AggregateConformancePackCompliance,
        AccountId = {
            type = "string",
        },
        AwsRegion = {
            type = "string",
        },
    },
}

M.ComplianceSummary = {
    type = "structure",
    id = "ComplianceSummary",
    members = {
        CompliantResourceCount = M.ComplianceContributorCount,
        NonCompliantResourceCount = M.ComplianceContributorCount,
        ComplianceSummaryTimestamp = {
            type = "timestamp",
        },
    },
}

M.AggregateComplianceCount = {
    type = "structure",
    id = "AggregateComplianceCount",
    members = {
        GroupName = {
            type = "string",
        },
        ComplianceSummary = M.ComplianceSummary,
    },
}

M.AggregateConformancePackComplianceCount = {
    type = "structure",
    id = "AggregateConformancePackComplianceCount",
    members = {
        CompliantConformancePackCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        NonCompliantConformancePackCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.AggregateConformancePackComplianceFilters = {
    type = "structure",
    id = "AggregateConformancePackComplianceFilters",
    members = {
        ConformancePackName = {
            type = "string",
        },
        ComplianceType = {
            type = "string",
        },
        AccountId = {
            type = "string",
        },
        AwsRegion = {
            type = "string",
        },
    },
}

M.AggregateConformancePackComplianceSummary = {
    type = "structure",
    id = "AggregateConformancePackComplianceSummary",
    members = {
        ComplianceSummary = M.AggregateConformancePackComplianceCount,
        GroupName = {
            type = "string",
        },
    },
}

M.AggregateConformancePackComplianceSummaryFilters = {
    type = "structure",
    id = "AggregateConformancePackComplianceSummaryFilters",
    members = {
        AccountId = {
            type = "string",
        },
        AwsRegion = {
            type = "string",
        },
    },
}

M.AggregateConformancePackComplianceSummaryGroupKey = {
    ACCOUNT_ID = "ACCOUNT_ID",
    AWS_REGION = "AWS_REGION",
}

M.AggregatedSourceStatusType = {
    FAILED = "FAILED",
    SUCCEEDED = "SUCCEEDED",
    OUTDATED = "OUTDATED",
}

M.AggregatedSourceType = {
    ACCOUNT = "ACCOUNT",
    ORGANIZATION = "ORGANIZATION",
}

M.AggregatedSourceStatus = {
    type = "structure",
    id = "AggregatedSourceStatus",
    members = {
        SourceId = {
            type = "string",
        },
        SourceType = {
            type = "string",
        },
        AwsRegion = {
            type = "string",
        },
        LastUpdateStatus = {
            type = "string",
        },
        LastUpdateTime = {
            type = "timestamp",
        },
        LastErrorCode = {
            type = "string",
        },
        LastErrorMessage = {
            type = "string",
        },
    },
}

M.EvaluationMode = {
    DETECTIVE = "DETECTIVE",
    PROACTIVE = "PROACTIVE",
}

M.EvaluationResultQualifier = {
    type = "structure",
    id = "EvaluationResultQualifier",
    members = {
        ConfigRuleName = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        ResourceId = {
            type = "string",
        },
        EvaluationMode = {
            type = "string",
        },
    },
}

M.EvaluationResultIdentifier = {
    type = "structure",
    id = "EvaluationResultIdentifier",
    members = {
        EvaluationResultQualifier = M.EvaluationResultQualifier,
        OrderingTimestamp = {
            type = "timestamp",
        },
        ResourceEvaluationId = {
            type = "string",
        },
    },
}

M.AggregateEvaluationResult = {
    type = "structure",
    id = "AggregateEvaluationResult",
    members = {
        EvaluationResultIdentifier = M.EvaluationResultIdentifier,
        ComplianceType = {
            type = "string",
        },
        ResultRecordedTime = {
            type = "timestamp",
        },
        ConfigRuleInvokedTime = {
            type = "timestamp",
        },
        Annotation = {
            type = "string",
        },
        AccountId = {
            type = "string",
        },
        AwsRegion = {
            type = "string",
        },
    },
}

M.ResourceType = {
    CustomerGateway = "AWS::EC2::CustomerGateway",
    EIP = "AWS::EC2::EIP",
    Host = "AWS::EC2::Host",
    Instance = "AWS::EC2::Instance",
    InternetGateway = "AWS::EC2::InternetGateway",
    NetworkAcl = "AWS::EC2::NetworkAcl",
    NetworkInterface = "AWS::EC2::NetworkInterface",
    RouteTable = "AWS::EC2::RouteTable",
    SecurityGroup = "AWS::EC2::SecurityGroup",
    Subnet = "AWS::EC2::Subnet",
    Trail = "AWS::CloudTrail::Trail",
    Volume = "AWS::EC2::Volume",
    VPC = "AWS::EC2::VPC",
    VPNConnection = "AWS::EC2::VPNConnection",
    VPNGateway = "AWS::EC2::VPNGateway",
    RegisteredHAInstance = "AWS::EC2::RegisteredHAInstance",
    NatGateway = "AWS::EC2::NatGateway",
    EgressOnlyInternetGateway = "AWS::EC2::EgressOnlyInternetGateway",
    VPCEndpoint = "AWS::EC2::VPCEndpoint",
    VPCEndpointService = "AWS::EC2::VPCEndpointService",
    FlowLog = "AWS::EC2::FlowLog",
    VPCPeeringConnection = "AWS::EC2::VPCPeeringConnection",
    Domain = "AWS::Elasticsearch::Domain",
    Group = "AWS::IAM::Group",
    Policy = "AWS::IAM::Policy",
    Role = "AWS::IAM::Role",
    User = "AWS::IAM::User",
    LoadBalancerV2 = "AWS::ElasticLoadBalancingV2::LoadBalancer",
    Certificate = "AWS::ACM::Certificate",
    DBInstance = "AWS::RDS::DBInstance",
    DBSubnetGroup = "AWS::RDS::DBSubnetGroup",
    DBSecurityGroup = "AWS::RDS::DBSecurityGroup",
    DBSnapshot = "AWS::RDS::DBSnapshot",
    DBCluster = "AWS::RDS::DBCluster",
    DBClusterSnapshot = "AWS::RDS::DBClusterSnapshot",
    EventSubscription = "AWS::RDS::EventSubscription",
    Bucket = "AWS::S3::Bucket",
    AccountPublicAccessBlock = "AWS::S3::AccountPublicAccessBlock",
    Cluster = "AWS::Redshift::Cluster",
    ClusterSnapshot = "AWS::Redshift::ClusterSnapshot",
    ClusterParameterGroup = "AWS::Redshift::ClusterParameterGroup",
    ClusterSecurityGroup = "AWS::Redshift::ClusterSecurityGroup",
    ClusterSubnetGroup = "AWS::Redshift::ClusterSubnetGroup",
    RedshiftEventSubscription = "AWS::Redshift::EventSubscription",
    ManagedInstanceInventory = "AWS::SSM::ManagedInstanceInventory",
    Alarm = "AWS::CloudWatch::Alarm",
    Stack = "AWS::CloudFormation::Stack",
    LoadBalancer = "AWS::ElasticLoadBalancing::LoadBalancer",
    AutoScalingGroup = "AWS::AutoScaling::AutoScalingGroup",
    LaunchConfiguration = "AWS::AutoScaling::LaunchConfiguration",
    ScalingPolicy = "AWS::AutoScaling::ScalingPolicy",
    ScheduledAction = "AWS::AutoScaling::ScheduledAction",
    Table = "AWS::DynamoDB::Table",
    Project = "AWS::CodeBuild::Project",
    RateBasedRule = "AWS::WAF::RateBasedRule",
    Rule = "AWS::WAF::Rule",
    RuleGroup = "AWS::WAF::RuleGroup",
    WebACL = "AWS::WAF::WebACL",
    RegionalRateBasedRule = "AWS::WAFRegional::RateBasedRule",
    RegionalRule = "AWS::WAFRegional::Rule",
    RegionalRuleGroup = "AWS::WAFRegional::RuleGroup",
    RegionalWebACL = "AWS::WAFRegional::WebACL",
    Distribution = "AWS::CloudFront::Distribution",
    StreamingDistribution = "AWS::CloudFront::StreamingDistribution",
    Function = "AWS::Lambda::Function",
    NetworkFirewallFirewall = "AWS::NetworkFirewall::Firewall",
    NetworkFirewallFirewallPolicy = "AWS::NetworkFirewall::FirewallPolicy",
    NetworkFirewallRuleGroup = "AWS::NetworkFirewall::RuleGroup",
    Application = "AWS::ElasticBeanstalk::Application",
    ApplicationVersion = "AWS::ElasticBeanstalk::ApplicationVersion",
    Environment = "AWS::ElasticBeanstalk::Environment",
    WebACLV2 = "AWS::WAFv2::WebACL",
    RuleGroupV2 = "AWS::WAFv2::RuleGroup",
    IPSetV2 = "AWS::WAFv2::IPSet",
    RegexPatternSetV2 = "AWS::WAFv2::RegexPatternSet",
    ManagedRuleSetV2 = "AWS::WAFv2::ManagedRuleSet",
    EncryptionConfig = "AWS::XRay::EncryptionConfig",
    AssociationCompliance = "AWS::SSM::AssociationCompliance",
    PatchCompliance = "AWS::SSM::PatchCompliance",
    Protection = "AWS::Shield::Protection",
    RegionalProtection = "AWS::ShieldRegional::Protection",
    ConformancePackCompliance = "AWS::Config::ConformancePackCompliance",
    ResourceCompliance = "AWS::Config::ResourceCompliance",
    Stage = "AWS::ApiGateway::Stage",
    RestApi = "AWS::ApiGateway::RestApi",
    StageV2 = "AWS::ApiGatewayV2::Stage",
    Api = "AWS::ApiGatewayV2::Api",
    Pipeline = "AWS::CodePipeline::Pipeline",
    CloudFormationProvisionedProduct = "AWS::ServiceCatalog::CloudFormationProvisionedProduct",
    CloudFormationProduct = "AWS::ServiceCatalog::CloudFormationProduct",
    Portfolio = "AWS::ServiceCatalog::Portfolio",
    Queue = "AWS::SQS::Queue",
    Key = "AWS::KMS::Key",
    QLDBLedger = "AWS::QLDB::Ledger",
    Secret = "AWS::SecretsManager::Secret",
    Topic = "AWS::SNS::Topic",
    FileData = "AWS::SSM::FileData",
    BackupPlan = "AWS::Backup::BackupPlan",
    BackupSelection = "AWS::Backup::BackupSelection",
    BackupVault = "AWS::Backup::BackupVault",
    BackupRecoveryPoint = "AWS::Backup::RecoveryPoint",
    ECRRepository = "AWS::ECR::Repository",
    ECSCluster = "AWS::ECS::Cluster",
    ECSService = "AWS::ECS::Service",
    ECSTaskDefinition = "AWS::ECS::TaskDefinition",
    EFSAccessPoint = "AWS::EFS::AccessPoint",
    EFSFileSystem = "AWS::EFS::FileSystem",
    EKSCluster = "AWS::EKS::Cluster",
    OpenSearchDomain = "AWS::OpenSearch::Domain",
    TransitGateway = "AWS::EC2::TransitGateway",
    KinesisStream = "AWS::Kinesis::Stream",
    KinesisStreamConsumer = "AWS::Kinesis::StreamConsumer",
    CodeDeployApplication = "AWS::CodeDeploy::Application",
    CodeDeployDeploymentConfig = "AWS::CodeDeploy::DeploymentConfig",
    CodeDeployDeploymentGroup = "AWS::CodeDeploy::DeploymentGroup",
    LaunchTemplate = "AWS::EC2::LaunchTemplate",
    ECRPublicRepository = "AWS::ECR::PublicRepository",
    GuardDutyDetector = "AWS::GuardDuty::Detector",
    EMRSecurityConfiguration = "AWS::EMR::SecurityConfiguration",
    SageMakerCodeRepository = "AWS::SageMaker::CodeRepository",
    Route53ResolverResolverEndpoint = "AWS::Route53Resolver::ResolverEndpoint",
    Route53ResolverResolverRule = "AWS::Route53Resolver::ResolverRule",
    Route53ResolverResolverRuleAssociation = "AWS::Route53Resolver::ResolverRuleAssociation",
    DMSReplicationSubnetGroup = "AWS::DMS::ReplicationSubnetGroup",
    DMSEventSubscription = "AWS::DMS::EventSubscription",
    MSKCluster = "AWS::MSK::Cluster",
    StepFunctionsActivity = "AWS::StepFunctions::Activity",
    WorkSpacesWorkspace = "AWS::WorkSpaces::Workspace",
    WorkSpacesConnectionAlias = "AWS::WorkSpaces::ConnectionAlias",
    SageMakerModel = "AWS::SageMaker::Model",
    ListenerV2 = "AWS::ElasticLoadBalancingV2::Listener",
    StepFunctionsStateMachine = "AWS::StepFunctions::StateMachine",
    BatchJobQueue = "AWS::Batch::JobQueue",
    BatchComputeEnvironment = "AWS::Batch::ComputeEnvironment",
    AccessAnalyzerAnalyzer = "AWS::AccessAnalyzer::Analyzer",
    AthenaWorkGroup = "AWS::Athena::WorkGroup",
    AthenaDataCatalog = "AWS::Athena::DataCatalog",
    DetectiveGraph = "AWS::Detective::Graph",
    GlobalAcceleratorAccelerator = "AWS::GlobalAccelerator::Accelerator",
    GlobalAcceleratorEndpointGroup = "AWS::GlobalAccelerator::EndpointGroup",
    GlobalAcceleratorListener = "AWS::GlobalAccelerator::Listener",
    TransitGatewayAttachment = "AWS::EC2::TransitGatewayAttachment",
    TransitGatewayRouteTable = "AWS::EC2::TransitGatewayRouteTable",
    DMSCertificate = "AWS::DMS::Certificate",
    AppConfigApplication = "AWS::AppConfig::Application",
    AppSyncGraphQLApi = "AWS::AppSync::GraphQLApi",
    DataSyncLocationSMB = "AWS::DataSync::LocationSMB",
    DataSyncLocationFSxLustre = "AWS::DataSync::LocationFSxLustre",
    DataSyncLocationS3 = "AWS::DataSync::LocationS3",
    DataSyncLocationEFS = "AWS::DataSync::LocationEFS",
    DataSyncTask = "AWS::DataSync::Task",
    DataSyncLocationNFS = "AWS::DataSync::LocationNFS",
    NetworkInsightsAccessScopeAnalysis = "AWS::EC2::NetworkInsightsAccessScopeAnalysis",
    EKSFargateProfile = "AWS::EKS::FargateProfile",
    GlueJob = "AWS::Glue::Job",
    GuardDutyThreatIntelSet = "AWS::GuardDuty::ThreatIntelSet",
    GuardDutyIPSet = "AWS::GuardDuty::IPSet",
    SageMakerWorkteam = "AWS::SageMaker::Workteam",
    SageMakerNotebookInstanceLifecycleConfig = "AWS::SageMaker::NotebookInstanceLifecycleConfig",
    ServiceDiscoveryService = "AWS::ServiceDiscovery::Service",
    ServiceDiscoveryPublicDnsNamespace = "AWS::ServiceDiscovery::PublicDnsNamespace",
    SESContactList = "AWS::SES::ContactList",
    SESConfigurationSet = "AWS::SES::ConfigurationSet",
    Route53HostedZone = "AWS::Route53::HostedZone",
    IoTEventsInput = "AWS::IoTEvents::Input",
    IoTEventsDetectorModel = "AWS::IoTEvents::DetectorModel",
    IoTEventsAlarmModel = "AWS::IoTEvents::AlarmModel",
    ServiceDiscoveryHttpNamespace = "AWS::ServiceDiscovery::HttpNamespace",
    EventsEventBus = "AWS::Events::EventBus",
    ImageBuilderContainerRecipe = "AWS::ImageBuilder::ContainerRecipe",
    ImageBuilderDistributionConfiguration = "AWS::ImageBuilder::DistributionConfiguration",
    ImageBuilderInfrastructureConfiguration = "AWS::ImageBuilder::InfrastructureConfiguration",
    DataSyncLocationObjectStorage = "AWS::DataSync::LocationObjectStorage",
    DataSyncLocationHDFS = "AWS::DataSync::LocationHDFS",
    GlueClassifier = "AWS::Glue::Classifier",
    Route53RecoveryReadinessCell = "AWS::Route53RecoveryReadiness::Cell",
    Route53RecoveryReadinessReadinessCheck = "AWS::Route53RecoveryReadiness::ReadinessCheck",
    ECRRegistryPolicy = "AWS::ECR::RegistryPolicy",
    BackupReportPlan = "AWS::Backup::ReportPlan",
    LightsailCertificate = "AWS::Lightsail::Certificate",
    RUMAppMonitor = "AWS::RUM::AppMonitor",
    EventsEndpoint = "AWS::Events::Endpoint",
    SESReceiptRuleSet = "AWS::SES::ReceiptRuleSet",
    EventsArchive = "AWS::Events::Archive",
    EventsApiDestination = "AWS::Events::ApiDestination",
    LightsailDisk = "AWS::Lightsail::Disk",
    FISExperimentTemplate = "AWS::FIS::ExperimentTemplate",
    DataSyncLocationFSxWindows = "AWS::DataSync::LocationFSxWindows",
    SESReceiptFilter = "AWS::SES::ReceiptFilter",
    GuardDutyFilter = "AWS::GuardDuty::Filter",
    SESTemplate = "AWS::SES::Template",
    AmazonMQBroker = "AWS::AmazonMQ::Broker",
    AppConfigEnvironment = "AWS::AppConfig::Environment",
    AppConfigConfigurationProfile = "AWS::AppConfig::ConfigurationProfile",
    Cloud9EnvironmentEC2 = "AWS::Cloud9::EnvironmentEC2",
    EventSchemasRegistry = "AWS::EventSchemas::Registry",
    EventSchemasRegistryPolicy = "AWS::EventSchemas::RegistryPolicy",
    EventSchemasDiscoverer = "AWS::EventSchemas::Discoverer",
    FraudDetectorLabel = "AWS::FraudDetector::Label",
    FraudDetectorEntityType = "AWS::FraudDetector::EntityType",
    FraudDetectorVariable = "AWS::FraudDetector::Variable",
    FraudDetectorOutcome = "AWS::FraudDetector::Outcome",
    IoTAuthorizer = "AWS::IoT::Authorizer",
    IoTSecurityProfile = "AWS::IoT::SecurityProfile",
    IoTRoleAlias = "AWS::IoT::RoleAlias",
    IoTDimension = "AWS::IoT::Dimension",
    IoTAnalyticsDatastore = "AWS::IoTAnalytics::Datastore",
    LightsailBucket = "AWS::Lightsail::Bucket",
    LightsailStaticIp = "AWS::Lightsail::StaticIp",
    MediaPackagePackagingGroup = "AWS::MediaPackage::PackagingGroup",
    Route53RecoveryReadinessRecoveryGroup = "AWS::Route53RecoveryReadiness::RecoveryGroup",
    ResilienceHubResiliencyPolicy = "AWS::ResilienceHub::ResiliencyPolicy",
    TransferWorkflow = "AWS::Transfer::Workflow",
    EKSIdentityProviderConfig = "AWS::EKS::IdentityProviderConfig",
    EKSAddon = "AWS::EKS::Addon",
    GlueMLTransform = "AWS::Glue::MLTransform",
    IoTPolicy = "AWS::IoT::Policy",
    IoTMitigationAction = "AWS::IoT::MitigationAction",
    IoTTwinMakerWorkspace = "AWS::IoTTwinMaker::Workspace",
    IoTTwinMakerEntity = "AWS::IoTTwinMaker::Entity",
    IoTAnalyticsDataset = "AWS::IoTAnalytics::Dataset",
    IoTAnalyticsPipeline = "AWS::IoTAnalytics::Pipeline",
    IoTAnalyticsChannel = "AWS::IoTAnalytics::Channel",
    IoTSiteWiseDashboard = "AWS::IoTSiteWise::Dashboard",
    IoTSiteWiseProject = "AWS::IoTSiteWise::Project",
    IoTSiteWisePortal = "AWS::IoTSiteWise::Portal",
    IoTSiteWiseAssetModel = "AWS::IoTSiteWise::AssetModel",
    IVSChannel = "AWS::IVS::Channel",
    IVSRecordingConfiguration = "AWS::IVS::RecordingConfiguration",
    IVSPlaybackKeyPair = "AWS::IVS::PlaybackKeyPair",
    KinesisAnalyticsV2Application = "AWS::KinesisAnalyticsV2::Application",
    RDSGlobalCluster = "AWS::RDS::GlobalCluster",
    S3MultiRegionAccessPoint = "AWS::S3::MultiRegionAccessPoint",
    DeviceFarmTestGridProject = "AWS::DeviceFarm::TestGridProject",
    BudgetsBudgetsAction = "AWS::Budgets::BudgetsAction",
    LexBot = "AWS::Lex::Bot",
    CodeGuruReviewerRepositoryAssociation = "AWS::CodeGuruReviewer::RepositoryAssociation",
    IoTCustomMetric = "AWS::IoT::CustomMetric",
    Route53ResolverFirewallDomainList = "AWS::Route53Resolver::FirewallDomainList",
    RoboMakerRobotApplicationVersion = "AWS::RoboMaker::RobotApplicationVersion",
    EC2TrafficMirrorSession = "AWS::EC2::TrafficMirrorSession",
    IoTSiteWiseGateway = "AWS::IoTSiteWise::Gateway",
    LexBotAlias = "AWS::Lex::BotAlias",
    LookoutMetricsAlert = "AWS::LookoutMetrics::Alert",
    IoTAccountAuditConfiguration = "AWS::IoT::AccountAuditConfiguration",
    EC2TrafficMirrorTarget = "AWS::EC2::TrafficMirrorTarget",
    S3StorageLens = "AWS::S3::StorageLens",
    IoTScheduledAudit = "AWS::IoT::ScheduledAudit",
    EventsConnection = "AWS::Events::Connection",
    EventSchemasSchema = "AWS::EventSchemas::Schema",
    MediaPackagePackagingConfiguration = "AWS::MediaPackage::PackagingConfiguration",
    KinesisVideoSignalingChannel = "AWS::KinesisVideo::SignalingChannel",
    AppStreamDirectoryConfig = "AWS::AppStream::DirectoryConfig",
    LookoutVisionProject = "AWS::LookoutVision::Project",
    Route53RecoveryControlCluster = "AWS::Route53RecoveryControl::Cluster",
    Route53RecoveryControlSafetyRule = "AWS::Route53RecoveryControl::SafetyRule",
    Route53RecoveryControlControlPanel = "AWS::Route53RecoveryControl::ControlPanel",
    Route53RecoveryControlRoutingControl = "AWS::Route53RecoveryControl::RoutingControl",
    Route53RecoveryReadinessResourceSet = "AWS::Route53RecoveryReadiness::ResourceSet",
    RoboMakerSimulationApplication = "AWS::RoboMaker::SimulationApplication",
    RoboMakerRobotApplication = "AWS::RoboMaker::RobotApplication",
    HealthLakeFHIRDatastore = "AWS::HealthLake::FHIRDatastore",
    PinpointSegment = "AWS::Pinpoint::Segment",
    PinpointApplicationSettings = "AWS::Pinpoint::ApplicationSettings",
    EventsRule = "AWS::Events::Rule",
    EC2DHCPOptions = "AWS::EC2::DHCPOptions",
    EC2NetworkInsightsPath = "AWS::EC2::NetworkInsightsPath",
    EC2TrafficMirrorFilter = "AWS::EC2::TrafficMirrorFilter",
    EC2IPAM = "AWS::EC2::IPAM",
    IoTTwinMakerScene = "AWS::IoTTwinMaker::Scene",
    NetworkManagerTransitGatewayRegistration = "AWS::NetworkManager::TransitGatewayRegistration",
    CustomerProfilesDomain = "AWS::CustomerProfiles::Domain",
    AutoScalingWarmPool = "AWS::AutoScaling::WarmPool",
    ConnectPhoneNumber = "AWS::Connect::PhoneNumber",
    AppConfigDeploymentStrategy = "AWS::AppConfig::DeploymentStrategy",
    AppFlowFlow = "AWS::AppFlow::Flow",
    AuditManagerAssessment = "AWS::AuditManager::Assessment",
    CloudWatchMetricStream = "AWS::CloudWatch::MetricStream",
    DeviceFarmInstanceProfile = "AWS::DeviceFarm::InstanceProfile",
    DeviceFarmProject = "AWS::DeviceFarm::Project",
    EC2EC2Fleet = "AWS::EC2::EC2Fleet",
    EC2SubnetRouteTableAssociation = "AWS::EC2::SubnetRouteTableAssociation",
    ECRPullThroughCacheRule = "AWS::ECR::PullThroughCacheRule",
    GroundStationConfig = "AWS::GroundStation::Config",
    ImageBuilderImagePipeline = "AWS::ImageBuilder::ImagePipeline",
    IoTFleetMetric = "AWS::IoT::FleetMetric",
    IoTWirelessServiceProfile = "AWS::IoTWireless::ServiceProfile",
    NetworkManagerDevice = "AWS::NetworkManager::Device",
    NetworkManagerGlobalNetwork = "AWS::NetworkManager::GlobalNetwork",
    NetworkManagerLink = "AWS::NetworkManager::Link",
    NetworkManagerSite = "AWS::NetworkManager::Site",
    PanoramaPackage = "AWS::Panorama::Package",
    PinpointApp = "AWS::Pinpoint::App",
    RedshiftScheduledAction = "AWS::Redshift::ScheduledAction",
    Route53ResolverFirewallRuleGroupAssociation = "AWS::Route53Resolver::FirewallRuleGroupAssociation",
    SageMakerAppImageConfig = "AWS::SageMaker::AppImageConfig",
    SageMakerImage = "AWS::SageMaker::Image",
    ECSTaskSet = "AWS::ECS::TaskSet",
    CassandraKeyspace = "AWS::Cassandra::Keyspace",
    SignerSigningProfile = "AWS::Signer::SigningProfile",
    AmplifyApp = "AWS::Amplify::App",
    AppMeshVirtualNode = "AWS::AppMesh::VirtualNode",
    AppMeshVirtualService = "AWS::AppMesh::VirtualService",
    AppRunnerVpcConnector = "AWS::AppRunner::VpcConnector",
    AppStreamApplication = "AWS::AppStream::Application",
    CodeArtifactRepository = "AWS::CodeArtifact::Repository",
    EC2PrefixList = "AWS::EC2::PrefixList",
    EC2SpotFleet = "AWS::EC2::SpotFleet",
    EvidentlyProject = "AWS::Evidently::Project",
    ForecastDataset = "AWS::Forecast::Dataset",
    IAMSAMLProvider = "AWS::IAM::SAMLProvider",
    IAMServerCertificate = "AWS::IAM::ServerCertificate",
    PinpointCampaign = "AWS::Pinpoint::Campaign",
    PinpointInAppTemplate = "AWS::Pinpoint::InAppTemplate",
    SageMakerDomain = "AWS::SageMaker::Domain",
    TransferAgreement = "AWS::Transfer::Agreement",
    TransferConnector = "AWS::Transfer::Connector",
    KinesisFirehoseDeliveryStream = "AWS::KinesisFirehose::DeliveryStream",
    AmplifyBranch = "AWS::Amplify::Branch",
    AppIntegrationsEventIntegration = "AWS::AppIntegrations::EventIntegration",
    AppMeshRoute = "AWS::AppMesh::Route",
    AthenaPreparedStatement = "AWS::Athena::PreparedStatement",
    EC2IPAMScope = "AWS::EC2::IPAMScope",
    EvidentlyLaunch = "AWS::Evidently::Launch",
    ForecastDatasetGroup = "AWS::Forecast::DatasetGroup",
    GreengrassV2ComponentVersion = "AWS::GreengrassV2::ComponentVersion",
    GroundStationMissionProfile = "AWS::GroundStation::MissionProfile",
    MediaConnectFlowEntitlement = "AWS::MediaConnect::FlowEntitlement",
    MediaConnectFlowVpcInterface = "AWS::MediaConnect::FlowVpcInterface",
    MediaTailorPlaybackConfiguration = "AWS::MediaTailor::PlaybackConfiguration",
    MSKConfiguration = "AWS::MSK::Configuration",
    PersonalizeDataset = "AWS::Personalize::Dataset",
    PersonalizeSchema = "AWS::Personalize::Schema",
    PersonalizeSolution = "AWS::Personalize::Solution",
    PinpointEmailTemplate = "AWS::Pinpoint::EmailTemplate",
    PinpointEventStream = "AWS::Pinpoint::EventStream",
    ResilienceHubApp = "AWS::ResilienceHub::App",
    ACMPCACertificateAuthority = "AWS::ACMPCA::CertificateAuthority",
    AppConfigHostedConfigurationVersion = "AWS::AppConfig::HostedConfigurationVersion",
    AppMeshVirtualGateway = "AWS::AppMesh::VirtualGateway",
    AppMeshVirtualRouter = "AWS::AppMesh::VirtualRouter",
    AppRunnerService = "AWS::AppRunner::Service",
    CustomerProfilesObjectType = "AWS::CustomerProfiles::ObjectType",
    DMSEndpoint = "AWS::DMS::Endpoint",
    EC2CapacityReservation = "AWS::EC2::CapacityReservation",
    EC2ClientVpnEndpoint = "AWS::EC2::ClientVpnEndpoint",
    KendraIndex = "AWS::Kendra::Index",
    KinesisVideoStream = "AWS::KinesisVideo::Stream",
    LogsDestination = "AWS::Logs::Destination",
    PinpointEmailChannel = "AWS::Pinpoint::EmailChannel",
    S3AccessPoint = "AWS::S3::AccessPoint",
    NetworkManagerCustomerGatewayAssociation = "AWS::NetworkManager::CustomerGatewayAssociation",
    NetworkManagerLinkAssociation = "AWS::NetworkManager::LinkAssociation",
    IoTWirelessMulticastGroup = "AWS::IoTWireless::MulticastGroup",
    PersonalizeDatasetGroup = "AWS::Personalize::DatasetGroup",
    IoTTwinMakerComponentType = "AWS::IoTTwinMaker::ComponentType",
    CodeBuildReportGroup = "AWS::CodeBuild::ReportGroup",
    SageMakerFeatureGroup = "AWS::SageMaker::FeatureGroup",
    MSKBatchScramSecret = "AWS::MSK::BatchScramSecret",
    AppStreamStack = "AWS::AppStream::Stack",
    IoTJobTemplate = "AWS::IoT::JobTemplate",
    IoTWirelessFuotaTask = "AWS::IoTWireless::FuotaTask",
    IoTProvisioningTemplate = "AWS::IoT::ProvisioningTemplate",
    InspectorV2Filter = "AWS::InspectorV2::Filter",
    Route53ResolverResolverQueryLoggingConfigAssociation = "AWS::Route53Resolver::ResolverQueryLoggingConfigAssociation",
    ServiceDiscoveryInstance = "AWS::ServiceDiscovery::Instance",
    TransferCertificate = "AWS::Transfer::Certificate",
    MediaConnectFlowSource = "AWS::MediaConnect::FlowSource",
    APSRuleGroupsNamespace = "AWS::APS::RuleGroupsNamespace",
    CodeGuruProfilerProfilingGroup = "AWS::CodeGuruProfiler::ProfilingGroup",
    Route53ResolverResolverQueryLoggingConfig = "AWS::Route53Resolver::ResolverQueryLoggingConfig",
    BatchSchedulingPolicy = "AWS::Batch::SchedulingPolicy",
    ACMPCACertificateAuthorityActivation = "AWS::ACMPCA::CertificateAuthorityActivation",
    AppMeshGatewayRoute = "AWS::AppMesh::GatewayRoute",
    AppMeshMesh = "AWS::AppMesh::Mesh",
    ConnectInstance = "AWS::Connect::Instance",
    ConnectQuickConnect = "AWS::Connect::QuickConnect",
    EC2CarrierGateway = "AWS::EC2::CarrierGateway",
    EC2IPAMPool = "AWS::EC2::IPAMPool",
    EC2TransitGatewayConnect = "AWS::EC2::TransitGatewayConnect",
    EC2TransitGatewayMulticastDomain = "AWS::EC2::TransitGatewayMulticastDomain",
    ECSCapacityProvider = "AWS::ECS::CapacityProvider",
    IAMInstanceProfile = "AWS::IAM::InstanceProfile",
    IoTCACertificate = "AWS::IoT::CACertificate",
    IoTTwinMakerSyncJob = "AWS::IoTTwinMaker::SyncJob",
    KafkaConnectConnector = "AWS::KafkaConnect::Connector",
    LambdaCodeSigningConfig = "AWS::Lambda::CodeSigningConfig",
    NetworkManagerConnectPeer = "AWS::NetworkManager::ConnectPeer",
    ResourceExplorer2Index = "AWS::ResourceExplorer2::Index",
    AppStreamFleet = "AWS::AppStream::Fleet",
    CognitoUserPool = "AWS::Cognito::UserPool",
    CognitoUserPoolClient = "AWS::Cognito::UserPoolClient",
    CognitoUserPoolGroup = "AWS::Cognito::UserPoolGroup",
    EC2NetworkInsightsAccessScope = "AWS::EC2::NetworkInsightsAccessScope",
    EC2NetworkInsightsAnalysis = "AWS::EC2::NetworkInsightsAnalysis",
    GrafanaWorkspace = "AWS::Grafana::Workspace",
    GroundStationDataflowEndpointGroup = "AWS::GroundStation::DataflowEndpointGroup",
    ImageBuilderImageRecipe = "AWS::ImageBuilder::ImageRecipe",
    KMSAlias = "AWS::KMS::Alias",
    M2Environment = "AWS::M2::Environment",
    QuickSightDataSource = "AWS::QuickSight::DataSource",
    QuickSightTemplate = "AWS::QuickSight::Template",
    QuickSightTheme = "AWS::QuickSight::Theme",
    RDSOptionGroup = "AWS::RDS::OptionGroup",
    RedshiftEndpointAccess = "AWS::Redshift::EndpointAccess",
    Route53ResolverFirewallRuleGroup = "AWS::Route53Resolver::FirewallRuleGroup",
    SSMDocument = "AWS::SSM::Document",
    AppConfigExtensionAssociation = "AWS::AppConfig::ExtensionAssociation",
    AppIntegrationsApplication = "AWS::AppIntegrations::Application",
    AppSyncApiCache = "AWS::AppSync::ApiCache",
    BedrockGuardrail = "AWS::Bedrock::Guardrail",
    BedrockKnowledgeBase = "AWS::Bedrock::KnowledgeBase",
    CognitoIdentityPool = "AWS::Cognito::IdentityPool",
    ConnectRule = "AWS::Connect::Rule",
    ConnectUser = "AWS::Connect::User",
    EC2ClientVpnTargetNetworkAssociation = "AWS::EC2::ClientVpnTargetNetworkAssociation",
    EC2EIPAssociation = "AWS::EC2::EIPAssociation",
    EC2IPAMResourceDiscovery = "AWS::EC2::IPAMResourceDiscovery",
    EC2IPAMResourceDiscoveryAssociation = "AWS::EC2::IPAMResourceDiscoveryAssociation",
    EC2InstanceConnectEndpoint = "AWS::EC2::InstanceConnectEndpoint",
    EC2SnapshotBlockPublicAccess = "AWS::EC2::SnapshotBlockPublicAccess",
    EC2VPCBlockPublicAccessExclusion = "AWS::EC2::VPCBlockPublicAccessExclusion",
    EC2VPCBlockPublicAccessOptions = "AWS::EC2::VPCBlockPublicAccessOptions",
    EC2VPCEndpointConnectionNotification = "AWS::EC2::VPCEndpointConnectionNotification",
    EC2VPNConnectionRoute = "AWS::EC2::VPNConnectionRoute",
    EvidentlySegment = "AWS::Evidently::Segment",
    IAMOIDCProvider = "AWS::IAM::OIDCProvider",
    InspectorV2Activation = "AWS::InspectorV2::Activation",
    MSKClusterPolicy = "AWS::MSK::ClusterPolicy",
    MSKVpcConnection = "AWS::MSK::VpcConnection",
    MediaConnectGateway = "AWS::MediaConnect::Gateway",
    MemoryDBSubnetGroup = "AWS::MemoryDB::SubnetGroup",
    OpenSearchServerlessCollection = "AWS::OpenSearchServerless::Collection",
    OpenSearchServerlessVpcEndpoint = "AWS::OpenSearchServerless::VpcEndpoint",
    RedshiftEndpointAuthorization = "AWS::Redshift::EndpointAuthorization",
    Route53ProfilesProfile = "AWS::Route53Profiles::Profile",
    S3StorageLensGroup = "AWS::S3::StorageLensGroup",
    S3ExpressBucketPolicy = "AWS::S3Express::BucketPolicy",
    S3ExpressDirectoryBucket = "AWS::S3Express::DirectoryBucket",
    SageMakerInferenceExperiment = "AWS::SageMaker::InferenceExperiment",
    SecurityHubStandard = "AWS::SecurityHub::Standard",
    TransferProfile = "AWS::Transfer::Profile",
    CloudFormationStackSet = "AWS::CloudFormation::StackSet",
    MediaPackageV2Channel = "AWS::MediaPackageV2::Channel",
    S3AccessGrantsLocation = "AWS::S3::AccessGrantsLocation",
    S3AccessGrant = "AWS::S3::AccessGrant",
    S3AccessGrantsInstance = "AWS::S3::AccessGrantsInstance",
    EMRServerlessApplication = "AWS::EMRServerless::Application",
    ConfigAggregationAuthorization = "AWS::Config::AggregationAuthorization",
    BedrockApplicationInferenceProfile = "AWS::Bedrock::ApplicationInferenceProfile",
    ApiGatewayV2Integration = "AWS::ApiGatewayV2::Integration",
    SageMakerMlflowTrackingServer = "AWS::SageMaker::MlflowTrackingServer",
    SageMakerModelBiasJobDefinition = "AWS::SageMaker::ModelBiasJobDefinition",
    SecretsManagerRotationSchedule = "AWS::SecretsManager::RotationSchedule",
    DeadlineQueueFleetAssociation = "AWS::Deadline::QueueFleetAssociation",
    ECRRepositoryCreationTemplate = "AWS::ECR::RepositoryCreationTemplate",
    CloudFormationLambdaHook = "AWS::CloudFormation::LambdaHook",
    EC2SubnetNetworkAclAssociation = "AWS::EC2::SubnetNetworkAclAssociation",
    ApiGatewayUsagePlan = "AWS::ApiGateway::UsagePlan",
    AppConfigExtension = "AWS::AppConfig::Extension",
    DeadlineFleet = "AWS::Deadline::Fleet",
    EMRStudio = "AWS::EMR::Studio",
    S3TablesTableBucket = "AWS::S3Tables::TableBucket",
    CloudFrontRealtimeLogConfig = "AWS::CloudFront::RealtimeLogConfig",
    BackupGatewayHypervisor = "AWS::BackupGateway::Hypervisor",
    BCMDataExportsExport = "AWS::BCMDataExports::Export",
    CloudFormationGuardHook = "AWS::CloudFormation::GuardHook",
    CloudFrontPublicKey = "AWS::CloudFront::PublicKey",
    CloudTrailEventDataStore = "AWS::CloudTrail::EventDataStore",
    EntityResolutionIdMappingWorkflow = "AWS::EntityResolution::IdMappingWorkflow",
    EntityResolutionSchemaMapping = "AWS::EntityResolution::SchemaMapping",
    IoTDomainConfiguration = "AWS::IoT::DomainConfiguration",
    PCAConnectorADDirectoryRegistration = "AWS::PCAConnectorAD::DirectoryRegistration",
    RDSIntegration = "AWS::RDS::Integration",
    ConfigConformancePack = "AWS::Config::ConformancePack",
    RolesAnywhereProfile = "AWS::RolesAnywhere::Profile",
    CodeArtifactDomain = "AWS::CodeArtifact::Domain",
    BackupRestoreTestingPlan = "AWS::Backup::RestoreTestingPlan",
    ConfigStoredQuery = "AWS::Config::StoredQuery",
    SageMakerDataQualityJobDefinition = "AWS::SageMaker::DataQualityJobDefinition",
    SageMakerModelExplainabilityJobDefinition = "AWS::SageMaker::ModelExplainabilityJobDefinition",
    SageMakerModelQualityJobDefinition = "AWS::SageMaker::ModelQualityJobDefinition",
    SageMakerStudioLifecycleConfig = "AWS::SageMaker::StudioLifecycleConfig",
    SESDedicatedIpPool = "AWS::SES::DedicatedIpPool",
    SESMailManagerTrafficPolicy = "AWS::SES::MailManagerTrafficPolicy",
    SSMResourceDataSync = "AWS::SSM::ResourceDataSync",
    BedrockAgentCoreRuntime = "AWS::BedrockAgentCore::Runtime",
    BedrockAgentCoreBrowserCustom = "AWS::BedrockAgentCore::BrowserCustom",
    ElasticLoadBalancingV2TargetGroup = "AWS::ElasticLoadBalancingV2::TargetGroup",
    EMRContainersVirtualCluster = "AWS::EMRContainers::VirtualCluster",
    EntityResolutionMatchingWorkflow = "AWS::EntityResolution::MatchingWorkflow",
    IoTCoreDeviceAdvisorSuiteDefinition = "AWS::IoTCoreDeviceAdvisor::SuiteDefinition",
    EC2SecurityGroupVpcAssociation = "AWS::EC2::SecurityGroupVpcAssociation",
    EC2VerifiedAccessInstance = "AWS::EC2::VerifiedAccessInstance",
    KafkaConnectCustomPlugin = "AWS::KafkaConnect::CustomPlugin",
    NetworkManagerTransitGatewayPeering = "AWS::NetworkManager::TransitGatewayPeering",
    OpenSearchServerlessSecurityConfig = "AWS::OpenSearchServerless::SecurityConfig",
    RedshiftIntegration = "AWS::Redshift::Integration",
    RolesAnywhereTrustAnchor = "AWS::RolesAnywhere::TrustAnchor",
    Route53ProfilesProfileAssociation = "AWS::Route53Profiles::ProfileAssociation",
    SSMIncidentsResponsePlan = "AWS::SSMIncidents::ResponsePlan",
    TransferServer = "AWS::Transfer::Server",
    GlueDatabase = "AWS::Glue::Database",
    OrganizationsOrganizationalUnit = "AWS::Organizations::OrganizationalUnit",
    EC2IPAMPoolCidr = "AWS::EC2::IPAMPoolCidr",
    EC2VPCGatewayAttachment = "AWS::EC2::VPCGatewayAttachment",
    BedrockPrompt = "AWS::Bedrock::Prompt",
    ComprehendFlywheel = "AWS::Comprehend::Flywheel",
    DataSyncAgent = "AWS::DataSync::Agent",
    MediaTailorLiveSource = "AWS::MediaTailor::LiveSource",
    MSKServerlessCluster = "AWS::MSK::ServerlessCluster",
    IoTSiteWiseAsset = "AWS::IoTSiteWise::Asset",
    B2BICapability = "AWS::B2BI::Capability",
    CloudFrontKeyValueStore = "AWS::CloudFront::KeyValueStore",
    DeadlineMonitor = "AWS::Deadline::Monitor",
    GuardDutyMalwareProtectionPlan = "AWS::GuardDuty::MalwareProtectionPlan",
    LocationAPIKey = "AWS::Location::APIKey",
    MediaPackageV2OriginEndpoint = "AWS::MediaPackageV2::OriginEndpoint",
    PCAConnectorADConnector = "AWS::PCAConnectorAD::Connector",
    S3TablesTableBucketPolicy = "AWS::S3Tables::TableBucketPolicy",
    SecretsManagerResourcePolicy = "AWS::SecretsManager::ResourcePolicy",
    SSMContactsContact = "AWS::SSMContacts::Contact",
    IoTThingGroup = "AWS::IoT::ThingGroup",
    ImageBuilderLifecyclePolicy = "AWS::ImageBuilder::LifecyclePolicy",
    GameLiftBuild = "AWS::GameLift::Build",
    ECRReplicationConfiguration = "AWS::ECR::ReplicationConfiguration",
    EC2SubnetCidrBlock = "AWS::EC2::SubnetCidrBlock",
    ConnectSecurityProfile = "AWS::Connect::SecurityProfile",
    CleanRoomsMLTrainingDataset = "AWS::CleanRoomsML::TrainingDataset",
    AppStreamAppBlockBuilder = "AWS::AppStream::AppBlockBuilder",
    Route53DNSSEC = "AWS::Route53::DNSSEC",
    SageMakerUserProfile = "AWS::SageMaker::UserProfile",
    ApiGatewayMethod = "AWS::ApiGateway::Method",
}

M.AggregateResourceIdentifier = {
    type = "structure",
    id = "AggregateResourceIdentifier",
    members = {
        SourceAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceRegion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceName = {
            type = "string",
        },
    },
}

M.AggregationAuthorization = {
    type = "structure",
    id = "AggregationAuthorization",
    members = {
        AggregationAuthorizationArn = {
            type = "string",
        },
        AuthorizedAccountId = {
            type = "string",
        },
        AuthorizedAwsRegion = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
    },
}

M.AggregatorFilterType = {
    INCLUDE = "INCLUDE",
}

M.AggregatorFilterResourceType = {
    type = "structure",
    id = "AggregatorFilterResourceType",
    members = {
        Type = {
            type = "string",
        },
        Value = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.AggregatorFilterServicePrincipal = {
    type = "structure",
    id = "AggregatorFilterServicePrincipal",
    members = {
        Type = {
            type = "string",
        },
        Value = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.AggregatorFilters = {
    type = "structure",
    id = "AggregatorFilters",
    members = {
        ResourceType = M.AggregatorFilterResourceType,
        ServicePrincipal = M.AggregatorFilterServicePrincipal,
    },
}

M.AssociateResourceTypesInput = {
    type = "structure",
    id = "AssociateResourceTypesInput",
    members = {
        ConfigurationRecorderArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceTypes = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.ExclusionByResourceTypes = {
    type = "structure",
    id = "ExclusionByResourceTypes",
    members = {
        resourceTypes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.RecordingStrategyType = {
    ALL_SUPPORTED_RESOURCE_TYPES = "ALL_SUPPORTED_RESOURCE_TYPES",
    INCLUSION_BY_RESOURCE_TYPES = "INCLUSION_BY_RESOURCE_TYPES",
    EXCLUSION_BY_RESOURCE_TYPES = "EXCLUSION_BY_RESOURCE_TYPES",
}

M.RecordingStrategy = {
    type = "structure",
    id = "RecordingStrategy",
    members = {
        useOnly = {
            type = "string",
        },
    },
}

M.RecordingGroup = {
    type = "structure",
    id = "RecordingGroup",
    members = {
        allSupported = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        includeGlobalResourceTypes = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        resourceTypes = {
            type = "list",
            member = { type = "string" },
        },
        exclusionByResourceTypes = M.ExclusionByResourceTypes,
        recordingStrategy = M.RecordingStrategy,
    },
}

M.RecordingFrequency = {
    CONTINUOUS = "CONTINUOUS",
    DAILY = "DAILY",
}

M.RecordingModeOverride = {
    type = "structure",
    id = "RecordingModeOverride",
    members = {
        description = {
            type = "string",
        },
        resourceTypes = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        recordingFrequency = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RecordingMode = {
    type = "structure",
    id = "RecordingMode",
    members = {
        recordingFrequency = {
            type = "string",
            traits = {
                required = true,
            },
        },
        recordingModeOverrides = {
            type = "list",
            member = M.RecordingModeOverride,
        },
    },
}

M.RecordingScope = {
    INTERNAL = "INTERNAL",
    PAID = "PAID",
}

M.ConfigurationRecorder = {
    type = "structure",
    id = "ConfigurationRecorder",
    members = {
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        roleARN = {
            type = "string",
        },
        recordingGroup = M.RecordingGroup,
        recordingMode = M.RecordingMode,
        recordingScope = {
            type = "string",
        },
        servicePrincipal = {
            type = "string",
        },
    },
}

M.AssociateResourceTypesOutput = {
    type = "structure",
    id = "AssociateResourceTypesOutput",
    members = {
        ConfigurationRecorder = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ConfigurationRecorder }),
    },
}

M.ConflictException = {
    type = "structure",
    id = "ConflictException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.NoSuchConfigurationRecorderException = {
    type = "structure",
    id = "NoSuchConfigurationRecorderException",
    error = "client",
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

M.ConfigurationItemStatus = {
    OK = "OK",
    ResourceDiscovered = "ResourceDiscovered",
    ResourceNotRecorded = "ResourceNotRecorded",
    ResourceDeleted = "ResourceDeleted",
    ResourceDeletedNotRecorded = "ResourceDeletedNotRecorded",
}

M.BaseConfigurationItem = {
    type = "structure",
    id = "BaseConfigurationItem",
    members = {
        version = {
            type = "string",
        },
        accountId = {
            type = "string",
        },
        configurationItemCaptureTime = {
            type = "timestamp",
        },
        configurationItemStatus = {
            type = "string",
        },
        configurationStateId = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        resourceType = {
            type = "string",
        },
        resourceId = {
            type = "string",
        },
        resourceName = {
            type = "string",
        },
        awsRegion = {
            type = "string",
        },
        availabilityZone = {
            type = "string",
        },
        resourceCreationTime = {
            type = "timestamp",
        },
        configuration = {
            type = "string",
        },
        supplementaryConfiguration = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        recordingFrequency = {
            type = "string",
        },
        configurationItemDeliveryTime = {
            type = "timestamp",
        },
    },
}

M.BatchGetAggregateResourceConfigInput = {
    type = "structure",
    id = "BatchGetAggregateResourceConfigInput",
    members = {
        ConfigurationAggregatorName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceIdentifiers = {
            type = "list",
            member = M.AggregateResourceIdentifier,
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetAggregateResourceConfigOutput = {
    type = "structure",
    id = "BatchGetAggregateResourceConfigOutput",
    members = {
        BaseConfigurationItems = {
            type = "list",
            member = M.BaseConfigurationItem,
        },
        UnprocessedResourceIdentifiers = {
            type = "list",
            member = M.AggregateResourceIdentifier,
        },
    },
}

M.NoSuchConfigurationAggregatorException = {
    type = "structure",
    id = "NoSuchConfigurationAggregatorException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResourceKey = {
    type = "structure",
    id = "ResourceKey",
    members = {
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetResourceConfigInput = {
    type = "structure",
    id = "BatchGetResourceConfigInput",
    members = {
        resourceKeys = {
            type = "list",
            member = M.ResourceKey,
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetResourceConfigOutput = {
    type = "structure",
    id = "BatchGetResourceConfigOutput",
    members = {
        baseConfigurationItems = {
            type = "list",
            member = M.BaseConfigurationItem,
        },
        unprocessedResourceKeys = {
            type = "list",
            member = M.ResourceKey,
        },
    },
}

M.NoAvailableConfigurationRecorderException = {
    type = "structure",
    id = "NoAvailableConfigurationRecorderException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ChronologicalOrder = {
    Reverse = "Reverse",
    Forward = "Forward",
}

M.ComplianceByConfigRule = {
    type = "structure",
    id = "ComplianceByConfigRule",
    members = {
        ConfigRuleName = {
            type = "string",
        },
        Compliance = M.Compliance,
    },
}

M.ComplianceByResource = {
    type = "structure",
    id = "ComplianceByResource",
    members = {
        ResourceType = {
            type = "string",
        },
        ResourceId = {
            type = "string",
        },
        Compliance = M.Compliance,
    },
}

M.ComplianceSummaryByResourceType = {
    type = "structure",
    id = "ComplianceSummaryByResourceType",
    members = {
        ResourceType = {
            type = "string",
        },
        ComplianceSummary = M.ComplianceSummary,
    },
}

M.DeliveryStatus = {
    Success = "Success",
    Failure = "Failure",
    Not_Applicable = "Not_Applicable",
}

M.ConfigExportDeliveryInfo = {
    type = "structure",
    id = "ConfigExportDeliveryInfo",
    members = {
        lastStatus = {
            type = "string",
        },
        lastErrorCode = {
            type = "string",
        },
        lastErrorMessage = {
            type = "string",
        },
        lastAttemptTime = {
            type = "timestamp",
        },
        lastSuccessfulTime = {
            type = "timestamp",
        },
        nextDeliveryTime = {
            type = "timestamp",
        },
    },
}

M.ConfigRuleState = {
    ACTIVE = "ACTIVE",
    DELETING = "DELETING",
    DELETING_RESULTS = "DELETING_RESULTS",
    EVALUATING = "EVALUATING",
}

M.EvaluationModeConfiguration = {
    type = "structure",
    id = "EvaluationModeConfiguration",
    members = {
        Mode = {
            type = "string",
        },
    },
}

M.MaximumExecutionFrequency = {
    One_Hour = "One_Hour",
    Three_Hours = "Three_Hours",
    Six_Hours = "Six_Hours",
    Twelve_Hours = "Twelve_Hours",
    TwentyFour_Hours = "TwentyFour_Hours",
}

M.Scope = {
    type = "structure",
    id = "Scope",
    members = {
        ComplianceResourceTypes = {
            type = "list",
            member = { type = "string" },
        },
        TagKey = {
            type = "string",
        },
        TagValue = {
            type = "string",
        },
        ComplianceResourceId = {
            type = "string",
        },
    },
}

M.CustomPolicyDetails = {
    type = "structure",
    id = "CustomPolicyDetails",
    members = {
        PolicyRuntime = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyText = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EnableDebugLogDelivery = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.Owner = {
    Custom_Lambda = "CUSTOM_LAMBDA",
    Aws = "AWS",
    Custom_Policy = "CUSTOM_POLICY",
}

M.EventSource = {
    Aws_Config = "aws.config",
}

M.MessageType = {
    ConfigurationItemChangeNotification = "ConfigurationItemChangeNotification",
    ConfigurationSnapshotDeliveryCompleted = "ConfigurationSnapshotDeliveryCompleted",
    ScheduledNotification = "ScheduledNotification",
    OversizedConfigurationItemChangeNotification = "OversizedConfigurationItemChangeNotification",
}

M.SourceDetail = {
    type = "structure",
    id = "SourceDetail",
    members = {
        EventSource = {
            type = "string",
        },
        MessageType = {
            type = "string",
        },
        MaximumExecutionFrequency = {
            type = "string",
        },
    },
}

M.Source = {
    type = "structure",
    id = "Source",
    members = {
        Owner = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceIdentifier = {
            type = "string",
        },
        SourceDetails = {
            type = "list",
            member = M.SourceDetail,
        },
        CustomPolicyDetails = M.CustomPolicyDetails,
    },
}

M.ConfigRule = {
    type = "structure",
    id = "ConfigRule",
    members = {
        ConfigRuleName = {
            type = "string",
        },
        ConfigRuleArn = {
            type = "string",
        },
        ConfigRuleId = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Scope = M.Scope,
        Source = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Source }),
        InputParameters = {
            type = "string",
        },
        MaximumExecutionFrequency = {
            type = "string",
        },
        ConfigRuleState = {
            type = "string",
        },
        CreatedBy = {
            type = "string",
        },
        EvaluationModes = {
            type = "list",
            member = M.EvaluationModeConfiguration,
        },
    },
}

M.ConfigRuleComplianceFilters = {
    type = "structure",
    id = "ConfigRuleComplianceFilters",
    members = {
        ConfigRuleName = {
            type = "string",
        },
        ComplianceType = {
            type = "string",
        },
        AccountId = {
            type = "string",
        },
        AwsRegion = {
            type = "string",
        },
    },
}

M.ConfigRuleComplianceSummaryFilters = {
    type = "structure",
    id = "ConfigRuleComplianceSummaryFilters",
    members = {
        AccountId = {
            type = "string",
        },
        AwsRegion = {
            type = "string",
        },
    },
}

M.ConfigRuleComplianceSummaryGroupKey = {
    ACCOUNT_ID = "ACCOUNT_ID",
    AWS_REGION = "AWS_REGION",
}

M.ConfigRuleEvaluationStatus = {
    type = "structure",
    id = "ConfigRuleEvaluationStatus",
    members = {
        ConfigRuleName = {
            type = "string",
        },
        ConfigRuleArn = {
            type = "string",
        },
        ConfigRuleId = {
            type = "string",
        },
        LastSuccessfulInvocationTime = {
            type = "timestamp",
        },
        LastFailedInvocationTime = {
            type = "timestamp",
        },
        LastSuccessfulEvaluationTime = {
            type = "timestamp",
        },
        LastFailedEvaluationTime = {
            type = "timestamp",
        },
        FirstActivatedTime = {
            type = "timestamp",
        },
        LastDeactivatedTime = {
            type = "timestamp",
        },
        LastErrorCode = {
            type = "string",
        },
        LastErrorMessage = {
            type = "string",
        },
        FirstEvaluationStarted = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        LastDebugLogDeliveryStatus = {
            type = "string",
        },
        LastDebugLogDeliveryStatusReason = {
            type = "string",
        },
        LastDebugLogDeliveryTime = {
            type = "timestamp",
        },
    },
}

M.ConfigSnapshotDeliveryProperties = {
    type = "structure",
    id = "ConfigSnapshotDeliveryProperties",
    members = {
        deliveryFrequency = {
            type = "string",
        },
    },
}

M.ConfigStreamDeliveryInfo = {
    type = "structure",
    id = "ConfigStreamDeliveryInfo",
    members = {
        lastStatus = {
            type = "string",
        },
        lastErrorCode = {
            type = "string",
        },
        lastErrorMessage = {
            type = "string",
        },
        lastStatusChangeTime = {
            type = "timestamp",
        },
    },
}

M.OrganizationAggregationSource = {
    type = "structure",
    id = "OrganizationAggregationSource",
    members = {
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AwsRegions = {
            type = "list",
            member = { type = "string" },
        },
        AllAwsRegions = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.ConfigurationAggregator = {
    type = "structure",
    id = "ConfigurationAggregator",
    members = {
        ConfigurationAggregatorName = {
            type = "string",
        },
        ConfigurationAggregatorArn = {
            type = "string",
        },
        AccountAggregationSources = {
            type = "list",
            member = M.AccountAggregationSource,
        },
        OrganizationAggregationSource = M.OrganizationAggregationSource,
        CreationTime = {
            type = "timestamp",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
        CreatedBy = {
            type = "string",
        },
        AggregatorFilters = M.AggregatorFilters,
    },
}

M.Relationship = {
    type = "structure",
    id = "Relationship",
    members = {
        resourceType = {
            type = "string",
        },
        resourceId = {
            type = "string",
        },
        resourceName = {
            type = "string",
        },
        relationshipName = {
            type = "string",
        },
    },
}

M.ConfigurationItem = {
    type = "structure",
    id = "ConfigurationItem",
    members = {
        version = {
            type = "string",
        },
        accountId = {
            type = "string",
        },
        configurationItemCaptureTime = {
            type = "timestamp",
        },
        configurationItemStatus = {
            type = "string",
        },
        configurationStateId = {
            type = "string",
        },
        configurationItemMD5Hash = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        resourceType = {
            type = "string",
        },
        resourceId = {
            type = "string",
        },
        resourceName = {
            type = "string",
        },
        awsRegion = {
            type = "string",
        },
        availabilityZone = {
            type = "string",
        },
        resourceCreationTime = {
            type = "timestamp",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        relatedEvents = {
            type = "list",
            member = { type = "string" },
        },
        relationships = {
            type = "list",
            member = M.Relationship,
        },
        configuration = {
            type = "string",
        },
        supplementaryConfiguration = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        recordingFrequency = {
            type = "string",
        },
        configurationItemDeliveryTime = {
            type = "timestamp",
        },
    },
}

M.ConfigurationRecorderFilterName = {
    RecordingScope = "recordingScope",
}

M.ConfigurationRecorderFilter = {
    type = "structure",
    id = "ConfigurationRecorderFilter",
    members = {
        filterName = {
            type = "string",
        },
        filterValue = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.RecorderStatus = {
    Pending = "Pending",
    Success = "Success",
    Failure = "Failure",
    NotApplicable = "NotApplicable",
}

M.ConfigurationRecorderStatus = {
    type = "structure",
    id = "ConfigurationRecorderStatus",
    members = {
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        lastStartTime = {
            type = "timestamp",
        },
        lastStopTime = {
            type = "timestamp",
        },
        recording = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        lastStatus = {
            type = "string",
        },
        lastErrorCode = {
            type = "string",
        },
        lastErrorMessage = {
            type = "string",
        },
        lastStatusChangeTime = {
            type = "timestamp",
        },
        servicePrincipal = {
            type = "string",
        },
    },
}

M.ConfigurationRecorderSummary = {
    type = "structure",
    id = "ConfigurationRecorderSummary",
    members = {
        arn = {
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
        servicePrincipal = {
            type = "string",
        },
        recordingScope = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ConformancePackComplianceFilters = {
    type = "structure",
    id = "ConformancePackComplianceFilters",
    members = {
        ConfigRuleNames = {
            type = "list",
            member = { type = "string" },
        },
        ComplianceType = {
            type = "string",
        },
    },
}

M.ConformancePackComplianceScore = {
    type = "structure",
    id = "ConformancePackComplianceScore",
    members = {
        Score = {
            type = "string",
        },
        ConformancePackName = {
            type = "string",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
    },
}

M.ConformancePackComplianceScoresFilters = {
    type = "structure",
    id = "ConformancePackComplianceScoresFilters",
    members = {
        ConformancePackNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.ConformancePackComplianceSummary = {
    type = "structure",
    id = "ConformancePackComplianceSummary",
    members = {
        ConformancePackName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConformancePackComplianceStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ConformancePackInputParameter = {
    type = "structure",
    id = "ConformancePackInputParameter",
    members = {
        ParameterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ParameterValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TemplateSSMDocumentDetails = {
    type = "structure",
    id = "TemplateSSMDocumentDetails",
    members = {
        DocumentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DocumentVersion = {
            type = "string",
        },
    },
}

M.ConformancePackDetail = {
    type = "structure",
    id = "ConformancePackDetail",
    members = {
        ConformancePackName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConformancePackArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConformancePackId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeliveryS3Bucket = {
            type = "string",
        },
        DeliveryS3KeyPrefix = {
            type = "string",
        },
        ConformancePackInputParameters = {
            type = "list",
            member = M.ConformancePackInputParameter,
        },
        LastUpdateRequestedTime = {
            type = "timestamp",
        },
        CreatedBy = {
            type = "string",
        },
        TemplateSSMDocumentDetails = M.TemplateSSMDocumentDetails,
    },
}

M.ConformancePackEvaluationFilters = {
    type = "structure",
    id = "ConformancePackEvaluationFilters",
    members = {
        ConfigRuleNames = {
            type = "list",
            member = { type = "string" },
        },
        ComplianceType = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        ResourceIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ConformancePackEvaluationResult = {
    type = "structure",
    id = "ConformancePackEvaluationResult",
    members = {
        ComplianceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EvaluationResultIdentifier = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EvaluationResultIdentifier }),
        ConfigRuleInvokedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        ResultRecordedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        Annotation = {
            type = "string",
        },
    },
}

M.ConformancePackRuleCompliance = {
    type = "structure",
    id = "ConformancePackRuleCompliance",
    members = {
        ConfigRuleName = {
            type = "string",
        },
        ComplianceType = {
            type = "string",
        },
        Controls = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ConformancePackState = {
    CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS",
    CREATE_COMPLETE = "CREATE_COMPLETE",
    CREATE_FAILED = "CREATE_FAILED",
    DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS",
    DELETE_FAILED = "DELETE_FAILED",
}

M.ConformancePackStatusDetail = {
    type = "structure",
    id = "ConformancePackStatusDetail",
    members = {
        ConformancePackName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConformancePackId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConformancePackArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConformancePackState = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StackArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConformancePackStatusReason = {
            type = "string",
        },
        LastUpdateRequestedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastUpdateCompletedTime = {
            type = "timestamp",
        },
    },
}

M.ConformancePackTemplateValidationException = {
    type = "structure",
    id = "ConformancePackTemplateValidationException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteAggregationAuthorizationInput = {
    type = "structure",
    id = "DeleteAggregationAuthorizationInput",
    members = {
        AuthorizedAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AuthorizedAwsRegion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteAggregationAuthorizationOutput = {
    type = "structure",
    id = "DeleteAggregationAuthorizationOutput",
}

M.InvalidParameterValueException = {
    type = "structure",
    id = "InvalidParameterValueException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteConfigRuleInput = {
    type = "structure",
    id = "DeleteConfigRuleInput",
    members = {
        ConfigRuleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteConfigRuleOutput = {
    type = "structure",
    id = "DeleteConfigRuleOutput",
}

M.NoSuchConfigRuleException = {
    type = "structure",
    id = "NoSuchConfigRuleException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResourceInUseException = {
    type = "structure",
    id = "ResourceInUseException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteConfigurationAggregatorInput = {
    type = "structure",
    id = "DeleteConfigurationAggregatorInput",
    members = {
        ConfigurationAggregatorName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteConfigurationAggregatorOutput = {
    type = "structure",
    id = "DeleteConfigurationAggregatorOutput",
}

M.DeleteConfigurationRecorderInput = {
    type = "structure",
    id = "DeleteConfigurationRecorderInput",
    members = {
        ConfigurationRecorderName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteConfigurationRecorderOutput = {
    type = "structure",
    id = "DeleteConfigurationRecorderOutput",
}

M.UnmodifiableEntityException = {
    type = "structure",
    id = "UnmodifiableEntityException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteConformancePackInput = {
    type = "structure",
    id = "DeleteConformancePackInput",
    members = {
        ConformancePackName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteConformancePackOutput = {
    type = "structure",
    id = "DeleteConformancePackOutput",
}

M.NoSuchConformancePackException = {
    type = "structure",
    id = "NoSuchConformancePackException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteDeliveryChannelInput = {
    type = "structure",
    id = "DeleteDeliveryChannelInput",
    members = {
        DeliveryChannelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteDeliveryChannelOutput = {
    type = "structure",
    id = "DeleteDeliveryChannelOutput",
}

M.LastDeliveryChannelDeleteFailedException = {
    type = "structure",
    id = "LastDeliveryChannelDeleteFailedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.NoSuchDeliveryChannelException = {
    type = "structure",
    id = "NoSuchDeliveryChannelException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteEvaluationResultsInput = {
    type = "structure",
    id = "DeleteEvaluationResultsInput",
    members = {
        ConfigRuleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteEvaluationResultsOutput = {
    type = "structure",
    id = "DeleteEvaluationResultsOutput",
}

M.DeleteOrganizationConfigRuleInput = {
    type = "structure",
    id = "DeleteOrganizationConfigRuleInput",
    members = {
        OrganizationConfigRuleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteOrganizationConfigRuleOutput = {
    type = "structure",
    id = "DeleteOrganizationConfigRuleOutput",
}

M.NoSuchOrganizationConfigRuleException = {
    type = "structure",
    id = "NoSuchOrganizationConfigRuleException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.OrganizationAccessDeniedException = {
    type = "structure",
    id = "OrganizationAccessDeniedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteOrganizationConformancePackInput = {
    type = "structure",
    id = "DeleteOrganizationConformancePackInput",
    members = {
        OrganizationConformancePackName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteOrganizationConformancePackOutput = {
    type = "structure",
    id = "DeleteOrganizationConformancePackOutput",
}

M.NoSuchOrganizationConformancePackException = {
    type = "structure",
    id = "NoSuchOrganizationConformancePackException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeletePendingAggregationRequestInput = {
    type = "structure",
    id = "DeletePendingAggregationRequestInput",
    members = {
        RequesterAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RequesterAwsRegion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeletePendingAggregationRequestOutput = {
    type = "structure",
    id = "DeletePendingAggregationRequestOutput",
}

M.DeleteRemediationConfigurationInput = {
    type = "structure",
    id = "DeleteRemediationConfigurationInput",
    members = {
        ConfigRuleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceType = {
            type = "string",
        },
    },
}

M.DeleteRemediationConfigurationOutput = {
    type = "structure",
    id = "DeleteRemediationConfigurationOutput",
}

M.InsufficientPermissionsException = {
    type = "structure",
    id = "InsufficientPermissionsException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.NoSuchRemediationConfigurationException = {
    type = "structure",
    id = "NoSuchRemediationConfigurationException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RemediationInProgressException = {
    type = "structure",
    id = "RemediationInProgressException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RemediationExceptionResourceKey = {
    type = "structure",
    id = "RemediationExceptionResourceKey",
    members = {
        ResourceType = {
            type = "string",
        },
        ResourceId = {
            type = "string",
        },
    },
}

M.DeleteRemediationExceptionsInput = {
    type = "structure",
    id = "DeleteRemediationExceptionsInput",
    members = {
        ConfigRuleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceKeys = {
            type = "list",
            member = M.RemediationExceptionResourceKey,
            traits = {
                required = true,
            },
        },
    },
}

M.FailedDeleteRemediationExceptionsBatch = {
    type = "structure",
    id = "FailedDeleteRemediationExceptionsBatch",
    members = {
        FailureMessage = {
            type = "string",
        },
        FailedItems = {
            type = "list",
            member = M.RemediationExceptionResourceKey,
        },
    },
}

M.DeleteRemediationExceptionsOutput = {
    type = "structure",
    id = "DeleteRemediationExceptionsOutput",
    members = {
        FailedBatches = {
            type = "list",
            member = M.FailedDeleteRemediationExceptionsBatch,
        },
    },
}

M.NoSuchRemediationExceptionException = {
    type = "structure",
    id = "NoSuchRemediationExceptionException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteResourceConfigInput = {
    type = "structure",
    id = "DeleteResourceConfigInput",
    members = {
        ResourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteResourceConfigOutput = {
    type = "structure",
    id = "DeleteResourceConfigOutput",
}

M.NoRunningConfigurationRecorderException = {
    type = "structure",
    id = "NoRunningConfigurationRecorderException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteRetentionConfigurationInput = {
    type = "structure",
    id = "DeleteRetentionConfigurationInput",
    members = {
        RetentionConfigurationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteRetentionConfigurationOutput = {
    type = "structure",
    id = "DeleteRetentionConfigurationOutput",
}

M.NoSuchRetentionConfigurationException = {
    type = "structure",
    id = "NoSuchRetentionConfigurationException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteServiceLinkedConfigurationRecorderInput = {
    type = "structure",
    id = "DeleteServiceLinkedConfigurationRecorderInput",
    members = {
        ServicePrincipal = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteServiceLinkedConfigurationRecorderOutput = {
    type = "structure",
    id = "DeleteServiceLinkedConfigurationRecorderOutput",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteStoredQueryInput = {
    type = "structure",
    id = "DeleteStoredQueryInput",
    members = {
        QueryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteStoredQueryOutput = {
    type = "structure",
    id = "DeleteStoredQueryOutput",
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

M.DeliverConfigSnapshotInput = {
    type = "structure",
    id = "DeliverConfigSnapshotInput",
    members = {
        deliveryChannelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeliverConfigSnapshotOutput = {
    type = "structure",
    id = "DeliverConfigSnapshotOutput",
    members = {
        configSnapshotId = {
            type = "string",
        },
    },
}

M.DeliveryChannel = {
    type = "structure",
    id = "DeliveryChannel",
    members = {
        name = {
            type = "string",
        },
        s3BucketName = {
            type = "string",
        },
        s3KeyPrefix = {
            type = "string",
        },
        s3KmsKeyArn = {
            type = "string",
        },
        snsTopicARN = {
            type = "string",
        },
        configSnapshotDeliveryProperties = M.ConfigSnapshotDeliveryProperties,
    },
}

M.DeliveryChannelStatus = {
    type = "structure",
    id = "DeliveryChannelStatus",
    members = {
        name = {
            type = "string",
        },
        configSnapshotDeliveryInfo = M.ConfigExportDeliveryInfo,
        configHistoryDeliveryInfo = M.ConfigExportDeliveryInfo,
        configStreamDeliveryInfo = M.ConfigStreamDeliveryInfo,
    },
}

M.DescribeAggregateComplianceByConfigRulesInput = {
    type = "structure",
    id = "DescribeAggregateComplianceByConfigRulesInput",
    members = {
        ConfigurationAggregatorName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filters = M.ConfigRuleComplianceFilters,
        Limit = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeAggregateComplianceByConfigRulesOutput = {
    type = "structure",
    id = "DescribeAggregateComplianceByConfigRulesOutput",
    members = {
        AggregateComplianceByConfigRules = {
            type = "list",
            member = M.AggregateComplianceByConfigRule,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.InvalidLimitException = {
    type = "structure",
    id = "InvalidLimitException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidNextTokenException = {
    type = "structure",
    id = "InvalidNextTokenException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DescribeAggregateComplianceByConformancePacksInput = {
    type = "structure",
    id = "DescribeAggregateComplianceByConformancePacksInput",
    members = {
        ConfigurationAggregatorName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filters = M.AggregateConformancePackComplianceFilters,
        Limit = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeAggregateComplianceByConformancePacksOutput = {
    type = "structure",
    id = "DescribeAggregateComplianceByConformancePacksOutput",
    members = {
        AggregateComplianceByConformancePacks = {
            type = "list",
            member = M.AggregateComplianceByConformancePack,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeAggregationAuthorizationsInput = {
    type = "structure",
    id = "DescribeAggregationAuthorizationsInput",
    members = {
        Limit = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeAggregationAuthorizationsOutput = {
    type = "structure",
    id = "DescribeAggregationAuthorizationsOutput",
    members = {
        AggregationAuthorizations = {
            type = "list",
            member = M.AggregationAuthorization,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeComplianceByConfigRuleInput = {
    type = "structure",
    id = "DescribeComplianceByConfigRuleInput",
    members = {
        ConfigRuleNames = {
            type = "list",
            member = { type = "string" },
        },
        ComplianceTypes = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeComplianceByConfigRuleOutput = {
    type = "structure",
    id = "DescribeComplianceByConfigRuleOutput",
    members = {
        ComplianceByConfigRules = {
            type = "list",
            member = M.ComplianceByConfigRule,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeComplianceByResourceInput = {
    type = "structure",
    id = "DescribeComplianceByResourceInput",
    members = {
        ResourceType = {
            type = "string",
        },
        ResourceId = {
            type = "string",
        },
        ComplianceTypes = {
            type = "list",
            member = { type = "string" },
        },
        Limit = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeComplianceByResourceOutput = {
    type = "structure",
    id = "DescribeComplianceByResourceOutput",
    members = {
        ComplianceByResources = {
            type = "list",
            member = M.ComplianceByResource,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeConfigRuleEvaluationStatusInput = {
    type = "structure",
    id = "DescribeConfigRuleEvaluationStatusInput",
    members = {
        ConfigRuleNames = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
        Limit = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.DescribeConfigRuleEvaluationStatusOutput = {
    type = "structure",
    id = "DescribeConfigRuleEvaluationStatusOutput",
    members = {
        ConfigRulesEvaluationStatus = {
            type = "list",
            member = M.ConfigRuleEvaluationStatus,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeConfigRulesFilters = {
    type = "structure",
    id = "DescribeConfigRulesFilters",
    members = {
        EvaluationMode = {
            type = "string",
        },
    },
}

M.DescribeConfigRulesInput = {
    type = "structure",
    id = "DescribeConfigRulesInput",
    members = {
        ConfigRuleNames = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
        Filters = M.DescribeConfigRulesFilters,
    },
}

M.DescribeConfigRulesOutput = {
    type = "structure",
    id = "DescribeConfigRulesOutput",
    members = {
        ConfigRules = {
            type = "list",
            member = M.ConfigRule,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeConfigurationAggregatorsInput = {
    type = "structure",
    id = "DescribeConfigurationAggregatorsInput",
    members = {
        ConfigurationAggregatorNames = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
        Limit = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.DescribeConfigurationAggregatorsOutput = {
    type = "structure",
    id = "DescribeConfigurationAggregatorsOutput",
    members = {
        ConfigurationAggregators = {
            type = "list",
            member = M.ConfigurationAggregator,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeConfigurationAggregatorSourcesStatusInput = {
    type = "structure",
    id = "DescribeConfigurationAggregatorSourcesStatusInput",
    members = {
        ConfigurationAggregatorName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UpdateStatus = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
        Limit = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.DescribeConfigurationAggregatorSourcesStatusOutput = {
    type = "structure",
    id = "DescribeConfigurationAggregatorSourcesStatusOutput",
    members = {
        AggregatedSourceStatusList = {
            type = "list",
            member = M.AggregatedSourceStatus,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeConfigurationRecordersInput = {
    type = "structure",
    id = "DescribeConfigurationRecordersInput",
    members = {
        ConfigurationRecorderNames = {
            type = "list",
            member = { type = "string" },
        },
        ServicePrincipal = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
    },
}

M.DescribeConfigurationRecordersOutput = {
    type = "structure",
    id = "DescribeConfigurationRecordersOutput",
    members = {
        ConfigurationRecorders = {
            type = "list",
            member = M.ConfigurationRecorder,
        },
    },
}

M.DescribeConfigurationRecorderStatusInput = {
    type = "structure",
    id = "DescribeConfigurationRecorderStatusInput",
    members = {
        ConfigurationRecorderNames = {
            type = "list",
            member = { type = "string" },
        },
        ServicePrincipal = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
    },
}

M.DescribeConfigurationRecorderStatusOutput = {
    type = "structure",
    id = "DescribeConfigurationRecorderStatusOutput",
    members = {
        ConfigurationRecordersStatus = {
            type = "list",
            member = M.ConfigurationRecorderStatus,
        },
    },
}

M.DescribeConformancePackComplianceInput = {
    type = "structure",
    id = "DescribeConformancePackComplianceInput",
    members = {
        ConformancePackName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filters = M.ConformancePackComplianceFilters,
        Limit = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeConformancePackComplianceOutput = {
    type = "structure",
    id = "DescribeConformancePackComplianceOutput",
    members = {
        ConformancePackName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConformancePackRuleComplianceList = {
            type = "list",
            member = M.ConformancePackRuleCompliance,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.NoSuchConfigRuleInConformancePackException = {
    type = "structure",
    id = "NoSuchConfigRuleInConformancePackException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DescribeConformancePacksInput = {
    type = "structure",
    id = "DescribeConformancePacksInput",
    members = {
        ConformancePackNames = {
            type = "list",
            member = { type = "string" },
        },
        Limit = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeConformancePacksOutput = {
    type = "structure",
    id = "DescribeConformancePacksOutput",
    members = {
        ConformancePackDetails = {
            type = "list",
            member = M.ConformancePackDetail,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeConformancePackStatusInput = {
    type = "structure",
    id = "DescribeConformancePackStatusInput",
    members = {
        ConformancePackNames = {
            type = "list",
            member = { type = "string" },
        },
        Limit = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeConformancePackStatusOutput = {
    type = "structure",
    id = "DescribeConformancePackStatusOutput",
    members = {
        ConformancePackStatusDetails = {
            type = "list",
            member = M.ConformancePackStatusDetail,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeDeliveryChannelsInput = {
    type = "structure",
    id = "DescribeDeliveryChannelsInput",
    members = {
        DeliveryChannelNames = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeDeliveryChannelsOutput = {
    type = "structure",
    id = "DescribeDeliveryChannelsOutput",
    members = {
        DeliveryChannels = {
            type = "list",
            member = M.DeliveryChannel,
        },
    },
}

M.DescribeDeliveryChannelStatusInput = {
    type = "structure",
    id = "DescribeDeliveryChannelStatusInput",
    members = {
        DeliveryChannelNames = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeDeliveryChannelStatusOutput = {
    type = "structure",
    id = "DescribeDeliveryChannelStatusOutput",
    members = {
        DeliveryChannelsStatus = {
            type = "list",
            member = M.DeliveryChannelStatus,
        },
    },
}

M.DescribeOrganizationConfigRulesInput = {
    type = "structure",
    id = "DescribeOrganizationConfigRulesInput",
    members = {
        OrganizationConfigRuleNames = {
            type = "list",
            member = { type = "string" },
        },
        Limit = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.OrganizationConfigRuleTriggerTypeNoSN = {
    CONFIGURATION_ITEM_CHANGE_NOTIFICATION = "ConfigurationItemChangeNotification",
    OVERSIZED_CONFIGURATION_ITEM_CHANGE_NOTIFCATION = "OversizedConfigurationItemChangeNotification",
}

M.OrganizationCustomPolicyRuleMetadataNoPolicy = {
    type = "structure",
    id = "OrganizationCustomPolicyRuleMetadataNoPolicy",
    members = {
        Description = {
            type = "string",
        },
        OrganizationConfigRuleTriggerTypes = {
            type = "list",
            member = { type = "string" },
        },
        InputParameters = {
            type = "string",
        },
        MaximumExecutionFrequency = {
            type = "string",
        },
        ResourceTypesScope = {
            type = "list",
            member = { type = "string" },
        },
        ResourceIdScope = {
            type = "string",
        },
        TagKeyScope = {
            type = "string",
        },
        TagValueScope = {
            type = "string",
        },
        PolicyRuntime = {
            type = "string",
        },
        DebugLogDeliveryAccounts = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.OrganizationConfigRuleTriggerType = {
    CONFIGURATION_ITEM_CHANGE_NOTIFICATION = "ConfigurationItemChangeNotification",
    OVERSIZED_CONFIGURATION_ITEM_CHANGE_NOTIFCATION = "OversizedConfigurationItemChangeNotification",
    SCHEDULED_NOTIFICATION = "ScheduledNotification",
}

M.OrganizationCustomRuleMetadata = {
    type = "structure",
    id = "OrganizationCustomRuleMetadata",
    members = {
        Description = {
            type = "string",
        },
        LambdaFunctionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OrganizationConfigRuleTriggerTypes = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        InputParameters = {
            type = "string",
        },
        MaximumExecutionFrequency = {
            type = "string",
        },
        ResourceTypesScope = {
            type = "list",
            member = { type = "string" },
        },
        ResourceIdScope = {
            type = "string",
        },
        TagKeyScope = {
            type = "string",
        },
        TagValueScope = {
            type = "string",
        },
    },
}

M.OrganizationManagedRuleMetadata = {
    type = "structure",
    id = "OrganizationManagedRuleMetadata",
    members = {
        Description = {
            type = "string",
        },
        RuleIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InputParameters = {
            type = "string",
        },
        MaximumExecutionFrequency = {
            type = "string",
        },
        ResourceTypesScope = {
            type = "list",
            member = { type = "string" },
        },
        ResourceIdScope = {
            type = "string",
        },
        TagKeyScope = {
            type = "string",
        },
        TagValueScope = {
            type = "string",
        },
    },
}

M.OrganizationConfigRule = {
    type = "structure",
    id = "OrganizationConfigRule",
    members = {
        OrganizationConfigRuleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OrganizationConfigRuleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OrganizationManagedRuleMetadata = M.OrganizationManagedRuleMetadata,
        OrganizationCustomRuleMetadata = M.OrganizationCustomRuleMetadata,
        ExcludedAccounts = {
            type = "list",
            member = { type = "string" },
        },
        LastUpdateTime = {
            type = "timestamp",
        },
        OrganizationCustomPolicyRuleMetadata = M.OrganizationCustomPolicyRuleMetadataNoPolicy,
    },
}

M.DescribeOrganizationConfigRulesOutput = {
    type = "structure",
    id = "DescribeOrganizationConfigRulesOutput",
    members = {
        OrganizationConfigRules = {
            type = "list",
            member = M.OrganizationConfigRule,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeOrganizationConfigRuleStatusesInput = {
    type = "structure",
    id = "DescribeOrganizationConfigRuleStatusesInput",
    members = {
        OrganizationConfigRuleNames = {
            type = "list",
            member = { type = "string" },
        },
        Limit = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.OrganizationRuleStatus = {
    CREATE_SUCCESSFUL = "CREATE_SUCCESSFUL",
    CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS",
    CREATE_FAILED = "CREATE_FAILED",
    DELETE_SUCCESSFUL = "DELETE_SUCCESSFUL",
    DELETE_FAILED = "DELETE_FAILED",
    DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS",
    UPDATE_SUCCESSFUL = "UPDATE_SUCCESSFUL",
    UPDATE_IN_PROGRESS = "UPDATE_IN_PROGRESS",
    UPDATE_FAILED = "UPDATE_FAILED",
}

M.OrganizationConfigRuleStatus = {
    type = "structure",
    id = "OrganizationConfigRuleStatus",
    members = {
        OrganizationConfigRuleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OrganizationRuleStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ErrorCode = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
        LastUpdateTime = {
            type = "timestamp",
        },
    },
}

M.DescribeOrganizationConfigRuleStatusesOutput = {
    type = "structure",
    id = "DescribeOrganizationConfigRuleStatusesOutput",
    members = {
        OrganizationConfigRuleStatuses = {
            type = "list",
            member = M.OrganizationConfigRuleStatus,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeOrganizationConformancePacksInput = {
    type = "structure",
    id = "DescribeOrganizationConformancePacksInput",
    members = {
        OrganizationConformancePackNames = {
            type = "list",
            member = { type = "string" },
        },
        Limit = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.OrganizationConformancePack = {
    type = "structure",
    id = "OrganizationConformancePack",
    members = {
        OrganizationConformancePackName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OrganizationConformancePackArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeliveryS3Bucket = {
            type = "string",
        },
        DeliveryS3KeyPrefix = {
            type = "string",
        },
        ConformancePackInputParameters = {
            type = "list",
            member = M.ConformancePackInputParameter,
        },
        ExcludedAccounts = {
            type = "list",
            member = { type = "string" },
        },
        LastUpdateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeOrganizationConformancePacksOutput = {
    type = "structure",
    id = "DescribeOrganizationConformancePacksOutput",
    members = {
        OrganizationConformancePacks = {
            type = "list",
            member = M.OrganizationConformancePack,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeOrganizationConformancePackStatusesInput = {
    type = "structure",
    id = "DescribeOrganizationConformancePackStatusesInput",
    members = {
        OrganizationConformancePackNames = {
            type = "list",
            member = { type = "string" },
        },
        Limit = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.OrganizationResourceStatus = {
    CREATE_SUCCESSFUL = "CREATE_SUCCESSFUL",
    CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS",
    CREATE_FAILED = "CREATE_FAILED",
    DELETE_SUCCESSFUL = "DELETE_SUCCESSFUL",
    DELETE_FAILED = "DELETE_FAILED",
    DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS",
    UPDATE_SUCCESSFUL = "UPDATE_SUCCESSFUL",
    UPDATE_IN_PROGRESS = "UPDATE_IN_PROGRESS",
    UPDATE_FAILED = "UPDATE_FAILED",
}

M.OrganizationConformancePackStatus = {
    type = "structure",
    id = "OrganizationConformancePackStatus",
    members = {
        OrganizationConformancePackName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ErrorCode = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
        LastUpdateTime = {
            type = "timestamp",
        },
    },
}

M.DescribeOrganizationConformancePackStatusesOutput = {
    type = "structure",
    id = "DescribeOrganizationConformancePackStatusesOutput",
    members = {
        OrganizationConformancePackStatuses = {
            type = "list",
            member = M.OrganizationConformancePackStatus,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribePendingAggregationRequestsInput = {
    type = "structure",
    id = "DescribePendingAggregationRequestsInput",
    members = {
        Limit = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.PendingAggregationRequest = {
    type = "structure",
    id = "PendingAggregationRequest",
    members = {
        RequesterAccountId = {
            type = "string",
        },
        RequesterAwsRegion = {
            type = "string",
        },
    },
}

M.DescribePendingAggregationRequestsOutput = {
    type = "structure",
    id = "DescribePendingAggregationRequestsOutput",
    members = {
        PendingAggregationRequests = {
            type = "list",
            member = M.PendingAggregationRequest,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeRemediationConfigurationsInput = {
    type = "structure",
    id = "DescribeRemediationConfigurationsInput",
    members = {
        ConfigRuleNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.SsmControls = {
    type = "structure",
    id = "SsmControls",
    members = {
        ConcurrentExecutionRatePercentage = {
            type = "integer",
        },
        ErrorPercentage = {
            type = "integer",
        },
    },
}

M.ExecutionControls = {
    type = "structure",
    id = "ExecutionControls",
    members = {
        SsmControls = M.SsmControls,
    },
}

M.ResourceValueType = {
    RESOURCE_ID = "RESOURCE_ID",
}

M.ResourceValue = {
    type = "structure",
    id = "ResourceValue",
    members = {
        Value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StaticValue = {
    type = "structure",
    id = "StaticValue",
    members = {
        Values = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.RemediationParameterValue = {
    type = "structure",
    id = "RemediationParameterValue",
    members = {
        ResourceValue = M.ResourceValue,
        StaticValue = M.StaticValue,
    },
}

M.RemediationTargetType = {
    SSM_DOCUMENT = "SSM_DOCUMENT",
}

M.RemediationConfiguration = {
    type = "structure",
    id = "RemediationConfiguration",
    members = {
        ConfigRuleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetVersion = {
            type = "string",
        },
        Parameters = {
            type = "map",
            key = { type = "string" },
            value = M.RemediationParameterValue,
        },
        ResourceType = {
            type = "string",
        },
        Automatic = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        ExecutionControls = M.ExecutionControls,
        MaximumAutomaticAttempts = {
            type = "integer",
        },
        RetryAttemptSeconds = {
            type = "long",
        },
        Arn = {
            type = "string",
        },
        CreatedByService = {
            type = "string",
        },
    },
}

M.DescribeRemediationConfigurationsOutput = {
    type = "structure",
    id = "DescribeRemediationConfigurationsOutput",
    members = {
        RemediationConfigurations = {
            type = "list",
            member = M.RemediationConfiguration,
        },
    },
}

M.DescribeRemediationExceptionsInput = {
    type = "structure",
    id = "DescribeRemediationExceptionsInput",
    members = {
        ConfigRuleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceKeys = {
            type = "list",
            member = M.RemediationExceptionResourceKey,
        },
        Limit = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.RemediationException = {
    type = "structure",
    id = "RemediationException",
    members = {
        ConfigRuleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
        },
        ExpirationTime = {
            type = "timestamp",
        },
    },
}

M.DescribeRemediationExceptionsOutput = {
    type = "structure",
    id = "DescribeRemediationExceptionsOutput",
    members = {
        RemediationExceptions = {
            type = "list",
            member = M.RemediationException,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeRemediationExecutionStatusInput = {
    type = "structure",
    id = "DescribeRemediationExecutionStatusInput",
    members = {
        ConfigRuleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceKeys = {
            type = "list",
            member = M.ResourceKey,
        },
        Limit = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.RemediationExecutionState = {
    QUEUED = "QUEUED",
    IN_PROGRESS = "IN_PROGRESS",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
    UNKNOWN = "UNKNOWN",
}

M.RemediationExecutionStepState = {
    SUCCEEDED = "SUCCEEDED",
    PENDING = "PENDING",
    FAILED = "FAILED",
    IN_PROGRESS = "IN_PROGRESS",
    EXITED = "EXITED",
    UNKNOWN = "UNKNOWN",
}

M.RemediationExecutionStep = {
    type = "structure",
    id = "RemediationExecutionStep",
    members = {
        Name = {
            type = "string",
        },
        State = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
        },
        StopTime = {
            type = "timestamp",
        },
    },
}

M.RemediationExecutionStatus = {
    type = "structure",
    id = "RemediationExecutionStatus",
    members = {
        ResourceKey = M.ResourceKey,
        State = {
            type = "string",
        },
        StepDetails = {
            type = "list",
            member = M.RemediationExecutionStep,
        },
        InvocationTime = {
            type = "timestamp",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
    },
}

M.DescribeRemediationExecutionStatusOutput = {
    type = "structure",
    id = "DescribeRemediationExecutionStatusOutput",
    members = {
        RemediationExecutionStatuses = {
            type = "list",
            member = M.RemediationExecutionStatus,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeRetentionConfigurationsInput = {
    type = "structure",
    id = "DescribeRetentionConfigurationsInput",
    members = {
        RetentionConfigurationNames = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.RetentionConfiguration = {
    type = "structure",
    id = "RetentionConfiguration",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RetentionPeriodInDays = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeRetentionConfigurationsOutput = {
    type = "structure",
    id = "DescribeRetentionConfigurationsOutput",
    members = {
        RetentionConfigurations = {
            type = "list",
            member = M.RetentionConfiguration,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DisassociateResourceTypesInput = {
    type = "structure",
    id = "DisassociateResourceTypesInput",
    members = {
        ConfigurationRecorderArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceTypes = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateResourceTypesOutput = {
    type = "structure",
    id = "DisassociateResourceTypesOutput",
    members = {
        ConfigurationRecorder = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ConfigurationRecorder }),
    },
}

M.Evaluation = {
    type = "structure",
    id = "Evaluation",
    members = {
        ComplianceResourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ComplianceResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ComplianceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Annotation = {
            type = "string",
        },
        OrderingTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.EvaluationContext = {
    type = "structure",
    id = "EvaluationContext",
    members = {
        EvaluationContextIdentifier = {
            type = "string",
        },
    },
}

M.EvaluationResult = {
    type = "structure",
    id = "EvaluationResult",
    members = {
        EvaluationResultIdentifier = M.EvaluationResultIdentifier,
        ComplianceType = {
            type = "string",
        },
        ResultRecordedTime = {
            type = "timestamp",
        },
        ConfigRuleInvokedTime = {
            type = "timestamp",
        },
        Annotation = {
            type = "string",
        },
        ResultToken = {
            type = "string",
        },
    },
}

M.ResourceEvaluationStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    FAILED = "FAILED",
    SUCCEEDED = "SUCCEEDED",
}

M.EvaluationStatus = {
    type = "structure",
    id = "EvaluationStatus",
    members = {
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FailureReason = {
            type = "string",
        },
    },
}

M.ExternalEvaluation = {
    type = "structure",
    id = "ExternalEvaluation",
    members = {
        ComplianceResourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ComplianceResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ComplianceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Annotation = {
            type = "string",
        },
        OrderingTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.FailedRemediationBatch = {
    type = "structure",
    id = "FailedRemediationBatch",
    members = {
        FailureMessage = {
            type = "string",
        },
        FailedItems = {
            type = "list",
            member = M.RemediationConfiguration,
        },
    },
}

M.FailedRemediationExceptionBatch = {
    type = "structure",
    id = "FailedRemediationExceptionBatch",
    members = {
        FailureMessage = {
            type = "string",
        },
        FailedItems = {
            type = "list",
            member = M.RemediationException,
        },
    },
}

M.FieldInfo = {
    type = "structure",
    id = "FieldInfo",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.GetAggregateComplianceDetailsByConfigRuleInput = {
    type = "structure",
    id = "GetAggregateComplianceDetailsByConfigRuleInput",
    members = {
        ConfigurationAggregatorName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConfigRuleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AwsRegion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ComplianceType = {
            type = "string",
        },
        Limit = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetAggregateComplianceDetailsByConfigRuleOutput = {
    type = "structure",
    id = "GetAggregateComplianceDetailsByConfigRuleOutput",
    members = {
        AggregateEvaluationResults = {
            type = "list",
            member = M.AggregateEvaluationResult,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetAggregateConfigRuleComplianceSummaryInput = {
    type = "structure",
    id = "GetAggregateConfigRuleComplianceSummaryInput",
    members = {
        ConfigurationAggregatorName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filters = M.ConfigRuleComplianceSummaryFilters,
        GroupByKey = {
            type = "string",
        },
        Limit = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetAggregateConfigRuleComplianceSummaryOutput = {
    type = "structure",
    id = "GetAggregateConfigRuleComplianceSummaryOutput",
    members = {
        GroupByKey = {
            type = "string",
        },
        AggregateComplianceCounts = {
            type = "list",
            member = M.AggregateComplianceCount,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetAggregateConformancePackComplianceSummaryInput = {
    type = "structure",
    id = "GetAggregateConformancePackComplianceSummaryInput",
    members = {
        ConfigurationAggregatorName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filters = M.AggregateConformancePackComplianceSummaryFilters,
        GroupByKey = {
            type = "string",
        },
        Limit = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetAggregateConformancePackComplianceSummaryOutput = {
    type = "structure",
    id = "GetAggregateConformancePackComplianceSummaryOutput",
    members = {
        AggregateConformancePackComplianceSummaries = {
            type = "list",
            member = M.AggregateConformancePackComplianceSummary,
        },
        GroupByKey = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ResourceCountFilters = {
    type = "structure",
    id = "ResourceCountFilters",
    members = {
        ResourceType = {
            type = "string",
        },
        AccountId = {
            type = "string",
        },
        Region = {
            type = "string",
        },
    },
}

M.ResourceCountGroupKey = {
    RESOURCE_TYPE = "RESOURCE_TYPE",
    ACCOUNT_ID = "ACCOUNT_ID",
    AWS_REGION = "AWS_REGION",
}

M.GetAggregateDiscoveredResourceCountsInput = {
    type = "structure",
    id = "GetAggregateDiscoveredResourceCountsInput",
    members = {
        ConfigurationAggregatorName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filters = M.ResourceCountFilters,
        GroupByKey = {
            type = "string",
        },
        Limit = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GroupedResourceCount = {
    type = "structure",
    id = "GroupedResourceCount",
    members = {
        GroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceCount = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.GetAggregateDiscoveredResourceCountsOutput = {
    type = "structure",
    id = "GetAggregateDiscoveredResourceCountsOutput",
    members = {
        TotalDiscoveredResources = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        GroupByKey = {
            type = "string",
        },
        GroupedResourceCounts = {
            type = "list",
            member = M.GroupedResourceCount,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetAggregateResourceConfigInput = {
    type = "structure",
    id = "GetAggregateResourceConfigInput",
    members = {
        ConfigurationAggregatorName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceIdentifier = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AggregateResourceIdentifier }),
    },
}

M.GetAggregateResourceConfigOutput = {
    type = "structure",
    id = "GetAggregateResourceConfigOutput",
    members = {
        ConfigurationItem = M.ConfigurationItem,
    },
}

M.OversizedConfigurationItemException = {
    type = "structure",
    id = "OversizedConfigurationItemException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResourceNotDiscoveredException = {
    type = "structure",
    id = "ResourceNotDiscoveredException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetComplianceDetailsByConfigRuleInput = {
    type = "structure",
    id = "GetComplianceDetailsByConfigRuleInput",
    members = {
        ConfigRuleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ComplianceTypes = {
            type = "list",
            member = { type = "string" },
        },
        Limit = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetComplianceDetailsByConfigRuleOutput = {
    type = "structure",
    id = "GetComplianceDetailsByConfigRuleOutput",
    members = {
        EvaluationResults = {
            type = "list",
            member = M.EvaluationResult,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetComplianceDetailsByResourceInput = {
    type = "structure",
    id = "GetComplianceDetailsByResourceInput",
    members = {
        ResourceType = {
            type = "string",
        },
        ResourceId = {
            type = "string",
        },
        ComplianceTypes = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
        ResourceEvaluationId = {
            type = "string",
        },
    },
}

M.GetComplianceDetailsByResourceOutput = {
    type = "structure",
    id = "GetComplianceDetailsByResourceOutput",
    members = {
        EvaluationResults = {
            type = "list",
            member = M.EvaluationResult,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetComplianceSummaryByConfigRuleInput = {
    type = "structure",
    id = "GetComplianceSummaryByConfigRuleInput",
}

M.GetComplianceSummaryByConfigRuleOutput = {
    type = "structure",
    id = "GetComplianceSummaryByConfigRuleOutput",
    members = {
        ComplianceSummary = M.ComplianceSummary,
    },
}

M.GetComplianceSummaryByResourceTypeInput = {
    type = "structure",
    id = "GetComplianceSummaryByResourceTypeInput",
    members = {
        ResourceTypes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GetComplianceSummaryByResourceTypeOutput = {
    type = "structure",
    id = "GetComplianceSummaryByResourceTypeOutput",
    members = {
        ComplianceSummariesByResourceType = {
            type = "list",
            member = M.ComplianceSummaryByResourceType,
        },
    },
}

M.GetConformancePackComplianceDetailsInput = {
    type = "structure",
    id = "GetConformancePackComplianceDetailsInput",
    members = {
        ConformancePackName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filters = M.ConformancePackEvaluationFilters,
        Limit = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetConformancePackComplianceDetailsOutput = {
    type = "structure",
    id = "GetConformancePackComplianceDetailsOutput",
    members = {
        ConformancePackName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConformancePackRuleEvaluationResults = {
            type = "list",
            member = M.ConformancePackEvaluationResult,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetConformancePackComplianceSummaryInput = {
    type = "structure",
    id = "GetConformancePackComplianceSummaryInput",
    members = {
        ConformancePackNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Limit = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetConformancePackComplianceSummaryOutput = {
    type = "structure",
    id = "GetConformancePackComplianceSummaryOutput",
    members = {
        ConformancePackComplianceSummaryList = {
            type = "list",
            member = M.ConformancePackComplianceSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetCustomRulePolicyInput = {
    type = "structure",
    id = "GetCustomRulePolicyInput",
    members = {
        ConfigRuleName = {
            type = "string",
        },
    },
}

M.GetCustomRulePolicyOutput = {
    type = "structure",
    id = "GetCustomRulePolicyOutput",
    members = {
        PolicyText = {
            type = "string",
        },
    },
}

M.GetDiscoveredResourceCountsInput = {
    type = "structure",
    id = "GetDiscoveredResourceCountsInput",
    members = {
        resourceTypes = {
            type = "list",
            member = { type = "string" },
        },
        limit = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ResourceCount = {
    type = "structure",
    id = "ResourceCount",
    members = {
        resourceType = {
            type = "string",
        },
        count = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.GetDiscoveredResourceCountsOutput = {
    type = "structure",
    id = "GetDiscoveredResourceCountsOutput",
    members = {
        totalDiscoveredResources = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        resourceCounts = {
            type = "list",
            member = M.ResourceCount,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.MemberAccountRuleStatus = {
    CREATE_SUCCESSFUL = "CREATE_SUCCESSFUL",
    CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS",
    CREATE_FAILED = "CREATE_FAILED",
    DELETE_SUCCESSFUL = "DELETE_SUCCESSFUL",
    DELETE_FAILED = "DELETE_FAILED",
    DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS",
    UPDATE_SUCCESSFUL = "UPDATE_SUCCESSFUL",
    UPDATE_IN_PROGRESS = "UPDATE_IN_PROGRESS",
    UPDATE_FAILED = "UPDATE_FAILED",
}

M.StatusDetailFilters = {
    type = "structure",
    id = "StatusDetailFilters",
    members = {
        AccountId = {
            type = "string",
        },
        MemberAccountRuleStatus = {
            type = "string",
        },
    },
}

M.GetOrganizationConfigRuleDetailedStatusInput = {
    type = "structure",
    id = "GetOrganizationConfigRuleDetailedStatusInput",
    members = {
        OrganizationConfigRuleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filters = M.StatusDetailFilters,
        Limit = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.MemberAccountStatus = {
    type = "structure",
    id = "MemberAccountStatus",
    members = {
        AccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConfigRuleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MemberAccountRuleStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ErrorCode = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
        LastUpdateTime = {
            type = "timestamp",
        },
    },
}

M.GetOrganizationConfigRuleDetailedStatusOutput = {
    type = "structure",
    id = "GetOrganizationConfigRuleDetailedStatusOutput",
    members = {
        OrganizationConfigRuleDetailedStatus = {
            type = "list",
            member = M.MemberAccountStatus,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.OrganizationResourceDetailedStatus = {
    CREATE_SUCCESSFUL = "CREATE_SUCCESSFUL",
    CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS",
    CREATE_FAILED = "CREATE_FAILED",
    DELETE_SUCCESSFUL = "DELETE_SUCCESSFUL",
    DELETE_FAILED = "DELETE_FAILED",
    DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS",
    UPDATE_SUCCESSFUL = "UPDATE_SUCCESSFUL",
    UPDATE_IN_PROGRESS = "UPDATE_IN_PROGRESS",
    UPDATE_FAILED = "UPDATE_FAILED",
}

M.OrganizationResourceDetailedStatusFilters = {
    type = "structure",
    id = "OrganizationResourceDetailedStatusFilters",
    members = {
        AccountId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.GetOrganizationConformancePackDetailedStatusInput = {
    type = "structure",
    id = "GetOrganizationConformancePackDetailedStatusInput",
    members = {
        OrganizationConformancePackName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filters = M.OrganizationResourceDetailedStatusFilters,
        Limit = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.OrganizationConformancePackDetailedStatus = {
    type = "structure",
    id = "OrganizationConformancePackDetailedStatus",
    members = {
        AccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConformancePackName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ErrorCode = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
        LastUpdateTime = {
            type = "timestamp",
        },
    },
}

M.GetOrganizationConformancePackDetailedStatusOutput = {
    type = "structure",
    id = "GetOrganizationConformancePackDetailedStatusOutput",
    members = {
        OrganizationConformancePackDetailedStatuses = {
            type = "list",
            member = M.OrganizationConformancePackDetailedStatus,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetOrganizationCustomRulePolicyInput = {
    type = "structure",
    id = "GetOrganizationCustomRulePolicyInput",
    members = {
        OrganizationConfigRuleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetOrganizationCustomRulePolicyOutput = {
    type = "structure",
    id = "GetOrganizationCustomRulePolicyOutput",
    members = {
        PolicyText = {
            type = "string",
        },
    },
}

M.GetResourceConfigHistoryInput = {
    type = "structure",
    id = "GetResourceConfigHistoryInput",
    members = {
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        laterTime = {
            type = "timestamp",
        },
        earlierTime = {
            type = "timestamp",
        },
        chronologicalOrder = {
            type = "string",
        },
        limit = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GetResourceConfigHistoryOutput = {
    type = "structure",
    id = "GetResourceConfigHistoryOutput",
    members = {
        configurationItems = {
            type = "list",
            member = M.ConfigurationItem,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.InvalidTimeRangeException = {
    type = "structure",
    id = "InvalidTimeRangeException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetResourceEvaluationSummaryInput = {
    type = "structure",
    id = "GetResourceEvaluationSummaryInput",
    members = {
        ResourceEvaluationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceConfigurationSchemaType = {
    CFN_RESOURCE_SCHEMA = "CFN_RESOURCE_SCHEMA",
}

M.ResourceDetails = {
    type = "structure",
    id = "ResourceDetails",
    members = {
        ResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceConfiguration = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceConfigurationSchemaType = {
            type = "string",
        },
    },
}

M.GetResourceEvaluationSummaryOutput = {
    type = "structure",
    id = "GetResourceEvaluationSummaryOutput",
    members = {
        ResourceEvaluationId = {
            type = "string",
        },
        EvaluationMode = {
            type = "string",
        },
        EvaluationStatus = M.EvaluationStatus,
        EvaluationStartTimestamp = {
            type = "timestamp",
        },
        Compliance = {
            type = "string",
        },
        EvaluationContext = M.EvaluationContext,
        ResourceDetails = M.ResourceDetails,
    },
}

M.GetStoredQueryInput = {
    type = "structure",
    id = "GetStoredQueryInput",
    members = {
        QueryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StoredQuery = {
    type = "structure",
    id = "StoredQuery",
    members = {
        QueryId = {
            type = "string",
        },
        QueryArn = {
            type = "string",
        },
        QueryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Expression = {
            type = "string",
        },
    },
}

M.GetStoredQueryOutput = {
    type = "structure",
    id = "GetStoredQueryOutput",
    members = {
        StoredQuery = M.StoredQuery,
    },
}

M.IdempotentParameterMismatch = {
    type = "structure",
    id = "IdempotentParameterMismatch",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InsufficientDeliveryPolicyException = {
    type = "structure",
    id = "InsufficientDeliveryPolicyException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidConfigurationRecorderNameException = {
    type = "structure",
    id = "InvalidConfigurationRecorderNameException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidDeliveryChannelNameException = {
    type = "structure",
    id = "InvalidDeliveryChannelNameException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidExpressionException = {
    type = "structure",
    id = "InvalidExpressionException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidRecordingGroupException = {
    type = "structure",
    id = "InvalidRecordingGroupException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidResultTokenException = {
    type = "structure",
    id = "InvalidResultTokenException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidRoleException = {
    type = "structure",
    id = "InvalidRoleException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidS3KeyPrefixException = {
    type = "structure",
    id = "InvalidS3KeyPrefixException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidS3KmsKeyArnException = {
    type = "structure",
    id = "InvalidS3KmsKeyArnException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidSNSTopicARNException = {
    type = "structure",
    id = "InvalidSNSTopicARNException",
    error = "client",
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

M.ResourceFilters = {
    type = "structure",
    id = "ResourceFilters",
    members = {
        AccountId = {
            type = "string",
        },
        ResourceId = {
            type = "string",
        },
        ResourceName = {
            type = "string",
        },
        Region = {
            type = "string",
        },
    },
}

M.ListAggregateDiscoveredResourcesInput = {
    type = "structure",
    id = "ListAggregateDiscoveredResourcesInput",
    members = {
        ConfigurationAggregatorName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filters = M.ResourceFilters,
        Limit = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListAggregateDiscoveredResourcesOutput = {
    type = "structure",
    id = "ListAggregateDiscoveredResourcesOutput",
    members = {
        ResourceIdentifiers = {
            type = "list",
            member = M.AggregateResourceIdentifier,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListConfigurationRecordersInput = {
    type = "structure",
    id = "ListConfigurationRecordersInput",
    members = {
        Filters = {
            type = "list",
            member = M.ConfigurationRecorderFilter,
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

M.ListConfigurationRecordersOutput = {
    type = "structure",
    id = "ListConfigurationRecordersOutput",
    members = {
        ConfigurationRecorderSummaries = {
            type = "list",
            member = M.ConfigurationRecorderSummary,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.SortBy = {
    SCORE = "SCORE",
}

M.SortOrder = {
    ASCENDING = "ASCENDING",
    DESCENDING = "DESCENDING",
}

M.ListConformancePackComplianceScoresInput = {
    type = "structure",
    id = "ListConformancePackComplianceScoresInput",
    members = {
        Filters = M.ConformancePackComplianceScoresFilters,
        SortOrder = {
            type = "string",
        },
        SortBy = {
            type = "string",
        },
        Limit = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListConformancePackComplianceScoresOutput = {
    type = "structure",
    id = "ListConformancePackComplianceScoresOutput",
    members = {
        NextToken = {
            type = "string",
        },
        ConformancePackComplianceScores = {
            type = "list",
            member = M.ConformancePackComplianceScore,
            traits = {
                required = true,
            },
        },
    },
}

M.ListDiscoveredResourcesInput = {
    type = "structure",
    id = "ListDiscoveredResourcesInput",
    members = {
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceIds = {
            type = "list",
            member = { type = "string" },
        },
        resourceName = {
            type = "string",
        },
        limit = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        includeDeletedResources = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ResourceIdentifier = {
    type = "structure",
    id = "ResourceIdentifier",
    members = {
        resourceType = {
            type = "string",
        },
        resourceId = {
            type = "string",
        },
        resourceName = {
            type = "string",
        },
        resourceDeletionTime = {
            type = "timestamp",
        },
    },
}

M.ListDiscoveredResourcesOutput = {
    type = "structure",
    id = "ListDiscoveredResourcesOutput",
    members = {
        resourceIdentifiers = {
            type = "list",
            member = M.ResourceIdentifier,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.TimeWindow = {
    type = "structure",
    id = "TimeWindow",
    members = {
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
    },
}

M.ResourceEvaluationFilters = {
    type = "structure",
    id = "ResourceEvaluationFilters",
    members = {
        EvaluationMode = {
            type = "string",
        },
        TimeWindow = M.TimeWindow,
        EvaluationContextIdentifier = {
            type = "string",
        },
    },
}

M.ListResourceEvaluationsInput = {
    type = "structure",
    id = "ListResourceEvaluationsInput",
    members = {
        Filters = M.ResourceEvaluationFilters,
        Limit = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ResourceEvaluation = {
    type = "structure",
    id = "ResourceEvaluation",
    members = {
        ResourceEvaluationId = {
            type = "string",
        },
        EvaluationMode = {
            type = "string",
        },
        EvaluationStartTimestamp = {
            type = "timestamp",
        },
    },
}

M.ListResourceEvaluationsOutput = {
    type = "structure",
    id = "ListResourceEvaluationsOutput",
    members = {
        ResourceEvaluations = {
            type = "list",
            member = M.ResourceEvaluation,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListStoredQueriesInput = {
    type = "structure",
    id = "ListStoredQueriesInput",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
    },
}

M.StoredQueryMetadata = {
    type = "structure",
    id = "StoredQueryMetadata",
    members = {
        QueryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        QueryArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        QueryName = {
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

M.ListStoredQueriesOutput = {
    type = "structure",
    id = "ListStoredQueriesOutput",
    members = {
        StoredQueryMetadata = {
            type = "list",
            member = M.StoredQueryMetadata,
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
        Limit = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        NextToken = {
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

M.ListTagsForResourceOutput = {
    type = "structure",
    id = "ListTagsForResourceOutput",
    members = {
        Tags = {
            type = "list",
            member = M.Tag,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.MaxActiveResourcesExceededException = {
    type = "structure",
    id = "MaxActiveResourcesExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.MaxNumberOfConfigRulesExceededException = {
    type = "structure",
    id = "MaxNumberOfConfigRulesExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.MaxNumberOfConfigurationRecordersExceededException = {
    type = "structure",
    id = "MaxNumberOfConfigurationRecordersExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.MaxNumberOfConformancePacksExceededException = {
    type = "structure",
    id = "MaxNumberOfConformancePacksExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.MaxNumberOfDeliveryChannelsExceededException = {
    type = "structure",
    id = "MaxNumberOfDeliveryChannelsExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.MaxNumberOfOrganizationConfigRulesExceededException = {
    type = "structure",
    id = "MaxNumberOfOrganizationConfigRulesExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.MaxNumberOfOrganizationConformancePacksExceededException = {
    type = "structure",
    id = "MaxNumberOfOrganizationConformancePacksExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.MaxNumberOfRetentionConfigurationsExceededException = {
    type = "structure",
    id = "MaxNumberOfRetentionConfigurationsExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.NoAvailableDeliveryChannelException = {
    type = "structure",
    id = "NoAvailableDeliveryChannelException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.NoAvailableOrganizationException = {
    type = "structure",
    id = "NoAvailableOrganizationException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.NoSuchBucketException = {
    type = "structure",
    id = "NoSuchBucketException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.OrganizationAllFeaturesNotEnabledException = {
    type = "structure",
    id = "OrganizationAllFeaturesNotEnabledException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.OrganizationConformancePackTemplateValidationException = {
    type = "structure",
    id = "OrganizationConformancePackTemplateValidationException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.OrganizationCustomPolicyRuleMetadata = {
    type = "structure",
    id = "OrganizationCustomPolicyRuleMetadata",
    members = {
        Description = {
            type = "string",
        },
        OrganizationConfigRuleTriggerTypes = {
            type = "list",
            member = { type = "string" },
        },
        InputParameters = {
            type = "string",
        },
        MaximumExecutionFrequency = {
            type = "string",
        },
        ResourceTypesScope = {
            type = "list",
            member = { type = "string" },
        },
        ResourceIdScope = {
            type = "string",
        },
        TagKeyScope = {
            type = "string",
        },
        TagValueScope = {
            type = "string",
        },
        PolicyRuntime = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyText = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DebugLogDeliveryAccounts = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.PutAggregationAuthorizationInput = {
    type = "structure",
    id = "PutAggregationAuthorizationInput",
    members = {
        AuthorizedAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AuthorizedAwsRegion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.PutAggregationAuthorizationOutput = {
    type = "structure",
    id = "PutAggregationAuthorizationOutput",
    members = {
        AggregationAuthorization = M.AggregationAuthorization,
    },
}

M.PutConfigRuleInput = {
    type = "structure",
    id = "PutConfigRuleInput",
    members = {
        ConfigRule = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ConfigRule }),
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.PutConfigRuleOutput = {
    type = "structure",
    id = "PutConfigRuleOutput",
}

M.PutConfigurationAggregatorInput = {
    type = "structure",
    id = "PutConfigurationAggregatorInput",
    members = {
        ConfigurationAggregatorName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AccountAggregationSources = {
            type = "list",
            member = M.AccountAggregationSource,
        },
        OrganizationAggregationSource = M.OrganizationAggregationSource,
        Tags = {
            type = "list",
            member = M.Tag,
        },
        AggregatorFilters = M.AggregatorFilters,
    },
}

M.PutConfigurationAggregatorOutput = {
    type = "structure",
    id = "PutConfigurationAggregatorOutput",
    members = {
        ConfigurationAggregator = M.ConfigurationAggregator,
    },
}

M.PutConfigurationRecorderInput = {
    type = "structure",
    id = "PutConfigurationRecorderInput",
    members = {
        ConfigurationRecorder = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ConfigurationRecorder }),
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.PutConfigurationRecorderOutput = {
    type = "structure",
    id = "PutConfigurationRecorderOutput",
}

M.PutConformancePackInput = {
    type = "structure",
    id = "PutConformancePackInput",
    members = {
        ConformancePackName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TemplateS3Uri = {
            type = "string",
        },
        TemplateBody = {
            type = "string",
        },
        DeliveryS3Bucket = {
            type = "string",
        },
        DeliveryS3KeyPrefix = {
            type = "string",
        },
        ConformancePackInputParameters = {
            type = "list",
            member = M.ConformancePackInputParameter,
        },
        TemplateSSMDocumentDetails = M.TemplateSSMDocumentDetails,
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.PutConformancePackOutput = {
    type = "structure",
    id = "PutConformancePackOutput",
    members = {
        ConformancePackArn = {
            type = "string",
        },
    },
}

M.PutDeliveryChannelInput = {
    type = "structure",
    id = "PutDeliveryChannelInput",
    members = {
        DeliveryChannel = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DeliveryChannel }),
    },
}

M.PutDeliveryChannelOutput = {
    type = "structure",
    id = "PutDeliveryChannelOutput",
}

M.PutEvaluationsInput = {
    type = "structure",
    id = "PutEvaluationsInput",
    members = {
        Evaluations = {
            type = "list",
            member = M.Evaluation,
        },
        ResultToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TestMode = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.PutEvaluationsOutput = {
    type = "structure",
    id = "PutEvaluationsOutput",
    members = {
        FailedEvaluations = {
            type = "list",
            member = M.Evaluation,
        },
    },
}

M.PutExternalEvaluationInput = {
    type = "structure",
    id = "PutExternalEvaluationInput",
    members = {
        ConfigRuleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExternalEvaluation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ExternalEvaluation }),
    },
}

M.PutExternalEvaluationOutput = {
    type = "structure",
    id = "PutExternalEvaluationOutput",
}

M.PutOrganizationConfigRuleInput = {
    type = "structure",
    id = "PutOrganizationConfigRuleInput",
    members = {
        OrganizationConfigRuleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OrganizationManagedRuleMetadata = M.OrganizationManagedRuleMetadata,
        OrganizationCustomRuleMetadata = M.OrganizationCustomRuleMetadata,
        ExcludedAccounts = {
            type = "list",
            member = { type = "string" },
        },
        OrganizationCustomPolicyRuleMetadata = M.OrganizationCustomPolicyRuleMetadata,
    },
}

M.PutOrganizationConfigRuleOutput = {
    type = "structure",
    id = "PutOrganizationConfigRuleOutput",
    members = {
        OrganizationConfigRuleArn = {
            type = "string",
        },
    },
}

M.PutOrganizationConformancePackInput = {
    type = "structure",
    id = "PutOrganizationConformancePackInput",
    members = {
        OrganizationConformancePackName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TemplateS3Uri = {
            type = "string",
        },
        TemplateBody = {
            type = "string",
        },
        DeliveryS3Bucket = {
            type = "string",
        },
        DeliveryS3KeyPrefix = {
            type = "string",
        },
        ConformancePackInputParameters = {
            type = "list",
            member = M.ConformancePackInputParameter,
        },
        ExcludedAccounts = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.PutOrganizationConformancePackOutput = {
    type = "structure",
    id = "PutOrganizationConformancePackOutput",
    members = {
        OrganizationConformancePackArn = {
            type = "string",
        },
    },
}

M.PutRemediationConfigurationsInput = {
    type = "structure",
    id = "PutRemediationConfigurationsInput",
    members = {
        RemediationConfigurations = {
            type = "list",
            member = M.RemediationConfiguration,
            traits = {
                required = true,
            },
        },
    },
}

M.PutRemediationConfigurationsOutput = {
    type = "structure",
    id = "PutRemediationConfigurationsOutput",
    members = {
        FailedBatches = {
            type = "list",
            member = M.FailedRemediationBatch,
        },
    },
}

M.PutRemediationExceptionsInput = {
    type = "structure",
    id = "PutRemediationExceptionsInput",
    members = {
        ConfigRuleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceKeys = {
            type = "list",
            member = M.RemediationExceptionResourceKey,
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
        },
        ExpirationTime = {
            type = "timestamp",
        },
    },
}

M.PutRemediationExceptionsOutput = {
    type = "structure",
    id = "PutRemediationExceptionsOutput",
    members = {
        FailedBatches = {
            type = "list",
            member = M.FailedRemediationExceptionBatch,
        },
    },
}

M.PutResourceConfigInput = {
    type = "structure",
    id = "PutResourceConfigInput",
    members = {
        ResourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SchemaVersionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceName = {
            type = "string",
        },
        Configuration = {
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

M.PutResourceConfigOutput = {
    type = "structure",
    id = "PutResourceConfigOutput",
}

M.PutRetentionConfigurationInput = {
    type = "structure",
    id = "PutRetentionConfigurationInput",
    members = {
        RetentionPeriodInDays = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.PutRetentionConfigurationOutput = {
    type = "structure",
    id = "PutRetentionConfigurationOutput",
    members = {
        RetentionConfiguration = M.RetentionConfiguration,
    },
}

M.PutServiceLinkedConfigurationRecorderInput = {
    type = "structure",
    id = "PutServiceLinkedConfigurationRecorderInput",
    members = {
        ServicePrincipal = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.PutServiceLinkedConfigurationRecorderOutput = {
    type = "structure",
    id = "PutServiceLinkedConfigurationRecorderOutput",
    members = {
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
    },
}

M.PutStoredQueryInput = {
    type = "structure",
    id = "PutStoredQueryInput",
    members = {
        StoredQuery = setmetatable({ traits = {
            required = true,
        } }, { __index = M.StoredQuery }),
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.PutStoredQueryOutput = {
    type = "structure",
    id = "PutStoredQueryOutput",
    members = {
        QueryArn = {
            type = "string",
        },
    },
}

M.ResourceConcurrentModificationException = {
    type = "structure",
    id = "ResourceConcurrentModificationException",
    error = "client",
    members = {
        message = {
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

M.QueryInfo = {
    type = "structure",
    id = "QueryInfo",
    members = {
        SelectFields = {
            type = "list",
            member = M.FieldInfo,
        },
    },
}

M.SelectAggregateResourceConfigInput = {
    type = "structure",
    id = "SelectAggregateResourceConfigInput",
    members = {
        Expression = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConfigurationAggregatorName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Limit = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.SelectAggregateResourceConfigOutput = {
    type = "structure",
    id = "SelectAggregateResourceConfigOutput",
    members = {
        Results = {
            type = "list",
            member = { type = "string" },
        },
        QueryInfo = M.QueryInfo,
        NextToken = {
            type = "string",
        },
    },
}

M.SelectResourceConfigInput = {
    type = "structure",
    id = "SelectResourceConfigInput",
    members = {
        Expression = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Limit = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.SelectResourceConfigOutput = {
    type = "structure",
    id = "SelectResourceConfigOutput",
    members = {
        Results = {
            type = "list",
            member = { type = "string" },
        },
        QueryInfo = M.QueryInfo,
        NextToken = {
            type = "string",
        },
    },
}

M.StartConfigRulesEvaluationInput = {
    type = "structure",
    id = "StartConfigRulesEvaluationInput",
    members = {
        ConfigRuleNames = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.StartConfigRulesEvaluationOutput = {
    type = "structure",
    id = "StartConfigRulesEvaluationOutput",
}

M.StartConfigurationRecorderInput = {
    type = "structure",
    id = "StartConfigurationRecorderInput",
    members = {
        ConfigurationRecorderName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartConfigurationRecorderOutput = {
    type = "structure",
    id = "StartConfigurationRecorderOutput",
}

M.StartRemediationExecutionInput = {
    type = "structure",
    id = "StartRemediationExecutionInput",
    members = {
        ConfigRuleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceKeys = {
            type = "list",
            member = M.ResourceKey,
            traits = {
                required = true,
            },
        },
    },
}

M.StartRemediationExecutionOutput = {
    type = "structure",
    id = "StartRemediationExecutionOutput",
    members = {
        FailureMessage = {
            type = "string",
        },
        FailedItems = {
            type = "list",
            member = M.ResourceKey,
        },
    },
}

M.StartResourceEvaluationInput = {
    type = "structure",
    id = "StartResourceEvaluationInput",
    members = {
        ResourceDetails = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ResourceDetails }),
        EvaluationContext = M.EvaluationContext,
        EvaluationMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EvaluationTimeout = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        ClientToken = {
            type = "string",
        },
    },
}

M.StartResourceEvaluationOutput = {
    type = "structure",
    id = "StartResourceEvaluationOutput",
    members = {
        ResourceEvaluationId = {
            type = "string",
        },
    },
}

M.StopConfigurationRecorderInput = {
    type = "structure",
    id = "StopConfigurationRecorderInput",
    members = {
        ConfigurationRecorderName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopConfigurationRecorderOutput = {
    type = "structure",
    id = "StopConfigurationRecorderOutput",
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
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
        ResourceArn = {
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

return M
