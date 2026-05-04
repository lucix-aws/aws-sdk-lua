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

M.RuntimeAnalysisStatus = {
    ANALYSIS_TO_BE_SCHEDULED = "ANALYSIS_TO_BE_SCHEDULED",
    ANALYSIS_STARTED = "ANALYSIS_STARTED",
    ANALYSIS_SUCCESS = "ANALYSIS_SUCCESS",
    ANALYSIS_FAILED = "ANALYSIS_FAILED",
}

M.SrcCodeOrDbAnalysisStatus = {
    ANALYSIS_TO_BE_SCHEDULED = "ANALYSIS_TO_BE_SCHEDULED",
    ANALYSIS_STARTED = "ANALYSIS_STARTED",
    ANALYSIS_SUCCESS = "ANALYSIS_SUCCESS",
    ANALYSIS_FAILED = "ANALYSIS_FAILED",
    ANALYSIS_PARTIAL_SUCCESS = "ANALYSIS_PARTIAL_SUCCESS",
    UNCONFIGURED = "UNCONFIGURED",
    CONFIGURED = "CONFIGURED",
}

M.AnalysisStatusUnion = {
    type = "union",
    members = {
        runtimeAnalysisStatus = {
            type = "string",
        },
        srcCodeOrDbAnalysisStatus = {
            type = "string",
        },
    },
}

M.AnalysisType = {
    SOURCE_CODE_ANALYSIS = "SOURCE_CODE_ANALYSIS",
    DATABASE_ANALYSIS = "DATABASE_ANALYSIS",
    RUNTIME_ANALYSIS = "RUNTIME_ANALYSIS",
    BINARY_ANALYSIS = "BINARY_ANALYSIS",
}

M.AnalyzableServerSummary = {
    type = "structure",
    members = {
        hostname = {
            type = "string",
        },
        ipAddress = {
            type = "string",
        },
        source = {
            type = "string",
        },
        vmId = {
            type = "string",
        },
    },
}

M.BinaryAnalyzerName = {
    DLL_ANALYZER = "DLL_ANALYZER",
    BYTECODE_ANALYZER = "BYTECODE_ANALYZER",
}

M.RunTimeAnalyzerName = {
    A2C_ANALYZER = "A2C_ANALYZER",
    REHOST_ANALYZER = "REHOST_ANALYZER",
    EMP_PA_ANALYZER = "EMP_PA_ANALYZER",
    DATABASE_ANALYZER = "DATABASE_ANALYZER",
    SCT_ANALYZER = "SCT_ANALYZER",
}

M.SourceCodeAnalyzerName = {
    CSHARP_ANALYZER = "CSHARP_ANALYZER",
    JAVA_ANALYZER = "JAVA_ANALYZER",
    BYTECODE_ANALYZER = "BYTECODE_ANALYZER",
    PORTING_ASSISTANT = "PORTING_ASSISTANT",
}

M.AnalyzerNameUnion = {
    type = "union",
    members = {
        binaryAnalyzerName = {
            type = "string",
        },
        runTimeAnalyzerName = {
            type = "string",
        },
        sourceCodeAnalyzerName = {
            type = "string",
        },
    },
}

M.S3Object = {
    type = "structure",
    members = {
        s3Bucket = {
            type = "string",
        },
        s3key = {
            type = "string",
        },
    },
}

M.AntipatternReportStatus = {
    FAILED = "FAILED",
    IN_PROGRESS = "IN_PROGRESS",
    SUCCESS = "SUCCESS",
}

M.AntipatternReportResult = {
    type = "structure",
    members = {
        analyzerName = M.AnalyzerNameUnion,
        antiPatternReportS3Object = M.S3Object,
        antipatternReportStatus = {
            type = "string",
        },
        antipatternReportStatusMessage = {
            type = "string",
        },
    },
}

M.Severity = {
    HIGH = "HIGH",
    MEDIUM = "MEDIUM",
    LOW = "LOW",
}

M.AntipatternSeveritySummary = {
    type = "structure",
    members = {
        severity = {
            type = "string",
        },
        count = {
            type = "integer",
        },
    },
}

M.ApplicationComponentCriteria = {
    NOT_DEFINED = "NOT_DEFINED",
    APP_NAME = "APP_NAME",
    SERVER_ID = "SERVER_ID",
    APP_TYPE = "APP_TYPE",
    STRATEGY = "STRATEGY",
    DESTINATION = "DESTINATION",
    ANALYSIS_STATUS = "ANALYSIS_STATUS",
    ERROR_CATEGORY = "ERROR_CATEGORY",
}

