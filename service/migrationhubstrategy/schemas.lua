local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.migrationhubstrategy"

local M = {}

M.AccessDeniedException = schema.new({
    id = id.from(_N, "AccessDeniedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "AccessDeniedException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AnalysisStatusUnion = schema.new({
    id = id.from(_N, "AnalysisStatusUnion"),
    type = "union",
    members = {
        runtimeAnalysisStatus = schema.new({
            id = id.from(_N, "AnalysisStatusUnion", "runtimeAnalysisStatus"),
            type = "string",
            name = "runtimeAnalysisStatus",
            target_id = prelude.String.id,
        }),
        srcCodeOrDbAnalysisStatus = schema.new({
            id = id.from(_N, "AnalysisStatusUnion", "srcCodeOrDbAnalysisStatus"),
            type = "string",
            name = "srcCodeOrDbAnalysisStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.AnalyzableServerSummary = schema.new({
    id = id.from(_N, "AnalyzableServerSummary"),
    type = "structure",
    members = {
        hostname = schema.new({
            id = id.from(_N, "AnalyzableServerSummary", "hostname"),
            type = "string",
            name = "hostname",
            target_id = prelude.String.id,
        }),
        ipAddress = schema.new({
            id = id.from(_N, "AnalyzableServerSummary", "ipAddress"),
            type = "string",
            name = "ipAddress",
            target_id = prelude.String.id,
        }),
        source = schema.new({
            id = id.from(_N, "AnalyzableServerSummary", "source"),
            type = "string",
            name = "source",
            target_id = prelude.String.id,
        }),
        vmId = schema.new({
            id = id.from(_N, "AnalyzableServerSummary", "vmId"),
            type = "string",
            name = "vmId",
            target_id = prelude.String.id,
        }),
    },
})

M.AnalyzerNameUnion = schema.new({
    id = id.from(_N, "AnalyzerNameUnion"),
    type = "union",
    members = {
        binaryAnalyzerName = schema.new({
            id = id.from(_N, "AnalyzerNameUnion", "binaryAnalyzerName"),
            type = "string",
            name = "binaryAnalyzerName",
            target_id = prelude.String.id,
        }),
        runTimeAnalyzerName = schema.new({
            id = id.from(_N, "AnalyzerNameUnion", "runTimeAnalyzerName"),
            type = "string",
            name = "runTimeAnalyzerName",
            target_id = prelude.String.id,
        }),
        sourceCodeAnalyzerName = schema.new({
            id = id.from(_N, "AnalyzerNameUnion", "sourceCodeAnalyzerName"),
            type = "string",
            name = "sourceCodeAnalyzerName",
            target_id = prelude.String.id,
        }),
    },
})

M.S3Object = schema.new({
    id = id.from(_N, "S3Object"),
    type = "structure",
    members = {
        s3Bucket = schema.new({
            id = id.from(_N, "S3Object", "s3Bucket"),
            type = "string",
            name = "s3Bucket",
            target_id = prelude.String.id,
        }),
        s3key = schema.new({
            id = id.from(_N, "S3Object", "s3key"),
            type = "string",
            name = "s3key",
            target_id = prelude.String.id,
        }),
    },
})

M.AntipatternReportResult = schema.new({
    id = id.from(_N, "AntipatternReportResult"),
    type = "structure",
    members = {
        analyzerName = schema.new({
            id = id.from(_N, "AntipatternReportResult", "analyzerName"),
            type = "union",
            name = "analyzerName",
            target_id = id.from(_N, "AnalyzerNameUnion"),
            target = M.AnalyzerNameUnion,
        }),
        antiPatternReportS3Object = schema.new({
            id = id.from(_N, "AntipatternReportResult", "antiPatternReportS3Object"),
            type = "structure",
            name = "antiPatternReportS3Object",
            target_id = id.from(_N, "S3Object"),
            target = M.S3Object,
        }),
        antipatternReportStatus = schema.new({
            id = id.from(_N, "AntipatternReportResult", "antipatternReportStatus"),
            type = "string",
            name = "antipatternReportStatus",
            target_id = prelude.String.id,
        }),
        antipatternReportStatusMessage = schema.new({
            id = id.from(_N, "AntipatternReportResult", "antipatternReportStatusMessage"),
            type = "string",
            name = "antipatternReportStatusMessage",
            target_id = prelude.String.id,
        }),
    },
})

M.AntipatternSeveritySummary = schema.new({
    id = id.from(_N, "AntipatternSeveritySummary"),
    type = "structure",
    members = {
        severity = schema.new({
            id = id.from(_N, "AntipatternSeveritySummary", "severity"),
            type = "string",
            name = "severity",
            target_id = prelude.String.id,
        }),
        count = schema.new({
            id = id.from(_N, "AntipatternSeveritySummary", "count"),
            type = "integer",
            name = "count",
            target_id = prelude.Integer.id,
        }),
    },
})

M.AppUnitError = schema.new({
    id = id.from(_N, "AppUnitError"),
    type = "structure",
    members = {
        appUnitErrorCategory = schema.new({
            id = id.from(_N, "AppUnitError", "appUnitErrorCategory"),
            type = "string",
            name = "appUnitErrorCategory",
            target_id = prelude.String.id,
        }),
    },
})

M.DatabaseConfigDetail = schema.new({
    id = id.from(_N, "DatabaseConfigDetail"),
    type = "structure",
    members = {
        secretName = schema.new({
            id = id.from(_N, "DatabaseConfigDetail", "secretName"),
            type = "string",
            name = "secretName",
            target_id = prelude.String.id,
        }),
    },
})

M.TransformationTool = schema.new({
    id = id.from(_N, "TransformationTool"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "TransformationTool", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "TransformationTool", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        tranformationToolInstallationLink = schema.new({
            id = id.from(_N, "TransformationTool", "tranformationToolInstallationLink"),
            type = "string",
            name = "tranformationToolInstallationLink",
            target_id = prelude.String.id,
        }),
    },
})

M.RecommendationSet = schema.new({
    id = id.from(_N, "RecommendationSet"),
    type = "structure",
    members = {
        transformationTool = schema.new({
            id = id.from(_N, "RecommendationSet", "transformationTool"),
            type = "structure",
            name = "transformationTool",
            target_id = id.from(_N, "TransformationTool"),
            target = M.TransformationTool,
        }),
        targetDestination = schema.new({
            id = id.from(_N, "RecommendationSet", "targetDestination"),
            type = "string",
            name = "targetDestination",
            target_id = prelude.String.id,
        }),
        strategy = schema.new({
            id = id.from(_N, "RecommendationSet", "strategy"),
            type = "string",
            name = "strategy",
            target_id = prelude.String.id,
        }),
    },
})

M.Result = schema.new({
    id = id.from(_N, "Result"),
    type = "structure",
    members = {
        analysisType = schema.new({
            id = id.from(_N, "Result", "analysisType"),
            type = "string",
            name = "analysisType",
            target_id = prelude.String.id,
        }),
        analysisStatus = schema.new({
            id = id.from(_N, "Result", "analysisStatus"),
            type = "union",
            name = "analysisStatus",
            target_id = id.from(_N, "AnalysisStatusUnion"),
            target = M.AnalysisStatusUnion,
        }),
        statusMessage = schema.new({
            id = id.from(_N, "Result", "statusMessage"),
            type = "string",
            name = "statusMessage",
            target_id = prelude.String.id,
        }),
        antipatternReportResultList = schema.new({
            id = id.from(_N, "Result", "antipatternReportResultList"),
            type = "list",
            name = "antipatternReportResultList",
            target_id = prelude.Document.id,
            list_member = M.AntipatternReportResult,
        }),
    },
})

M.SourceCodeRepository = schema.new({
    id = id.from(_N, "SourceCodeRepository"),
    type = "structure",
    members = {
        repository = schema.new({
            id = id.from(_N, "SourceCodeRepository", "repository"),
            type = "string",
            name = "repository",
            target_id = prelude.String.id,
        }),
        branch = schema.new({
            id = id.from(_N, "SourceCodeRepository", "branch"),
            type = "string",
            name = "branch",
            target_id = prelude.String.id,
        }),
        versionControlType = schema.new({
            id = id.from(_N, "SourceCodeRepository", "versionControlType"),
            type = "string",
            name = "versionControlType",
            target_id = prelude.String.id,
        }),
        projectName = schema.new({
            id = id.from(_N, "SourceCodeRepository", "projectName"),
            type = "string",
            name = "projectName",
            target_id = prelude.String.id,
        }),
    },
})

M.ApplicationComponentDetail = schema.new({
    id = id.from(_N, "ApplicationComponentDetail"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "ApplicationComponentDetail", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "ApplicationComponentDetail", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        recommendationSet = schema.new({
            id = id.from(_N, "ApplicationComponentDetail", "recommendationSet"),
            type = "structure",
            name = "recommendationSet",
            target_id = id.from(_N, "RecommendationSet"),
            target = M.RecommendationSet,
        }),
        analysisStatus = schema.new({
            id = id.from(_N, "ApplicationComponentDetail", "analysisStatus"),
            type = "string",
            name = "analysisStatus",
            target_id = prelude.String.id,
        }),
        statusMessage = schema.new({
            id = id.from(_N, "ApplicationComponentDetail", "statusMessage"),
            type = "string",
            name = "statusMessage",
            target_id = prelude.String.id,
        }),
        listAntipatternSeveritySummary = schema.new({
            id = id.from(_N, "ApplicationComponentDetail", "listAntipatternSeveritySummary"),
            type = "list",
            name = "listAntipatternSeveritySummary",
            target_id = prelude.Document.id,
            list_member = M.AntipatternSeveritySummary,
        }),
        databaseConfigDetail = schema.new({
            id = id.from(_N, "ApplicationComponentDetail", "databaseConfigDetail"),
            type = "structure",
            name = "databaseConfigDetail",
            target_id = id.from(_N, "DatabaseConfigDetail"),
            target = M.DatabaseConfigDetail,
        }),
        sourceCodeRepositories = schema.new({
            id = id.from(_N, "ApplicationComponentDetail", "sourceCodeRepositories"),
            type = "list",
            name = "sourceCodeRepositories",
            target_id = prelude.Document.id,
            list_member = M.SourceCodeRepository,
        }),
        appType = schema.new({
            id = id.from(_N, "ApplicationComponentDetail", "appType"),
            type = "string",
            name = "appType",
            target_id = prelude.String.id,
        }),
        resourceSubType = schema.new({
            id = id.from(_N, "ApplicationComponentDetail", "resourceSubType"),
            type = "string",
            name = "resourceSubType",
            target_id = prelude.String.id,
        }),
        inclusionStatus = schema.new({
            id = id.from(_N, "ApplicationComponentDetail", "inclusionStatus"),
            type = "string",
            name = "inclusionStatus",
            target_id = prelude.String.id,
        }),
        antipatternReportS3Object = schema.new({
            id = id.from(_N, "ApplicationComponentDetail", "antipatternReportS3Object"),
            type = "structure",
            name = "antipatternReportS3Object",
            target_id = id.from(_N, "S3Object"),
            target = M.S3Object,
        }),
        antipatternReportStatus = schema.new({
            id = id.from(_N, "ApplicationComponentDetail", "antipatternReportStatus"),
            type = "string",
            name = "antipatternReportStatus",
            target_id = prelude.String.id,
        }),
        antipatternReportStatusMessage = schema.new({
            id = id.from(_N, "ApplicationComponentDetail", "antipatternReportStatusMessage"),
            type = "string",
            name = "antipatternReportStatusMessage",
            target_id = prelude.String.id,
        }),
        osVersion = schema.new({
            id = id.from(_N, "ApplicationComponentDetail", "osVersion"),
            type = "string",
            name = "osVersion",
            target_id = prelude.String.id,
        }),
        osDriver = schema.new({
            id = id.from(_N, "ApplicationComponentDetail", "osDriver"),
            type = "string",
            name = "osDriver",
            target_id = prelude.String.id,
        }),
        lastAnalyzedTimestamp = schema.new({
            id = id.from(_N, "ApplicationComponentDetail", "lastAnalyzedTimestamp"),
            type = "timestamp",
            name = "lastAnalyzedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        associatedServerId = schema.new({
            id = id.from(_N, "ApplicationComponentDetail", "associatedServerId"),
            type = "string",
            name = "associatedServerId",
            target_id = prelude.String.id,
        }),
        moreServerAssociationExists = schema.new({
            id = id.from(_N, "ApplicationComponentDetail", "moreServerAssociationExists"),
            type = "boolean",
            name = "moreServerAssociationExists",
            target_id = prelude.Boolean.id,
        }),
        runtimeStatus = schema.new({
            id = id.from(_N, "ApplicationComponentDetail", "runtimeStatus"),
            type = "string",
            name = "runtimeStatus",
            target_id = prelude.String.id,
        }),
        runtimeStatusMessage = schema.new({
            id = id.from(_N, "ApplicationComponentDetail", "runtimeStatusMessage"),
            type = "string",
            name = "runtimeStatusMessage",
            target_id = prelude.String.id,
        }),
        appUnitError = schema.new({
            id = id.from(_N, "ApplicationComponentDetail", "appUnitError"),
            type = "structure",
            name = "appUnitError",
            target_id = id.from(_N, "AppUnitError"),
            target = M.AppUnitError,
        }),
        resultList = schema.new({
            id = id.from(_N, "ApplicationComponentDetail", "resultList"),
            type = "list",
            name = "resultList",
            target_id = prelude.Document.id,
            list_member = M.Result,
        }),
    },
})

M.ApplicationComponentStatusSummary = schema.new({
    id = id.from(_N, "ApplicationComponentStatusSummary"),
    type = "structure",
    members = {
        srcCodeOrDbAnalysisStatus = schema.new({
            id = id.from(_N, "ApplicationComponentStatusSummary", "srcCodeOrDbAnalysisStatus"),
            type = "string",
            name = "srcCodeOrDbAnalysisStatus",
            target_id = prelude.String.id,
        }),
        count = schema.new({
            id = id.from(_N, "ApplicationComponentStatusSummary", "count"),
            type = "integer",
            name = "count",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ApplicationComponentStrategy = schema.new({
    id = id.from(_N, "ApplicationComponentStrategy"),
    type = "structure",
    members = {
        recommendation = schema.new({
            id = id.from(_N, "ApplicationComponentStrategy", "recommendation"),
            type = "structure",
            name = "recommendation",
            target_id = id.from(_N, "RecommendationSet"),
            target = M.RecommendationSet,
        }),
        status = schema.new({
            id = id.from(_N, "ApplicationComponentStrategy", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        isPreferred = schema.new({
            id = id.from(_N, "ApplicationComponentStrategy", "isPreferred"),
            type = "boolean",
            name = "isPreferred",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.ApplicationComponentSummary = schema.new({
    id = id.from(_N, "ApplicationComponentSummary"),
    type = "structure",
    members = {
        appType = schema.new({
            id = id.from(_N, "ApplicationComponentSummary", "appType"),
            type = "string",
            name = "appType",
            target_id = prelude.String.id,
        }),
        count = schema.new({
            id = id.from(_N, "ApplicationComponentSummary", "count"),
            type = "integer",
            name = "count",
            target_id = prelude.Integer.id,
        }),
    },
})

M.AwsManagedResources = schema.new({
    id = id.from(_N, "AwsManagedResources"),
    type = "structure",
    members = {
        targetDestination = schema.new({
            id = id.from(_N, "AwsManagedResources", "targetDestination"),
            type = "list",
            name = "targetDestination",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.NoManagementPreference = schema.new({
    id = id.from(_N, "NoManagementPreference"),
    type = "structure",
    members = {
        targetDestination = schema.new({
            id = id.from(_N, "NoManagementPreference", "targetDestination"),
            type = "list",
            name = "targetDestination",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SelfManageResources = schema.new({
    id = id.from(_N, "SelfManageResources"),
    type = "structure",
    members = {
        targetDestination = schema.new({
            id = id.from(_N, "SelfManageResources", "targetDestination"),
            type = "list",
            name = "targetDestination",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ManagementPreference = schema.new({
    id = id.from(_N, "ManagementPreference"),
    type = "union",
    members = {
        awsManagedResources = schema.new({
            id = id.from(_N, "ManagementPreference", "awsManagedResources"),
            type = "structure",
            name = "awsManagedResources",
            target_id = id.from(_N, "AwsManagedResources"),
            target = M.AwsManagedResources,
        }),
        selfManageResources = schema.new({
            id = id.from(_N, "ManagementPreference", "selfManageResources"),
            type = "structure",
            name = "selfManageResources",
            target_id = id.from(_N, "SelfManageResources"),
            target = M.SelfManageResources,
        }),
        noPreference = schema.new({
            id = id.from(_N, "ManagementPreference", "noPreference"),
            type = "structure",
            name = "noPreference",
            target_id = id.from(_N, "NoManagementPreference"),
            target = M.NoManagementPreference,
        }),
    },
})

M.ApplicationPreferences = schema.new({
    id = id.from(_N, "ApplicationPreferences"),
    type = "structure",
    members = {
        managementPreference = schema.new({
            id = id.from(_N, "ApplicationPreferences", "managementPreference"),
            type = "union",
            name = "managementPreference",
            target_id = id.from(_N, "ManagementPreference"),
            target = M.ManagementPreference,
        }),
    },
})

M.StrategySummary = schema.new({
    id = id.from(_N, "StrategySummary"),
    type = "structure",
    members = {
        strategy = schema.new({
            id = id.from(_N, "StrategySummary", "strategy"),
            type = "string",
            name = "strategy",
            target_id = prelude.String.id,
        }),
        count = schema.new({
            id = id.from(_N, "StrategySummary", "count"),
            type = "integer",
            name = "count",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ServerStatusSummary = schema.new({
    id = id.from(_N, "ServerStatusSummary"),
    type = "structure",
    members = {
        runTimeAssessmentStatus = schema.new({
            id = id.from(_N, "ServerStatusSummary", "runTimeAssessmentStatus"),
            type = "string",
            name = "runTimeAssessmentStatus",
            target_id = prelude.String.id,
        }),
        count = schema.new({
            id = id.from(_N, "ServerStatusSummary", "count"),
            type = "integer",
            name = "count",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ServerSummary = schema.new({
    id = id.from(_N, "ServerSummary"),
    type = "structure",
    members = {
        ServerOsType = schema.new({
            id = id.from(_N, "ServerSummary", "ServerOsType"),
            type = "string",
            name = "ServerOsType",
            target_id = prelude.String.id,
        }),
        count = schema.new({
            id = id.from(_N, "ServerSummary", "count"),
            type = "integer",
            name = "count",
            target_id = prelude.Integer.id,
        }),
    },
})

M.AssessmentSummary = schema.new({
    id = id.from(_N, "AssessmentSummary"),
    type = "structure",
    members = {
        listServerStrategySummary = schema.new({
            id = id.from(_N, "AssessmentSummary", "listServerStrategySummary"),
            type = "list",
            name = "listServerStrategySummary",
            target_id = prelude.Document.id,
            list_member = M.StrategySummary,
        }),
        listApplicationComponentStrategySummary = schema.new({
            id = id.from(_N, "AssessmentSummary", "listApplicationComponentStrategySummary"),
            type = "list",
            name = "listApplicationComponentStrategySummary",
            target_id = prelude.Document.id,
            list_member = M.StrategySummary,
        }),
        listAntipatternSeveritySummary = schema.new({
            id = id.from(_N, "AssessmentSummary", "listAntipatternSeveritySummary"),
            type = "list",
            name = "listAntipatternSeveritySummary",
            target_id = prelude.Document.id,
            list_member = M.AntipatternSeveritySummary,
        }),
        listApplicationComponentSummary = schema.new({
            id = id.from(_N, "AssessmentSummary", "listApplicationComponentSummary"),
            type = "list",
            name = "listApplicationComponentSummary",
            target_id = prelude.Document.id,
            list_member = M.ApplicationComponentSummary,
        }),
        listServerSummary = schema.new({
            id = id.from(_N, "AssessmentSummary", "listServerSummary"),
            type = "list",
            name = "listServerSummary",
            target_id = prelude.Document.id,
            list_member = M.ServerSummary,
        }),
        antipatternReportS3Object = schema.new({
            id = id.from(_N, "AssessmentSummary", "antipatternReportS3Object"),
            type = "structure",
            name = "antipatternReportS3Object",
            target_id = id.from(_N, "S3Object"),
            target = M.S3Object,
        }),
        antipatternReportStatus = schema.new({
            id = id.from(_N, "AssessmentSummary", "antipatternReportStatus"),
            type = "string",
            name = "antipatternReportStatus",
            target_id = prelude.String.id,
        }),
        antipatternReportStatusMessage = schema.new({
            id = id.from(_N, "AssessmentSummary", "antipatternReportStatusMessage"),
            type = "string",
            name = "antipatternReportStatusMessage",
            target_id = prelude.String.id,
        }),
        lastAnalyzedTimestamp = schema.new({
            id = id.from(_N, "AssessmentSummary", "lastAnalyzedTimestamp"),
            type = "timestamp",
            name = "lastAnalyzedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        listApplicationComponentStatusSummary = schema.new({
            id = id.from(_N, "AssessmentSummary", "listApplicationComponentStatusSummary"),
            type = "list",
            name = "listApplicationComponentStatusSummary",
            target_id = prelude.Document.id,
            list_member = M.ApplicationComponentStatusSummary,
        }),
        listServerStatusSummary = schema.new({
            id = id.from(_N, "AssessmentSummary", "listServerStatusSummary"),
            type = "list",
            name = "listServerStatusSummary",
            target_id = prelude.Document.id,
            list_member = M.ServerStatusSummary,
        }),
    },
})

M.AssessmentTarget = schema.new({
    id = id.from(_N, "AssessmentTarget"),
    type = "structure",
    members = {
        condition = schema.new({
            id = id.from(_N, "AssessmentTarget", "condition"),
            type = "string",
            name = "condition",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "AssessmentTarget", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        values = schema.new({
            id = id.from(_N, "AssessmentTarget", "values"),
            type = "list",
            name = "values",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AssociatedApplication = schema.new({
    id = id.from(_N, "AssociatedApplication"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "AssociatedApplication", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        id = schema.new({
            id = id.from(_N, "AssociatedApplication", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
    },
})

M.GetApplicationComponentDetailsInput = schema.new({
    id = id.from(_N, "GetApplicationComponentDetailsInput"),
    type = "structure",
    members = {
        applicationComponentId = schema.new({
            id = id.from(_N, "GetApplicationComponentDetailsInput", "applicationComponentId"),
            type = "string",
            name = "applicationComponentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetApplicationComponentDetailsOutput = schema.new({
    id = id.from(_N, "GetApplicationComponentDetailsOutput"),
    type = "structure",
    members = {
        applicationComponentDetail = schema.new({
            id = id.from(_N, "GetApplicationComponentDetailsOutput", "applicationComponentDetail"),
            type = "structure",
            name = "applicationComponentDetail",
            target_id = id.from(_N, "ApplicationComponentDetail"),
            target = M.ApplicationComponentDetail,
        }),
        associatedApplications = schema.new({
            id = id.from(_N, "GetApplicationComponentDetailsOutput", "associatedApplications"),
            type = "list",
            name = "associatedApplications",
            target_id = prelude.Document.id,
            list_member = M.AssociatedApplication,
        }),
        moreApplicationResource = schema.new({
            id = id.from(_N, "GetApplicationComponentDetailsOutput", "moreApplicationResource"),
            type = "boolean",
            name = "moreApplicationResource",
            target_id = prelude.Boolean.id,
        }),
        associatedServerIds = schema.new({
            id = id.from(_N, "GetApplicationComponentDetailsOutput", "associatedServerIds"),
            type = "list",
            name = "associatedServerIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.InternalServerException = schema.new({
    id = id.from(_N, "InternalServerException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InternalServerException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ResourceNotFoundException = schema.new({
    id = id.from(_N, "ResourceNotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ThrottlingException = schema.new({
    id = id.from(_N, "ThrottlingException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ThrottlingException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.GetApplicationComponentStrategiesInput = schema.new({
    id = id.from(_N, "GetApplicationComponentStrategiesInput"),
    type = "structure",
    members = {
        applicationComponentId = schema.new({
            id = id.from(_N, "GetApplicationComponentStrategiesInput", "applicationComponentId"),
            type = "string",
            name = "applicationComponentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetApplicationComponentStrategiesOutput = schema.new({
    id = id.from(_N, "GetApplicationComponentStrategiesOutput"),
    type = "structure",
    members = {
        applicationComponentStrategies = schema.new({
            id = id.from(_N, "GetApplicationComponentStrategiesOutput", "applicationComponentStrategies"),
            type = "list",
            name = "applicationComponentStrategies",
            target_id = prelude.Document.id,
            list_member = M.ApplicationComponentStrategy,
        }),
    },
})

M.GetAssessmentInput = schema.new({
    id = id.from(_N, "GetAssessmentInput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "GetAssessmentInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DataCollectionDetails = schema.new({
    id = id.from(_N, "DataCollectionDetails"),
    type = "structure",
    members = {
        status = schema.new({
            id = id.from(_N, "DataCollectionDetails", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        servers = schema.new({
            id = id.from(_N, "DataCollectionDetails", "servers"),
            type = "integer",
            name = "servers",
            target_id = prelude.Integer.id,
        }),
        failed = schema.new({
            id = id.from(_N, "DataCollectionDetails", "failed"),
            type = "integer",
            name = "failed",
            target_id = prelude.Integer.id,
        }),
        success = schema.new({
            id = id.from(_N, "DataCollectionDetails", "success"),
            type = "integer",
            name = "success",
            target_id = prelude.Integer.id,
        }),
        inProgress = schema.new({
            id = id.from(_N, "DataCollectionDetails", "inProgress"),
            type = "integer",
            name = "inProgress",
            target_id = prelude.Integer.id,
        }),
        startTime = schema.new({
            id = id.from(_N, "DataCollectionDetails", "startTime"),
            type = "timestamp",
            name = "startTime",
            target_id = prelude.Timestamp.id,
        }),
        completionTime = schema.new({
            id = id.from(_N, "DataCollectionDetails", "completionTime"),
            type = "timestamp",
            name = "completionTime",
            target_id = prelude.Timestamp.id,
        }),
        statusMessage = schema.new({
            id = id.from(_N, "DataCollectionDetails", "statusMessage"),
            type = "string",
            name = "statusMessage",
            target_id = prelude.String.id,
        }),
    },
})

M.GetAssessmentOutput = schema.new({
    id = id.from(_N, "GetAssessmentOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "GetAssessmentOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        dataCollectionDetails = schema.new({
            id = id.from(_N, "GetAssessmentOutput", "dataCollectionDetails"),
            type = "structure",
            name = "dataCollectionDetails",
            target_id = id.from(_N, "DataCollectionDetails"),
            target = M.DataCollectionDetails,
        }),
        assessmentTargets = schema.new({
            id = id.from(_N, "GetAssessmentOutput", "assessmentTargets"),
            type = "list",
            name = "assessmentTargets",
            target_id = prelude.Document.id,
            list_member = M.AssessmentTarget,
        }),
    },
})

M.GetImportFileTaskInput = schema.new({
    id = id.from(_N, "GetImportFileTaskInput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "GetImportFileTaskInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetImportFileTaskOutput = schema.new({
    id = id.from(_N, "GetImportFileTaskOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "GetImportFileTaskOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "GetImportFileTaskOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        startTime = schema.new({
            id = id.from(_N, "GetImportFileTaskOutput", "startTime"),
            type = "timestamp",
            name = "startTime",
            target_id = prelude.Timestamp.id,
        }),
        inputS3Bucket = schema.new({
            id = id.from(_N, "GetImportFileTaskOutput", "inputS3Bucket"),
            type = "string",
            name = "inputS3Bucket",
            target_id = prelude.String.id,
        }),
        inputS3Key = schema.new({
            id = id.from(_N, "GetImportFileTaskOutput", "inputS3Key"),
            type = "string",
            name = "inputS3Key",
            target_id = prelude.String.id,
        }),
        statusReportS3Bucket = schema.new({
            id = id.from(_N, "GetImportFileTaskOutput", "statusReportS3Bucket"),
            type = "string",
            name = "statusReportS3Bucket",
            target_id = prelude.String.id,
        }),
        statusReportS3Key = schema.new({
            id = id.from(_N, "GetImportFileTaskOutput", "statusReportS3Key"),
            type = "string",
            name = "statusReportS3Key",
            target_id = prelude.String.id,
        }),
        completionTime = schema.new({
            id = id.from(_N, "GetImportFileTaskOutput", "completionTime"),
            type = "timestamp",
            name = "completionTime",
            target_id = prelude.Timestamp.id,
        }),
        numberOfRecordsSuccess = schema.new({
            id = id.from(_N, "GetImportFileTaskOutput", "numberOfRecordsSuccess"),
            type = "integer",
            name = "numberOfRecordsSuccess",
            target_id = prelude.Integer.id,
        }),
        numberOfRecordsFailed = schema.new({
            id = id.from(_N, "GetImportFileTaskOutput", "numberOfRecordsFailed"),
            type = "integer",
            name = "numberOfRecordsFailed",
            target_id = prelude.Integer.id,
        }),
        importName = schema.new({
            id = id.from(_N, "GetImportFileTaskOutput", "importName"),
            type = "string",
            name = "importName",
            target_id = prelude.String.id,
        }),
    },
})

M.ValidationException = schema.new({
    id = id.from(_N, "ValidationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ValidationException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DependencyException = schema.new({
    id = id.from(_N, "DependencyException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "DependencyException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.GetLatestAssessmentIdInput = schema.new({
    id = id.from(_N, "GetLatestAssessmentIdInput"),
    type = "structure",
})

M.GetLatestAssessmentIdOutput = schema.new({
    id = id.from(_N, "GetLatestAssessmentIdOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "GetLatestAssessmentIdOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
    },
})

M.GetPortfolioPreferencesInput = schema.new({
    id = id.from(_N, "GetPortfolioPreferencesInput"),
    type = "structure",
})

M.Heterogeneous = schema.new({
    id = id.from(_N, "Heterogeneous"),
    type = "structure",
    members = {
        targetDatabaseEngine = schema.new({
            id = id.from(_N, "Heterogeneous", "targetDatabaseEngine"),
            type = "list",
            name = "targetDatabaseEngine",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Homogeneous = schema.new({
    id = id.from(_N, "Homogeneous"),
    type = "structure",
    members = {
        targetDatabaseEngine = schema.new({
            id = id.from(_N, "Homogeneous", "targetDatabaseEngine"),
            type = "list",
            name = "targetDatabaseEngine",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.NoDatabaseMigrationPreference = schema.new({
    id = id.from(_N, "NoDatabaseMigrationPreference"),
    type = "structure",
    members = {
        targetDatabaseEngine = schema.new({
            id = id.from(_N, "NoDatabaseMigrationPreference", "targetDatabaseEngine"),
            type = "list",
            name = "targetDatabaseEngine",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DatabaseMigrationPreference = schema.new({
    id = id.from(_N, "DatabaseMigrationPreference"),
    type = "union",
    members = {
        heterogeneous = schema.new({
            id = id.from(_N, "DatabaseMigrationPreference", "heterogeneous"),
            type = "structure",
            name = "heterogeneous",
            target_id = id.from(_N, "Heterogeneous"),
            target = M.Heterogeneous,
        }),
        homogeneous = schema.new({
            id = id.from(_N, "DatabaseMigrationPreference", "homogeneous"),
            type = "structure",
            name = "homogeneous",
            target_id = id.from(_N, "Homogeneous"),
            target = M.Homogeneous,
        }),
        noPreference = schema.new({
            id = id.from(_N, "DatabaseMigrationPreference", "noPreference"),
            type = "structure",
            name = "noPreference",
            target_id = id.from(_N, "NoDatabaseMigrationPreference"),
            target = M.NoDatabaseMigrationPreference,
        }),
    },
})

M.DatabasePreferences = schema.new({
    id = id.from(_N, "DatabasePreferences"),
    type = "structure",
    members = {
        databaseManagementPreference = schema.new({
            id = id.from(_N, "DatabasePreferences", "databaseManagementPreference"),
            type = "string",
            name = "databaseManagementPreference",
            target_id = prelude.String.id,
        }),
        databaseMigrationPreference = schema.new({
            id = id.from(_N, "DatabasePreferences", "databaseMigrationPreference"),
            type = "union",
            name = "databaseMigrationPreference",
            target_id = id.from(_N, "DatabaseMigrationPreference"),
            target = M.DatabaseMigrationPreference,
        }),
    },
})

M.BusinessGoals = schema.new({
    id = id.from(_N, "BusinessGoals"),
    type = "structure",
    members = {
        speedOfMigration = schema.new({
            id = id.from(_N, "BusinessGoals", "speedOfMigration"),
            type = "integer",
            name = "speedOfMigration",
            target_id = prelude.Integer.id,
        }),
        reduceOperationalOverheadWithManagedServices = schema.new({
            id = id.from(_N, "BusinessGoals", "reduceOperationalOverheadWithManagedServices"),
            type = "integer",
            name = "reduceOperationalOverheadWithManagedServices",
            target_id = prelude.Integer.id,
        }),
        modernizeInfrastructureWithCloudNativeTechnologies = schema.new({
            id = id.from(_N, "BusinessGoals", "modernizeInfrastructureWithCloudNativeTechnologies"),
            type = "integer",
            name = "modernizeInfrastructureWithCloudNativeTechnologies",
            target_id = prelude.Integer.id,
        }),
        licenseCostReduction = schema.new({
            id = id.from(_N, "BusinessGoals", "licenseCostReduction"),
            type = "integer",
            name = "licenseCostReduction",
            target_id = prelude.Integer.id,
        }),
    },
})

M.PrioritizeBusinessGoals = schema.new({
    id = id.from(_N, "PrioritizeBusinessGoals"),
    type = "structure",
    members = {
        businessGoals = schema.new({
            id = id.from(_N, "PrioritizeBusinessGoals", "businessGoals"),
            type = "structure",
            name = "businessGoals",
            target_id = id.from(_N, "BusinessGoals"),
            target = M.BusinessGoals,
        }),
    },
})

M.GetPortfolioPreferencesOutput = schema.new({
    id = id.from(_N, "GetPortfolioPreferencesOutput"),
    type = "structure",
    members = {
        prioritizeBusinessGoals = schema.new({
            id = id.from(_N, "GetPortfolioPreferencesOutput", "prioritizeBusinessGoals"),
            type = "structure",
            name = "prioritizeBusinessGoals",
            target_id = id.from(_N, "PrioritizeBusinessGoals"),
            target = M.PrioritizeBusinessGoals,
        }),
        applicationPreferences = schema.new({
            id = id.from(_N, "GetPortfolioPreferencesOutput", "applicationPreferences"),
            type = "structure",
            name = "applicationPreferences",
            target_id = id.from(_N, "ApplicationPreferences"),
            target = M.ApplicationPreferences,
        }),
        databasePreferences = schema.new({
            id = id.from(_N, "GetPortfolioPreferencesOutput", "databasePreferences"),
            type = "structure",
            name = "databasePreferences",
            target_id = id.from(_N, "DatabasePreferences"),
            target = M.DatabasePreferences,
        }),
        applicationMode = schema.new({
            id = id.from(_N, "GetPortfolioPreferencesOutput", "applicationMode"),
            type = "string",
            name = "applicationMode",
            target_id = prelude.String.id,
        }),
    },
})

M.GetPortfolioSummaryInput = schema.new({
    id = id.from(_N, "GetPortfolioSummaryInput"),
    type = "structure",
})

M.GetPortfolioSummaryOutput = schema.new({
    id = id.from(_N, "GetPortfolioSummaryOutput"),
    type = "structure",
    members = {
        assessmentSummary = schema.new({
            id = id.from(_N, "GetPortfolioSummaryOutput", "assessmentSummary"),
            type = "structure",
            name = "assessmentSummary",
            target_id = id.from(_N, "AssessmentSummary"),
            target = M.AssessmentSummary,
        }),
    },
})

M.GetRecommendationReportDetailsInput = schema.new({
    id = id.from(_N, "GetRecommendationReportDetailsInput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "GetRecommendationReportDetailsInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.RecommendationReportDetails = schema.new({
    id = id.from(_N, "RecommendationReportDetails"),
    type = "structure",
    members = {
        status = schema.new({
            id = id.from(_N, "RecommendationReportDetails", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        statusMessage = schema.new({
            id = id.from(_N, "RecommendationReportDetails", "statusMessage"),
            type = "string",
            name = "statusMessage",
            target_id = prelude.String.id,
        }),
        startTime = schema.new({
            id = id.from(_N, "RecommendationReportDetails", "startTime"),
            type = "timestamp",
            name = "startTime",
            target_id = prelude.Timestamp.id,
        }),
        completionTime = schema.new({
            id = id.from(_N, "RecommendationReportDetails", "completionTime"),
            type = "timestamp",
            name = "completionTime",
            target_id = prelude.Timestamp.id,
        }),
        s3Bucket = schema.new({
            id = id.from(_N, "RecommendationReportDetails", "s3Bucket"),
            type = "string",
            name = "s3Bucket",
            target_id = prelude.String.id,
        }),
        s3Keys = schema.new({
            id = id.from(_N, "RecommendationReportDetails", "s3Keys"),
            type = "list",
            name = "s3Keys",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.GetRecommendationReportDetailsOutput = schema.new({
    id = id.from(_N, "GetRecommendationReportDetailsOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "GetRecommendationReportDetailsOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        recommendationReportDetails = schema.new({
            id = id.from(_N, "GetRecommendationReportDetailsOutput", "recommendationReportDetails"),
            type = "structure",
            name = "recommendationReportDetails",
            target_id = id.from(_N, "RecommendationReportDetails"),
            target = M.RecommendationReportDetails,
        }),
    },
})

M.GetServerDetailsInput = schema.new({
    id = id.from(_N, "GetServerDetailsInput"),
    type = "structure",
    members = {
        serverId = schema.new({
            id = id.from(_N, "GetServerDetailsInput", "serverId"),
            type = "string",
            name = "serverId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "GetServerDetailsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "GetServerDetailsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.ServerError = schema.new({
    id = id.from(_N, "ServerError"),
    type = "structure",
    members = {
        serverErrorCategory = schema.new({
            id = id.from(_N, "ServerError", "serverErrorCategory"),
            type = "string",
            name = "serverErrorCategory",
            target_id = prelude.String.id,
        }),
    },
})

M.NetworkInfo = schema.new({
    id = id.from(_N, "NetworkInfo"),
    type = "structure",
    members = {
        interfaceName = schema.new({
            id = id.from(_N, "NetworkInfo", "interfaceName"),
            type = "string",
            name = "interfaceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ipAddress = schema.new({
            id = id.from(_N, "NetworkInfo", "ipAddress"),
            type = "string",
            name = "ipAddress",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        macAddress = schema.new({
            id = id.from(_N, "NetworkInfo", "macAddress"),
            type = "string",
            name = "macAddress",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        netMask = schema.new({
            id = id.from(_N, "NetworkInfo", "netMask"),
            type = "string",
            name = "netMask",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.OSInfo = schema.new({
    id = id.from(_N, "OSInfo"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "OSInfo", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        version = schema.new({
            id = id.from(_N, "OSInfo", "version"),
            type = "string",
            name = "version",
            target_id = prelude.String.id,
        }),
    },
})

M.SystemInfo = schema.new({
    id = id.from(_N, "SystemInfo"),
    type = "structure",
    members = {
        osInfo = schema.new({
            id = id.from(_N, "SystemInfo", "osInfo"),
            type = "structure",
            name = "osInfo",
            target_id = id.from(_N, "OSInfo"),
            target = M.OSInfo,
        }),
        fileSystemType = schema.new({
            id = id.from(_N, "SystemInfo", "fileSystemType"),
            type = "string",
            name = "fileSystemType",
            target_id = prelude.String.id,
        }),
        networkInfoList = schema.new({
            id = id.from(_N, "SystemInfo", "networkInfoList"),
            type = "list",
            name = "networkInfoList",
            target_id = prelude.Document.id,
            list_member = M.NetworkInfo,
        }),
        cpuArchitecture = schema.new({
            id = id.from(_N, "SystemInfo", "cpuArchitecture"),
            type = "string",
            name = "cpuArchitecture",
            target_id = prelude.String.id,
        }),
    },
})

M.ServerDetail = schema.new({
    id = id.from(_N, "ServerDetail"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "ServerDetail", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "ServerDetail", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        recommendationSet = schema.new({
            id = id.from(_N, "ServerDetail", "recommendationSet"),
            type = "structure",
            name = "recommendationSet",
            target_id = id.from(_N, "RecommendationSet"),
            target = M.RecommendationSet,
        }),
        dataCollectionStatus = schema.new({
            id = id.from(_N, "ServerDetail", "dataCollectionStatus"),
            type = "string",
            name = "dataCollectionStatus",
            target_id = prelude.String.id,
        }),
        statusMessage = schema.new({
            id = id.from(_N, "ServerDetail", "statusMessage"),
            type = "string",
            name = "statusMessage",
            target_id = prelude.String.id,
        }),
        listAntipatternSeveritySummary = schema.new({
            id = id.from(_N, "ServerDetail", "listAntipatternSeveritySummary"),
            type = "list",
            name = "listAntipatternSeveritySummary",
            target_id = prelude.Document.id,
            list_member = M.AntipatternSeveritySummary,
        }),
        systemInfo = schema.new({
            id = id.from(_N, "ServerDetail", "systemInfo"),
            type = "structure",
            name = "systemInfo",
            target_id = id.from(_N, "SystemInfo"),
            target = M.SystemInfo,
        }),
        applicationComponentStrategySummary = schema.new({
            id = id.from(_N, "ServerDetail", "applicationComponentStrategySummary"),
            type = "list",
            name = "applicationComponentStrategySummary",
            target_id = prelude.Document.id,
            list_member = M.StrategySummary,
        }),
        antipatternReportS3Object = schema.new({
            id = id.from(_N, "ServerDetail", "antipatternReportS3Object"),
            type = "structure",
            name = "antipatternReportS3Object",
            target_id = id.from(_N, "S3Object"),
            target = M.S3Object,
        }),
        antipatternReportStatus = schema.new({
            id = id.from(_N, "ServerDetail", "antipatternReportStatus"),
            type = "string",
            name = "antipatternReportStatus",
            target_id = prelude.String.id,
        }),
        antipatternReportStatusMessage = schema.new({
            id = id.from(_N, "ServerDetail", "antipatternReportStatusMessage"),
            type = "string",
            name = "antipatternReportStatusMessage",
            target_id = prelude.String.id,
        }),
        serverType = schema.new({
            id = id.from(_N, "ServerDetail", "serverType"),
            type = "string",
            name = "serverType",
            target_id = prelude.String.id,
        }),
        lastAnalyzedTimestamp = schema.new({
            id = id.from(_N, "ServerDetail", "lastAnalyzedTimestamp"),
            type = "timestamp",
            name = "lastAnalyzedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        serverError = schema.new({
            id = id.from(_N, "ServerDetail", "serverError"),
            type = "structure",
            name = "serverError",
            target_id = id.from(_N, "ServerError"),
            target = M.ServerError,
        }),
    },
})

M.GetServerDetailsOutput = schema.new({
    id = id.from(_N, "GetServerDetailsOutput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "GetServerDetailsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        serverDetail = schema.new({
            id = id.from(_N, "GetServerDetailsOutput", "serverDetail"),
            type = "structure",
            name = "serverDetail",
            target_id = id.from(_N, "ServerDetail"),
            target = M.ServerDetail,
        }),
        associatedApplications = schema.new({
            id = id.from(_N, "GetServerDetailsOutput", "associatedApplications"),
            type = "list",
            name = "associatedApplications",
            target_id = prelude.Document.id,
            list_member = M.AssociatedApplication,
        }),
    },
})

M.GetServerStrategiesInput = schema.new({
    id = id.from(_N, "GetServerStrategiesInput"),
    type = "structure",
    members = {
        serverId = schema.new({
            id = id.from(_N, "GetServerStrategiesInput", "serverId"),
            type = "string",
            name = "serverId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.ServerStrategy = schema.new({
    id = id.from(_N, "ServerStrategy"),
    type = "structure",
    members = {
        recommendation = schema.new({
            id = id.from(_N, "ServerStrategy", "recommendation"),
            type = "structure",
            name = "recommendation",
            target_id = id.from(_N, "RecommendationSet"),
            target = M.RecommendationSet,
        }),
        status = schema.new({
            id = id.from(_N, "ServerStrategy", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        numberOfApplicationComponents = schema.new({
            id = id.from(_N, "ServerStrategy", "numberOfApplicationComponents"),
            type = "integer",
            name = "numberOfApplicationComponents",
            target_id = prelude.Integer.id,
        }),
        isPreferred = schema.new({
            id = id.from(_N, "ServerStrategy", "isPreferred"),
            type = "boolean",
            name = "isPreferred",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.GetServerStrategiesOutput = schema.new({
    id = id.from(_N, "GetServerStrategiesOutput"),
    type = "structure",
    members = {
        serverStrategies = schema.new({
            id = id.from(_N, "GetServerStrategiesOutput", "serverStrategies"),
            type = "list",
            name = "serverStrategies",
            target_id = prelude.Document.id,
            list_member = M.ServerStrategy,
        }),
    },
})

M.ListAnalyzableServersInput = schema.new({
    id = id.from(_N, "ListAnalyzableServersInput"),
    type = "structure",
    members = {
        sort = schema.new({
            id = id.from(_N, "ListAnalyzableServersInput", "sort"),
            type = "string",
            name = "sort",
            target_id = prelude.String.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListAnalyzableServersInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListAnalyzableServersInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListAnalyzableServersOutput = schema.new({
    id = id.from(_N, "ListAnalyzableServersOutput"),
    type = "structure",
    members = {
        analyzableServers = schema.new({
            id = id.from(_N, "ListAnalyzableServersOutput", "analyzableServers"),
            type = "list",
            name = "analyzableServers",
            target_id = prelude.Document.id,
            list_member = M.AnalyzableServerSummary,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListAnalyzableServersOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.Group = schema.new({
    id = id.from(_N, "Group"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "Group", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        value = schema.new({
            id = id.from(_N, "Group", "value"),
            type = "string",
            name = "value",
            target_id = prelude.String.id,
        }),
    },
})

M.ListApplicationComponentsInput = schema.new({
    id = id.from(_N, "ListApplicationComponentsInput"),
    type = "structure",
    members = {
        applicationComponentCriteria = schema.new({
            id = id.from(_N, "ListApplicationComponentsInput", "applicationComponentCriteria"),
            type = "string",
            name = "applicationComponentCriteria",
            target_id = prelude.String.id,
        }),
        filterValue = schema.new({
            id = id.from(_N, "ListApplicationComponentsInput", "filterValue"),
            type = "string",
            name = "filterValue",
            target_id = prelude.String.id,
        }),
        sort = schema.new({
            id = id.from(_N, "ListApplicationComponentsInput", "sort"),
            type = "string",
            name = "sort",
            target_id = prelude.String.id,
        }),
        groupIdFilter = schema.new({
            id = id.from(_N, "ListApplicationComponentsInput", "groupIdFilter"),
            type = "list",
            name = "groupIdFilter",
            target_id = prelude.Document.id,
            list_member = M.Group,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListApplicationComponentsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListApplicationComponentsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListApplicationComponentsOutput = schema.new({
    id = id.from(_N, "ListApplicationComponentsOutput"),
    type = "structure",
    members = {
        applicationComponentInfos = schema.new({
            id = id.from(_N, "ListApplicationComponentsOutput", "applicationComponentInfos"),
            type = "list",
            name = "applicationComponentInfos",
            target_id = prelude.Document.id,
            list_member = M.ApplicationComponentDetail,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListApplicationComponentsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ServiceLinkedRoleLockClientException = schema.new({
    id = id.from(_N, "ServiceLinkedRoleLockClientException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ServiceLinkedRoleLockClientException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ListCollectorsInput = schema.new({
    id = id.from(_N, "ListCollectorsInput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListCollectorsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListCollectorsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.IPAddressBasedRemoteInfo = schema.new({
    id = id.from(_N, "IPAddressBasedRemoteInfo"),
    type = "structure",
    members = {
        ipAddressConfigurationTimeStamp = schema.new({
            id = id.from(_N, "IPAddressBasedRemoteInfo", "ipAddressConfigurationTimeStamp"),
            type = "string",
            name = "ipAddressConfigurationTimeStamp",
            target_id = prelude.String.id,
        }),
        authType = schema.new({
            id = id.from(_N, "IPAddressBasedRemoteInfo", "authType"),
            type = "string",
            name = "authType",
            target_id = prelude.String.id,
        }),
        osType = schema.new({
            id = id.from(_N, "IPAddressBasedRemoteInfo", "osType"),
            type = "string",
            name = "osType",
            target_id = prelude.String.id,
        }),
    },
})

M.PipelineInfo = schema.new({
    id = id.from(_N, "PipelineInfo"),
    type = "structure",
    members = {
        pipelineType = schema.new({
            id = id.from(_N, "PipelineInfo", "pipelineType"),
            type = "string",
            name = "pipelineType",
            target_id = prelude.String.id,
        }),
        pipelineConfigurationTimeStamp = schema.new({
            id = id.from(_N, "PipelineInfo", "pipelineConfigurationTimeStamp"),
            type = "string",
            name = "pipelineConfigurationTimeStamp",
            target_id = prelude.String.id,
        }),
    },
})

M.RemoteSourceCodeAnalysisServerInfo = schema.new({
    id = id.from(_N, "RemoteSourceCodeAnalysisServerInfo"),
    type = "structure",
    members = {
        remoteSourceCodeAnalysisServerConfigurationTimestamp = schema.new({
            id = id.from(_N, "RemoteSourceCodeAnalysisServerInfo", "remoteSourceCodeAnalysisServerConfigurationTimestamp"),
            type = "string",
            name = "remoteSourceCodeAnalysisServerConfigurationTimestamp",
            target_id = prelude.String.id,
        }),
    },
})

M.VcenterBasedRemoteInfo = schema.new({
    id = id.from(_N, "VcenterBasedRemoteInfo"),
    type = "structure",
    members = {
        vcenterConfigurationTimeStamp = schema.new({
            id = id.from(_N, "VcenterBasedRemoteInfo", "vcenterConfigurationTimeStamp"),
            type = "string",
            name = "vcenterConfigurationTimeStamp",
            target_id = prelude.String.id,
        }),
        osType = schema.new({
            id = id.from(_N, "VcenterBasedRemoteInfo", "osType"),
            type = "string",
            name = "osType",
            target_id = prelude.String.id,
        }),
    },
})

M.VersionControlInfo = schema.new({
    id = id.from(_N, "VersionControlInfo"),
    type = "structure",
    members = {
        versionControlType = schema.new({
            id = id.from(_N, "VersionControlInfo", "versionControlType"),
            type = "string",
            name = "versionControlType",
            target_id = prelude.String.id,
        }),
        versionControlConfigurationTimeStamp = schema.new({
            id = id.from(_N, "VersionControlInfo", "versionControlConfigurationTimeStamp"),
            type = "string",
            name = "versionControlConfigurationTimeStamp",
            target_id = prelude.String.id,
        }),
    },
})

M.ConfigurationSummary = schema.new({
    id = id.from(_N, "ConfigurationSummary"),
    type = "structure",
    members = {
        vcenterBasedRemoteInfoList = schema.new({
            id = id.from(_N, "ConfigurationSummary", "vcenterBasedRemoteInfoList"),
            type = "list",
            name = "vcenterBasedRemoteInfoList",
            target_id = prelude.Document.id,
            list_member = M.VcenterBasedRemoteInfo,
        }),
        ipAddressBasedRemoteInfoList = schema.new({
            id = id.from(_N, "ConfigurationSummary", "ipAddressBasedRemoteInfoList"),
            type = "list",
            name = "ipAddressBasedRemoteInfoList",
            target_id = prelude.Document.id,
            list_member = M.IPAddressBasedRemoteInfo,
        }),
        versionControlInfoList = schema.new({
            id = id.from(_N, "ConfigurationSummary", "versionControlInfoList"),
            type = "list",
            name = "versionControlInfoList",
            target_id = prelude.Document.id,
            list_member = M.VersionControlInfo,
        }),
        pipelineInfoList = schema.new({
            id = id.from(_N, "ConfigurationSummary", "pipelineInfoList"),
            type = "list",
            name = "pipelineInfoList",
            target_id = prelude.Document.id,
            list_member = M.PipelineInfo,
        }),
        remoteSourceCodeAnalysisServerInfo = schema.new({
            id = id.from(_N, "ConfigurationSummary", "remoteSourceCodeAnalysisServerInfo"),
            type = "structure",
            name = "remoteSourceCodeAnalysisServerInfo",
            target_id = id.from(_N, "RemoteSourceCodeAnalysisServerInfo"),
            target = M.RemoteSourceCodeAnalysisServerInfo,
        }),
    },
})

M.Collector = schema.new({
    id = id.from(_N, "Collector"),
    type = "structure",
    members = {
        collectorId = schema.new({
            id = id.from(_N, "Collector", "collectorId"),
            type = "string",
            name = "collectorId",
            target_id = prelude.String.id,
        }),
        ipAddress = schema.new({
            id = id.from(_N, "Collector", "ipAddress"),
            type = "string",
            name = "ipAddress",
            target_id = prelude.String.id,
        }),
        hostName = schema.new({
            id = id.from(_N, "Collector", "hostName"),
            type = "string",
            name = "hostName",
            target_id = prelude.String.id,
        }),
        collectorHealth = schema.new({
            id = id.from(_N, "Collector", "collectorHealth"),
            type = "string",
            name = "collectorHealth",
            target_id = prelude.String.id,
        }),
        collectorVersion = schema.new({
            id = id.from(_N, "Collector", "collectorVersion"),
            type = "string",
            name = "collectorVersion",
            target_id = prelude.String.id,
        }),
        registeredTimeStamp = schema.new({
            id = id.from(_N, "Collector", "registeredTimeStamp"),
            type = "string",
            name = "registeredTimeStamp",
            target_id = prelude.String.id,
        }),
        lastActivityTimeStamp = schema.new({
            id = id.from(_N, "Collector", "lastActivityTimeStamp"),
            type = "string",
            name = "lastActivityTimeStamp",
            target_id = prelude.String.id,
        }),
        configurationSummary = schema.new({
            id = id.from(_N, "Collector", "configurationSummary"),
            type = "structure",
            name = "configurationSummary",
            target_id = id.from(_N, "ConfigurationSummary"),
            target = M.ConfigurationSummary,
        }),
    },
})

M.ListCollectorsOutput = schema.new({
    id = id.from(_N, "ListCollectorsOutput"),
    type = "structure",
    members = {
        Collectors = schema.new({
            id = id.from(_N, "ListCollectorsOutput", "Collectors"),
            type = "list",
            name = "Collectors",
            target_id = prelude.Document.id,
            list_member = M.Collector,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListCollectorsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListImportFileTaskInput = schema.new({
    id = id.from(_N, "ListImportFileTaskInput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListImportFileTaskInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListImportFileTaskInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.ImportFileTaskInformation = schema.new({
    id = id.from(_N, "ImportFileTaskInformation"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "ImportFileTaskInformation", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "ImportFileTaskInformation", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        startTime = schema.new({
            id = id.from(_N, "ImportFileTaskInformation", "startTime"),
            type = "timestamp",
            name = "startTime",
            target_id = prelude.Timestamp.id,
        }),
        inputS3Bucket = schema.new({
            id = id.from(_N, "ImportFileTaskInformation", "inputS3Bucket"),
            type = "string",
            name = "inputS3Bucket",
            target_id = prelude.String.id,
        }),
        inputS3Key = schema.new({
            id = id.from(_N, "ImportFileTaskInformation", "inputS3Key"),
            type = "string",
            name = "inputS3Key",
            target_id = prelude.String.id,
        }),
        statusReportS3Bucket = schema.new({
            id = id.from(_N, "ImportFileTaskInformation", "statusReportS3Bucket"),
            type = "string",
            name = "statusReportS3Bucket",
            target_id = prelude.String.id,
        }),
        statusReportS3Key = schema.new({
            id = id.from(_N, "ImportFileTaskInformation", "statusReportS3Key"),
            type = "string",
            name = "statusReportS3Key",
            target_id = prelude.String.id,
        }),
        completionTime = schema.new({
            id = id.from(_N, "ImportFileTaskInformation", "completionTime"),
            type = "timestamp",
            name = "completionTime",
            target_id = prelude.Timestamp.id,
        }),
        numberOfRecordsSuccess = schema.new({
            id = id.from(_N, "ImportFileTaskInformation", "numberOfRecordsSuccess"),
            type = "integer",
            name = "numberOfRecordsSuccess",
            target_id = prelude.Integer.id,
        }),
        numberOfRecordsFailed = schema.new({
            id = id.from(_N, "ImportFileTaskInformation", "numberOfRecordsFailed"),
            type = "integer",
            name = "numberOfRecordsFailed",
            target_id = prelude.Integer.id,
        }),
        importName = schema.new({
            id = id.from(_N, "ImportFileTaskInformation", "importName"),
            type = "string",
            name = "importName",
            target_id = prelude.String.id,
        }),
    },
})

M.ListImportFileTaskOutput = schema.new({
    id = id.from(_N, "ListImportFileTaskOutput"),
    type = "structure",
    members = {
        taskInfos = schema.new({
            id = id.from(_N, "ListImportFileTaskOutput", "taskInfos"),
            type = "list",
            name = "taskInfos",
            target_id = prelude.Document.id,
            list_member = M.ImportFileTaskInformation,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListImportFileTaskOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListServersInput = schema.new({
    id = id.from(_N, "ListServersInput"),
    type = "structure",
    members = {
        serverCriteria = schema.new({
            id = id.from(_N, "ListServersInput", "serverCriteria"),
            type = "string",
            name = "serverCriteria",
            target_id = prelude.String.id,
        }),
        filterValue = schema.new({
            id = id.from(_N, "ListServersInput", "filterValue"),
            type = "string",
            name = "filterValue",
            target_id = prelude.String.id,
        }),
        sort = schema.new({
            id = id.from(_N, "ListServersInput", "sort"),
            type = "string",
            name = "sort",
            target_id = prelude.String.id,
        }),
        groupIdFilter = schema.new({
            id = id.from(_N, "ListServersInput", "groupIdFilter"),
            type = "list",
            name = "groupIdFilter",
            target_id = prelude.Document.id,
            list_member = M.Group,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListServersInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListServersInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListServersOutput = schema.new({
    id = id.from(_N, "ListServersOutput"),
    type = "structure",
    members = {
        serverInfos = schema.new({
            id = id.from(_N, "ListServersOutput", "serverInfos"),
            type = "list",
            name = "serverInfos",
            target_id = prelude.Document.id,
            list_member = M.ServerDetail,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListServersOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ConflictException = schema.new({
    id = id.from(_N, "ConflictException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ConflictException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutPortfolioPreferencesInput = schema.new({
    id = id.from(_N, "PutPortfolioPreferencesInput"),
    type = "structure",
    members = {
        prioritizeBusinessGoals = schema.new({
            id = id.from(_N, "PutPortfolioPreferencesInput", "prioritizeBusinessGoals"),
            type = "structure",
            name = "prioritizeBusinessGoals",
            target_id = id.from(_N, "PrioritizeBusinessGoals"),
            target = M.PrioritizeBusinessGoals,
        }),
        applicationPreferences = schema.new({
            id = id.from(_N, "PutPortfolioPreferencesInput", "applicationPreferences"),
            type = "structure",
            name = "applicationPreferences",
            target_id = id.from(_N, "ApplicationPreferences"),
            target = M.ApplicationPreferences,
        }),
        databasePreferences = schema.new({
            id = id.from(_N, "PutPortfolioPreferencesInput", "databasePreferences"),
            type = "structure",
            name = "databasePreferences",
            target_id = id.from(_N, "DatabasePreferences"),
            target = M.DatabasePreferences,
        }),
        applicationMode = schema.new({
            id = id.from(_N, "PutPortfolioPreferencesInput", "applicationMode"),
            type = "string",
            name = "applicationMode",
            target_id = prelude.String.id,
        }),
    },
})

M.PutPortfolioPreferencesOutput = schema.new({
    id = id.from(_N, "PutPortfolioPreferencesOutput"),
    type = "structure",
})

M.ServiceQuotaExceededException = schema.new({
    id = id.from(_N, "ServiceQuotaExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StartAssessmentInput = schema.new({
    id = id.from(_N, "StartAssessmentInput"),
    type = "structure",
    members = {
        s3bucketForAnalysisData = schema.new({
            id = id.from(_N, "StartAssessmentInput", "s3bucketForAnalysisData"),
            type = "string",
            name = "s3bucketForAnalysisData",
            target_id = prelude.String.id,
        }),
        s3bucketForReportData = schema.new({
            id = id.from(_N, "StartAssessmentInput", "s3bucketForReportData"),
            type = "string",
            name = "s3bucketForReportData",
            target_id = prelude.String.id,
        }),
        assessmentTargets = schema.new({
            id = id.from(_N, "StartAssessmentInput", "assessmentTargets"),
            type = "list",
            name = "assessmentTargets",
            target_id = prelude.Document.id,
            list_member = M.AssessmentTarget,
        }),
        assessmentDataSourceType = schema.new({
            id = id.from(_N, "StartAssessmentInput", "assessmentDataSourceType"),
            type = "string",
            name = "assessmentDataSourceType",
            target_id = prelude.String.id,
        }),
    },
})

M.StartAssessmentOutput = schema.new({
    id = id.from(_N, "StartAssessmentOutput"),
    type = "structure",
    members = {
        assessmentId = schema.new({
            id = id.from(_N, "StartAssessmentOutput", "assessmentId"),
            type = "string",
            name = "assessmentId",
            target_id = prelude.String.id,
        }),
    },
})

M.StartImportFileTaskInput = schema.new({
    id = id.from(_N, "StartImportFileTaskInput"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "StartImportFileTaskInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        S3Bucket = schema.new({
            id = id.from(_N, "StartImportFileTaskInput", "S3Bucket"),
            type = "string",
            name = "S3Bucket",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        s3key = schema.new({
            id = id.from(_N, "StartImportFileTaskInput", "s3key"),
            type = "string",
            name = "s3key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        dataSourceType = schema.new({
            id = id.from(_N, "StartImportFileTaskInput", "dataSourceType"),
            type = "string",
            name = "dataSourceType",
            target_id = prelude.String.id,
        }),
        groupId = schema.new({
            id = id.from(_N, "StartImportFileTaskInput", "groupId"),
            type = "list",
            name = "groupId",
            target_id = prelude.Document.id,
            list_member = M.Group,
        }),
        s3bucketForReportData = schema.new({
            id = id.from(_N, "StartImportFileTaskInput", "s3bucketForReportData"),
            type = "string",
            name = "s3bucketForReportData",
            target_id = prelude.String.id,
        }),
    },
})

M.StartImportFileTaskOutput = schema.new({
    id = id.from(_N, "StartImportFileTaskOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "StartImportFileTaskOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
    },
})

M.StartRecommendationReportGenerationInput = schema.new({
    id = id.from(_N, "StartRecommendationReportGenerationInput"),
    type = "structure",
    members = {
        outputFormat = schema.new({
            id = id.from(_N, "StartRecommendationReportGenerationInput", "outputFormat"),
            type = "string",
            name = "outputFormat",
            target_id = prelude.String.id,
        }),
        groupIdFilter = schema.new({
            id = id.from(_N, "StartRecommendationReportGenerationInput", "groupIdFilter"),
            type = "list",
            name = "groupIdFilter",
            target_id = prelude.Document.id,
            list_member = M.Group,
        }),
    },
})

M.StartRecommendationReportGenerationOutput = schema.new({
    id = id.from(_N, "StartRecommendationReportGenerationOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "StartRecommendationReportGenerationOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
    },
})

M.StopAssessmentInput = schema.new({
    id = id.from(_N, "StopAssessmentInput"),
    type = "structure",
    members = {
        assessmentId = schema.new({
            id = id.from(_N, "StopAssessmentInput", "assessmentId"),
            type = "string",
            name = "assessmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StopAssessmentOutput = schema.new({
    id = id.from(_N, "StopAssessmentOutput"),
    type = "structure",
})

M.SourceCode = schema.new({
    id = id.from(_N, "SourceCode"),
    type = "structure",
    members = {
        versionControl = schema.new({
            id = id.from(_N, "SourceCode", "versionControl"),
            type = "string",
            name = "versionControl",
            target_id = prelude.String.id,
        }),
        sourceVersion = schema.new({
            id = id.from(_N, "SourceCode", "sourceVersion"),
            type = "string",
            name = "sourceVersion",
            target_id = prelude.String.id,
        }),
        location = schema.new({
            id = id.from(_N, "SourceCode", "location"),
            type = "string",
            name = "location",
            target_id = prelude.String.id,
        }),
        projectName = schema.new({
            id = id.from(_N, "SourceCode", "projectName"),
            type = "string",
            name = "projectName",
            target_id = prelude.String.id,
        }),
    },
})

M.StrategyOption = schema.new({
    id = id.from(_N, "StrategyOption"),
    type = "structure",
    members = {
        strategy = schema.new({
            id = id.from(_N, "StrategyOption", "strategy"),
            type = "string",
            name = "strategy",
            target_id = prelude.String.id,
        }),
        toolName = schema.new({
            id = id.from(_N, "StrategyOption", "toolName"),
            type = "string",
            name = "toolName",
            target_id = prelude.String.id,
        }),
        targetDestination = schema.new({
            id = id.from(_N, "StrategyOption", "targetDestination"),
            type = "string",
            name = "targetDestination",
            target_id = prelude.String.id,
        }),
        isPreferred = schema.new({
            id = id.from(_N, "StrategyOption", "isPreferred"),
            type = "boolean",
            name = "isPreferred",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.UpdateApplicationComponentConfigInput = schema.new({
    id = id.from(_N, "UpdateApplicationComponentConfigInput"),
    type = "structure",
    members = {
        applicationComponentId = schema.new({
            id = id.from(_N, "UpdateApplicationComponentConfigInput", "applicationComponentId"),
            type = "string",
            name = "applicationComponentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        inclusionStatus = schema.new({
            id = id.from(_N, "UpdateApplicationComponentConfigInput", "inclusionStatus"),
            type = "string",
            name = "inclusionStatus",
            target_id = prelude.String.id,
        }),
        strategyOption = schema.new({
            id = id.from(_N, "UpdateApplicationComponentConfigInput", "strategyOption"),
            type = "structure",
            name = "strategyOption",
            target_id = id.from(_N, "StrategyOption"),
            target = M.StrategyOption,
        }),
        sourceCodeList = schema.new({
            id = id.from(_N, "UpdateApplicationComponentConfigInput", "sourceCodeList"),
            type = "list",
            name = "sourceCodeList",
            target_id = prelude.Document.id,
            list_member = M.SourceCode,
        }),
        secretsManagerKey = schema.new({
            id = id.from(_N, "UpdateApplicationComponentConfigInput", "secretsManagerKey"),
            type = "string",
            name = "secretsManagerKey",
            target_id = prelude.String.id,
        }),
        configureOnly = schema.new({
            id = id.from(_N, "UpdateApplicationComponentConfigInput", "configureOnly"),
            type = "boolean",
            name = "configureOnly",
            target_id = prelude.Boolean.id,
        }),
        appType = schema.new({
            id = id.from(_N, "UpdateApplicationComponentConfigInput", "appType"),
            type = "string",
            name = "appType",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateApplicationComponentConfigOutput = schema.new({
    id = id.from(_N, "UpdateApplicationComponentConfigOutput"),
    type = "structure",
})

M.UpdateServerConfigInput = schema.new({
    id = id.from(_N, "UpdateServerConfigInput"),
    type = "structure",
    members = {
        serverId = schema.new({
            id = id.from(_N, "UpdateServerConfigInput", "serverId"),
            type = "string",
            name = "serverId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        strategyOption = schema.new({
            id = id.from(_N, "UpdateServerConfigInput", "strategyOption"),
            type = "structure",
            name = "strategyOption",
            target_id = id.from(_N, "StrategyOption"),
            target = M.StrategyOption,
        }),
    },
})

M.UpdateServerConfigOutput = schema.new({
    id = id.from(_N, "UpdateServerConfigOutput"),
    type = "structure",
})

return M
