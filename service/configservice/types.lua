local M = {}

M.AccountAggregationSource = {
    type = "structure",
    members = {
        AccountIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        AllAwsRegions = {
            type = "boolean",
        },
        AwsRegions = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ComplianceContributorCount = {
    type = "structure",
    members = {
        CappedCount = {
            type = "number",
        },
        CapExceeded = {
            type = "boolean",
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
    members = {
        ComplianceType = {
            type = "string",
        },
        ComplianceContributorCount = {
            type = "structure",
        },
    },
}

M.AggregateComplianceByConfigRule = {
    type = "structure",
    members = {
        ConfigRuleName = {
            type = "string",
        },
        Compliance = {
            type = "structure",
        },
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
    members = {
        ComplianceType = {
            type = "string",
        },
        CompliantRuleCount = {
            type = "number",
        },
        NonCompliantRuleCount = {
            type = "number",
        },
        TotalRuleCount = {
            type = "number",
        },
    },
}

M.AggregateComplianceByConformancePack = {
    type = "structure",
    members = {
        ConformancePackName = {
            type = "string",
        },
        Compliance = {
            type = "structure",
        },
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
    members = {
        CompliantResourceCount = {
            type = "structure",
        },
        NonCompliantResourceCount = {
            type = "structure",
        },
        ComplianceSummaryTimestamp = {
            type = "timestamp",
        },
    },
}

M.AggregateComplianceCount = {
    type = "structure",
    members = {
        GroupName = {
            type = "string",
        },
        ComplianceSummary = {
            type = "structure",
        },
    },
}

M.AggregateConformancePackComplianceCount = {
    type = "structure",
    members = {
        CompliantConformancePackCount = {
            type = "number",
        },
        NonCompliantConformancePackCount = {
            type = "number",
        },
    },
}

M.AggregateConformancePackComplianceFilters = {
    type = "structure",
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
    members = {
        ComplianceSummary = {
            type = "structure",
        },
        GroupName = {
            type = "string",
        },
    },
}

M.AggregateConformancePackComplianceSummaryFilters = {
    type = "structure",
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
    members = {
        EvaluationResultQualifier = {
            type = "structure",
        },
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
    members = {
        EvaluationResultIdentifier = {
            type = "structure",
        },
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
    members = {
        Type = {
            type = "string",
        },
        Value = {
            type = "list",
            member_type = "string",
        },
    },
}

M.AggregatorFilterServicePrincipal = {
    type = "structure",
    members = {
        Type = {
            type = "string",
        },
        Value = {
            type = "list",
            member_type = "string",
        },
    },
}

M.AggregatorFilters = {
    type = "structure",
    members = {
        ResourceType = {
            type = "structure",
        },
        ServicePrincipal = {
            type = "structure",
        },
    },
}

M.AssociateResourceTypesInput = {
    type = "structure",
    members = {
        ConfigurationRecorderArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceTypes = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ExclusionByResourceTypes = {
    type = "structure",
    members = {
        resourceTypes = {
            type = "list",
            member_type = "string",
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
    members = {
        useOnly = {
            type = "string",
        },
    },
}

M.RecordingGroup = {
    type = "structure",
    members = {
        allSupported = {
            type = "boolean",
        },
        includeGlobalResourceTypes = {
            type = "boolean",
        },
        resourceTypes = {
            type = "list",
            member_type = "string",
        },
        exclusionByResourceTypes = {
            type = "structure",
        },
        recordingStrategy = {
            type = "structure",
        },
    },
}

M.RecordingFrequency = {
    CONTINUOUS = "CONTINUOUS",
    DAILY = "DAILY",
}

M.RecordingModeOverride = {
    type = "structure",
    members = {
        description = {
            type = "string",
        },
        resourceTypes = {
            type = "list",
            member_type = "string",
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
    members = {
        recordingFrequency = {
            type = "string",
            traits = {
                required = true,
            },
        },
        recordingModeOverrides = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.RecordingScope = {
    INTERNAL = "INTERNAL",
    PAID = "PAID",
}

M.ConfigurationRecorder = {
    type = "structure",
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
        recordingGroup = {
            type = "structure",
        },
        recordingMode = {
            type = "structure",
        },
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
    members = {
        ConfigurationRecorder = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ConflictException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.NoSuchConfigurationRecorderException = {
    type = "structure",
    error = "client",
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

M.ConfigurationItemStatus = {
    OK = "OK",
    ResourceDiscovered = "ResourceDiscovered",
    ResourceNotRecorded = "ResourceNotRecorded",
    ResourceDeleted = "ResourceDeleted",
    ResourceDeletedNotRecorded = "ResourceDeletedNotRecorded",
}

M.BaseConfigurationItem = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
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
    members = {
        ConfigurationAggregatorName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceIdentifiers = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetAggregateResourceConfigOutput = {
    type = "structure",
    members = {
        BaseConfigurationItems = {
            type = "list",
            member_type = "structure",
        },
        UnprocessedResourceIdentifiers = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.NoSuchConfigurationAggregatorException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResourceKey = {
    type = "structure",
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
    members = {
        resourceKeys = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetResourceConfigOutput = {
    type = "structure",
    members = {
        baseConfigurationItems = {
            type = "list",
            member_type = "structure",
        },
        unprocessedResourceKeys = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.NoAvailableConfigurationRecorderException = {
    type = "structure",
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
    members = {
        ConfigRuleName = {
            type = "string",
        },
        Compliance = {
            type = "structure",
        },
    },
}

M.ComplianceByResource = {
    type = "structure",
    members = {
        ResourceType = {
            type = "string",
        },
        ResourceId = {
            type = "string",
        },
        Compliance = {
            type = "structure",
        },
    },
}

M.ComplianceSummaryByResourceType = {
    type = "structure",
    members = {
        ResourceType = {
            type = "string",
        },
        ComplianceSummary = {
            type = "structure",
        },
    },
}

M.DeliveryStatus = {
    Success = "Success",
    Failure = "Failure",
    Not_Applicable = "Not_Applicable",
}

M.ConfigExportDeliveryInfo = {
    type = "structure",
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
    members = {
        ComplianceResourceTypes = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
        },
        CustomPolicyDetails = {
            type = "structure",
        },
    },
}

M.ConfigRule = {
    type = "structure",
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
        Scope = {
            type = "structure",
        },
        Source = {
            type = "structure",
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
        ConfigRuleState = {
            type = "string",
        },
        CreatedBy = {
            type = "string",
        },
        EvaluationModes = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ConfigRuleComplianceFilters = {
    type = "structure",
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
    members = {
        deliveryFrequency = {
            type = "string",
        },
    },
}

M.ConfigStreamDeliveryInfo = {
    type = "structure",
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
    members = {
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AwsRegions = {
            type = "list",
            member_type = "string",
        },
        AllAwsRegions = {
            type = "boolean",
        },
    },
}

M.ConfigurationAggregator = {
    type = "structure",
    members = {
        ConfigurationAggregatorName = {
            type = "string",
        },
        ConfigurationAggregatorArn = {
            type = "string",
        },
        AccountAggregationSources = {
            type = "list",
            member_type = "structure",
        },
        OrganizationAggregationSource = {
            type = "structure",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
        CreatedBy = {
            type = "string",
        },
        AggregatorFilters = {
            type = "structure",
        },
    },
}

M.Relationship = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
        relatedEvents = {
            type = "list",
            member_type = "string",
        },
        relationships = {
            type = "list",
            member_type = "structure",
        },
        configuration = {
            type = "string",
        },
        supplementaryConfiguration = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
    members = {
        filterName = {
            type = "string",
        },
        filterValue = {
            type = "list",
            member_type = "string",
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
    members = {
        ConfigRuleNames = {
            type = "list",
            member_type = "string",
        },
        ComplianceType = {
            type = "string",
        },
    },
}

M.ConformancePackComplianceScore = {
    type = "structure",
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
    members = {
        ConformancePackNames = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ConformancePackComplianceSummary = {
    type = "structure",
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
            member_type = "structure",
        },
        LastUpdateRequestedTime = {
            type = "timestamp",
        },
        CreatedBy = {
            type = "string",
        },
        TemplateSSMDocumentDetails = {
            type = "structure",
        },
    },
}

M.ConformancePackEvaluationFilters = {
    type = "structure",
    members = {
        ConfigRuleNames = {
            type = "list",
            member_type = "string",
        },
        ComplianceType = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        ResourceIds = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ConformancePackEvaluationResult = {
    type = "structure",
    members = {
        ComplianceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EvaluationResultIdentifier = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
    members = {
        ConfigRuleName = {
            type = "string",
        },
        ComplianceType = {
            type = "string",
        },
        Controls = {
            type = "list",
            member_type = "string",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteAggregationAuthorizationInput = {
    type = "structure",
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
}

M.InvalidParameterValueException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteConfigRuleInput = {
    type = "structure",
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
}

M.NoSuchConfigRuleException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResourceInUseException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteConfigurationAggregatorInput = {
    type = "structure",
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
}

M.DeleteConfigurationRecorderInput = {
    type = "structure",
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
}

M.UnmodifiableEntityException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteConformancePackInput = {
    type = "structure",
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
}

M.NoSuchConformancePackException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteDeliveryChannelInput = {
    type = "structure",
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
}

M.LastDeliveryChannelDeleteFailedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.NoSuchDeliveryChannelException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteEvaluationResultsInput = {
    type = "structure",
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
}

M.DeleteOrganizationConfigRuleInput = {
    type = "structure",
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
}

M.NoSuchOrganizationConfigRuleException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.OrganizationAccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteOrganizationConformancePackInput = {
    type = "structure",
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
}

M.NoSuchOrganizationConformancePackException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeletePendingAggregationRequestInput = {
    type = "structure",
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
}

M.DeleteRemediationConfigurationInput = {
    type = "structure",
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
}

M.InsufficientPermissionsException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.NoSuchRemediationConfigurationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RemediationInProgressException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RemediationExceptionResourceKey = {
    type = "structure",
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
    members = {
        ConfigRuleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceKeys = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.FailedDeleteRemediationExceptionsBatch = {
    type = "structure",
    members = {
        FailureMessage = {
            type = "string",
        },
        FailedItems = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DeleteRemediationExceptionsOutput = {
    type = "structure",
    members = {
        FailedBatches = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.NoSuchRemediationExceptionException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteResourceConfigInput = {
    type = "structure",
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
}

M.NoRunningConfigurationRecorderException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteRetentionConfigurationInput = {
    type = "structure",
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
}

M.NoSuchRetentionConfigurationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteServiceLinkedConfigurationRecorderInput = {
    type = "structure",
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

M.DeliverConfigSnapshotInput = {
    type = "structure",
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
    members = {
        configSnapshotId = {
            type = "string",
        },
    },
}

M.DeliveryChannel = {
    type = "structure",
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
        configSnapshotDeliveryProperties = {
            type = "structure",
        },
    },
}

M.DeliveryChannelStatus = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        configSnapshotDeliveryInfo = {
            type = "structure",
        },
        configHistoryDeliveryInfo = {
            type = "structure",
        },
        configStreamDeliveryInfo = {
            type = "structure",
        },
    },
}

M.DescribeAggregateComplianceByConfigRulesInput = {
    type = "structure",
    members = {
        ConfigurationAggregatorName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filters = {
            type = "structure",
        },
        Limit = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeAggregateComplianceByConfigRulesOutput = {
    type = "structure",
    members = {
        AggregateComplianceByConfigRules = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.InvalidLimitException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidNextTokenException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DescribeAggregateComplianceByConformancePacksInput = {
    type = "structure",
    members = {
        ConfigurationAggregatorName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filters = {
            type = "structure",
        },
        Limit = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeAggregateComplianceByConformancePacksOutput = {
    type = "structure",
    members = {
        AggregateComplianceByConformancePacks = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeAggregationAuthorizationsInput = {
    type = "structure",
    members = {
        Limit = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeAggregationAuthorizationsOutput = {
    type = "structure",
    members = {
        AggregationAuthorizations = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeComplianceByConfigRuleInput = {
    type = "structure",
    members = {
        ConfigRuleNames = {
            type = "list",
            member_type = "string",
        },
        ComplianceTypes = {
            type = "list",
            member_type = "string",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeComplianceByConfigRuleOutput = {
    type = "structure",
    members = {
        ComplianceByConfigRules = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeComplianceByResourceInput = {
    type = "structure",
    members = {
        ResourceType = {
            type = "string",
        },
        ResourceId = {
            type = "string",
        },
        ComplianceTypes = {
            type = "list",
            member_type = "string",
        },
        Limit = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeComplianceByResourceOutput = {
    type = "structure",
    members = {
        ComplianceByResources = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeConfigRuleEvaluationStatusInput = {
    type = "structure",
    members = {
        ConfigRuleNames = {
            type = "list",
            member_type = "string",
        },
        NextToken = {
            type = "string",
        },
        Limit = {
            type = "number",
        },
    },
}

M.DescribeConfigRuleEvaluationStatusOutput = {
    type = "structure",
    members = {
        ConfigRulesEvaluationStatus = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeConfigRulesFilters = {
    type = "structure",
    members = {
        EvaluationMode = {
            type = "string",
        },
    },
}

M.DescribeConfigRulesInput = {
    type = "structure",
    members = {
        ConfigRuleNames = {
            type = "list",
            member_type = "string",
        },
        NextToken = {
            type = "string",
        },
        Filters = {
            type = "structure",
        },
    },
}

M.DescribeConfigRulesOutput = {
    type = "structure",
    members = {
        ConfigRules = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeConfigurationAggregatorsInput = {
    type = "structure",
    members = {
        ConfigurationAggregatorNames = {
            type = "list",
            member_type = "string",
        },
        NextToken = {
            type = "string",
        },
        Limit = {
            type = "number",
        },
    },
}

M.DescribeConfigurationAggregatorsOutput = {
    type = "structure",
    members = {
        ConfigurationAggregators = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeConfigurationAggregatorSourcesStatusInput = {
    type = "structure",
    members = {
        ConfigurationAggregatorName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UpdateStatus = {
            type = "list",
            member_type = "string",
        },
        NextToken = {
            type = "string",
        },
        Limit = {
            type = "number",
        },
    },
}

M.DescribeConfigurationAggregatorSourcesStatusOutput = {
    type = "structure",
    members = {
        AggregatedSourceStatusList = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeConfigurationRecordersInput = {
    type = "structure",
    members = {
        ConfigurationRecorderNames = {
            type = "list",
            member_type = "string",
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
    members = {
        ConfigurationRecorders = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeConfigurationRecorderStatusInput = {
    type = "structure",
    members = {
        ConfigurationRecorderNames = {
            type = "list",
            member_type = "string",
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
    members = {
        ConfigurationRecordersStatus = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeConformancePackComplianceInput = {
    type = "structure",
    members = {
        ConformancePackName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filters = {
            type = "structure",
        },
        Limit = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeConformancePackComplianceOutput = {
    type = "structure",
    members = {
        ConformancePackName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConformancePackRuleComplianceList = {
            type = "list",
            member_type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DescribeConformancePacksInput = {
    type = "structure",
    members = {
        ConformancePackNames = {
            type = "list",
            member_type = "string",
        },
        Limit = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeConformancePacksOutput = {
    type = "structure",
    members = {
        ConformancePackDetails = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeConformancePackStatusInput = {
    type = "structure",
    members = {
        ConformancePackNames = {
            type = "list",
            member_type = "string",
        },
        Limit = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeConformancePackStatusOutput = {
    type = "structure",
    members = {
        ConformancePackStatusDetails = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeDeliveryChannelsInput = {
    type = "structure",
    members = {
        DeliveryChannelNames = {
            type = "list",
            member_type = "string",
        },
    },
}

M.DescribeDeliveryChannelsOutput = {
    type = "structure",
    members = {
        DeliveryChannels = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeDeliveryChannelStatusInput = {
    type = "structure",
    members = {
        DeliveryChannelNames = {
            type = "list",
            member_type = "string",
        },
    },
}

M.DescribeDeliveryChannelStatusOutput = {
    type = "structure",
    members = {
        DeliveryChannelsStatus = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeOrganizationConfigRulesInput = {
    type = "structure",
    members = {
        OrganizationConfigRuleNames = {
            type = "list",
            member_type = "string",
        },
        Limit = {
            type = "number",
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
    members = {
        Description = {
            type = "string",
        },
        OrganizationConfigRuleTriggerTypes = {
            type = "list",
            member_type = "string",
        },
        InputParameters = {
            type = "string",
        },
        MaximumExecutionFrequency = {
            type = "string",
        },
        ResourceTypesScope = {
            type = "list",
            member_type = "string",
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
            member_type = "string",
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
            member_type = "string",
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
            member_type = "string",
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
            member_type = "string",
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
        OrganizationManagedRuleMetadata = {
            type = "structure",
        },
        OrganizationCustomRuleMetadata = {
            type = "structure",
        },
        ExcludedAccounts = {
            type = "list",
            member_type = "string",
        },
        LastUpdateTime = {
            type = "timestamp",
        },
        OrganizationCustomPolicyRuleMetadata = {
            type = "structure",
        },
    },
}

M.DescribeOrganizationConfigRulesOutput = {
    type = "structure",
    members = {
        OrganizationConfigRules = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeOrganizationConfigRuleStatusesInput = {
    type = "structure",
    members = {
        OrganizationConfigRuleNames = {
            type = "list",
            member_type = "string",
        },
        Limit = {
            type = "number",
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
    members = {
        OrganizationConfigRuleStatuses = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeOrganizationConformancePacksInput = {
    type = "structure",
    members = {
        OrganizationConformancePackNames = {
            type = "list",
            member_type = "string",
        },
        Limit = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.OrganizationConformancePack = {
    type = "structure",
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
            member_type = "structure",
        },
        ExcludedAccounts = {
            type = "list",
            member_type = "string",
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
    members = {
        OrganizationConformancePacks = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeOrganizationConformancePackStatusesInput = {
    type = "structure",
    members = {
        OrganizationConformancePackNames = {
            type = "list",
            member_type = "string",
        },
        Limit = {
            type = "number",
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
    members = {
        OrganizationConformancePackStatuses = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribePendingAggregationRequestsInput = {
    type = "structure",
    members = {
        Limit = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.PendingAggregationRequest = {
    type = "structure",
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
    members = {
        PendingAggregationRequests = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeRemediationConfigurationsInput = {
    type = "structure",
    members = {
        ConfigRuleNames = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SsmControls = {
    type = "structure",
    members = {
        ConcurrentExecutionRatePercentage = {
            type = "number",
        },
        ErrorPercentage = {
            type = "number",
        },
    },
}

M.ExecutionControls = {
    type = "structure",
    members = {
        SsmControls = {
            type = "structure",
        },
    },
}

M.ResourceValueType = {
    RESOURCE_ID = "RESOURCE_ID",
}

M.ResourceValue = {
    type = "structure",
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
    members = {
        Values = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RemediationParameterValue = {
    type = "structure",
    members = {
        ResourceValue = {
            type = "structure",
        },
        StaticValue = {
            type = "structure",
        },
    },
}

M.RemediationTargetType = {
    SSM_DOCUMENT = "SSM_DOCUMENT",
}

M.RemediationConfiguration = {
    type = "structure",
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
            key_type = "string",
            value_type = "structure",
        },
        ResourceType = {
            type = "string",
        },
        Automatic = {
            type = "boolean",
        },
        ExecutionControls = {
            type = "structure",
        },
        MaximumAutomaticAttempts = {
            type = "number",
        },
        RetryAttemptSeconds = {
            type = "number",
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
    members = {
        RemediationConfigurations = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeRemediationExceptionsInput = {
    type = "structure",
    members = {
        ConfigRuleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceKeys = {
            type = "list",
            member_type = "structure",
        },
        Limit = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.RemediationException = {
    type = "structure",
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
    members = {
        RemediationExceptions = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeRemediationExecutionStatusInput = {
    type = "structure",
    members = {
        ConfigRuleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceKeys = {
            type = "list",
            member_type = "structure",
        },
        Limit = {
            type = "number",
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
    members = {
        ResourceKey = {
            type = "structure",
        },
        State = {
            type = "string",
        },
        StepDetails = {
            type = "list",
            member_type = "structure",
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
    members = {
        RemediationExecutionStatuses = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeRetentionConfigurationsInput = {
    type = "structure",
    members = {
        RetentionConfigurationNames = {
            type = "list",
            member_type = "string",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.RetentionConfiguration = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RetentionPeriodInDays = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeRetentionConfigurationsOutput = {
    type = "structure",
    members = {
        RetentionConfigurations = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DisassociateResourceTypesInput = {
    type = "structure",
    members = {
        ConfigurationRecorderArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceTypes = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateResourceTypesOutput = {
    type = "structure",
    members = {
        ConfigurationRecorder = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.Evaluation = {
    type = "structure",
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
    members = {
        EvaluationContextIdentifier = {
            type = "string",
        },
    },
}

M.EvaluationResult = {
    type = "structure",
    members = {
        EvaluationResultIdentifier = {
            type = "structure",
        },
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
    members = {
        FailureMessage = {
            type = "string",
        },
        FailedItems = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.FailedRemediationExceptionBatch = {
    type = "structure",
    members = {
        FailureMessage = {
            type = "string",
        },
        FailedItems = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.FieldInfo = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.GetAggregateComplianceDetailsByConfigRuleInput = {
    type = "structure",
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
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetAggregateComplianceDetailsByConfigRuleOutput = {
    type = "structure",
    members = {
        AggregateEvaluationResults = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetAggregateConfigRuleComplianceSummaryInput = {
    type = "structure",
    members = {
        ConfigurationAggregatorName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filters = {
            type = "structure",
        },
        GroupByKey = {
            type = "string",
        },
        Limit = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetAggregateConfigRuleComplianceSummaryOutput = {
    type = "structure",
    members = {
        GroupByKey = {
            type = "string",
        },
        AggregateComplianceCounts = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetAggregateConformancePackComplianceSummaryInput = {
    type = "structure",
    members = {
        ConfigurationAggregatorName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filters = {
            type = "structure",
        },
        GroupByKey = {
            type = "string",
        },
        Limit = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetAggregateConformancePackComplianceSummaryOutput = {
    type = "structure",
    members = {
        AggregateConformancePackComplianceSummaries = {
            type = "list",
            member_type = "structure",
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
    members = {
        ConfigurationAggregatorName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filters = {
            type = "structure",
        },
        GroupByKey = {
            type = "string",
        },
        Limit = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GroupedResourceCount = {
    type = "structure",
    members = {
        GroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceCount = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.GetAggregateDiscoveredResourceCountsOutput = {
    type = "structure",
    members = {
        TotalDiscoveredResources = {
            type = "number",
            traits = {
                required = true,
            },
        },
        GroupByKey = {
            type = "string",
        },
        GroupedResourceCounts = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetAggregateResourceConfigInput = {
    type = "structure",
    members = {
        ConfigurationAggregatorName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceIdentifier = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetAggregateResourceConfigOutput = {
    type = "structure",
    members = {
        ConfigurationItem = {
            type = "structure",
        },
    },
}

M.OversizedConfigurationItemException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResourceNotDiscoveredException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetComplianceDetailsByConfigRuleInput = {
    type = "structure",
    members = {
        ConfigRuleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ComplianceTypes = {
            type = "list",
            member_type = "string",
        },
        Limit = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetComplianceDetailsByConfigRuleOutput = {
    type = "structure",
    members = {
        EvaluationResults = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetComplianceDetailsByResourceInput = {
    type = "structure",
    members = {
        ResourceType = {
            type = "string",
        },
        ResourceId = {
            type = "string",
        },
        ComplianceTypes = {
            type = "list",
            member_type = "string",
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
    members = {
        EvaluationResults = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetComplianceSummaryByConfigRuleInput = {
    type = "structure",
}

M.GetComplianceSummaryByConfigRuleOutput = {
    type = "structure",
    members = {
        ComplianceSummary = {
            type = "structure",
        },
    },
}

M.GetComplianceSummaryByResourceTypeInput = {
    type = "structure",
    members = {
        ResourceTypes = {
            type = "list",
            member_type = "string",
        },
    },
}

M.GetComplianceSummaryByResourceTypeOutput = {
    type = "structure",
    members = {
        ComplianceSummariesByResourceType = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetConformancePackComplianceDetailsInput = {
    type = "structure",
    members = {
        ConformancePackName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filters = {
            type = "structure",
        },
        Limit = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetConformancePackComplianceDetailsOutput = {
    type = "structure",
    members = {
        ConformancePackName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConformancePackRuleEvaluationResults = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetConformancePackComplianceSummaryInput = {
    type = "structure",
    members = {
        ConformancePackNames = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        Limit = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetConformancePackComplianceSummaryOutput = {
    type = "structure",
    members = {
        ConformancePackComplianceSummaryList = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetCustomRulePolicyInput = {
    type = "structure",
    members = {
        ConfigRuleName = {
            type = "string",
        },
    },
}

M.GetCustomRulePolicyOutput = {
    type = "structure",
    members = {
        PolicyText = {
            type = "string",
        },
    },
}

M.GetDiscoveredResourceCountsInput = {
    type = "structure",
    members = {
        resourceTypes = {
            type = "list",
            member_type = "string",
        },
        limit = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ResourceCount = {
    type = "structure",
    members = {
        resourceType = {
            type = "string",
        },
        count = {
            type = "number",
        },
    },
}

M.GetDiscoveredResourceCountsOutput = {
    type = "structure",
    members = {
        totalDiscoveredResources = {
            type = "number",
        },
        resourceCounts = {
            type = "list",
            member_type = "structure",
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
    members = {
        OrganizationConfigRuleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filters = {
            type = "structure",
        },
        Limit = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.MemberAccountStatus = {
    type = "structure",
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
    members = {
        OrganizationConfigRuleDetailedStatus = {
            type = "list",
            member_type = "structure",
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
    members = {
        OrganizationConformancePackName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filters = {
            type = "structure",
        },
        Limit = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.OrganizationConformancePackDetailedStatus = {
    type = "structure",
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
    members = {
        OrganizationConformancePackDetailedStatuses = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetOrganizationCustomRulePolicyInput = {
    type = "structure",
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
    members = {
        PolicyText = {
            type = "string",
        },
    },
}

M.GetResourceConfigHistoryInput = {
    type = "structure",
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
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GetResourceConfigHistoryOutput = {
    type = "structure",
    members = {
        configurationItems = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.InvalidTimeRangeException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetResourceEvaluationSummaryInput = {
    type = "structure",
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
    members = {
        ResourceEvaluationId = {
            type = "string",
        },
        EvaluationMode = {
            type = "string",
        },
        EvaluationStatus = {
            type = "structure",
        },
        EvaluationStartTimestamp = {
            type = "timestamp",
        },
        Compliance = {
            type = "string",
        },
        EvaluationContext = {
            type = "structure",
        },
        ResourceDetails = {
            type = "structure",
        },
    },
}

M.GetStoredQueryInput = {
    type = "structure",
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
    members = {
        StoredQuery = {
            type = "structure",
        },
    },
}

M.IdempotentParameterMismatch = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InsufficientDeliveryPolicyException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidConfigurationRecorderNameException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidDeliveryChannelNameException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidExpressionException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidRecordingGroupException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidResultTokenException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidRoleException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidS3KeyPrefixException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidS3KmsKeyArnException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidSNSTopicARNException = {
    type = "structure",
    error = "client",
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

M.ResourceFilters = {
    type = "structure",
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
        Filters = {
            type = "structure",
        },
        Limit = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListAggregateDiscoveredResourcesOutput = {
    type = "structure",
    members = {
        ResourceIdentifiers = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListConfigurationRecordersInput = {
    type = "structure",
    members = {
        Filters = {
            type = "list",
            member_type = "structure",
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListConfigurationRecordersOutput = {
    type = "structure",
    members = {
        ConfigurationRecorderSummaries = {
            type = "list",
            member_type = "structure",
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
    members = {
        Filters = {
            type = "structure",
        },
        SortOrder = {
            type = "string",
        },
        SortBy = {
            type = "string",
        },
        Limit = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListConformancePackComplianceScoresOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        ConformancePackComplianceScores = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListDiscoveredResourcesInput = {
    type = "structure",
    members = {
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceIds = {
            type = "list",
            member_type = "string",
        },
        resourceName = {
            type = "string",
        },
        limit = {
            type = "number",
        },
        includeDeletedResources = {
            type = "boolean",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ResourceIdentifier = {
    type = "structure",
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
    members = {
        resourceIdentifiers = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.TimeWindow = {
    type = "structure",
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
    members = {
        EvaluationMode = {
            type = "string",
        },
        TimeWindow = {
            type = "structure",
        },
        EvaluationContextIdentifier = {
            type = "string",
        },
    },
}

M.ListResourceEvaluationsInput = {
    type = "structure",
    members = {
        Filters = {
            type = "structure",
        },
        Limit = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ResourceEvaluation = {
    type = "structure",
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
    members = {
        ResourceEvaluations = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListStoredQueriesInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.StoredQueryMetadata = {
    type = "structure",
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
    members = {
        StoredQueryMetadata = {
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
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Limit = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.Tag = {
    type = "structure",
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
    members = {
        Tags = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.MaxActiveResourcesExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.MaxNumberOfConfigRulesExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.MaxNumberOfConfigurationRecordersExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.MaxNumberOfConformancePacksExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.MaxNumberOfDeliveryChannelsExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.MaxNumberOfOrganizationConfigRulesExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.MaxNumberOfOrganizationConformancePacksExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.MaxNumberOfRetentionConfigurationsExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.NoAvailableDeliveryChannelException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.NoAvailableOrganizationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.NoSuchBucketException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.OrganizationAllFeaturesNotEnabledException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.OrganizationConformancePackTemplateValidationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.OrganizationCustomPolicyRuleMetadata = {
    type = "structure",
    members = {
        Description = {
            type = "string",
        },
        OrganizationConfigRuleTriggerTypes = {
            type = "list",
            member_type = "string",
        },
        InputParameters = {
            type = "string",
        },
        MaximumExecutionFrequency = {
            type = "string",
        },
        ResourceTypesScope = {
            type = "list",
            member_type = "string",
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
            member_type = "string",
        },
    },
}

M.PutAggregationAuthorizationInput = {
    type = "structure",
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
            member_type = "structure",
        },
    },
}

M.PutAggregationAuthorizationOutput = {
    type = "structure",
    members = {
        AggregationAuthorization = {
            type = "structure",
        },
    },
}

M.PutConfigRuleInput = {
    type = "structure",
    members = {
        ConfigRule = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.PutConfigRuleOutput = {
    type = "structure",
}

M.PutConfigurationAggregatorInput = {
    type = "structure",
    members = {
        ConfigurationAggregatorName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AccountAggregationSources = {
            type = "list",
            member_type = "structure",
        },
        OrganizationAggregationSource = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        AggregatorFilters = {
            type = "structure",
        },
    },
}

M.PutConfigurationAggregatorOutput = {
    type = "structure",
    members = {
        ConfigurationAggregator = {
            type = "structure",
        },
    },
}

M.PutConfigurationRecorderInput = {
    type = "structure",
    members = {
        ConfigurationRecorder = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.PutConfigurationRecorderOutput = {
    type = "structure",
}

M.PutConformancePackInput = {
    type = "structure",
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
            member_type = "structure",
        },
        TemplateSSMDocumentDetails = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.PutConformancePackOutput = {
    type = "structure",
    members = {
        ConformancePackArn = {
            type = "string",
        },
    },
}

M.PutDeliveryChannelInput = {
    type = "structure",
    members = {
        DeliveryChannel = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PutDeliveryChannelOutput = {
    type = "structure",
}

M.PutEvaluationsInput = {
    type = "structure",
    members = {
        Evaluations = {
            type = "list",
            member_type = "structure",
        },
        ResultToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TestMode = {
            type = "boolean",
        },
    },
}

M.PutEvaluationsOutput = {
    type = "structure",
    members = {
        FailedEvaluations = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.PutExternalEvaluationInput = {
    type = "structure",
    members = {
        ConfigRuleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExternalEvaluation = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PutExternalEvaluationOutput = {
    type = "structure",
}

M.PutOrganizationConfigRuleInput = {
    type = "structure",
    members = {
        OrganizationConfigRuleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OrganizationManagedRuleMetadata = {
            type = "structure",
        },
        OrganizationCustomRuleMetadata = {
            type = "structure",
        },
        ExcludedAccounts = {
            type = "list",
            member_type = "string",
        },
        OrganizationCustomPolicyRuleMetadata = {
            type = "structure",
        },
    },
}

M.PutOrganizationConfigRuleOutput = {
    type = "structure",
    members = {
        OrganizationConfigRuleArn = {
            type = "string",
        },
    },
}

M.PutOrganizationConformancePackInput = {
    type = "structure",
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
            member_type = "structure",
        },
        ExcludedAccounts = {
            type = "list",
            member_type = "string",
        },
    },
}

M.PutOrganizationConformancePackOutput = {
    type = "structure",
    members = {
        OrganizationConformancePackArn = {
            type = "string",
        },
    },
}

M.PutRemediationConfigurationsInput = {
    type = "structure",
    members = {
        RemediationConfigurations = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PutRemediationConfigurationsOutput = {
    type = "structure",
    members = {
        FailedBatches = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.PutRemediationExceptionsInput = {
    type = "structure",
    members = {
        ConfigRuleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceKeys = {
            type = "list",
            member_type = "structure",
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
    members = {
        FailedBatches = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.PutResourceConfigInput = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.PutResourceConfigOutput = {
    type = "structure",
}

M.PutRetentionConfigurationInput = {
    type = "structure",
    members = {
        RetentionPeriodInDays = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.PutRetentionConfigurationOutput = {
    type = "structure",
    members = {
        RetentionConfiguration = {
            type = "structure",
        },
    },
}

M.PutServiceLinkedConfigurationRecorderInput = {
    type = "structure",
    members = {
        ServicePrincipal = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.PutServiceLinkedConfigurationRecorderOutput = {
    type = "structure",
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
    members = {
        StoredQuery = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.PutStoredQueryOutput = {
    type = "structure",
    members = {
        QueryArn = {
            type = "string",
        },
    },
}

M.ResourceConcurrentModificationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TooManyTagsException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.QueryInfo = {
    type = "structure",
    members = {
        SelectFields = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.SelectAggregateResourceConfigInput = {
    type = "structure",
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
            type = "number",
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.SelectAggregateResourceConfigOutput = {
    type = "structure",
    members = {
        Results = {
            type = "list",
            member_type = "string",
        },
        QueryInfo = {
            type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.SelectResourceConfigInput = {
    type = "structure",
    members = {
        Expression = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Limit = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.SelectResourceConfigOutput = {
    type = "structure",
    members = {
        Results = {
            type = "list",
            member_type = "string",
        },
        QueryInfo = {
            type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.StartConfigRulesEvaluationInput = {
    type = "structure",
    members = {
        ConfigRuleNames = {
            type = "list",
            member_type = "string",
        },
    },
}

M.StartConfigRulesEvaluationOutput = {
    type = "structure",
}

M.StartConfigurationRecorderInput = {
    type = "structure",
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
}

M.StartRemediationExecutionInput = {
    type = "structure",
    members = {
        ConfigRuleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceKeys = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.StartRemediationExecutionOutput = {
    type = "structure",
    members = {
        FailureMessage = {
            type = "string",
        },
        FailedItems = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.StartResourceEvaluationInput = {
    type = "structure",
    members = {
        ResourceDetails = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        EvaluationContext = {
            type = "structure",
        },
        EvaluationMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EvaluationTimeout = {
            type = "number",
        },
        ClientToken = {
            type = "string",
        },
    },
}

M.StartResourceEvaluationOutput = {
    type = "structure",
    members = {
        ResourceEvaluationId = {
            type = "string",
        },
    },
}

M.StopConfigurationRecorderInput = {
    type = "structure",
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
}

M.TagResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
        ResourceArn = {
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

return M