M.AppType = {
    dotNetFramework = "DotNetFramework",
    java = "Java",
    sqlServer = "SQLServer",
    IIS = "IIS",
    oracle = "Oracle",
    other = "Other",
    tomcat = "Tomcat",
    jboss = "JBoss",
    spring = "Spring",
    mongodb = "Mongo DB",
    db2 = "DB2",
    mariadb = "Maria DB",
    mysql = "MySQL",
    sybase = "Sybase",
    postgresqlserver = "PostgreSQLServer",
    cassandra = "Cassandra",
    websphere = "IBM WebSphere",
    weblogic = "Oracle WebLogic",
    visualbasic = "Visual Basic",
    unknown = "Unknown",
    dotnetcore = "DotnetCore",
    dotnet = "Dotnet",
}

M.AppUnitErrorCategory = {
    CREDENTIAL_ERROR = "CREDENTIAL_ERROR",
    CONNECTIVITY_ERROR = "CONNECTIVITY_ERROR",
    PERMISSION_ERROR = "PERMISSION_ERROR",
    UNSUPPORTED_ERROR = "UNSUPPORTED_ERROR",
    OTHER_ERROR = "OTHER_ERROR",
}

M.AppUnitError = {
    type = "structure",
    members = {
        appUnitErrorCategory = {
            type = "string",
        },
    },
}

M.DatabaseConfigDetail = {
    type = "structure",
    members = {
        secretName = {
            type = "string",
        },
    },
}

M.InclusionStatus = {
    EXCLUDE_FROM_RECOMMENDATION = "excludeFromAssessment",
    INCLUDE_IN_RECOMMENDATION = "includeInAssessment",
}

M.Strategy = {
    REHOST = "Rehost",
    RETIREMENT = "Retirement",
    REFACTOR = "Refactor",
    REPLATFORM = "Replatform",
    RETAIN = "Retain",
    RELOCATE = "Relocate",
    REPURCHASE = "Repurchase",
}

M.TargetDestination = {
    NONE_SPECIFIED = "None specified",
    AWS_ELASTIC_BEANSTALK = "AWS Elastic BeanStalk",
    AWS_FARGATE = "AWS Fargate",
    AMAZON_ELASTIC_CLOUD_COMPUTE = "Amazon Elastic Cloud Compute (EC2)",
    AMAZON_ELASTIC_CONTAINER_SERVICE = "Amazon Elastic Container Service (ECS)",
    AMAZON_ELASTIC_KUBERNETES_SERVICE = "Amazon Elastic Kubernetes Service (EKS)",
    AURORA_MYSQL = "Aurora MySQL",
    AURORA_POSTGRESQL = "Aurora PostgreSQL",
    AMAZON_RDS_MYSQL = "Amazon Relational Database Service on MySQL",
    AMAZON_RDS_POSTGRESQL = "Amazon Relational Database Service on PostgreSQL",
    AMAZON_DOCUMENTDB = "Amazon DocumentDB",
    AMAZON_DYNAMODB = "Amazon DynamoDB",
    AMAZON_RDS = "Amazon Relational Database Service",
    BABELFISH_AURORA_POSTGRESQL = "Babelfish for Aurora PostgreSQL",
}

M.TransformationToolName = {
    APP2CONTAINER = "App2Container",
    PORTING_ASSISTANT = "Porting Assistant For .NET",
    EMP = "End of Support Migration",
    WWAMA = "Windows Web Application Migration Assistant",
    MGN = "Application Migration Service",
    STRATEGY_RECOMMENDATION_SUPPORT = "Strategy Recommendation Support",
    IN_PLACE_OS_UPGRADE = "In Place Operating System Upgrade",
    SCT = "Schema Conversion Tool",
    DMS = "Database Migration Service",
    NATIVE_SQL = "Native SQL Server Backup/Restore",
}

M.TransformationTool = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        tranformationToolInstallationLink = {
            type = "string",
        },
    },
}

M.RecommendationSet = {
    type = "structure",
    members = {
        transformationTool = M.TransformationTool,
        targetDestination = {
            type = "string",
        },
        strategy = {
            type = "string",
        },
    },
}

M.ResourceSubType = {
    DATABASE = "Database",
    PROCESS = "Process",
    DATABASE_PROCESS = "DatabaseProcess",
}

