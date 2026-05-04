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
        analyzerName = {
            type = "union",
        },
        antiPatternReportS3Object = {
            type = "structure",
        },
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
            type = "number",
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
        transformationTool = {
            type = "structure",
        },
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
        analysisStatus = {
            type = "union",
        },
        statusMessage = {
            type = "string",
        },
        antipatternReportResultList = {
            type = "list",
            member_type = "structure",
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
        recommendationSet = {
            type = "structure",
        },
        analysisStatus = {
            type = "string",
        },
        statusMessage = {
            type = "string",
        },
        listAntipatternSeveritySummary = {
            type = "list",
            member_type = "structure",
        },
        databaseConfigDetail = {
            type = "structure",
        },
        sourceCodeRepositories = {
            type = "list",
            member_type = "structure",
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
        antipatternReportS3Object = {
            type = "structure",
        },
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
        appUnitError = {
            type = "structure",
        },
        resultList = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
        recommendation = {
            type = "structure",
        },
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
            type = "number",
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
            member_type = "string",
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
            member_type = "string",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ManagementPreference = {
    type = "union",
    members = {
        awsManagedResources = {
            type = "structure",
        },
        selfManageResources = {
            type = "structure",
        },
        noPreference = {
            type = "structure",
        },
    },
}

M.ApplicationPreferences = {
    type = "structure",
    members = {
        managementPreference = {
            type = "union",
        },
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
            type = "number",
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
            type = "number",
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
            type = "number",
        },
    },
}

M.AssessmentSummary = {
    type = "structure",
    members = {
        listServerStrategySummary = {
            type = "list",
            member_type = "structure",
        },
        listApplicationComponentStrategySummary = {
            type = "list",
            member_type = "structure",
        },
        listAntipatternSeveritySummary = {
            type = "list",
            member_type = "structure",
        },
        listApplicationComponentSummary = {
            type = "list",
            member_type = "structure",
        },
        listServerSummary = {
            type = "list",
            member_type = "structure",
        },
        antipatternReportS3Object = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        listServerStatusSummary = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
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
        applicationComponentDetail = {
            type = "structure",
        },
        associatedApplications = {
            type = "list",
            member_type = "structure",
        },
        moreApplicationResource = {
            type = "boolean",
        },
        associatedServerIds = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
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
            type = "number",
        },
        failed = {
            type = "number",
        },
        success = {
            type = "number",
        },
        inProgress = {
            type = "number",
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
        dataCollectionDetails = {
            type = "structure",
        },
        assessmentTargets = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
        numberOfRecordsFailed = {
            type = "number",
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
            member_type = "string",
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
            member_type = "string",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DatabaseMigrationPreference = {
    type = "union",
    members = {
        heterogeneous = {
            type = "structure",
        },
        homogeneous = {
            type = "structure",
        },
        noPreference = {
            type = "structure",
        },
    },
}

M.DatabasePreferences = {
    type = "structure",
    members = {
        databaseManagementPreference = {
            type = "string",
        },
        databaseMigrationPreference = {
            type = "union",
        },
    },
}

M.BusinessGoals = {
    type = "structure",
    members = {
        speedOfMigration = {
            type = "number",
        },
        reduceOperationalOverheadWithManagedServices = {
            type = "number",
        },
        modernizeInfrastructureWithCloudNativeTechnologies = {
            type = "number",
        },
        licenseCostReduction = {
            type = "number",
        },
    },
}

M.PrioritizeBusinessGoals = {
    type = "structure",
    members = {
        businessGoals = {
            type = "structure",
        },
    },
}

M.GetPortfolioPreferencesOutput = {
    type = "structure",
    members = {
        prioritizeBusinessGoals = {
            type = "structure",
        },
        applicationPreferences = {
            type = "structure",
        },
        databasePreferences = {
            type = "structure",
        },
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
        assessmentSummary = {
            type = "structure",
        },
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
            member_type = "string",
        },
    },
}

M.GetRecommendationReportDetailsOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        recommendationReportDetails = {
            type = "structure",
        },
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
            type = "number",
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
        osInfo = {
            type = "structure",
        },
        fileSystemType = {
            type = "string",
        },
        networkInfoList = {
            type = "list",
            member_type = "structure",
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
        recommendationSet = {
            type = "structure",
        },
        dataCollectionStatus = {
            type = "string",
        },
        statusMessage = {
            type = "string",
        },
        listAntipatternSeveritySummary = {
            type = "list",
            member_type = "structure",
        },
        systemInfo = {
            type = "structure",
        },
        applicationComponentStrategySummary = {
            type = "list",
            member_type = "structure",
        },
        antipatternReportS3Object = {
            type = "structure",
        },
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
        serverError = {
            type = "structure",
        },
    },
}

M.GetServerDetailsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        serverDetail = {
            type = "structure",
        },
        associatedApplications = {
            type = "list",
            member_type = "structure",
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
        recommendation = {
            type = "structure",
        },
        status = {
            type = "string",
        },
        numberOfApplicationComponents = {
            type = "number",
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
            member_type = "structure",
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
            type = "number",
        },
    },
}

M.ListAnalyzableServersOutput = {
    type = "structure",
    members = {
        analyzableServers = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
    },
}

M.ListApplicationComponentsOutput = {
    type = "structure",
    members = {
        applicationComponentInfos = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
        },
        ipAddressBasedRemoteInfoList = {
            type = "list",
            member_type = "structure",
        },
        versionControlInfoList = {
            type = "list",
            member_type = "structure",
        },
        pipelineInfoList = {
            type = "list",
            member_type = "structure",
        },
        remoteSourceCodeAnalysisServerInfo = {
            type = "structure",
        },
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
        configurationSummary = {
            type = "structure",
        },
    },
}

M.ListCollectorsOutput = {
    type = "structure",
    members = {
        Collectors = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            type = "number",
        },
        numberOfRecordsFailed = {
            type = "number",
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
            member_type = "structure",
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
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
    },
}

M.ListServersOutput = {
    type = "structure",
    members = {
        serverInfos = {
            type = "list",
            member_type = "structure",
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
        prioritizeBusinessGoals = {
            type = "structure",
        },
        applicationPreferences = {
            type = "structure",
        },
        databasePreferences = {
            type = "structure",
        },
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
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
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
        strategyOption = {
            type = "structure",
        },
        sourceCodeList = {
            type = "list",
            member_type = "structure",
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
        strategyOption = {
            type = "structure",
        },
    },
}

M.UpdateServerConfigOutput = {
    type = "structure",
}

return M