M.Result = {
    type = "structure",
    members = {
        analysisType = {
            type = "string",
        },
        analysisStatus = M.AnalysisStatusUnion,
        statusMessage = {
            type = "string",
        },
        antipatternReportResultList = {
            type = "list",
            member = M.AntipatternReportResult,
        },
    },
}

M.SourceCodeRepository = {
    type = "structure",
    members = {
        repository = {
            type = "string",
        },
        branch = {
            type = "string",
        },
        versionControlType = {
            type = "string",
        },
        projectName = {
            type = "string",
        },
    },
}

M.ApplicationComponentDetail = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        recommendationSet = M.RecommendationSet,
        analysisStatus = {
            type = "string",
        },
        statusMessage = {
            type = "string",
        },
        listAntipatternSeveritySummary = {
            type = "list",
            member = M.AntipatternSeveritySummary,
        },
        databaseConfigDetail = M.DatabaseConfigDetail,
        sourceCodeRepositories = {
            type = "list",
            member = M.SourceCodeRepository,
        },
        appType = {
            type = "string",
        },
        resourceSubType = {
            type = "string",
        },
        inclusionStatus = {
            type = "string",
        },
        antipatternReportS3Object = M.S3Object,
        antipatternReportStatus = {
            type = "string",
        },
        antipatternReportStatusMessage = {
            type = "string",
        },
        osVersion = {
            type = "string",
        },
        osDriver = {
            type = "string",
        },
        lastAnalyzedTimestamp = {
            type = "timestamp",
        },
        associatedServerId = {
            type = "string",
        },
        moreServerAssociationExists = {
            type = "boolean",
        },
        runtimeStatus = {
            type = "string",
        },
        runtimeStatusMessage = {
            type = "string",
        },
        appUnitError = M.AppUnitError,
        resultList = {
            type = "list",
            member = M.Result,
        },
    },
}

M.ApplicationComponentStatusSummary = {
    type = "structure",
    members = {
        srcCodeOrDbAnalysisStatus = {
            type = "string",
        },
        count = {
            type = "integer",
        },
    },
}

M.StrategyRecommendation = {
    RECOMMENDED = "recommended",
    VIABLE_OPTION = "viableOption",
    NOT_RECOMMENDED = "notRecommended",
    POTENTIAL = "potential",
}

M.ApplicationComponentStrategy = {
    type = "structure",
    members = {
        recommendation = M.RecommendationSet,
        status = {
            type = "string",
        },
        isPreferred = {
            type = "boolean",
        },
    },
}

M.ApplicationComponentSummary = {
    type = "structure",
    members = {
        appType = {
            type = "string",
        },
        count = {
            type = "integer",
        },
    },
}

M.ApplicationMode = {
    ALL = "ALL",
    KNOWN = "KNOWN",
    UNKNOWN = "UNKNOWN",
}

M.AwsManagedTargetDestination = {
    NONE_SPECIFIED = "None specified",
    AWS_ELASTIC_BEANSTALK = "AWS Elastic BeanStalk",
    AWS_FARGATE = "AWS Fargate",
}

M.AwsManagedResources = {
    type = "structure",
    members = {
        targetDestination = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.NoPreferenceTargetDestination = {
    NONE_SPECIFIED = "None specified",
    AWS_ELASTIC_BEANSTALK = "AWS Elastic BeanStalk",
    AWS_FARGATE = "AWS Fargate",
    AMAZON_ELASTIC_CLOUD_COMPUTE = "Amazon Elastic Cloud Compute (EC2)",
    AMAZON_ELASTIC_CONTAINER_SERVICE = "Amazon Elastic Container Service (ECS)",
    AMAZON_ELASTIC_KUBERNETES_SERVICE = "Amazon Elastic Kubernetes Service (EKS)",
}

M.NoManagementPreference = {
    type = "structure",
    members = {
        targetDestination = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.SelfManageTargetDestination = {
    NONE_SPECIFIED = "None specified",
    AMAZON_ELASTIC_CLOUD_COMPUTE = "Amazon Elastic Cloud Compute (EC2)",
    AMAZON_ELASTIC_CONTAINER_SERVICE = "Amazon Elastic Container Service (ECS)",
    AMAZON_ELASTIC_KUBERNETES_SERVICE = "Amazon Elastic Kubernetes Service (EKS)",
}

M.SelfManageResources = {
    type = "structure",
    members = {
        targetDestination = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.ManagementPreference = {
    type = "union",
    members = {
        awsManagedResources = M.AwsManagedResources,
        selfManageResources = M.SelfManageResources,
        noPreference = M.NoManagementPreference,
    },
}

M.ApplicationPreferences = {
    type = "structure",
    members = {
        managementPreference = M.ManagementPreference,
    },
}

M.AssessmentDataSourceType = {
    SR_COLLECTOR = "StrategyRecommendationsApplicationDataCollector",
    MANUAL_IMPORT = "ManualImport",
    ADS = "ApplicationDiscoveryService",
}

M.AssessmentStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETE = "COMPLETE",
    FAILED = "FAILED",
    STOPPED = "STOPPED",
}

M.StrategySummary = {
    type = "structure",
    members = {
        strategy = {
            type = "string",
        },
        count = {
            type = "integer",
        },
    },
}

M.RunTimeAssessmentStatus = {
    DC_TO_BE_SCHEDULED = "dataCollectionTaskToBeScheduled",
    DC_REQ_SENT = "dataCollectionTaskScheduled",
    DC_STARTED = "dataCollectionTaskStarted",
    DC_STOPPED = "dataCollectionTaskStopped",
    DC_SUCCESS = "dataCollectionTaskSuccess",
    DC_FAILED = "dataCollectionTaskFailed",
    DC_PARTIAL_SUCCESS = "dataCollectionTaskPartialSuccess",
}

M.ServerStatusSummary = {
    type = "structure",
    members = {
        runTimeAssessmentStatus = {
            type = "string",
        },
        count = {
            type = "integer",
        },
    },
}

M.ServerOsType = {
    windowsServer = "WindowsServer",
    amazonLinux = "AmazonLinux",
    endOfSupportWindowsServer = "EndOfSupportWindowsServer",
    redhat = "Redhat",
    other = "Other",
}

M.ServerSummary = {
    type = "structure",
    members = {
        ServerOsType = {
            type = "string",
        },
        count = {
            type = "integer",
        },
    },
}

M.AssessmentSummary = {
    type = "structure",
    members = {
        listServerStrategySummary = {
            type = "list",
            member = M.StrategySummary,
        },
        listApplicationComponentStrategySummary = {
            type = "list",
            member = M.StrategySummary,
        },
        listAntipatternSeveritySummary = {
            type = "list",
            member = M.AntipatternSeveritySummary,
        },
        listApplicationComponentSummary = {
            type = "list",
            member = M.ApplicationComponentSummary,
        },
        listServerSummary = {
            type = "list",
            member = M.ServerSummary,
        },
        antipatternReportS3Object = M.S3Object,
        antipatternReportStatus = {
            type = "string",
        },
        antipatternReportStatusMessage = {
            type = "string",
        },
        lastAnalyzedTimestamp = {
            type = "timestamp",
        },
        listApplicationComponentStatusSummary = {
            type = "list",
            member = M.ApplicationComponentStatusSummary,
        },
        listServerStatusSummary = {
            type = "list",
            member = M.ServerStatusSummary,
        },
    },
}

M.Condition = {
    EQUALS = "EQUALS",
    NOT_EQUALS = "NOT_EQUALS",
    CONTAINS = "CONTAINS",
    NOT_CONTAINS = "NOT_CONTAINS",
}

M.AssessmentTarget = {
    type = "structure",
    members = {
        condition = {
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
        values = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.AssociatedApplication = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        id = {
            type = "string",
        },
    },
}

M.AuthType = {
    NTLM = "NTLM",
    SSH = "SSH",
    CERT = "CERT",
}

M.GetApplicationComponentDetailsInput = {
    type = "structure",
    members = {
        applicationComponentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetApplicationComponentDetailsOutput = {
    type = "structure",
    members = {
        applicationComponentDetail = M.ApplicationComponentDetail,
        associatedApplications = {
            type = "list",
            member = M.AssociatedApplication,
        },
        moreApplicationResource = {
            type = "boolean",
        },
        associatedServerIds = {
            type = "list",
            member = { type = "string" },
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

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetApplicationComponentStrategiesInput = {
    type = "structure",
    members = {
        applicationComponentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetApplicationComponentStrategiesOutput = {
    type = "structure",
    members = {
        applicationComponentStrategies = {
            type = "list",
            member = M.ApplicationComponentStrategy,
        },
    },
}

M.GetAssessmentInput = {
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

M.DataCollectionDetails = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
        servers = {
            type = "integer",
        },
        failed = {
            type = "integer",
        },
        success = {
            type = "integer",
        },
        inProgress = {
            type = "integer",
        },
        startTime = {
            type = "timestamp",
        },
        completionTime = {
            type = "timestamp",
        },
        statusMessage = {
            type = "string",
        },
    },
}

M.GetAssessmentOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        dataCollectionDetails = M.DataCollectionDetails,
        assessmentTargets = {
            type = "list",
            member = M.AssessmentTarget,
        },
    },
}

M.GetImportFileTaskInput = {
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

M.ImportFileTaskStatus = {
    IMPORT_IN_PROGRESS = "ImportInProgress",
    IMPORT_FAILED = "ImportFailed",
    IMPORT_PARTIAL_SUCCESS = "ImportPartialSuccess",
    IMPORT_SUCCESS = "ImportSuccess",
    DELETE_IN_PROGRESS = "DeleteInProgress",
    DELETE_FAILED = "DeleteFailed",
    DELETE_PARTIAL_SUCCESS = "DeletePartialSuccess",
    DELETE_SUCCESS = "DeleteSuccess",
}

M.GetImportFileTaskOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        status = {
            type = "string",
        },
        startTime = {
            type = "timestamp",
        },
        inputS3Bucket = {
            type = "string",
        },
        inputS3Key = {
            type = "string",
        },
        statusReportS3Bucket = {
            type = "string",
        },
        statusReportS3Key = {
            type = "string",
        },
        completionTime = {
            type = "timestamp",
        },
        numberOfRecordsSuccess = {
            type = "integer",
        },
        numberOfRecordsFailed = {
            type = "integer",
        },
        importName = {
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

M.DependencyException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetLatestAssessmentIdInput = {
    type = "structure",
}

M.GetLatestAssessmentIdOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
    },
}

M.GetPortfolioPreferencesInput = {
    type = "structure",
}

M.DatabaseManagementPreference = {
    AWS_MANAGED = "AWS-managed",
    SELF_MANAGE = "Self-manage",
    NO_PREFERENCE = "No preference",
}

M.HeterogeneousTargetDatabaseEngine = {
    NONE_SPECIFIED = "None specified",
    AMAZON_AURORA = "Amazon Aurora",
    AWS_POSTGRESQL = "AWS PostgreSQL",
    MYSQL = "MySQL",
    MICROSOFT_SQL_SERVER = "Microsoft SQL Server",
    ORACLE_DATABASE = "Oracle Database",
    MARIA_DB = "MariaDB",
    SAP = "SAP",
    DB2_LUW = "Db2 LUW",
    MONGO_DB = "MongoDB",
}

M.Heterogeneous = {
    type = "structure",
    members = {
        targetDatabaseEngine = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.HomogeneousTargetDatabaseEngine = {
    NONE_SPECIFIED = "None specified",
}

M.Homogeneous = {
    type = "structure",
    members = {
        targetDatabaseEngine = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.TargetDatabaseEngine = {
    NONE_SPECIFIED = "None specified",
    AMAZON_AURORA = "Amazon Aurora",
    AWS_POSTGRESQL = "AWS PostgreSQL",
    MYSQL = "MySQL",
    MICROSOFT_SQL_SERVER = "Microsoft SQL Server",
    ORACLE_DATABASE = "Oracle Database",
    MARIA_DB = "MariaDB",
    SAP = "SAP",
    DB2_LUW = "Db2 LUW",
    MONGO_DB = "MongoDB",
}

M.NoDatabaseMigrationPreference = {
    type = "structure",
    members = {
        targetDatabaseEngine = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DatabaseMigrationPreference = {
    type = "union",
    members = {
        heterogeneous = M.Heterogeneous,
        homogeneous = M.Homogeneous,
        noPreference = M.NoDatabaseMigrationPreference,
    },
}

M.DatabasePreferences = {
    type = "structure",
    members = {
        databaseManagementPreference = {
            type = "string",
        },
        databaseMigrationPreference = M.DatabaseMigrationPreference,
    },
}

M.BusinessGoals = {
    type = "structure",
    members = {
        speedOfMigration = {
            type = "integer",
        },
        reduceOperationalOverheadWithManagedServices = {
            type = "integer",
        },
        modernizeInfrastructureWithCloudNativeTechnologies = {
            type = "integer",
        },
        licenseCostReduction = {
            type = "integer",
        },
    },
}

M.PrioritizeBusinessGoals = {
    type = "structure",
    members = {
        businessGoals = M.BusinessGoals,
    },
}

M.GetPortfolioPreferencesOutput = {
    type = "structure",
    members = {
        prioritizeBusinessGoals = M.PrioritizeBusinessGoals,
        applicationPreferences = M.ApplicationPreferences,
        databasePreferences = M.DatabasePreferences,
        applicationMode = {
            type = "string",
        },
    },
}

M.GetPortfolioSummaryInput = {
    type = "structure",
}

M.GetPortfolioSummaryOutput = {
    type = "structure",
    members = {
        assessmentSummary = M.AssessmentSummary,
    },
}

M.GetRecommendationReportDetailsInput = {
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

M.RecommendationReportStatus = {
    FAILED = "FAILED",
    IN_PROGRESS = "IN_PROGRESS",
    SUCCESS = "SUCCESS",
}

M.RecommendationReportDetails = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
        statusMessage = {
            type = "string",
        },
        startTime = {
            type = "timestamp",
        },
        completionTime = {
            type = "timestamp",
        },
        s3Bucket = {
            type = "string",
        },
        s3Keys = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GetRecommendationReportDetailsOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        recommendationReportDetails = M.RecommendationReportDetails,
    },
}

M.GetServerDetailsInput = {
    type = "structure",
    members = {
        serverId = {
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
                http_query = "maxResults",
            },
        },
    },
}

M.ServerErrorCategory = {
    CONNECTIVITY_ERROR = "CONNECTIVITY_ERROR",
    CREDENTIAL_ERROR = "CREDENTIAL_ERROR",
    PERMISSION_ERROR = "PERMISSION_ERROR",
    ARCHITECTURE_ERROR = "ARCHITECTURE_ERROR",
    OTHER_ERROR = "OTHER_ERROR",
}

M.ServerError = {
    type = "structure",
    members = {
        serverErrorCategory = {
            type = "string",
        },
    },
}

M.NetworkInfo = {
    type = "structure",
    members = {
        interfaceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ipAddress = {
            type = "string",
            traits = {
                required = true,
            },
        },
        macAddress = {
            type = "string",
            traits = {
                required = true,
            },
        },
        netMask = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.OSType = {
    LINUX = "LINUX",
    WINDOWS = "WINDOWS",
}

M.OSInfo = {
    type = "structure",
    members = {
        type = {
            type = "string",
        },
        version = {
            type = "string",
        },
    },
}

M.SystemInfo = {
    type = "structure",
    members = {
        osInfo = M.OSInfo,
        fileSystemType = {
            type = "string",
        },
        networkInfoList = {
            type = "list",
            member = M.NetworkInfo,
        },
        cpuArchitecture = {
            type = "string",
        },
    },
}

M.ServerDetail = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        recommendationSet = M.RecommendationSet,
        dataCollectionStatus = {
            type = "string",
        },
        statusMessage = {
            type = "string",
        },
        listAntipatternSeveritySummary = {
            type = "list",
            member = M.AntipatternSeveritySummary,
        },
        systemInfo = M.SystemInfo,
        applicationComponentStrategySummary = {
            type = "list",
            member = M.StrategySummary,
        },
        antipatternReportS3Object = M.S3Object,
        antipatternReportStatus = {
            type = "string",
        },
        antipatternReportStatusMessage = {
            type = "string",
        },
        serverType = {
            type = "string",
        },
        lastAnalyzedTimestamp = {
            type = "timestamp",
        },
        serverError = M.ServerError,
    },
}

M.GetServerDetailsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        serverDetail = M.ServerDetail,
        associatedApplications = {
            type = "list",
            member = M.AssociatedApplication,
        },
    },
}

M.GetServerStrategiesInput = {
    type = "structure",
    members = {
        serverId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ServerStrategy = {
    type = "structure",
    members = {
        recommendation = M.RecommendationSet,
        status = {
            type = "string",
        },
        numberOfApplicationComponents = {
            type = "integer",
        },
        isPreferred = {
            type = "boolean",
        },
    },
}

M.GetServerStrategiesOutput = {
    type = "structure",
    members = {
        serverStrategies = {
            type = "list",
            member = M.ServerStrategy,
        },
    },
}

M.SortOrder = {
    ASC = "ASC",
    DESC = "DESC",
}

M.ListAnalyzableServersInput = {
    type = "structure",
    members = {
        sort = {
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

M.ListAnalyzableServersOutput = {
    type = "structure",
    members = {
        analyzableServers = {
            type = "list",
            member = M.AnalyzableServerSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GroupName = {
    EXTERNAL_ID = "ExternalId",
    EXTERNAL_SOURCE_TYPE = "ExternalSourceType",
}

M.Group = {
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

M.ListApplicationComponentsInput = {
    type = "structure",
    members = {
        applicationComponentCriteria = {
            type = "string",
        },
        filterValue = {
            type = "string",
        },
        sort = {
            type = "string",
        },
        groupIdFilter = {
            type = "list",
            member = M.Group,
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.ListApplicationComponentsOutput = {
    type = "structure",
    members = {
        applicationComponentInfos = {
            type = "list",
            member = M.ApplicationComponentDetail,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ServiceLinkedRoleLockClientException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ListCollectorsInput = {
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
                http_query = "maxResults",
            },
        },
    },
}

M.CollectorHealth = {
    COLLECTOR_HEALTHY = "COLLECTOR_HEALTHY",
    COLLECTOR_UNHEALTHY = "COLLECTOR_UNHEALTHY",
}

M.IPAddressBasedRemoteInfo = {
    type = "structure",
    members = {
        ipAddressConfigurationTimeStamp = {
            type = "string",
        },
        authType = {
            type = "string",
        },
        osType = {
            type = "string",
        },
    },
}

M.PipelineType = {
    AZURE_DEVOPS = "AZURE_DEVOPS",
}

M.PipelineInfo = {
    type = "structure",
    members = {
        pipelineType = {
            type = "string",
        },
        pipelineConfigurationTimeStamp = {
            type = "string",
        },
    },
}

M.RemoteSourceCodeAnalysisServerInfo = {
    type = "structure",
    members = {
        remoteSourceCodeAnalysisServerConfigurationTimestamp = {
            type = "string",
        },
    },
}

M.VcenterBasedRemoteInfo = {
    type = "structure",
    members = {
        vcenterConfigurationTimeStamp = {
            type = "string",
        },
        osType = {
            type = "string",
        },
    },
}

M.VersionControlType = {
    GITHUB = "GITHUB",
    GITHUB_ENTERPRISE = "GITHUB_ENTERPRISE",
    AZURE_DEVOPS_GIT = "AZURE_DEVOPS_GIT",
}

M.VersionControlInfo = {
    type = "structure",
    members = {
        versionControlType = {
            type = "string",
        },
        versionControlConfigurationTimeStamp = {
            type = "string",
        },
    },
}

M.ConfigurationSummary = {
    type = "structure",
    members = {
        vcenterBasedRemoteInfoList = {
            type = "list",
            member = M.VcenterBasedRemoteInfo,
        },
        ipAddressBasedRemoteInfoList = {
            type = "list",
            member = M.IPAddressBasedRemoteInfo,
        },
        versionControlInfoList = {
            type = "list",
            member = M.VersionControlInfo,
        },
        pipelineInfoList = {
            type = "list",
            member = M.PipelineInfo,
        },
        remoteSourceCodeAnalysisServerInfo = M.RemoteSourceCodeAnalysisServerInfo,
    },
}

M.Collector = {
    type = "structure",
    members = {
        collectorId = {
            type = "string",
        },
        ipAddress = {
            type = "string",
        },
        hostName = {
            type = "string",
        },
        collectorHealth = {
            type = "string",
        },
        collectorVersion = {
            type = "string",
        },
        registeredTimeStamp = {
            type = "string",
        },
        lastActivityTimeStamp = {
            type = "string",
        },
        configurationSummary = M.ConfigurationSummary,
    },
}

M.ListCollectorsOutput = {
    type = "structure",
    members = {
        Collectors = {
            type = "list",
            member = M.Collector,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListImportFileTaskInput = {
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
                http_query = "maxResults",
            },
        },
    },
}

M.ImportFileTaskInformation = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        status = {
            type = "string",
        },
        startTime = {
            type = "timestamp",
        },
        inputS3Bucket = {
            type = "string",
        },
        inputS3Key = {
            type = "string",
        },
        statusReportS3Bucket = {
            type = "string",
        },
        statusReportS3Key = {
            type = "string",
        },
        completionTime = {
            type = "timestamp",
        },
        numberOfRecordsSuccess = {
            type = "integer",
        },
        numberOfRecordsFailed = {
            type = "integer",
        },
        importName = {
            type = "string",
        },
    },
}

M.ListImportFileTaskOutput = {
    type = "structure",
    members = {
        taskInfos = {
            type = "list",
            member = M.ImportFileTaskInformation,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ServerCriteria = {
    NOT_DEFINED = "NOT_DEFINED",
    OS_NAME = "OS_NAME",
    STRATEGY = "STRATEGY",
    DESTINATION = "DESTINATION",
    SERVER_ID = "SERVER_ID",
    ANALYSIS_STATUS = "ANALYSIS_STATUS",
    ERROR_CATEGORY = "ERROR_CATEGORY",
}

M.ListServersInput = {
    type = "structure",
    members = {
        serverCriteria = {
            type = "string",
        },
        filterValue = {
            type = "string",
        },
        sort = {
            type = "string",
        },
        groupIdFilter = {
            type = "list",
            member = M.Group,
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.ListServersOutput = {
    type = "structure",
    members = {
        serverInfos = {
            type = "list",
            member = M.ServerDetail,
        },
        nextToken = {
            type = "string",
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

M.PutPortfolioPreferencesInput = {
    type = "structure",
    members = {
        prioritizeBusinessGoals = M.PrioritizeBusinessGoals,
        applicationPreferences = M.ApplicationPreferences,
        databasePreferences = M.DatabasePreferences,
        applicationMode = {
            type = "string",
        },
    },
}

M.PutPortfolioPreferencesOutput = {
    type = "structure",
}

M.ServiceQuotaExceededException = {
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

M.StartAssessmentInput = {
    type = "structure",
    members = {
        s3bucketForAnalysisData = {
            type = "string",
        },
        s3bucketForReportData = {
            type = "string",
        },
        assessmentTargets = {
            type = "list",
            member = M.AssessmentTarget,
        },
        assessmentDataSourceType = {
            type = "string",
        },
    },
}

M.StartAssessmentOutput = {
    type = "structure",
    members = {
        assessmentId = {
            type = "string",
        },
    },
}

M.DataSourceType = {
    ADS = "ApplicationDiscoveryService",
    MPA = "MPA",
    IMPORT = "Import",
    MHSR_COLLECTOR = "StrategyRecommendationsApplicationDataCollector",
}

M.StartImportFileTaskInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        S3Bucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
        s3key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataSourceType = {
            type = "string",
        },
        groupId = {
            type = "list",
            member = M.Group,
        },
        s3bucketForReportData = {
            type = "string",
        },
    },
}

M.StartImportFileTaskOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
    },
}

M.OutputFormat = {
    Excel = "Excel",
    Json = "Json",
}

M.StartRecommendationReportGenerationInput = {
    type = "structure",
    members = {
        outputFormat = {
            type = "string",
        },
        groupIdFilter = {
            type = "list",
            member = M.Group,
        },
    },
}

M.StartRecommendationReportGenerationOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
    },
}

M.StopAssessmentInput = {
    type = "structure",
    members = {
        assessmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopAssessmentOutput = {
    type = "structure",
}

M.VersionControl = {
    GITHUB = "GITHUB",
    GITHUB_ENTERPRISE = "GITHUB_ENTERPRISE",
    AZURE_DEVOPS_GIT = "AZURE_DEVOPS_GIT",
}

M.SourceCode = {
    type = "structure",
    members = {
        versionControl = {
            type = "string",
        },
        sourceVersion = {
            type = "string",
        },
        location = {
            type = "string",
        },
        projectName = {
            type = "string",
        },
    },
}

M.StrategyOption = {
    type = "structure",
    members = {
        strategy = {
            type = "string",
        },
        toolName = {
            type = "string",
        },
        targetDestination = {
            type = "string",
        },
        isPreferred = {
            type = "boolean",
        },
    },
}

M.UpdateApplicationComponentConfigInput = {
    type = "structure",
    members = {
        applicationComponentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        inclusionStatus = {
            type = "string",
        },
        strategyOption = M.StrategyOption,
        sourceCodeList = {
            type = "list",
            member = M.SourceCode,
        },
        secretsManagerKey = {
            type = "string",
        },
        configureOnly = {
            type = "boolean",
        },
        appType = {
            type = "string",
        },
    },
}

M.UpdateApplicationComponentConfigOutput = {
    type = "structure",
}

M.UpdateServerConfigInput = {
    type = "structure",
    members = {
        serverId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        strategyOption = M.StrategyOption,
    },
}

M.UpdateServerConfigOutput = {
    type = "structure",
}

return M
