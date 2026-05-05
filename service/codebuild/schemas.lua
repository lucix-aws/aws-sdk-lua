local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.codebuild"

local M = {}

M.AccountLimitExceededException = schema.new({
    id = id.from(_N, "AccountLimitExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "AccountLimitExceededException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.AccountSuspendedException = schema.new({
    id = id.from(_N, "AccountSuspendedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "AccountSuspendedException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.AutoRetryConfig = schema.new({
    id = id.from(_N, "AutoRetryConfig"),
    type = "structure",
    members = {
        autoRetryLimit = schema.new({
            id = id.from(_N, "AutoRetryConfig", "autoRetryLimit"),
            type = "integer",
            name = "autoRetryLimit",
            target_id = prelude.Integer.id,
        }),
        autoRetryNumber = schema.new({
            id = id.from(_N, "AutoRetryConfig", "autoRetryNumber"),
            type = "integer",
            name = "autoRetryNumber",
            target_id = prelude.Integer.id,
        }),
        nextAutoRetry = schema.new({
            id = id.from(_N, "AutoRetryConfig", "nextAutoRetry"),
            type = "string",
            name = "nextAutoRetry",
            target_id = prelude.String.id,
        }),
        previousAutoRetry = schema.new({
            id = id.from(_N, "AutoRetryConfig", "previousAutoRetry"),
            type = "string",
            name = "previousAutoRetry",
            target_id = prelude.String.id,
        }),
    },
})

M.BatchDeleteBuildsInput = schema.new({
    id = id.from(_N, "BatchDeleteBuildsInput"),
    type = "structure",
    members = {
        ids = schema.new({
            id = id.from(_N, "BatchDeleteBuildsInput", "ids"),
            type = "list",
            name = "ids",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BuildNotDeleted = schema.new({
    id = id.from(_N, "BuildNotDeleted"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "BuildNotDeleted", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        statusCode = schema.new({
            id = id.from(_N, "BuildNotDeleted", "statusCode"),
            type = "string",
            name = "statusCode",
            target_id = prelude.String.id,
        }),
    },
})

M.BatchDeleteBuildsOutput = schema.new({
    id = id.from(_N, "BatchDeleteBuildsOutput"),
    type = "structure",
    members = {
        buildsDeleted = schema.new({
            id = id.from(_N, "BatchDeleteBuildsOutput", "buildsDeleted"),
            type = "list",
            name = "buildsDeleted",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        buildsNotDeleted = schema.new({
            id = id.from(_N, "BatchDeleteBuildsOutput", "buildsNotDeleted"),
            type = "list",
            name = "buildsNotDeleted",
            target_id = prelude.Document.id,
            list_member = M.BuildNotDeleted,
        }),
    },
})

M.InvalidInputException = schema.new({
    id = id.from(_N, "InvalidInputException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidInputException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.BatchGetBuildBatchesInput = schema.new({
    id = id.from(_N, "BatchGetBuildBatchesInput"),
    type = "structure",
    members = {
        ids = schema.new({
            id = id.from(_N, "BatchGetBuildBatchesInput", "ids"),
            type = "list",
            name = "ids",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BuildArtifacts = schema.new({
    id = id.from(_N, "BuildArtifacts"),
    type = "structure",
    members = {
        location = schema.new({
            id = id.from(_N, "BuildArtifacts", "location"),
            type = "string",
            name = "location",
            target_id = prelude.String.id,
        }),
        sha256sum = schema.new({
            id = id.from(_N, "BuildArtifacts", "sha256sum"),
            type = "string",
            name = "sha256sum",
            target_id = prelude.String.id,
        }),
        md5sum = schema.new({
            id = id.from(_N, "BuildArtifacts", "md5sum"),
            type = "string",
            name = "md5sum",
            target_id = prelude.String.id,
        }),
        overrideArtifactName = schema.new({
            id = id.from(_N, "BuildArtifacts", "overrideArtifactName"),
            type = "boolean",
            name = "overrideArtifactName",
            target_id = prelude.Boolean.id,
        }),
        encryptionDisabled = schema.new({
            id = id.from(_N, "BuildArtifacts", "encryptionDisabled"),
            type = "boolean",
            name = "encryptionDisabled",
            target_id = prelude.Boolean.id,
        }),
        artifactIdentifier = schema.new({
            id = id.from(_N, "BuildArtifacts", "artifactIdentifier"),
            type = "string",
            name = "artifactIdentifier",
            target_id = prelude.String.id,
        }),
        bucketOwnerAccess = schema.new({
            id = id.from(_N, "BuildArtifacts", "bucketOwnerAccess"),
            type = "string",
            name = "bucketOwnerAccess",
            target_id = prelude.String.id,
        }),
    },
})

M.BatchRestrictions = schema.new({
    id = id.from(_N, "BatchRestrictions"),
    type = "structure",
    members = {
        maximumBuildsAllowed = schema.new({
            id = id.from(_N, "BatchRestrictions", "maximumBuildsAllowed"),
            type = "integer",
            name = "maximumBuildsAllowed",
            target_id = prelude.Integer.id,
        }),
        computeTypesAllowed = schema.new({
            id = id.from(_N, "BatchRestrictions", "computeTypesAllowed"),
            type = "list",
            name = "computeTypesAllowed",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        fleetsAllowed = schema.new({
            id = id.from(_N, "BatchRestrictions", "fleetsAllowed"),
            type = "list",
            name = "fleetsAllowed",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ProjectBuildBatchConfig = schema.new({
    id = id.from(_N, "ProjectBuildBatchConfig"),
    type = "structure",
    members = {
        serviceRole = schema.new({
            id = id.from(_N, "ProjectBuildBatchConfig", "serviceRole"),
            type = "string",
            name = "serviceRole",
            target_id = prelude.String.id,
        }),
        combineArtifacts = schema.new({
            id = id.from(_N, "ProjectBuildBatchConfig", "combineArtifacts"),
            type = "boolean",
            name = "combineArtifacts",
            target_id = prelude.Boolean.id,
        }),
        restrictions = schema.new({
            id = id.from(_N, "ProjectBuildBatchConfig", "restrictions"),
            type = "structure",
            name = "restrictions",
            target_id = id.from(_N, "BatchRestrictions"),
            target = M.BatchRestrictions,
        }),
        timeoutInMins = schema.new({
            id = id.from(_N, "ProjectBuildBatchConfig", "timeoutInMins"),
            type = "integer",
            name = "timeoutInMins",
            target_id = prelude.Integer.id,
        }),
        batchReportMode = schema.new({
            id = id.from(_N, "ProjectBuildBatchConfig", "batchReportMode"),
            type = "string",
            name = "batchReportMode",
            target_id = prelude.String.id,
        }),
    },
})

M.ResolvedArtifact = schema.new({
    id = id.from(_N, "ResolvedArtifact"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "ResolvedArtifact", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        location = schema.new({
            id = id.from(_N, "ResolvedArtifact", "location"),
            type = "string",
            name = "location",
            target_id = prelude.String.id,
        }),
        identifier = schema.new({
            id = id.from(_N, "ResolvedArtifact", "identifier"),
            type = "string",
            name = "identifier",
            target_id = prelude.String.id,
        }),
    },
})

M.BuildSummary = schema.new({
    id = id.from(_N, "BuildSummary"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "BuildSummary", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        requestedOn = schema.new({
            id = id.from(_N, "BuildSummary", "requestedOn"),
            type = "timestamp",
            name = "requestedOn",
            target_id = prelude.Timestamp.id,
        }),
        buildStatus = schema.new({
            id = id.from(_N, "BuildSummary", "buildStatus"),
            type = "string",
            name = "buildStatus",
            target_id = prelude.String.id,
        }),
        primaryArtifact = schema.new({
            id = id.from(_N, "BuildSummary", "primaryArtifact"),
            type = "structure",
            name = "primaryArtifact",
            target_id = id.from(_N, "ResolvedArtifact"),
            target = M.ResolvedArtifact,
        }),
        secondaryArtifacts = schema.new({
            id = id.from(_N, "BuildSummary", "secondaryArtifacts"),
            type = "list",
            name = "secondaryArtifacts",
            target_id = prelude.Document.id,
            list_member = M.ResolvedArtifact,
        }),
    },
})

M.BuildGroup = schema.new({
    id = id.from(_N, "BuildGroup"),
    type = "structure",
    members = {
        identifier = schema.new({
            id = id.from(_N, "BuildGroup", "identifier"),
            type = "string",
            name = "identifier",
            target_id = prelude.String.id,
        }),
        dependsOn = schema.new({
            id = id.from(_N, "BuildGroup", "dependsOn"),
            type = "list",
            name = "dependsOn",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ignoreFailure = schema.new({
            id = id.from(_N, "BuildGroup", "ignoreFailure"),
            type = "boolean",
            name = "ignoreFailure",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        currentBuildSummary = schema.new({
            id = id.from(_N, "BuildGroup", "currentBuildSummary"),
            type = "structure",
            name = "currentBuildSummary",
            target_id = id.from(_N, "BuildSummary"),
            target = M.BuildSummary,
        }),
        priorBuildSummaryList = schema.new({
            id = id.from(_N, "BuildGroup", "priorBuildSummaryList"),
            type = "list",
            name = "priorBuildSummaryList",
            target_id = prelude.Document.id,
            list_member = M.BuildSummary,
        }),
    },
})

M.ProjectCache = schema.new({
    id = id.from(_N, "ProjectCache"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "ProjectCache", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        location = schema.new({
            id = id.from(_N, "ProjectCache", "location"),
            type = "string",
            name = "location",
            target_id = prelude.String.id,
        }),
        modes = schema.new({
            id = id.from(_N, "ProjectCache", "modes"),
            type = "list",
            name = "modes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        cacheNamespace = schema.new({
            id = id.from(_N, "ProjectCache", "cacheNamespace"),
            type = "string",
            name = "cacheNamespace",
            target_id = prelude.String.id,
        }),
    },
})

M.ComputeConfiguration = schema.new({
    id = id.from(_N, "ComputeConfiguration"),
    type = "structure",
    members = {
        vCpu = schema.new({
            id = id.from(_N, "ComputeConfiguration", "vCpu"),
            type = "long",
            name = "vCpu",
            target_id = prelude.Long.id,
        }),
        memory = schema.new({
            id = id.from(_N, "ComputeConfiguration", "memory"),
            type = "long",
            name = "memory",
            target_id = prelude.Long.id,
        }),
        disk = schema.new({
            id = id.from(_N, "ComputeConfiguration", "disk"),
            type = "long",
            name = "disk",
            target_id = prelude.Long.id,
        }),
        machineType = schema.new({
            id = id.from(_N, "ComputeConfiguration", "machineType"),
            type = "string",
            name = "machineType",
            target_id = prelude.String.id,
        }),
        instanceType = schema.new({
            id = id.from(_N, "ComputeConfiguration", "instanceType"),
            type = "string",
            name = "instanceType",
            target_id = prelude.String.id,
        }),
    },
})

M.DockerServerStatus = schema.new({
    id = id.from(_N, "DockerServerStatus"),
    type = "structure",
    members = {
        status = schema.new({
            id = id.from(_N, "DockerServerStatus", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        message = schema.new({
            id = id.from(_N, "DockerServerStatus", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DockerServer = schema.new({
    id = id.from(_N, "DockerServer"),
    type = "structure",
    members = {
        computeType = schema.new({
            id = id.from(_N, "DockerServer", "computeType"),
            type = "string",
            name = "computeType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        securityGroupIds = schema.new({
            id = id.from(_N, "DockerServer", "securityGroupIds"),
            type = "list",
            name = "securityGroupIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        status = schema.new({
            id = id.from(_N, "DockerServer", "status"),
            type = "structure",
            name = "status",
            target_id = id.from(_N, "DockerServerStatus"),
            target = M.DockerServerStatus,
        }),
    },
})

M.EnvironmentVariable = schema.new({
    id = id.from(_N, "EnvironmentVariable"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "EnvironmentVariable", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        value = schema.new({
            id = id.from(_N, "EnvironmentVariable", "value"),
            type = "string",
            name = "value",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        type = schema.new({
            id = id.from(_N, "EnvironmentVariable", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
    },
})

M.ProjectFleet = schema.new({
    id = id.from(_N, "ProjectFleet"),
    type = "structure",
    members = {
        fleetArn = schema.new({
            id = id.from(_N, "ProjectFleet", "fleetArn"),
            type = "string",
            name = "fleetArn",
            target_id = prelude.String.id,
        }),
    },
})

M.RegistryCredential = schema.new({
    id = id.from(_N, "RegistryCredential"),
    type = "structure",
    members = {
        credential = schema.new({
            id = id.from(_N, "RegistryCredential", "credential"),
            type = "string",
            name = "credential",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        credentialProvider = schema.new({
            id = id.from(_N, "RegistryCredential", "credentialProvider"),
            type = "string",
            name = "credentialProvider",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ProjectEnvironment = schema.new({
    id = id.from(_N, "ProjectEnvironment"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "ProjectEnvironment", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        image = schema.new({
            id = id.from(_N, "ProjectEnvironment", "image"),
            type = "string",
            name = "image",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        computeType = schema.new({
            id = id.from(_N, "ProjectEnvironment", "computeType"),
            type = "string",
            name = "computeType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        computeConfiguration = schema.new({
            id = id.from(_N, "ProjectEnvironment", "computeConfiguration"),
            type = "structure",
            name = "computeConfiguration",
            target_id = id.from(_N, "ComputeConfiguration"),
            target = M.ComputeConfiguration,
        }),
        fleet = schema.new({
            id = id.from(_N, "ProjectEnvironment", "fleet"),
            type = "structure",
            name = "fleet",
            target_id = id.from(_N, "ProjectFleet"),
            target = M.ProjectFleet,
        }),
        environmentVariables = schema.new({
            id = id.from(_N, "ProjectEnvironment", "environmentVariables"),
            type = "list",
            name = "environmentVariables",
            target_id = prelude.Document.id,
            list_member = M.EnvironmentVariable,
        }),
        privilegedMode = schema.new({
            id = id.from(_N, "ProjectEnvironment", "privilegedMode"),
            type = "boolean",
            name = "privilegedMode",
            target_id = prelude.Boolean.id,
        }),
        certificate = schema.new({
            id = id.from(_N, "ProjectEnvironment", "certificate"),
            type = "string",
            name = "certificate",
            target_id = prelude.String.id,
        }),
        registryCredential = schema.new({
            id = id.from(_N, "ProjectEnvironment", "registryCredential"),
            type = "structure",
            name = "registryCredential",
            target_id = id.from(_N, "RegistryCredential"),
            target = M.RegistryCredential,
        }),
        imagePullCredentialsType = schema.new({
            id = id.from(_N, "ProjectEnvironment", "imagePullCredentialsType"),
            type = "string",
            name = "imagePullCredentialsType",
            target_id = prelude.String.id,
        }),
        dockerServer = schema.new({
            id = id.from(_N, "ProjectEnvironment", "dockerServer"),
            type = "structure",
            name = "dockerServer",
            target_id = id.from(_N, "DockerServer"),
            target = M.DockerServer,
        }),
    },
})

M.ProjectFileSystemLocation = schema.new({
    id = id.from(_N, "ProjectFileSystemLocation"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "ProjectFileSystemLocation", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        location = schema.new({
            id = id.from(_N, "ProjectFileSystemLocation", "location"),
            type = "string",
            name = "location",
            target_id = prelude.String.id,
        }),
        mountPoint = schema.new({
            id = id.from(_N, "ProjectFileSystemLocation", "mountPoint"),
            type = "string",
            name = "mountPoint",
            target_id = prelude.String.id,
        }),
        identifier = schema.new({
            id = id.from(_N, "ProjectFileSystemLocation", "identifier"),
            type = "string",
            name = "identifier",
            target_id = prelude.String.id,
        }),
        mountOptions = schema.new({
            id = id.from(_N, "ProjectFileSystemLocation", "mountOptions"),
            type = "string",
            name = "mountOptions",
            target_id = prelude.String.id,
        }),
    },
})

M.CloudWatchLogsConfig = schema.new({
    id = id.from(_N, "CloudWatchLogsConfig"),
    type = "structure",
    members = {
        status = schema.new({
            id = id.from(_N, "CloudWatchLogsConfig", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        groupName = schema.new({
            id = id.from(_N, "CloudWatchLogsConfig", "groupName"),
            type = "string",
            name = "groupName",
            target_id = prelude.String.id,
        }),
        streamName = schema.new({
            id = id.from(_N, "CloudWatchLogsConfig", "streamName"),
            type = "string",
            name = "streamName",
            target_id = prelude.String.id,
        }),
    },
})

M.S3LogsConfig = schema.new({
    id = id.from(_N, "S3LogsConfig"),
    type = "structure",
    members = {
        status = schema.new({
            id = id.from(_N, "S3LogsConfig", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        location = schema.new({
            id = id.from(_N, "S3LogsConfig", "location"),
            type = "string",
            name = "location",
            target_id = prelude.String.id,
        }),
        encryptionDisabled = schema.new({
            id = id.from(_N, "S3LogsConfig", "encryptionDisabled"),
            type = "boolean",
            name = "encryptionDisabled",
            target_id = prelude.Boolean.id,
        }),
        bucketOwnerAccess = schema.new({
            id = id.from(_N, "S3LogsConfig", "bucketOwnerAccess"),
            type = "string",
            name = "bucketOwnerAccess",
            target_id = prelude.String.id,
        }),
    },
})

M.LogsConfig = schema.new({
    id = id.from(_N, "LogsConfig"),
    type = "structure",
    members = {
        cloudWatchLogs = schema.new({
            id = id.from(_N, "LogsConfig", "cloudWatchLogs"),
            type = "structure",
            name = "cloudWatchLogs",
            target_id = id.from(_N, "CloudWatchLogsConfig"),
            target = M.CloudWatchLogsConfig,
        }),
        s3Logs = schema.new({
            id = id.from(_N, "LogsConfig", "s3Logs"),
            type = "structure",
            name = "s3Logs",
            target_id = id.from(_N, "S3LogsConfig"),
            target = M.S3LogsConfig,
        }),
    },
})

M.PhaseContext = schema.new({
    id = id.from(_N, "PhaseContext"),
    type = "structure",
    members = {
        statusCode = schema.new({
            id = id.from(_N, "PhaseContext", "statusCode"),
            type = "string",
            name = "statusCode",
            target_id = prelude.String.id,
        }),
        message = schema.new({
            id = id.from(_N, "PhaseContext", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.BuildBatchPhase = schema.new({
    id = id.from(_N, "BuildBatchPhase"),
    type = "structure",
    members = {
        phaseType = schema.new({
            id = id.from(_N, "BuildBatchPhase", "phaseType"),
            type = "string",
            name = "phaseType",
            target_id = prelude.String.id,
        }),
        phaseStatus = schema.new({
            id = id.from(_N, "BuildBatchPhase", "phaseStatus"),
            type = "string",
            name = "phaseStatus",
            target_id = prelude.String.id,
        }),
        startTime = schema.new({
            id = id.from(_N, "BuildBatchPhase", "startTime"),
            type = "timestamp",
            name = "startTime",
            target_id = prelude.Timestamp.id,
        }),
        endTime = schema.new({
            id = id.from(_N, "BuildBatchPhase", "endTime"),
            type = "timestamp",
            name = "endTime",
            target_id = prelude.Timestamp.id,
        }),
        durationInSeconds = schema.new({
            id = id.from(_N, "BuildBatchPhase", "durationInSeconds"),
            type = "long",
            name = "durationInSeconds",
            target_id = prelude.Long.id,
        }),
        contexts = schema.new({
            id = id.from(_N, "BuildBatchPhase", "contexts"),
            type = "list",
            name = "contexts",
            target_id = prelude.Document.id,
            list_member = M.PhaseContext,
        }),
    },
})

M.SourceAuth = schema.new({
    id = id.from(_N, "SourceAuth"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "SourceAuth", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resource = schema.new({
            id = id.from(_N, "SourceAuth", "resource"),
            type = "string",
            name = "resource",
            target_id = prelude.String.id,
        }),
    },
})

M.BuildStatusConfig = schema.new({
    id = id.from(_N, "BuildStatusConfig"),
    type = "structure",
    members = {
        context = schema.new({
            id = id.from(_N, "BuildStatusConfig", "context"),
            type = "string",
            name = "context",
            target_id = prelude.String.id,
        }),
        targetUrl = schema.new({
            id = id.from(_N, "BuildStatusConfig", "targetUrl"),
            type = "string",
            name = "targetUrl",
            target_id = prelude.String.id,
        }),
    },
})

M.GitSubmodulesConfig = schema.new({
    id = id.from(_N, "GitSubmodulesConfig"),
    type = "structure",
    members = {
        fetchSubmodules = schema.new({
            id = id.from(_N, "GitSubmodulesConfig", "fetchSubmodules"),
            type = "boolean",
            name = "fetchSubmodules",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ProjectSource = schema.new({
    id = id.from(_N, "ProjectSource"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "ProjectSource", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        location = schema.new({
            id = id.from(_N, "ProjectSource", "location"),
            type = "string",
            name = "location",
            target_id = prelude.String.id,
        }),
        gitCloneDepth = schema.new({
            id = id.from(_N, "ProjectSource", "gitCloneDepth"),
            type = "integer",
            name = "gitCloneDepth",
            target_id = prelude.Integer.id,
        }),
        gitSubmodulesConfig = schema.new({
            id = id.from(_N, "ProjectSource", "gitSubmodulesConfig"),
            type = "structure",
            name = "gitSubmodulesConfig",
            target_id = id.from(_N, "GitSubmodulesConfig"),
            target = M.GitSubmodulesConfig,
        }),
        buildspec = schema.new({
            id = id.from(_N, "ProjectSource", "buildspec"),
            type = "string",
            name = "buildspec",
            target_id = prelude.String.id,
        }),
        auth = schema.new({
            id = id.from(_N, "ProjectSource", "auth"),
            type = "structure",
            name = "auth",
            target_id = id.from(_N, "SourceAuth"),
            target = M.SourceAuth,
        }),
        reportBuildStatus = schema.new({
            id = id.from(_N, "ProjectSource", "reportBuildStatus"),
            type = "boolean",
            name = "reportBuildStatus",
            target_id = prelude.Boolean.id,
        }),
        buildStatusConfig = schema.new({
            id = id.from(_N, "ProjectSource", "buildStatusConfig"),
            type = "structure",
            name = "buildStatusConfig",
            target_id = id.from(_N, "BuildStatusConfig"),
            target = M.BuildStatusConfig,
        }),
        insecureSsl = schema.new({
            id = id.from(_N, "ProjectSource", "insecureSsl"),
            type = "boolean",
            name = "insecureSsl",
            target_id = prelude.Boolean.id,
        }),
        sourceIdentifier = schema.new({
            id = id.from(_N, "ProjectSource", "sourceIdentifier"),
            type = "string",
            name = "sourceIdentifier",
            target_id = prelude.String.id,
        }),
    },
})

M.ProjectSourceVersion = schema.new({
    id = id.from(_N, "ProjectSourceVersion"),
    type = "structure",
    members = {
        sourceIdentifier = schema.new({
            id = id.from(_N, "ProjectSourceVersion", "sourceIdentifier"),
            type = "string",
            name = "sourceIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sourceVersion = schema.new({
            id = id.from(_N, "ProjectSourceVersion", "sourceVersion"),
            type = "string",
            name = "sourceVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.VpcConfig = schema.new({
    id = id.from(_N, "VpcConfig"),
    type = "structure",
    members = {
        vpcId = schema.new({
            id = id.from(_N, "VpcConfig", "vpcId"),
            type = "string",
            name = "vpcId",
            target_id = prelude.String.id,
        }),
        subnets = schema.new({
            id = id.from(_N, "VpcConfig", "subnets"),
            type = "list",
            name = "subnets",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        securityGroupIds = schema.new({
            id = id.from(_N, "VpcConfig", "securityGroupIds"),
            type = "list",
            name = "securityGroupIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.BuildBatch = schema.new({
    id = id.from(_N, "BuildBatch"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "BuildBatch", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "BuildBatch", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        startTime = schema.new({
            id = id.from(_N, "BuildBatch", "startTime"),
            type = "timestamp",
            name = "startTime",
            target_id = prelude.Timestamp.id,
        }),
        endTime = schema.new({
            id = id.from(_N, "BuildBatch", "endTime"),
            type = "timestamp",
            name = "endTime",
            target_id = prelude.Timestamp.id,
        }),
        currentPhase = schema.new({
            id = id.from(_N, "BuildBatch", "currentPhase"),
            type = "string",
            name = "currentPhase",
            target_id = prelude.String.id,
        }),
        buildBatchStatus = schema.new({
            id = id.from(_N, "BuildBatch", "buildBatchStatus"),
            type = "string",
            name = "buildBatchStatus",
            target_id = prelude.String.id,
        }),
        sourceVersion = schema.new({
            id = id.from(_N, "BuildBatch", "sourceVersion"),
            type = "string",
            name = "sourceVersion",
            target_id = prelude.String.id,
        }),
        resolvedSourceVersion = schema.new({
            id = id.from(_N, "BuildBatch", "resolvedSourceVersion"),
            type = "string",
            name = "resolvedSourceVersion",
            target_id = prelude.String.id,
        }),
        projectName = schema.new({
            id = id.from(_N, "BuildBatch", "projectName"),
            type = "string",
            name = "projectName",
            target_id = prelude.String.id,
        }),
        phases = schema.new({
            id = id.from(_N, "BuildBatch", "phases"),
            type = "list",
            name = "phases",
            target_id = prelude.Document.id,
            list_member = M.BuildBatchPhase,
        }),
        source = schema.new({
            id = id.from(_N, "BuildBatch", "source"),
            type = "structure",
            name = "source",
            target_id = id.from(_N, "ProjectSource"),
            target = M.ProjectSource,
        }),
        secondarySources = schema.new({
            id = id.from(_N, "BuildBatch", "secondarySources"),
            type = "list",
            name = "secondarySources",
            target_id = prelude.Document.id,
            list_member = M.ProjectSource,
        }),
        secondarySourceVersions = schema.new({
            id = id.from(_N, "BuildBatch", "secondarySourceVersions"),
            type = "list",
            name = "secondarySourceVersions",
            target_id = prelude.Document.id,
            list_member = M.ProjectSourceVersion,
        }),
        artifacts = schema.new({
            id = id.from(_N, "BuildBatch", "artifacts"),
            type = "structure",
            name = "artifacts",
            target_id = id.from(_N, "BuildArtifacts"),
            target = M.BuildArtifacts,
        }),
        secondaryArtifacts = schema.new({
            id = id.from(_N, "BuildBatch", "secondaryArtifacts"),
            type = "list",
            name = "secondaryArtifacts",
            target_id = prelude.Document.id,
            list_member = M.BuildArtifacts,
        }),
        cache = schema.new({
            id = id.from(_N, "BuildBatch", "cache"),
            type = "structure",
            name = "cache",
            target_id = id.from(_N, "ProjectCache"),
            target = M.ProjectCache,
        }),
        environment = schema.new({
            id = id.from(_N, "BuildBatch", "environment"),
            type = "structure",
            name = "environment",
            target_id = id.from(_N, "ProjectEnvironment"),
            target = M.ProjectEnvironment,
        }),
        serviceRole = schema.new({
            id = id.from(_N, "BuildBatch", "serviceRole"),
            type = "string",
            name = "serviceRole",
            target_id = prelude.String.id,
        }),
        logConfig = schema.new({
            id = id.from(_N, "BuildBatch", "logConfig"),
            type = "structure",
            name = "logConfig",
            target_id = id.from(_N, "LogsConfig"),
            target = M.LogsConfig,
        }),
        buildTimeoutInMinutes = schema.new({
            id = id.from(_N, "BuildBatch", "buildTimeoutInMinutes"),
            type = "integer",
            name = "buildTimeoutInMinutes",
            target_id = prelude.Integer.id,
        }),
        queuedTimeoutInMinutes = schema.new({
            id = id.from(_N, "BuildBatch", "queuedTimeoutInMinutes"),
            type = "integer",
            name = "queuedTimeoutInMinutes",
            target_id = prelude.Integer.id,
        }),
        complete = schema.new({
            id = id.from(_N, "BuildBatch", "complete"),
            type = "boolean",
            name = "complete",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        initiator = schema.new({
            id = id.from(_N, "BuildBatch", "initiator"),
            type = "string",
            name = "initiator",
            target_id = prelude.String.id,
        }),
        vpcConfig = schema.new({
            id = id.from(_N, "BuildBatch", "vpcConfig"),
            type = "structure",
            name = "vpcConfig",
            target_id = id.from(_N, "VpcConfig"),
            target = M.VpcConfig,
        }),
        encryptionKey = schema.new({
            id = id.from(_N, "BuildBatch", "encryptionKey"),
            type = "string",
            name = "encryptionKey",
            target_id = prelude.String.id,
        }),
        buildBatchNumber = schema.new({
            id = id.from(_N, "BuildBatch", "buildBatchNumber"),
            type = "long",
            name = "buildBatchNumber",
            target_id = prelude.Long.id,
        }),
        fileSystemLocations = schema.new({
            id = id.from(_N, "BuildBatch", "fileSystemLocations"),
            type = "list",
            name = "fileSystemLocations",
            target_id = prelude.Document.id,
            list_member = M.ProjectFileSystemLocation,
        }),
        buildBatchConfig = schema.new({
            id = id.from(_N, "BuildBatch", "buildBatchConfig"),
            type = "structure",
            name = "buildBatchConfig",
            target_id = id.from(_N, "ProjectBuildBatchConfig"),
            target = M.ProjectBuildBatchConfig,
        }),
        buildGroups = schema.new({
            id = id.from(_N, "BuildBatch", "buildGroups"),
            type = "list",
            name = "buildGroups",
            target_id = prelude.Document.id,
            list_member = M.BuildGroup,
        }),
        debugSessionEnabled = schema.new({
            id = id.from(_N, "BuildBatch", "debugSessionEnabled"),
            type = "boolean",
            name = "debugSessionEnabled",
            target_id = prelude.Boolean.id,
        }),
        reportArns = schema.new({
            id = id.from(_N, "BuildBatch", "reportArns"),
            type = "list",
            name = "reportArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.BatchGetBuildBatchesOutput = schema.new({
    id = id.from(_N, "BatchGetBuildBatchesOutput"),
    type = "structure",
    members = {
        buildBatches = schema.new({
            id = id.from(_N, "BatchGetBuildBatchesOutput", "buildBatches"),
            type = "list",
            name = "buildBatches",
            target_id = prelude.Document.id,
            list_member = M.BuildBatch,
        }),
        buildBatchesNotFound = schema.new({
            id = id.from(_N, "BatchGetBuildBatchesOutput", "buildBatchesNotFound"),
            type = "list",
            name = "buildBatchesNotFound",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.BatchGetBuildsInput = schema.new({
    id = id.from(_N, "BatchGetBuildsInput"),
    type = "structure",
    members = {
        ids = schema.new({
            id = id.from(_N, "BatchGetBuildsInput", "ids"),
            type = "list",
            name = "ids",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DebugSession = schema.new({
    id = id.from(_N, "DebugSession"),
    type = "structure",
    members = {
        sessionEnabled = schema.new({
            id = id.from(_N, "DebugSession", "sessionEnabled"),
            type = "boolean",
            name = "sessionEnabled",
            target_id = prelude.Boolean.id,
        }),
        sessionTarget = schema.new({
            id = id.from(_N, "DebugSession", "sessionTarget"),
            type = "string",
            name = "sessionTarget",
            target_id = prelude.String.id,
        }),
    },
})

M.ExportedEnvironmentVariable = schema.new({
    id = id.from(_N, "ExportedEnvironmentVariable"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "ExportedEnvironmentVariable", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        value = schema.new({
            id = id.from(_N, "ExportedEnvironmentVariable", "value"),
            type = "string",
            name = "value",
            target_id = prelude.String.id,
        }),
    },
})

M.LogsLocation = schema.new({
    id = id.from(_N, "LogsLocation"),
    type = "structure",
    members = {
        groupName = schema.new({
            id = id.from(_N, "LogsLocation", "groupName"),
            type = "string",
            name = "groupName",
            target_id = prelude.String.id,
        }),
        streamName = schema.new({
            id = id.from(_N, "LogsLocation", "streamName"),
            type = "string",
            name = "streamName",
            target_id = prelude.String.id,
        }),
        deepLink = schema.new({
            id = id.from(_N, "LogsLocation", "deepLink"),
            type = "string",
            name = "deepLink",
            target_id = prelude.String.id,
        }),
        s3DeepLink = schema.new({
            id = id.from(_N, "LogsLocation", "s3DeepLink"),
            type = "string",
            name = "s3DeepLink",
            target_id = prelude.String.id,
        }),
        cloudWatchLogsArn = schema.new({
            id = id.from(_N, "LogsLocation", "cloudWatchLogsArn"),
            type = "string",
            name = "cloudWatchLogsArn",
            target_id = prelude.String.id,
        }),
        s3LogsArn = schema.new({
            id = id.from(_N, "LogsLocation", "s3LogsArn"),
            type = "string",
            name = "s3LogsArn",
            target_id = prelude.String.id,
        }),
        cloudWatchLogs = schema.new({
            id = id.from(_N, "LogsLocation", "cloudWatchLogs"),
            type = "structure",
            name = "cloudWatchLogs",
            target_id = id.from(_N, "CloudWatchLogsConfig"),
            target = M.CloudWatchLogsConfig,
        }),
        s3Logs = schema.new({
            id = id.from(_N, "LogsLocation", "s3Logs"),
            type = "structure",
            name = "s3Logs",
            target_id = id.from(_N, "S3LogsConfig"),
            target = M.S3LogsConfig,
        }),
    },
})

M.NetworkInterface = schema.new({
    id = id.from(_N, "NetworkInterface"),
    type = "structure",
    members = {
        subnetId = schema.new({
            id = id.from(_N, "NetworkInterface", "subnetId"),
            type = "string",
            name = "subnetId",
            target_id = prelude.String.id,
        }),
        networkInterfaceId = schema.new({
            id = id.from(_N, "NetworkInterface", "networkInterfaceId"),
            type = "string",
            name = "networkInterfaceId",
            target_id = prelude.String.id,
        }),
    },
})

M.BuildPhase = schema.new({
    id = id.from(_N, "BuildPhase"),
    type = "structure",
    members = {
        phaseType = schema.new({
            id = id.from(_N, "BuildPhase", "phaseType"),
            type = "string",
            name = "phaseType",
            target_id = prelude.String.id,
        }),
        phaseStatus = schema.new({
            id = id.from(_N, "BuildPhase", "phaseStatus"),
            type = "string",
            name = "phaseStatus",
            target_id = prelude.String.id,
        }),
        startTime = schema.new({
            id = id.from(_N, "BuildPhase", "startTime"),
            type = "timestamp",
            name = "startTime",
            target_id = prelude.Timestamp.id,
        }),
        endTime = schema.new({
            id = id.from(_N, "BuildPhase", "endTime"),
            type = "timestamp",
            name = "endTime",
            target_id = prelude.Timestamp.id,
        }),
        durationInSeconds = schema.new({
            id = id.from(_N, "BuildPhase", "durationInSeconds"),
            type = "long",
            name = "durationInSeconds",
            target_id = prelude.Long.id,
        }),
        contexts = schema.new({
            id = id.from(_N, "BuildPhase", "contexts"),
            type = "list",
            name = "contexts",
            target_id = prelude.Document.id,
            list_member = M.PhaseContext,
        }),
    },
})

M.Build = schema.new({
    id = id.from(_N, "Build"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "Build", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "Build", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        buildNumber = schema.new({
            id = id.from(_N, "Build", "buildNumber"),
            type = "long",
            name = "buildNumber",
            target_id = prelude.Long.id,
        }),
        startTime = schema.new({
            id = id.from(_N, "Build", "startTime"),
            type = "timestamp",
            name = "startTime",
            target_id = prelude.Timestamp.id,
        }),
        endTime = schema.new({
            id = id.from(_N, "Build", "endTime"),
            type = "timestamp",
            name = "endTime",
            target_id = prelude.Timestamp.id,
        }),
        currentPhase = schema.new({
            id = id.from(_N, "Build", "currentPhase"),
            type = "string",
            name = "currentPhase",
            target_id = prelude.String.id,
        }),
        buildStatus = schema.new({
            id = id.from(_N, "Build", "buildStatus"),
            type = "string",
            name = "buildStatus",
            target_id = prelude.String.id,
        }),
        sourceVersion = schema.new({
            id = id.from(_N, "Build", "sourceVersion"),
            type = "string",
            name = "sourceVersion",
            target_id = prelude.String.id,
        }),
        resolvedSourceVersion = schema.new({
            id = id.from(_N, "Build", "resolvedSourceVersion"),
            type = "string",
            name = "resolvedSourceVersion",
            target_id = prelude.String.id,
        }),
        projectName = schema.new({
            id = id.from(_N, "Build", "projectName"),
            type = "string",
            name = "projectName",
            target_id = prelude.String.id,
        }),
        phases = schema.new({
            id = id.from(_N, "Build", "phases"),
            type = "list",
            name = "phases",
            target_id = prelude.Document.id,
            list_member = M.BuildPhase,
        }),
        source = schema.new({
            id = id.from(_N, "Build", "source"),
            type = "structure",
            name = "source",
            target_id = id.from(_N, "ProjectSource"),
            target = M.ProjectSource,
        }),
        secondarySources = schema.new({
            id = id.from(_N, "Build", "secondarySources"),
            type = "list",
            name = "secondarySources",
            target_id = prelude.Document.id,
            list_member = M.ProjectSource,
        }),
        secondarySourceVersions = schema.new({
            id = id.from(_N, "Build", "secondarySourceVersions"),
            type = "list",
            name = "secondarySourceVersions",
            target_id = prelude.Document.id,
            list_member = M.ProjectSourceVersion,
        }),
        artifacts = schema.new({
            id = id.from(_N, "Build", "artifacts"),
            type = "structure",
            name = "artifacts",
            target_id = id.from(_N, "BuildArtifacts"),
            target = M.BuildArtifacts,
        }),
        secondaryArtifacts = schema.new({
            id = id.from(_N, "Build", "secondaryArtifacts"),
            type = "list",
            name = "secondaryArtifacts",
            target_id = prelude.Document.id,
            list_member = M.BuildArtifacts,
        }),
        cache = schema.new({
            id = id.from(_N, "Build", "cache"),
            type = "structure",
            name = "cache",
            target_id = id.from(_N, "ProjectCache"),
            target = M.ProjectCache,
        }),
        environment = schema.new({
            id = id.from(_N, "Build", "environment"),
            type = "structure",
            name = "environment",
            target_id = id.from(_N, "ProjectEnvironment"),
            target = M.ProjectEnvironment,
        }),
        serviceRole = schema.new({
            id = id.from(_N, "Build", "serviceRole"),
            type = "string",
            name = "serviceRole",
            target_id = prelude.String.id,
        }),
        logs = schema.new({
            id = id.from(_N, "Build", "logs"),
            type = "structure",
            name = "logs",
            target_id = id.from(_N, "LogsLocation"),
            target = M.LogsLocation,
        }),
        timeoutInMinutes = schema.new({
            id = id.from(_N, "Build", "timeoutInMinutes"),
            type = "integer",
            name = "timeoutInMinutes",
            target_id = prelude.Integer.id,
        }),
        queuedTimeoutInMinutes = schema.new({
            id = id.from(_N, "Build", "queuedTimeoutInMinutes"),
            type = "integer",
            name = "queuedTimeoutInMinutes",
            target_id = prelude.Integer.id,
        }),
        buildComplete = schema.new({
            id = id.from(_N, "Build", "buildComplete"),
            type = "boolean",
            name = "buildComplete",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        initiator = schema.new({
            id = id.from(_N, "Build", "initiator"),
            type = "string",
            name = "initiator",
            target_id = prelude.String.id,
        }),
        vpcConfig = schema.new({
            id = id.from(_N, "Build", "vpcConfig"),
            type = "structure",
            name = "vpcConfig",
            target_id = id.from(_N, "VpcConfig"),
            target = M.VpcConfig,
        }),
        networkInterface = schema.new({
            id = id.from(_N, "Build", "networkInterface"),
            type = "structure",
            name = "networkInterface",
            target_id = id.from(_N, "NetworkInterface"),
            target = M.NetworkInterface,
        }),
        encryptionKey = schema.new({
            id = id.from(_N, "Build", "encryptionKey"),
            type = "string",
            name = "encryptionKey",
            target_id = prelude.String.id,
        }),
        exportedEnvironmentVariables = schema.new({
            id = id.from(_N, "Build", "exportedEnvironmentVariables"),
            type = "list",
            name = "exportedEnvironmentVariables",
            target_id = prelude.Document.id,
            list_member = M.ExportedEnvironmentVariable,
        }),
        reportArns = schema.new({
            id = id.from(_N, "Build", "reportArns"),
            type = "list",
            name = "reportArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        fileSystemLocations = schema.new({
            id = id.from(_N, "Build", "fileSystemLocations"),
            type = "list",
            name = "fileSystemLocations",
            target_id = prelude.Document.id,
            list_member = M.ProjectFileSystemLocation,
        }),
        debugSession = schema.new({
            id = id.from(_N, "Build", "debugSession"),
            type = "structure",
            name = "debugSession",
            target_id = id.from(_N, "DebugSession"),
            target = M.DebugSession,
        }),
        buildBatchArn = schema.new({
            id = id.from(_N, "Build", "buildBatchArn"),
            type = "string",
            name = "buildBatchArn",
            target_id = prelude.String.id,
        }),
        autoRetryConfig = schema.new({
            id = id.from(_N, "Build", "autoRetryConfig"),
            type = "structure",
            name = "autoRetryConfig",
            target_id = id.from(_N, "AutoRetryConfig"),
            target = M.AutoRetryConfig,
        }),
    },
})

M.BatchGetBuildsOutput = schema.new({
    id = id.from(_N, "BatchGetBuildsOutput"),
    type = "structure",
    members = {
        builds = schema.new({
            id = id.from(_N, "BatchGetBuildsOutput", "builds"),
            type = "list",
            name = "builds",
            target_id = prelude.Document.id,
            list_member = M.Build,
        }),
        buildsNotFound = schema.new({
            id = id.from(_N, "BatchGetBuildsOutput", "buildsNotFound"),
            type = "list",
            name = "buildsNotFound",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.BatchGetCommandExecutionsInput = schema.new({
    id = id.from(_N, "BatchGetCommandExecutionsInput"),
    type = "structure",
    members = {
        sandboxId = schema.new({
            id = id.from(_N, "BatchGetCommandExecutionsInput", "sandboxId"),
            type = "string",
            name = "sandboxId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        commandExecutionIds = schema.new({
            id = id.from(_N, "BatchGetCommandExecutionsInput", "commandExecutionIds"),
            type = "list",
            name = "commandExecutionIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CommandExecution = schema.new({
    id = id.from(_N, "CommandExecution"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "CommandExecution", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        sandboxId = schema.new({
            id = id.from(_N, "CommandExecution", "sandboxId"),
            type = "string",
            name = "sandboxId",
            target_id = prelude.String.id,
        }),
        submitTime = schema.new({
            id = id.from(_N, "CommandExecution", "submitTime"),
            type = "timestamp",
            name = "submitTime",
            target_id = prelude.Timestamp.id,
        }),
        startTime = schema.new({
            id = id.from(_N, "CommandExecution", "startTime"),
            type = "timestamp",
            name = "startTime",
            target_id = prelude.Timestamp.id,
        }),
        endTime = schema.new({
            id = id.from(_N, "CommandExecution", "endTime"),
            type = "timestamp",
            name = "endTime",
            target_id = prelude.Timestamp.id,
        }),
        status = schema.new({
            id = id.from(_N, "CommandExecution", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        command = schema.new({
            id = id.from(_N, "CommandExecution", "command"),
            type = "string",
            name = "command",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "CommandExecution", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        exitCode = schema.new({
            id = id.from(_N, "CommandExecution", "exitCode"),
            type = "string",
            name = "exitCode",
            target_id = prelude.String.id,
        }),
        standardOutputContent = schema.new({
            id = id.from(_N, "CommandExecution", "standardOutputContent"),
            type = "string",
            name = "standardOutputContent",
            target_id = prelude.String.id,
        }),
        standardErrContent = schema.new({
            id = id.from(_N, "CommandExecution", "standardErrContent"),
            type = "string",
            name = "standardErrContent",
            target_id = prelude.String.id,
        }),
        logs = schema.new({
            id = id.from(_N, "CommandExecution", "logs"),
            type = "structure",
            name = "logs",
            target_id = id.from(_N, "LogsLocation"),
            target = M.LogsLocation,
        }),
        sandboxArn = schema.new({
            id = id.from(_N, "CommandExecution", "sandboxArn"),
            type = "string",
            name = "sandboxArn",
            target_id = prelude.String.id,
        }),
    },
})

M.BatchGetCommandExecutionsOutput = schema.new({
    id = id.from(_N, "BatchGetCommandExecutionsOutput"),
    type = "structure",
    members = {
        commandExecutions = schema.new({
            id = id.from(_N, "BatchGetCommandExecutionsOutput", "commandExecutions"),
            type = "list",
            name = "commandExecutions",
            target_id = prelude.Document.id,
            list_member = M.CommandExecution,
        }),
        commandExecutionsNotFound = schema.new({
            id = id.from(_N, "BatchGetCommandExecutionsOutput", "commandExecutionsNotFound"),
            type = "list",
            name = "commandExecutionsNotFound",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.BatchGetFleetsInput = schema.new({
    id = id.from(_N, "BatchGetFleetsInput"),
    type = "structure",
    members = {
        names = schema.new({
            id = id.from(_N, "BatchGetFleetsInput", "names"),
            type = "list",
            name = "names",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.FleetProxyRule = schema.new({
    id = id.from(_N, "FleetProxyRule"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "FleetProxyRule", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        effect = schema.new({
            id = id.from(_N, "FleetProxyRule", "effect"),
            type = "string",
            name = "effect",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        entities = schema.new({
            id = id.from(_N, "FleetProxyRule", "entities"),
            type = "list",
            name = "entities",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ProxyConfiguration = schema.new({
    id = id.from(_N, "ProxyConfiguration"),
    type = "structure",
    members = {
        defaultBehavior = schema.new({
            id = id.from(_N, "ProxyConfiguration", "defaultBehavior"),
            type = "string",
            name = "defaultBehavior",
            target_id = prelude.String.id,
        }),
        orderedProxyRules = schema.new({
            id = id.from(_N, "ProxyConfiguration", "orderedProxyRules"),
            type = "list",
            name = "orderedProxyRules",
            target_id = prelude.Document.id,
            list_member = M.FleetProxyRule,
        }),
    },
})

M.TargetTrackingScalingConfiguration = schema.new({
    id = id.from(_N, "TargetTrackingScalingConfiguration"),
    type = "structure",
    members = {
        metricType = schema.new({
            id = id.from(_N, "TargetTrackingScalingConfiguration", "metricType"),
            type = "string",
            name = "metricType",
            target_id = prelude.String.id,
        }),
        targetValue = schema.new({
            id = id.from(_N, "TargetTrackingScalingConfiguration", "targetValue"),
            type = "double",
            name = "targetValue",
            target_id = prelude.Double.id,
        }),
    },
})

M.ScalingConfigurationOutput = schema.new({
    id = id.from(_N, "ScalingConfigurationOutput"),
    type = "structure",
    members = {
        scalingType = schema.new({
            id = id.from(_N, "ScalingConfigurationOutput", "scalingType"),
            type = "string",
            name = "scalingType",
            target_id = prelude.String.id,
        }),
        targetTrackingScalingConfigs = schema.new({
            id = id.from(_N, "ScalingConfigurationOutput", "targetTrackingScalingConfigs"),
            type = "list",
            name = "targetTrackingScalingConfigs",
            target_id = prelude.Document.id,
            list_member = M.TargetTrackingScalingConfiguration,
        }),
        maxCapacity = schema.new({
            id = id.from(_N, "ScalingConfigurationOutput", "maxCapacity"),
            type = "integer",
            name = "maxCapacity",
            target_id = prelude.Integer.id,
        }),
        desiredCapacity = schema.new({
            id = id.from(_N, "ScalingConfigurationOutput", "desiredCapacity"),
            type = "integer",
            name = "desiredCapacity",
            target_id = prelude.Integer.id,
        }),
    },
})

M.FleetStatus = schema.new({
    id = id.from(_N, "FleetStatus"),
    type = "structure",
    members = {
        statusCode = schema.new({
            id = id.from(_N, "FleetStatus", "statusCode"),
            type = "string",
            name = "statusCode",
            target_id = prelude.String.id,
        }),
        context = schema.new({
            id = id.from(_N, "FleetStatus", "context"),
            type = "string",
            name = "context",
            target_id = prelude.String.id,
        }),
        message = schema.new({
            id = id.from(_N, "FleetStatus", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.Tag = schema.new({
    id = id.from(_N, "Tag"),
    type = "structure",
    members = {
        key = schema.new({
            id = id.from(_N, "Tag", "key"),
            type = "string",
            name = "key",
            target_id = prelude.String.id,
        }),
        value = schema.new({
            id = id.from(_N, "Tag", "value"),
            type = "string",
            name = "value",
            target_id = prelude.String.id,
        }),
    },
})

M.Fleet = schema.new({
    id = id.from(_N, "Fleet"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "Fleet", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "Fleet", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        id = schema.new({
            id = id.from(_N, "Fleet", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        created = schema.new({
            id = id.from(_N, "Fleet", "created"),
            type = "timestamp",
            name = "created",
            target_id = prelude.Timestamp.id,
        }),
        lastModified = schema.new({
            id = id.from(_N, "Fleet", "lastModified"),
            type = "timestamp",
            name = "lastModified",
            target_id = prelude.Timestamp.id,
        }),
        status = schema.new({
            id = id.from(_N, "Fleet", "status"),
            type = "structure",
            name = "status",
            target_id = id.from(_N, "FleetStatus"),
            target = M.FleetStatus,
        }),
        baseCapacity = schema.new({
            id = id.from(_N, "Fleet", "baseCapacity"),
            type = "integer",
            name = "baseCapacity",
            target_id = prelude.Integer.id,
        }),
        environmentType = schema.new({
            id = id.from(_N, "Fleet", "environmentType"),
            type = "string",
            name = "environmentType",
            target_id = prelude.String.id,
        }),
        computeType = schema.new({
            id = id.from(_N, "Fleet", "computeType"),
            type = "string",
            name = "computeType",
            target_id = prelude.String.id,
        }),
        computeConfiguration = schema.new({
            id = id.from(_N, "Fleet", "computeConfiguration"),
            type = "structure",
            name = "computeConfiguration",
            target_id = id.from(_N, "ComputeConfiguration"),
            target = M.ComputeConfiguration,
        }),
        scalingConfiguration = schema.new({
            id = id.from(_N, "Fleet", "scalingConfiguration"),
            type = "structure",
            name = "scalingConfiguration",
            target_id = id.from(_N, "ScalingConfigurationOutput"),
            target = M.ScalingConfigurationOutput,
        }),
        overflowBehavior = schema.new({
            id = id.from(_N, "Fleet", "overflowBehavior"),
            type = "string",
            name = "overflowBehavior",
            target_id = prelude.String.id,
        }),
        vpcConfig = schema.new({
            id = id.from(_N, "Fleet", "vpcConfig"),
            type = "structure",
            name = "vpcConfig",
            target_id = id.from(_N, "VpcConfig"),
            target = M.VpcConfig,
        }),
        proxyConfiguration = schema.new({
            id = id.from(_N, "Fleet", "proxyConfiguration"),
            type = "structure",
            name = "proxyConfiguration",
            target_id = id.from(_N, "ProxyConfiguration"),
            target = M.ProxyConfiguration,
        }),
        imageId = schema.new({
            id = id.from(_N, "Fleet", "imageId"),
            type = "string",
            name = "imageId",
            target_id = prelude.String.id,
        }),
        fleetServiceRole = schema.new({
            id = id.from(_N, "Fleet", "fleetServiceRole"),
            type = "string",
            name = "fleetServiceRole",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "Fleet", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.BatchGetFleetsOutput = schema.new({
    id = id.from(_N, "BatchGetFleetsOutput"),
    type = "structure",
    members = {
        fleets = schema.new({
            id = id.from(_N, "BatchGetFleetsOutput", "fleets"),
            type = "list",
            name = "fleets",
            target_id = prelude.Document.id,
            list_member = M.Fleet,
        }),
        fleetsNotFound = schema.new({
            id = id.from(_N, "BatchGetFleetsOutput", "fleetsNotFound"),
            type = "list",
            name = "fleetsNotFound",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.BatchGetProjectsInput = schema.new({
    id = id.from(_N, "BatchGetProjectsInput"),
    type = "structure",
    members = {
        names = schema.new({
            id = id.from(_N, "BatchGetProjectsInput", "names"),
            type = "list",
            name = "names",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ProjectArtifacts = schema.new({
    id = id.from(_N, "ProjectArtifacts"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "ProjectArtifacts", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        location = schema.new({
            id = id.from(_N, "ProjectArtifacts", "location"),
            type = "string",
            name = "location",
            target_id = prelude.String.id,
        }),
        path = schema.new({
            id = id.from(_N, "ProjectArtifacts", "path"),
            type = "string",
            name = "path",
            target_id = prelude.String.id,
        }),
        namespaceType = schema.new({
            id = id.from(_N, "ProjectArtifacts", "namespaceType"),
            type = "string",
            name = "namespaceType",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "ProjectArtifacts", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        packaging = schema.new({
            id = id.from(_N, "ProjectArtifacts", "packaging"),
            type = "string",
            name = "packaging",
            target_id = prelude.String.id,
        }),
        overrideArtifactName = schema.new({
            id = id.from(_N, "ProjectArtifacts", "overrideArtifactName"),
            type = "boolean",
            name = "overrideArtifactName",
            target_id = prelude.Boolean.id,
        }),
        encryptionDisabled = schema.new({
            id = id.from(_N, "ProjectArtifacts", "encryptionDisabled"),
            type = "boolean",
            name = "encryptionDisabled",
            target_id = prelude.Boolean.id,
        }),
        artifactIdentifier = schema.new({
            id = id.from(_N, "ProjectArtifacts", "artifactIdentifier"),
            type = "string",
            name = "artifactIdentifier",
            target_id = prelude.String.id,
        }),
        bucketOwnerAccess = schema.new({
            id = id.from(_N, "ProjectArtifacts", "bucketOwnerAccess"),
            type = "string",
            name = "bucketOwnerAccess",
            target_id = prelude.String.id,
        }),
    },
})

M.ProjectBadge = schema.new({
    id = id.from(_N, "ProjectBadge"),
    type = "structure",
    members = {
        badgeEnabled = schema.new({
            id = id.from(_N, "ProjectBadge", "badgeEnabled"),
            type = "boolean",
            name = "badgeEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        badgeRequestUrl = schema.new({
            id = id.from(_N, "ProjectBadge", "badgeRequestUrl"),
            type = "string",
            name = "badgeRequestUrl",
            target_id = prelude.String.id,
        }),
    },
})

M.WebhookFilter = schema.new({
    id = id.from(_N, "WebhookFilter"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "WebhookFilter", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        pattern = schema.new({
            id = id.from(_N, "WebhookFilter", "pattern"),
            type = "string",
            name = "pattern",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        excludeMatchedPattern = schema.new({
            id = id.from(_N, "WebhookFilter", "excludeMatchedPattern"),
            type = "boolean",
            name = "excludeMatchedPattern",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.PullRequestBuildPolicy = schema.new({
    id = id.from(_N, "PullRequestBuildPolicy"),
    type = "structure",
    members = {
        requiresCommentApproval = schema.new({
            id = id.from(_N, "PullRequestBuildPolicy", "requiresCommentApproval"),
            type = "string",
            name = "requiresCommentApproval",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        approverRoles = schema.new({
            id = id.from(_N, "PullRequestBuildPolicy", "approverRoles"),
            type = "list",
            name = "approverRoles",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ScopeConfiguration = schema.new({
    id = id.from(_N, "ScopeConfiguration"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "ScopeConfiguration", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        domain = schema.new({
            id = id.from(_N, "ScopeConfiguration", "domain"),
            type = "string",
            name = "domain",
            target_id = prelude.String.id,
        }),
        scope = schema.new({
            id = id.from(_N, "ScopeConfiguration", "scope"),
            type = "string",
            name = "scope",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Webhook = schema.new({
    id = id.from(_N, "Webhook"),
    type = "structure",
    members = {
        url = schema.new({
            id = id.from(_N, "Webhook", "url"),
            type = "string",
            name = "url",
            target_id = prelude.String.id,
        }),
        payloadUrl = schema.new({
            id = id.from(_N, "Webhook", "payloadUrl"),
            type = "string",
            name = "payloadUrl",
            target_id = prelude.String.id,
        }),
        secret = schema.new({
            id = id.from(_N, "Webhook", "secret"),
            type = "string",
            name = "secret",
            target_id = prelude.String.id,
        }),
        branchFilter = schema.new({
            id = id.from(_N, "Webhook", "branchFilter"),
            type = "string",
            name = "branchFilter",
            target_id = prelude.String.id,
        }),
        filterGroups = schema.new({
            id = id.from(_N, "Webhook", "filterGroups"),
            type = "list",
            name = "filterGroups",
            target_id = prelude.Document.id,
            list_member = prelude.Document,
        }),
        buildType = schema.new({
            id = id.from(_N, "Webhook", "buildType"),
            type = "string",
            name = "buildType",
            target_id = prelude.String.id,
        }),
        manualCreation = schema.new({
            id = id.from(_N, "Webhook", "manualCreation"),
            type = "boolean",
            name = "manualCreation",
            target_id = prelude.Boolean.id,
        }),
        lastModifiedSecret = schema.new({
            id = id.from(_N, "Webhook", "lastModifiedSecret"),
            type = "timestamp",
            name = "lastModifiedSecret",
            target_id = prelude.Timestamp.id,
        }),
        scopeConfiguration = schema.new({
            id = id.from(_N, "Webhook", "scopeConfiguration"),
            type = "structure",
            name = "scopeConfiguration",
            target_id = id.from(_N, "ScopeConfiguration"),
            target = M.ScopeConfiguration,
        }),
        status = schema.new({
            id = id.from(_N, "Webhook", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        statusMessage = schema.new({
            id = id.from(_N, "Webhook", "statusMessage"),
            type = "string",
            name = "statusMessage",
            target_id = prelude.String.id,
        }),
        pullRequestBuildPolicy = schema.new({
            id = id.from(_N, "Webhook", "pullRequestBuildPolicy"),
            type = "structure",
            name = "pullRequestBuildPolicy",
            target_id = id.from(_N, "PullRequestBuildPolicy"),
            target = M.PullRequestBuildPolicy,
        }),
    },
})

M.Project = schema.new({
    id = id.from(_N, "Project"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "Project", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "Project", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "Project", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        source = schema.new({
            id = id.from(_N, "Project", "source"),
            type = "structure",
            name = "source",
            target_id = id.from(_N, "ProjectSource"),
            target = M.ProjectSource,
        }),
        secondarySources = schema.new({
            id = id.from(_N, "Project", "secondarySources"),
            type = "list",
            name = "secondarySources",
            target_id = prelude.Document.id,
            list_member = M.ProjectSource,
        }),
        sourceVersion = schema.new({
            id = id.from(_N, "Project", "sourceVersion"),
            type = "string",
            name = "sourceVersion",
            target_id = prelude.String.id,
        }),
        secondarySourceVersions = schema.new({
            id = id.from(_N, "Project", "secondarySourceVersions"),
            type = "list",
            name = "secondarySourceVersions",
            target_id = prelude.Document.id,
            list_member = M.ProjectSourceVersion,
        }),
        artifacts = schema.new({
            id = id.from(_N, "Project", "artifacts"),
            type = "structure",
            name = "artifacts",
            target_id = id.from(_N, "ProjectArtifacts"),
            target = M.ProjectArtifacts,
        }),
        secondaryArtifacts = schema.new({
            id = id.from(_N, "Project", "secondaryArtifacts"),
            type = "list",
            name = "secondaryArtifacts",
            target_id = prelude.Document.id,
            list_member = M.ProjectArtifacts,
        }),
        cache = schema.new({
            id = id.from(_N, "Project", "cache"),
            type = "structure",
            name = "cache",
            target_id = id.from(_N, "ProjectCache"),
            target = M.ProjectCache,
        }),
        environment = schema.new({
            id = id.from(_N, "Project", "environment"),
            type = "structure",
            name = "environment",
            target_id = id.from(_N, "ProjectEnvironment"),
            target = M.ProjectEnvironment,
        }),
        serviceRole = schema.new({
            id = id.from(_N, "Project", "serviceRole"),
            type = "string",
            name = "serviceRole",
            target_id = prelude.String.id,
        }),
        timeoutInMinutes = schema.new({
            id = id.from(_N, "Project", "timeoutInMinutes"),
            type = "integer",
            name = "timeoutInMinutes",
            target_id = prelude.Integer.id,
        }),
        queuedTimeoutInMinutes = schema.new({
            id = id.from(_N, "Project", "queuedTimeoutInMinutes"),
            type = "integer",
            name = "queuedTimeoutInMinutes",
            target_id = prelude.Integer.id,
        }),
        encryptionKey = schema.new({
            id = id.from(_N, "Project", "encryptionKey"),
            type = "string",
            name = "encryptionKey",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "Project", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        created = schema.new({
            id = id.from(_N, "Project", "created"),
            type = "timestamp",
            name = "created",
            target_id = prelude.Timestamp.id,
        }),
        lastModified = schema.new({
            id = id.from(_N, "Project", "lastModified"),
            type = "timestamp",
            name = "lastModified",
            target_id = prelude.Timestamp.id,
        }),
        webhook = schema.new({
            id = id.from(_N, "Project", "webhook"),
            type = "structure",
            name = "webhook",
            target_id = id.from(_N, "Webhook"),
            target = M.Webhook,
        }),
        vpcConfig = schema.new({
            id = id.from(_N, "Project", "vpcConfig"),
            type = "structure",
            name = "vpcConfig",
            target_id = id.from(_N, "VpcConfig"),
            target = M.VpcConfig,
        }),
        badge = schema.new({
            id = id.from(_N, "Project", "badge"),
            type = "structure",
            name = "badge",
            target_id = id.from(_N, "ProjectBadge"),
            target = M.ProjectBadge,
        }),
        logsConfig = schema.new({
            id = id.from(_N, "Project", "logsConfig"),
            type = "structure",
            name = "logsConfig",
            target_id = id.from(_N, "LogsConfig"),
            target = M.LogsConfig,
        }),
        fileSystemLocations = schema.new({
            id = id.from(_N, "Project", "fileSystemLocations"),
            type = "list",
            name = "fileSystemLocations",
            target_id = prelude.Document.id,
            list_member = M.ProjectFileSystemLocation,
        }),
        buildBatchConfig = schema.new({
            id = id.from(_N, "Project", "buildBatchConfig"),
            type = "structure",
            name = "buildBatchConfig",
            target_id = id.from(_N, "ProjectBuildBatchConfig"),
            target = M.ProjectBuildBatchConfig,
        }),
        concurrentBuildLimit = schema.new({
            id = id.from(_N, "Project", "concurrentBuildLimit"),
            type = "integer",
            name = "concurrentBuildLimit",
            target_id = prelude.Integer.id,
        }),
        projectVisibility = schema.new({
            id = id.from(_N, "Project", "projectVisibility"),
            type = "string",
            name = "projectVisibility",
            target_id = prelude.String.id,
        }),
        publicProjectAlias = schema.new({
            id = id.from(_N, "Project", "publicProjectAlias"),
            type = "string",
            name = "publicProjectAlias",
            target_id = prelude.String.id,
        }),
        resourceAccessRole = schema.new({
            id = id.from(_N, "Project", "resourceAccessRole"),
            type = "string",
            name = "resourceAccessRole",
            target_id = prelude.String.id,
        }),
        autoRetryLimit = schema.new({
            id = id.from(_N, "Project", "autoRetryLimit"),
            type = "integer",
            name = "autoRetryLimit",
            target_id = prelude.Integer.id,
        }),
    },
})

M.BatchGetProjectsOutput = schema.new({
    id = id.from(_N, "BatchGetProjectsOutput"),
    type = "structure",
    members = {
        projects = schema.new({
            id = id.from(_N, "BatchGetProjectsOutput", "projects"),
            type = "list",
            name = "projects",
            target_id = prelude.Document.id,
            list_member = M.Project,
        }),
        projectsNotFound = schema.new({
            id = id.from(_N, "BatchGetProjectsOutput", "projectsNotFound"),
            type = "list",
            name = "projectsNotFound",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.BatchGetReportGroupsInput = schema.new({
    id = id.from(_N, "BatchGetReportGroupsInput"),
    type = "structure",
    members = {
        reportGroupArns = schema.new({
            id = id.from(_N, "BatchGetReportGroupsInput", "reportGroupArns"),
            type = "list",
            name = "reportGroupArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.S3ReportExportConfig = schema.new({
    id = id.from(_N, "S3ReportExportConfig"),
    type = "structure",
    members = {
        bucket = schema.new({
            id = id.from(_N, "S3ReportExportConfig", "bucket"),
            type = "string",
            name = "bucket",
            target_id = prelude.String.id,
        }),
        bucketOwner = schema.new({
            id = id.from(_N, "S3ReportExportConfig", "bucketOwner"),
            type = "string",
            name = "bucketOwner",
            target_id = prelude.String.id,
        }),
        path = schema.new({
            id = id.from(_N, "S3ReportExportConfig", "path"),
            type = "string",
            name = "path",
            target_id = prelude.String.id,
        }),
        packaging = schema.new({
            id = id.from(_N, "S3ReportExportConfig", "packaging"),
            type = "string",
            name = "packaging",
            target_id = prelude.String.id,
        }),
        encryptionKey = schema.new({
            id = id.from(_N, "S3ReportExportConfig", "encryptionKey"),
            type = "string",
            name = "encryptionKey",
            target_id = prelude.String.id,
        }),
        encryptionDisabled = schema.new({
            id = id.from(_N, "S3ReportExportConfig", "encryptionDisabled"),
            type = "boolean",
            name = "encryptionDisabled",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.ReportExportConfig = schema.new({
    id = id.from(_N, "ReportExportConfig"),
    type = "structure",
    members = {
        exportConfigType = schema.new({
            id = id.from(_N, "ReportExportConfig", "exportConfigType"),
            type = "string",
            name = "exportConfigType",
            target_id = prelude.String.id,
        }),
        s3Destination = schema.new({
            id = id.from(_N, "ReportExportConfig", "s3Destination"),
            type = "structure",
            name = "s3Destination",
            target_id = id.from(_N, "S3ReportExportConfig"),
            target = M.S3ReportExportConfig,
        }),
    },
})

M.ReportGroup = schema.new({
    id = id.from(_N, "ReportGroup"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "ReportGroup", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "ReportGroup", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "ReportGroup", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        exportConfig = schema.new({
            id = id.from(_N, "ReportGroup", "exportConfig"),
            type = "structure",
            name = "exportConfig",
            target_id = id.from(_N, "ReportExportConfig"),
            target = M.ReportExportConfig,
        }),
        created = schema.new({
            id = id.from(_N, "ReportGroup", "created"),
            type = "timestamp",
            name = "created",
            target_id = prelude.Timestamp.id,
        }),
        lastModified = schema.new({
            id = id.from(_N, "ReportGroup", "lastModified"),
            type = "timestamp",
            name = "lastModified",
            target_id = prelude.Timestamp.id,
        }),
        tags = schema.new({
            id = id.from(_N, "ReportGroup", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        status = schema.new({
            id = id.from(_N, "ReportGroup", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
    },
})

M.BatchGetReportGroupsOutput = schema.new({
    id = id.from(_N, "BatchGetReportGroupsOutput"),
    type = "structure",
    members = {
        reportGroups = schema.new({
            id = id.from(_N, "BatchGetReportGroupsOutput", "reportGroups"),
            type = "list",
            name = "reportGroups",
            target_id = prelude.Document.id,
            list_member = M.ReportGroup,
        }),
        reportGroupsNotFound = schema.new({
            id = id.from(_N, "BatchGetReportGroupsOutput", "reportGroupsNotFound"),
            type = "list",
            name = "reportGroupsNotFound",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.BatchGetReportsInput = schema.new({
    id = id.from(_N, "BatchGetReportsInput"),
    type = "structure",
    members = {
        reportArns = schema.new({
            id = id.from(_N, "BatchGetReportsInput", "reportArns"),
            type = "list",
            name = "reportArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CodeCoverageReportSummary = schema.new({
    id = id.from(_N, "CodeCoverageReportSummary"),
    type = "structure",
    members = {
        lineCoveragePercentage = schema.new({
            id = id.from(_N, "CodeCoverageReportSummary", "lineCoveragePercentage"),
            type = "double",
            name = "lineCoveragePercentage",
            target_id = prelude.Double.id,
        }),
        linesCovered = schema.new({
            id = id.from(_N, "CodeCoverageReportSummary", "linesCovered"),
            type = "integer",
            name = "linesCovered",
            target_id = prelude.Integer.id,
        }),
        linesMissed = schema.new({
            id = id.from(_N, "CodeCoverageReportSummary", "linesMissed"),
            type = "integer",
            name = "linesMissed",
            target_id = prelude.Integer.id,
        }),
        branchCoveragePercentage = schema.new({
            id = id.from(_N, "CodeCoverageReportSummary", "branchCoveragePercentage"),
            type = "double",
            name = "branchCoveragePercentage",
            target_id = prelude.Double.id,
        }),
        branchesCovered = schema.new({
            id = id.from(_N, "CodeCoverageReportSummary", "branchesCovered"),
            type = "integer",
            name = "branchesCovered",
            target_id = prelude.Integer.id,
        }),
        branchesMissed = schema.new({
            id = id.from(_N, "CodeCoverageReportSummary", "branchesMissed"),
            type = "integer",
            name = "branchesMissed",
            target_id = prelude.Integer.id,
        }),
    },
})

M.TestReportSummary = schema.new({
    id = id.from(_N, "TestReportSummary"),
    type = "structure",
    members = {
        total = schema.new({
            id = id.from(_N, "TestReportSummary", "total"),
            type = "integer",
            name = "total",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        statusCounts = schema.new({
            id = id.from(_N, "TestReportSummary", "statusCounts"),
            type = "map",
            name = "statusCounts",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Integer,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        durationInNanoSeconds = schema.new({
            id = id.from(_N, "TestReportSummary", "durationInNanoSeconds"),
            type = "long",
            name = "durationInNanoSeconds",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Report = schema.new({
    id = id.from(_N, "Report"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "Report", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "Report", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "Report", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        reportGroupArn = schema.new({
            id = id.from(_N, "Report", "reportGroupArn"),
            type = "string",
            name = "reportGroupArn",
            target_id = prelude.String.id,
        }),
        executionId = schema.new({
            id = id.from(_N, "Report", "executionId"),
            type = "string",
            name = "executionId",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "Report", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        created = schema.new({
            id = id.from(_N, "Report", "created"),
            type = "timestamp",
            name = "created",
            target_id = prelude.Timestamp.id,
        }),
        expired = schema.new({
            id = id.from(_N, "Report", "expired"),
            type = "timestamp",
            name = "expired",
            target_id = prelude.Timestamp.id,
        }),
        exportConfig = schema.new({
            id = id.from(_N, "Report", "exportConfig"),
            type = "structure",
            name = "exportConfig",
            target_id = id.from(_N, "ReportExportConfig"),
            target = M.ReportExportConfig,
        }),
        truncated = schema.new({
            id = id.from(_N, "Report", "truncated"),
            type = "boolean",
            name = "truncated",
            target_id = prelude.Boolean.id,
        }),
        testSummary = schema.new({
            id = id.from(_N, "Report", "testSummary"),
            type = "structure",
            name = "testSummary",
            target_id = id.from(_N, "TestReportSummary"),
            target = M.TestReportSummary,
        }),
        codeCoverageSummary = schema.new({
            id = id.from(_N, "Report", "codeCoverageSummary"),
            type = "structure",
            name = "codeCoverageSummary",
            target_id = id.from(_N, "CodeCoverageReportSummary"),
            target = M.CodeCoverageReportSummary,
        }),
    },
})

M.BatchGetReportsOutput = schema.new({
    id = id.from(_N, "BatchGetReportsOutput"),
    type = "structure",
    members = {
        reports = schema.new({
            id = id.from(_N, "BatchGetReportsOutput", "reports"),
            type = "list",
            name = "reports",
            target_id = prelude.Document.id,
            list_member = M.Report,
        }),
        reportsNotFound = schema.new({
            id = id.from(_N, "BatchGetReportsOutput", "reportsNotFound"),
            type = "list",
            name = "reportsNotFound",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.BatchGetSandboxesInput = schema.new({
    id = id.from(_N, "BatchGetSandboxesInput"),
    type = "structure",
    members = {
        ids = schema.new({
            id = id.from(_N, "BatchGetSandboxesInput", "ids"),
            type = "list",
            name = "ids",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SandboxSessionPhase = schema.new({
    id = id.from(_N, "SandboxSessionPhase"),
    type = "structure",
    members = {
        phaseType = schema.new({
            id = id.from(_N, "SandboxSessionPhase", "phaseType"),
            type = "string",
            name = "phaseType",
            target_id = prelude.String.id,
        }),
        phaseStatus = schema.new({
            id = id.from(_N, "SandboxSessionPhase", "phaseStatus"),
            type = "string",
            name = "phaseStatus",
            target_id = prelude.String.id,
        }),
        startTime = schema.new({
            id = id.from(_N, "SandboxSessionPhase", "startTime"),
            type = "timestamp",
            name = "startTime",
            target_id = prelude.Timestamp.id,
        }),
        endTime = schema.new({
            id = id.from(_N, "SandboxSessionPhase", "endTime"),
            type = "timestamp",
            name = "endTime",
            target_id = prelude.Timestamp.id,
        }),
        durationInSeconds = schema.new({
            id = id.from(_N, "SandboxSessionPhase", "durationInSeconds"),
            type = "long",
            name = "durationInSeconds",
            target_id = prelude.Long.id,
        }),
        contexts = schema.new({
            id = id.from(_N, "SandboxSessionPhase", "contexts"),
            type = "list",
            name = "contexts",
            target_id = prelude.Document.id,
            list_member = M.PhaseContext,
        }),
    },
})

M.SandboxSession = schema.new({
    id = id.from(_N, "SandboxSession"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "SandboxSession", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "SandboxSession", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        startTime = schema.new({
            id = id.from(_N, "SandboxSession", "startTime"),
            type = "timestamp",
            name = "startTime",
            target_id = prelude.Timestamp.id,
        }),
        endTime = schema.new({
            id = id.from(_N, "SandboxSession", "endTime"),
            type = "timestamp",
            name = "endTime",
            target_id = prelude.Timestamp.id,
        }),
        currentPhase = schema.new({
            id = id.from(_N, "SandboxSession", "currentPhase"),
            type = "string",
            name = "currentPhase",
            target_id = prelude.String.id,
        }),
        phases = schema.new({
            id = id.from(_N, "SandboxSession", "phases"),
            type = "list",
            name = "phases",
            target_id = prelude.Document.id,
            list_member = M.SandboxSessionPhase,
        }),
        resolvedSourceVersion = schema.new({
            id = id.from(_N, "SandboxSession", "resolvedSourceVersion"),
            type = "string",
            name = "resolvedSourceVersion",
            target_id = prelude.String.id,
        }),
        logs = schema.new({
            id = id.from(_N, "SandboxSession", "logs"),
            type = "structure",
            name = "logs",
            target_id = id.from(_N, "LogsLocation"),
            target = M.LogsLocation,
        }),
        networkInterface = schema.new({
            id = id.from(_N, "SandboxSession", "networkInterface"),
            type = "structure",
            name = "networkInterface",
            target_id = id.from(_N, "NetworkInterface"),
            target = M.NetworkInterface,
        }),
    },
})

M.Sandbox = schema.new({
    id = id.from(_N, "Sandbox"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "Sandbox", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "Sandbox", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        projectName = schema.new({
            id = id.from(_N, "Sandbox", "projectName"),
            type = "string",
            name = "projectName",
            target_id = prelude.String.id,
        }),
        requestTime = schema.new({
            id = id.from(_N, "Sandbox", "requestTime"),
            type = "timestamp",
            name = "requestTime",
            target_id = prelude.Timestamp.id,
        }),
        startTime = schema.new({
            id = id.from(_N, "Sandbox", "startTime"),
            type = "timestamp",
            name = "startTime",
            target_id = prelude.Timestamp.id,
        }),
        endTime = schema.new({
            id = id.from(_N, "Sandbox", "endTime"),
            type = "timestamp",
            name = "endTime",
            target_id = prelude.Timestamp.id,
        }),
        status = schema.new({
            id = id.from(_N, "Sandbox", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        source = schema.new({
            id = id.from(_N, "Sandbox", "source"),
            type = "structure",
            name = "source",
            target_id = id.from(_N, "ProjectSource"),
            target = M.ProjectSource,
        }),
        sourceVersion = schema.new({
            id = id.from(_N, "Sandbox", "sourceVersion"),
            type = "string",
            name = "sourceVersion",
            target_id = prelude.String.id,
        }),
        secondarySources = schema.new({
            id = id.from(_N, "Sandbox", "secondarySources"),
            type = "list",
            name = "secondarySources",
            target_id = prelude.Document.id,
            list_member = M.ProjectSource,
        }),
        secondarySourceVersions = schema.new({
            id = id.from(_N, "Sandbox", "secondarySourceVersions"),
            type = "list",
            name = "secondarySourceVersions",
            target_id = prelude.Document.id,
            list_member = M.ProjectSourceVersion,
        }),
        environment = schema.new({
            id = id.from(_N, "Sandbox", "environment"),
            type = "structure",
            name = "environment",
            target_id = id.from(_N, "ProjectEnvironment"),
            target = M.ProjectEnvironment,
        }),
        fileSystemLocations = schema.new({
            id = id.from(_N, "Sandbox", "fileSystemLocations"),
            type = "list",
            name = "fileSystemLocations",
            target_id = prelude.Document.id,
            list_member = M.ProjectFileSystemLocation,
        }),
        timeoutInMinutes = schema.new({
            id = id.from(_N, "Sandbox", "timeoutInMinutes"),
            type = "integer",
            name = "timeoutInMinutes",
            target_id = prelude.Integer.id,
        }),
        queuedTimeoutInMinutes = schema.new({
            id = id.from(_N, "Sandbox", "queuedTimeoutInMinutes"),
            type = "integer",
            name = "queuedTimeoutInMinutes",
            target_id = prelude.Integer.id,
        }),
        vpcConfig = schema.new({
            id = id.from(_N, "Sandbox", "vpcConfig"),
            type = "structure",
            name = "vpcConfig",
            target_id = id.from(_N, "VpcConfig"),
            target = M.VpcConfig,
        }),
        logConfig = schema.new({
            id = id.from(_N, "Sandbox", "logConfig"),
            type = "structure",
            name = "logConfig",
            target_id = id.from(_N, "LogsConfig"),
            target = M.LogsConfig,
        }),
        encryptionKey = schema.new({
            id = id.from(_N, "Sandbox", "encryptionKey"),
            type = "string",
            name = "encryptionKey",
            target_id = prelude.String.id,
        }),
        serviceRole = schema.new({
            id = id.from(_N, "Sandbox", "serviceRole"),
            type = "string",
            name = "serviceRole",
            target_id = prelude.String.id,
        }),
        currentSession = schema.new({
            id = id.from(_N, "Sandbox", "currentSession"),
            type = "structure",
            name = "currentSession",
            target_id = id.from(_N, "SandboxSession"),
            target = M.SandboxSession,
        }),
    },
})

M.BatchGetSandboxesOutput = schema.new({
    id = id.from(_N, "BatchGetSandboxesOutput"),
    type = "structure",
    members = {
        sandboxes = schema.new({
            id = id.from(_N, "BatchGetSandboxesOutput", "sandboxes"),
            type = "list",
            name = "sandboxes",
            target_id = prelude.Document.id,
            list_member = M.Sandbox,
        }),
        sandboxesNotFound = schema.new({
            id = id.from(_N, "BatchGetSandboxesOutput", "sandboxesNotFound"),
            type = "list",
            name = "sandboxesNotFound",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.BuildBatchFilter = schema.new({
    id = id.from(_N, "BuildBatchFilter"),
    type = "structure",
    members = {
        status = schema.new({
            id = id.from(_N, "BuildBatchFilter", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
    },
})

M.ScalingConfigurationInput = schema.new({
    id = id.from(_N, "ScalingConfigurationInput"),
    type = "structure",
    members = {
        scalingType = schema.new({
            id = id.from(_N, "ScalingConfigurationInput", "scalingType"),
            type = "string",
            name = "scalingType",
            target_id = prelude.String.id,
        }),
        targetTrackingScalingConfigs = schema.new({
            id = id.from(_N, "ScalingConfigurationInput", "targetTrackingScalingConfigs"),
            type = "list",
            name = "targetTrackingScalingConfigs",
            target_id = prelude.Document.id,
            list_member = M.TargetTrackingScalingConfiguration,
        }),
        maxCapacity = schema.new({
            id = id.from(_N, "ScalingConfigurationInput", "maxCapacity"),
            type = "integer",
            name = "maxCapacity",
            target_id = prelude.Integer.id,
        }),
    },
})

M.CreateFleetInput = schema.new({
    id = id.from(_N, "CreateFleetInput"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CreateFleetInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        baseCapacity = schema.new({
            id = id.from(_N, "CreateFleetInput", "baseCapacity"),
            type = "integer",
            name = "baseCapacity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        environmentType = schema.new({
            id = id.from(_N, "CreateFleetInput", "environmentType"),
            type = "string",
            name = "environmentType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        computeType = schema.new({
            id = id.from(_N, "CreateFleetInput", "computeType"),
            type = "string",
            name = "computeType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        computeConfiguration = schema.new({
            id = id.from(_N, "CreateFleetInput", "computeConfiguration"),
            type = "structure",
            name = "computeConfiguration",
            target_id = id.from(_N, "ComputeConfiguration"),
            target = M.ComputeConfiguration,
        }),
        scalingConfiguration = schema.new({
            id = id.from(_N, "CreateFleetInput", "scalingConfiguration"),
            type = "structure",
            name = "scalingConfiguration",
            target_id = id.from(_N, "ScalingConfigurationInput"),
            target = M.ScalingConfigurationInput,
        }),
        overflowBehavior = schema.new({
            id = id.from(_N, "CreateFleetInput", "overflowBehavior"),
            type = "string",
            name = "overflowBehavior",
            target_id = prelude.String.id,
        }),
        vpcConfig = schema.new({
            id = id.from(_N, "CreateFleetInput", "vpcConfig"),
            type = "structure",
            name = "vpcConfig",
            target_id = id.from(_N, "VpcConfig"),
            target = M.VpcConfig,
        }),
        proxyConfiguration = schema.new({
            id = id.from(_N, "CreateFleetInput", "proxyConfiguration"),
            type = "structure",
            name = "proxyConfiguration",
            target_id = id.from(_N, "ProxyConfiguration"),
            target = M.ProxyConfiguration,
        }),
        imageId = schema.new({
            id = id.from(_N, "CreateFleetInput", "imageId"),
            type = "string",
            name = "imageId",
            target_id = prelude.String.id,
        }),
        fleetServiceRole = schema.new({
            id = id.from(_N, "CreateFleetInput", "fleetServiceRole"),
            type = "string",
            name = "fleetServiceRole",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateFleetInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.CreateFleetOutput = schema.new({
    id = id.from(_N, "CreateFleetOutput"),
    type = "structure",
    members = {
        fleet = schema.new({
            id = id.from(_N, "CreateFleetOutput", "fleet"),
            type = "structure",
            name = "fleet",
            target_id = id.from(_N, "Fleet"),
            target = M.Fleet,
        }),
    },
})

M.ResourceAlreadyExistsException = schema.new({
    id = id.from(_N, "ResourceAlreadyExistsException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ResourceAlreadyExistsException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateProjectInput = schema.new({
    id = id.from(_N, "CreateProjectInput"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CreateProjectInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateProjectInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        source = schema.new({
            id = id.from(_N, "CreateProjectInput", "source"),
            type = "structure",
            name = "source",
            target_id = id.from(_N, "ProjectSource"),
            target = M.ProjectSource,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        secondarySources = schema.new({
            id = id.from(_N, "CreateProjectInput", "secondarySources"),
            type = "list",
            name = "secondarySources",
            target_id = prelude.Document.id,
            list_member = M.ProjectSource,
        }),
        sourceVersion = schema.new({
            id = id.from(_N, "CreateProjectInput", "sourceVersion"),
            type = "string",
            name = "sourceVersion",
            target_id = prelude.String.id,
        }),
        secondarySourceVersions = schema.new({
            id = id.from(_N, "CreateProjectInput", "secondarySourceVersions"),
            type = "list",
            name = "secondarySourceVersions",
            target_id = prelude.Document.id,
            list_member = M.ProjectSourceVersion,
        }),
        artifacts = schema.new({
            id = id.from(_N, "CreateProjectInput", "artifacts"),
            type = "structure",
            name = "artifacts",
            target_id = id.from(_N, "ProjectArtifacts"),
            target = M.ProjectArtifacts,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        secondaryArtifacts = schema.new({
            id = id.from(_N, "CreateProjectInput", "secondaryArtifacts"),
            type = "list",
            name = "secondaryArtifacts",
            target_id = prelude.Document.id,
            list_member = M.ProjectArtifacts,
        }),
        cache = schema.new({
            id = id.from(_N, "CreateProjectInput", "cache"),
            type = "structure",
            name = "cache",
            target_id = id.from(_N, "ProjectCache"),
            target = M.ProjectCache,
        }),
        environment = schema.new({
            id = id.from(_N, "CreateProjectInput", "environment"),
            type = "structure",
            name = "environment",
            target_id = id.from(_N, "ProjectEnvironment"),
            target = M.ProjectEnvironment,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        serviceRole = schema.new({
            id = id.from(_N, "CreateProjectInput", "serviceRole"),
            type = "string",
            name = "serviceRole",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        timeoutInMinutes = schema.new({
            id = id.from(_N, "CreateProjectInput", "timeoutInMinutes"),
            type = "integer",
            name = "timeoutInMinutes",
            target_id = prelude.Integer.id,
        }),
        queuedTimeoutInMinutes = schema.new({
            id = id.from(_N, "CreateProjectInput", "queuedTimeoutInMinutes"),
            type = "integer",
            name = "queuedTimeoutInMinutes",
            target_id = prelude.Integer.id,
        }),
        encryptionKey = schema.new({
            id = id.from(_N, "CreateProjectInput", "encryptionKey"),
            type = "string",
            name = "encryptionKey",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateProjectInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        vpcConfig = schema.new({
            id = id.from(_N, "CreateProjectInput", "vpcConfig"),
            type = "structure",
            name = "vpcConfig",
            target_id = id.from(_N, "VpcConfig"),
            target = M.VpcConfig,
        }),
        badgeEnabled = schema.new({
            id = id.from(_N, "CreateProjectInput", "badgeEnabled"),
            type = "boolean",
            name = "badgeEnabled",
            target_id = prelude.Boolean.id,
        }),
        logsConfig = schema.new({
            id = id.from(_N, "CreateProjectInput", "logsConfig"),
            type = "structure",
            name = "logsConfig",
            target_id = id.from(_N, "LogsConfig"),
            target = M.LogsConfig,
        }),
        fileSystemLocations = schema.new({
            id = id.from(_N, "CreateProjectInput", "fileSystemLocations"),
            type = "list",
            name = "fileSystemLocations",
            target_id = prelude.Document.id,
            list_member = M.ProjectFileSystemLocation,
        }),
        buildBatchConfig = schema.new({
            id = id.from(_N, "CreateProjectInput", "buildBatchConfig"),
            type = "structure",
            name = "buildBatchConfig",
            target_id = id.from(_N, "ProjectBuildBatchConfig"),
            target = M.ProjectBuildBatchConfig,
        }),
        concurrentBuildLimit = schema.new({
            id = id.from(_N, "CreateProjectInput", "concurrentBuildLimit"),
            type = "integer",
            name = "concurrentBuildLimit",
            target_id = prelude.Integer.id,
        }),
        autoRetryLimit = schema.new({
            id = id.from(_N, "CreateProjectInput", "autoRetryLimit"),
            type = "integer",
            name = "autoRetryLimit",
            target_id = prelude.Integer.id,
        }),
    },
})

M.CreateProjectOutput = schema.new({
    id = id.from(_N, "CreateProjectOutput"),
    type = "structure",
    members = {
        project = schema.new({
            id = id.from(_N, "CreateProjectOutput", "project"),
            type = "structure",
            name = "project",
            target_id = id.from(_N, "Project"),
            target = M.Project,
        }),
    },
})

M.CreateReportGroupInput = schema.new({
    id = id.from(_N, "CreateReportGroupInput"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CreateReportGroupInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        type = schema.new({
            id = id.from(_N, "CreateReportGroupInput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        exportConfig = schema.new({
            id = id.from(_N, "CreateReportGroupInput", "exportConfig"),
            type = "structure",
            name = "exportConfig",
            target_id = id.from(_N, "ReportExportConfig"),
            target = M.ReportExportConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateReportGroupInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.CreateReportGroupOutput = schema.new({
    id = id.from(_N, "CreateReportGroupOutput"),
    type = "structure",
    members = {
        reportGroup = schema.new({
            id = id.from(_N, "CreateReportGroupOutput", "reportGroup"),
            type = "structure",
            name = "reportGroup",
            target_id = id.from(_N, "ReportGroup"),
            target = M.ReportGroup,
        }),
    },
})

M.CreateWebhookInput = schema.new({
    id = id.from(_N, "CreateWebhookInput"),
    type = "structure",
    members = {
        projectName = schema.new({
            id = id.from(_N, "CreateWebhookInput", "projectName"),
            type = "string",
            name = "projectName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        branchFilter = schema.new({
            id = id.from(_N, "CreateWebhookInput", "branchFilter"),
            type = "string",
            name = "branchFilter",
            target_id = prelude.String.id,
        }),
        filterGroups = schema.new({
            id = id.from(_N, "CreateWebhookInput", "filterGroups"),
            type = "list",
            name = "filterGroups",
            target_id = prelude.Document.id,
            list_member = prelude.Document,
        }),
        buildType = schema.new({
            id = id.from(_N, "CreateWebhookInput", "buildType"),
            type = "string",
            name = "buildType",
            target_id = prelude.String.id,
        }),
        manualCreation = schema.new({
            id = id.from(_N, "CreateWebhookInput", "manualCreation"),
            type = "boolean",
            name = "manualCreation",
            target_id = prelude.Boolean.id,
        }),
        scopeConfiguration = schema.new({
            id = id.from(_N, "CreateWebhookInput", "scopeConfiguration"),
            type = "structure",
            name = "scopeConfiguration",
            target_id = id.from(_N, "ScopeConfiguration"),
            target = M.ScopeConfiguration,
        }),
        pullRequestBuildPolicy = schema.new({
            id = id.from(_N, "CreateWebhookInput", "pullRequestBuildPolicy"),
            type = "structure",
            name = "pullRequestBuildPolicy",
            target_id = id.from(_N, "PullRequestBuildPolicy"),
            target = M.PullRequestBuildPolicy,
        }),
    },
})

M.CreateWebhookOutput = schema.new({
    id = id.from(_N, "CreateWebhookOutput"),
    type = "structure",
    members = {
        webhook = schema.new({
            id = id.from(_N, "CreateWebhookOutput", "webhook"),
            type = "structure",
            name = "webhook",
            target_id = id.from(_N, "Webhook"),
            target = M.Webhook,
        }),
    },
})

M.OAuthProviderException = schema.new({
    id = id.from(_N, "OAuthProviderException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "OAuthProviderException", "message"),
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

M.DeleteBuildBatchInput = schema.new({
    id = id.from(_N, "DeleteBuildBatchInput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "DeleteBuildBatchInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteBuildBatchOutput = schema.new({
    id = id.from(_N, "DeleteBuildBatchOutput"),
    type = "structure",
    members = {
        statusCode = schema.new({
            id = id.from(_N, "DeleteBuildBatchOutput", "statusCode"),
            type = "string",
            name = "statusCode",
            target_id = prelude.String.id,
        }),
        buildsDeleted = schema.new({
            id = id.from(_N, "DeleteBuildBatchOutput", "buildsDeleted"),
            type = "list",
            name = "buildsDeleted",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        buildsNotDeleted = schema.new({
            id = id.from(_N, "DeleteBuildBatchOutput", "buildsNotDeleted"),
            type = "list",
            name = "buildsNotDeleted",
            target_id = prelude.Document.id,
            list_member = M.BuildNotDeleted,
        }),
    },
})

M.DeleteFleetInput = schema.new({
    id = id.from(_N, "DeleteFleetInput"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "DeleteFleetInput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteFleetOutput = schema.new({
    id = id.from(_N, "DeleteFleetOutput"),
    type = "structure",
})

M.DeleteProjectInput = schema.new({
    id = id.from(_N, "DeleteProjectInput"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "DeleteProjectInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteProjectOutput = schema.new({
    id = id.from(_N, "DeleteProjectOutput"),
    type = "structure",
})

M.DeleteReportInput = schema.new({
    id = id.from(_N, "DeleteReportInput"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "DeleteReportInput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteReportOutput = schema.new({
    id = id.from(_N, "DeleteReportOutput"),
    type = "structure",
})

M.DeleteReportGroupInput = schema.new({
    id = id.from(_N, "DeleteReportGroupInput"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "DeleteReportGroupInput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        deleteReports = schema.new({
            id = id.from(_N, "DeleteReportGroupInput", "deleteReports"),
            type = "boolean",
            name = "deleteReports",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.DeleteReportGroupOutput = schema.new({
    id = id.from(_N, "DeleteReportGroupOutput"),
    type = "structure",
})

M.DeleteResourcePolicyInput = schema.new({
    id = id.from(_N, "DeleteResourcePolicyInput"),
    type = "structure",
    members = {
        resourceArn = schema.new({
            id = id.from(_N, "DeleteResourcePolicyInput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteResourcePolicyOutput = schema.new({
    id = id.from(_N, "DeleteResourcePolicyOutput"),
    type = "structure",
})

M.DeleteSourceCredentialsInput = schema.new({
    id = id.from(_N, "DeleteSourceCredentialsInput"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "DeleteSourceCredentialsInput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteSourceCredentialsOutput = schema.new({
    id = id.from(_N, "DeleteSourceCredentialsOutput"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "DeleteSourceCredentialsOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteWebhookInput = schema.new({
    id = id.from(_N, "DeleteWebhookInput"),
    type = "structure",
    members = {
        projectName = schema.new({
            id = id.from(_N, "DeleteWebhookInput", "projectName"),
            type = "string",
            name = "projectName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteWebhookOutput = schema.new({
    id = id.from(_N, "DeleteWebhookOutput"),
    type = "structure",
})

M.DescribeCodeCoveragesInput = schema.new({
    id = id.from(_N, "DescribeCodeCoveragesInput"),
    type = "structure",
    members = {
        reportArn = schema.new({
            id = id.from(_N, "DescribeCodeCoveragesInput", "reportArn"),
            type = "string",
            name = "reportArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "DescribeCodeCoveragesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "DescribeCodeCoveragesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        sortOrder = schema.new({
            id = id.from(_N, "DescribeCodeCoveragesInput", "sortOrder"),
            type = "string",
            name = "sortOrder",
            target_id = prelude.String.id,
        }),
        sortBy = schema.new({
            id = id.from(_N, "DescribeCodeCoveragesInput", "sortBy"),
            type = "string",
            name = "sortBy",
            target_id = prelude.String.id,
        }),
        minLineCoveragePercentage = schema.new({
            id = id.from(_N, "DescribeCodeCoveragesInput", "minLineCoveragePercentage"),
            type = "double",
            name = "minLineCoveragePercentage",
            target_id = prelude.Double.id,
        }),
        maxLineCoveragePercentage = schema.new({
            id = id.from(_N, "DescribeCodeCoveragesInput", "maxLineCoveragePercentage"),
            type = "double",
            name = "maxLineCoveragePercentage",
            target_id = prelude.Double.id,
        }),
    },
})

M.CodeCoverage = schema.new({
    id = id.from(_N, "CodeCoverage"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "CodeCoverage", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        reportARN = schema.new({
            id = id.from(_N, "CodeCoverage", "reportARN"),
            type = "string",
            name = "reportARN",
            target_id = prelude.String.id,
        }),
        filePath = schema.new({
            id = id.from(_N, "CodeCoverage", "filePath"),
            type = "string",
            name = "filePath",
            target_id = prelude.String.id,
        }),
        lineCoveragePercentage = schema.new({
            id = id.from(_N, "CodeCoverage", "lineCoveragePercentage"),
            type = "double",
            name = "lineCoveragePercentage",
            target_id = prelude.Double.id,
        }),
        linesCovered = schema.new({
            id = id.from(_N, "CodeCoverage", "linesCovered"),
            type = "integer",
            name = "linesCovered",
            target_id = prelude.Integer.id,
        }),
        linesMissed = schema.new({
            id = id.from(_N, "CodeCoverage", "linesMissed"),
            type = "integer",
            name = "linesMissed",
            target_id = prelude.Integer.id,
        }),
        branchCoveragePercentage = schema.new({
            id = id.from(_N, "CodeCoverage", "branchCoveragePercentage"),
            type = "double",
            name = "branchCoveragePercentage",
            target_id = prelude.Double.id,
        }),
        branchesCovered = schema.new({
            id = id.from(_N, "CodeCoverage", "branchesCovered"),
            type = "integer",
            name = "branchesCovered",
            target_id = prelude.Integer.id,
        }),
        branchesMissed = schema.new({
            id = id.from(_N, "CodeCoverage", "branchesMissed"),
            type = "integer",
            name = "branchesMissed",
            target_id = prelude.Integer.id,
        }),
        expired = schema.new({
            id = id.from(_N, "CodeCoverage", "expired"),
            type = "timestamp",
            name = "expired",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.DescribeCodeCoveragesOutput = schema.new({
    id = id.from(_N, "DescribeCodeCoveragesOutput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "DescribeCodeCoveragesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        codeCoverages = schema.new({
            id = id.from(_N, "DescribeCodeCoveragesOutput", "codeCoverages"),
            type = "list",
            name = "codeCoverages",
            target_id = prelude.Document.id,
            list_member = M.CodeCoverage,
        }),
    },
})

M.TestCaseFilter = schema.new({
    id = id.from(_N, "TestCaseFilter"),
    type = "structure",
    members = {
        status = schema.new({
            id = id.from(_N, "TestCaseFilter", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        keyword = schema.new({
            id = id.from(_N, "TestCaseFilter", "keyword"),
            type = "string",
            name = "keyword",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeTestCasesInput = schema.new({
    id = id.from(_N, "DescribeTestCasesInput"),
    type = "structure",
    members = {
        reportArn = schema.new({
            id = id.from(_N, "DescribeTestCasesInput", "reportArn"),
            type = "string",
            name = "reportArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "DescribeTestCasesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "DescribeTestCasesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        filter = schema.new({
            id = id.from(_N, "DescribeTestCasesInput", "filter"),
            type = "structure",
            name = "filter",
            target_id = id.from(_N, "TestCaseFilter"),
            target = M.TestCaseFilter,
        }),
    },
})

M.TestCase = schema.new({
    id = id.from(_N, "TestCase"),
    type = "structure",
    members = {
        reportArn = schema.new({
            id = id.from(_N, "TestCase", "reportArn"),
            type = "string",
            name = "reportArn",
            target_id = prelude.String.id,
        }),
        testRawDataPath = schema.new({
            id = id.from(_N, "TestCase", "testRawDataPath"),
            type = "string",
            name = "testRawDataPath",
            target_id = prelude.String.id,
        }),
        prefix = schema.new({
            id = id.from(_N, "TestCase", "prefix"),
            type = "string",
            name = "prefix",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "TestCase", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "TestCase", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        durationInNanoSeconds = schema.new({
            id = id.from(_N, "TestCase", "durationInNanoSeconds"),
            type = "long",
            name = "durationInNanoSeconds",
            target_id = prelude.Long.id,
        }),
        message = schema.new({
            id = id.from(_N, "TestCase", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
        expired = schema.new({
            id = id.from(_N, "TestCase", "expired"),
            type = "timestamp",
            name = "expired",
            target_id = prelude.Timestamp.id,
        }),
        testSuiteName = schema.new({
            id = id.from(_N, "TestCase", "testSuiteName"),
            type = "string",
            name = "testSuiteName",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeTestCasesOutput = schema.new({
    id = id.from(_N, "DescribeTestCasesOutput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "DescribeTestCasesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        testCases = schema.new({
            id = id.from(_N, "DescribeTestCasesOutput", "testCases"),
            type = "list",
            name = "testCases",
            target_id = prelude.Document.id,
            list_member = M.TestCase,
        }),
    },
})

M.GetReportGroupTrendInput = schema.new({
    id = id.from(_N, "GetReportGroupTrendInput"),
    type = "structure",
    members = {
        reportGroupArn = schema.new({
            id = id.from(_N, "GetReportGroupTrendInput", "reportGroupArn"),
            type = "string",
            name = "reportGroupArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        numOfReports = schema.new({
            id = id.from(_N, "GetReportGroupTrendInput", "numOfReports"),
            type = "integer",
            name = "numOfReports",
            target_id = prelude.Integer.id,
        }),
        trendField = schema.new({
            id = id.from(_N, "GetReportGroupTrendInput", "trendField"),
            type = "string",
            name = "trendField",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ReportWithRawData = schema.new({
    id = id.from(_N, "ReportWithRawData"),
    type = "structure",
    members = {
        reportArn = schema.new({
            id = id.from(_N, "ReportWithRawData", "reportArn"),
            type = "string",
            name = "reportArn",
            target_id = prelude.String.id,
        }),
        data = schema.new({
            id = id.from(_N, "ReportWithRawData", "data"),
            type = "string",
            name = "data",
            target_id = prelude.String.id,
        }),
    },
})

M.ReportGroupTrendStats = schema.new({
    id = id.from(_N, "ReportGroupTrendStats"),
    type = "structure",
    members = {
        average = schema.new({
            id = id.from(_N, "ReportGroupTrendStats", "average"),
            type = "string",
            name = "average",
            target_id = prelude.String.id,
        }),
        max = schema.new({
            id = id.from(_N, "ReportGroupTrendStats", "max"),
            type = "string",
            name = "max",
            target_id = prelude.String.id,
        }),
        min = schema.new({
            id = id.from(_N, "ReportGroupTrendStats", "min"),
            type = "string",
            name = "min",
            target_id = prelude.String.id,
        }),
    },
})

M.GetReportGroupTrendOutput = schema.new({
    id = id.from(_N, "GetReportGroupTrendOutput"),
    type = "structure",
    members = {
        stats = schema.new({
            id = id.from(_N, "GetReportGroupTrendOutput", "stats"),
            type = "structure",
            name = "stats",
            target_id = id.from(_N, "ReportGroupTrendStats"),
            target = M.ReportGroupTrendStats,
        }),
        rawData = schema.new({
            id = id.from(_N, "GetReportGroupTrendOutput", "rawData"),
            type = "list",
            name = "rawData",
            target_id = prelude.Document.id,
            list_member = M.ReportWithRawData,
        }),
    },
})

M.GetResourcePolicyInput = schema.new({
    id = id.from(_N, "GetResourcePolicyInput"),
    type = "structure",
    members = {
        resourceArn = schema.new({
            id = id.from(_N, "GetResourcePolicyInput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetResourcePolicyOutput = schema.new({
    id = id.from(_N, "GetResourcePolicyOutput"),
    type = "structure",
    members = {
        policy = schema.new({
            id = id.from(_N, "GetResourcePolicyOutput", "policy"),
            type = "string",
            name = "policy",
            target_id = prelude.String.id,
        }),
    },
})

M.ImportSourceCredentialsInput = schema.new({
    id = id.from(_N, "ImportSourceCredentialsInput"),
    type = "structure",
    members = {
        username = schema.new({
            id = id.from(_N, "ImportSourceCredentialsInput", "username"),
            type = "string",
            name = "username",
            target_id = prelude.String.id,
        }),
        token = schema.new({
            id = id.from(_N, "ImportSourceCredentialsInput", "token"),
            type = "string",
            name = "token",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        serverType = schema.new({
            id = id.from(_N, "ImportSourceCredentialsInput", "serverType"),
            type = "string",
            name = "serverType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        authType = schema.new({
            id = id.from(_N, "ImportSourceCredentialsInput", "authType"),
            type = "string",
            name = "authType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        shouldOverwrite = schema.new({
            id = id.from(_N, "ImportSourceCredentialsInput", "shouldOverwrite"),
            type = "boolean",
            name = "shouldOverwrite",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.ImportSourceCredentialsOutput = schema.new({
    id = id.from(_N, "ImportSourceCredentialsOutput"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "ImportSourceCredentialsOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidateProjectCacheInput = schema.new({
    id = id.from(_N, "InvalidateProjectCacheInput"),
    type = "structure",
    members = {
        projectName = schema.new({
            id = id.from(_N, "InvalidateProjectCacheInput", "projectName"),
            type = "string",
            name = "projectName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.InvalidateProjectCacheOutput = schema.new({
    id = id.from(_N, "InvalidateProjectCacheOutput"),
    type = "structure",
})

M.ListBuildBatchesInput = schema.new({
    id = id.from(_N, "ListBuildBatchesInput"),
    type = "structure",
    members = {
        filter = schema.new({
            id = id.from(_N, "ListBuildBatchesInput", "filter"),
            type = "structure",
            name = "filter",
            target_id = id.from(_N, "BuildBatchFilter"),
            target = M.BuildBatchFilter,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListBuildBatchesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        sortOrder = schema.new({
            id = id.from(_N, "ListBuildBatchesInput", "sortOrder"),
            type = "string",
            name = "sortOrder",
            target_id = prelude.String.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListBuildBatchesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListBuildBatchesOutput = schema.new({
    id = id.from(_N, "ListBuildBatchesOutput"),
    type = "structure",
    members = {
        ids = schema.new({
            id = id.from(_N, "ListBuildBatchesOutput", "ids"),
            type = "list",
            name = "ids",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListBuildBatchesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListBuildBatchesForProjectInput = schema.new({
    id = id.from(_N, "ListBuildBatchesForProjectInput"),
    type = "structure",
    members = {
        projectName = schema.new({
            id = id.from(_N, "ListBuildBatchesForProjectInput", "projectName"),
            type = "string",
            name = "projectName",
            target_id = prelude.String.id,
        }),
        filter = schema.new({
            id = id.from(_N, "ListBuildBatchesForProjectInput", "filter"),
            type = "structure",
            name = "filter",
            target_id = id.from(_N, "BuildBatchFilter"),
            target = M.BuildBatchFilter,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListBuildBatchesForProjectInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        sortOrder = schema.new({
            id = id.from(_N, "ListBuildBatchesForProjectInput", "sortOrder"),
            type = "string",
            name = "sortOrder",
            target_id = prelude.String.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListBuildBatchesForProjectInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListBuildBatchesForProjectOutput = schema.new({
    id = id.from(_N, "ListBuildBatchesForProjectOutput"),
    type = "structure",
    members = {
        ids = schema.new({
            id = id.from(_N, "ListBuildBatchesForProjectOutput", "ids"),
            type = "list",
            name = "ids",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListBuildBatchesForProjectOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListBuildsInput = schema.new({
    id = id.from(_N, "ListBuildsInput"),
    type = "structure",
    members = {
        sortOrder = schema.new({
            id = id.from(_N, "ListBuildsInput", "sortOrder"),
            type = "string",
            name = "sortOrder",
            target_id = prelude.String.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListBuildsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListBuildsOutput = schema.new({
    id = id.from(_N, "ListBuildsOutput"),
    type = "structure",
    members = {
        ids = schema.new({
            id = id.from(_N, "ListBuildsOutput", "ids"),
            type = "list",
            name = "ids",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListBuildsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListBuildsForProjectInput = schema.new({
    id = id.from(_N, "ListBuildsForProjectInput"),
    type = "structure",
    members = {
        projectName = schema.new({
            id = id.from(_N, "ListBuildsForProjectInput", "projectName"),
            type = "string",
            name = "projectName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sortOrder = schema.new({
            id = id.from(_N, "ListBuildsForProjectInput", "sortOrder"),
            type = "string",
            name = "sortOrder",
            target_id = prelude.String.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListBuildsForProjectInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListBuildsForProjectOutput = schema.new({
    id = id.from(_N, "ListBuildsForProjectOutput"),
    type = "structure",
    members = {
        ids = schema.new({
            id = id.from(_N, "ListBuildsForProjectOutput", "ids"),
            type = "list",
            name = "ids",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListBuildsForProjectOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListCommandExecutionsForSandboxInput = schema.new({
    id = id.from(_N, "ListCommandExecutionsForSandboxInput"),
    type = "structure",
    members = {
        sandboxId = schema.new({
            id = id.from(_N, "ListCommandExecutionsForSandboxInput", "sandboxId"),
            type = "string",
            name = "sandboxId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListCommandExecutionsForSandboxInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        sortOrder = schema.new({
            id = id.from(_N, "ListCommandExecutionsForSandboxInput", "sortOrder"),
            type = "string",
            name = "sortOrder",
            target_id = prelude.String.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListCommandExecutionsForSandboxInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListCommandExecutionsForSandboxOutput = schema.new({
    id = id.from(_N, "ListCommandExecutionsForSandboxOutput"),
    type = "structure",
    members = {
        commandExecutions = schema.new({
            id = id.from(_N, "ListCommandExecutionsForSandboxOutput", "commandExecutions"),
            type = "list",
            name = "commandExecutions",
            target_id = prelude.Document.id,
            list_member = M.CommandExecution,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListCommandExecutionsForSandboxOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListCuratedEnvironmentImagesInput = schema.new({
    id = id.from(_N, "ListCuratedEnvironmentImagesInput"),
    type = "structure",
})

M.EnvironmentImage = schema.new({
    id = id.from(_N, "EnvironmentImage"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "EnvironmentImage", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "EnvironmentImage", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        versions = schema.new({
            id = id.from(_N, "EnvironmentImage", "versions"),
            type = "list",
            name = "versions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.EnvironmentLanguage = schema.new({
    id = id.from(_N, "EnvironmentLanguage"),
    type = "structure",
    members = {
        language = schema.new({
            id = id.from(_N, "EnvironmentLanguage", "language"),
            type = "string",
            name = "language",
            target_id = prelude.String.id,
        }),
        images = schema.new({
            id = id.from(_N, "EnvironmentLanguage", "images"),
            type = "list",
            name = "images",
            target_id = prelude.Document.id,
            list_member = M.EnvironmentImage,
        }),
    },
})

M.EnvironmentPlatform = schema.new({
    id = id.from(_N, "EnvironmentPlatform"),
    type = "structure",
    members = {
        platform = schema.new({
            id = id.from(_N, "EnvironmentPlatform", "platform"),
            type = "string",
            name = "platform",
            target_id = prelude.String.id,
        }),
        languages = schema.new({
            id = id.from(_N, "EnvironmentPlatform", "languages"),
            type = "list",
            name = "languages",
            target_id = prelude.Document.id,
            list_member = M.EnvironmentLanguage,
        }),
    },
})

M.ListCuratedEnvironmentImagesOutput = schema.new({
    id = id.from(_N, "ListCuratedEnvironmentImagesOutput"),
    type = "structure",
    members = {
        platforms = schema.new({
            id = id.from(_N, "ListCuratedEnvironmentImagesOutput", "platforms"),
            type = "list",
            name = "platforms",
            target_id = prelude.Document.id,
            list_member = M.EnvironmentPlatform,
        }),
    },
})

M.ListFleetsInput = schema.new({
    id = id.from(_N, "ListFleetsInput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListFleetsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListFleetsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        sortOrder = schema.new({
            id = id.from(_N, "ListFleetsInput", "sortOrder"),
            type = "string",
            name = "sortOrder",
            target_id = prelude.String.id,
        }),
        sortBy = schema.new({
            id = id.from(_N, "ListFleetsInput", "sortBy"),
            type = "string",
            name = "sortBy",
            target_id = prelude.String.id,
        }),
    },
})

M.ListFleetsOutput = schema.new({
    id = id.from(_N, "ListFleetsOutput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListFleetsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        fleets = schema.new({
            id = id.from(_N, "ListFleetsOutput", "fleets"),
            type = "list",
            name = "fleets",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ListProjectsInput = schema.new({
    id = id.from(_N, "ListProjectsInput"),
    type = "structure",
    members = {
        sortBy = schema.new({
            id = id.from(_N, "ListProjectsInput", "sortBy"),
            type = "string",
            name = "sortBy",
            target_id = prelude.String.id,
        }),
        sortOrder = schema.new({
            id = id.from(_N, "ListProjectsInput", "sortOrder"),
            type = "string",
            name = "sortOrder",
            target_id = prelude.String.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListProjectsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListProjectsOutput = schema.new({
    id = id.from(_N, "ListProjectsOutput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListProjectsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        projects = schema.new({
            id = id.from(_N, "ListProjectsOutput", "projects"),
            type = "list",
            name = "projects",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ListReportGroupsInput = schema.new({
    id = id.from(_N, "ListReportGroupsInput"),
    type = "structure",
    members = {
        sortOrder = schema.new({
            id = id.from(_N, "ListReportGroupsInput", "sortOrder"),
            type = "string",
            name = "sortOrder",
            target_id = prelude.String.id,
        }),
        sortBy = schema.new({
            id = id.from(_N, "ListReportGroupsInput", "sortBy"),
            type = "string",
            name = "sortBy",
            target_id = prelude.String.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListReportGroupsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListReportGroupsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListReportGroupsOutput = schema.new({
    id = id.from(_N, "ListReportGroupsOutput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListReportGroupsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        reportGroups = schema.new({
            id = id.from(_N, "ListReportGroupsOutput", "reportGroups"),
            type = "list",
            name = "reportGroups",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ReportFilter = schema.new({
    id = id.from(_N, "ReportFilter"),
    type = "structure",
    members = {
        status = schema.new({
            id = id.from(_N, "ReportFilter", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
    },
})

M.ListReportsInput = schema.new({
    id = id.from(_N, "ListReportsInput"),
    type = "structure",
    members = {
        sortOrder = schema.new({
            id = id.from(_N, "ListReportsInput", "sortOrder"),
            type = "string",
            name = "sortOrder",
            target_id = prelude.String.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListReportsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListReportsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        filter = schema.new({
            id = id.from(_N, "ListReportsInput", "filter"),
            type = "structure",
            name = "filter",
            target_id = id.from(_N, "ReportFilter"),
            target = M.ReportFilter,
        }),
    },
})

M.ListReportsOutput = schema.new({
    id = id.from(_N, "ListReportsOutput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListReportsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        reports = schema.new({
            id = id.from(_N, "ListReportsOutput", "reports"),
            type = "list",
            name = "reports",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ListReportsForReportGroupInput = schema.new({
    id = id.from(_N, "ListReportsForReportGroupInput"),
    type = "structure",
    members = {
        reportGroupArn = schema.new({
            id = id.from(_N, "ListReportsForReportGroupInput", "reportGroupArn"),
            type = "string",
            name = "reportGroupArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListReportsForReportGroupInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        sortOrder = schema.new({
            id = id.from(_N, "ListReportsForReportGroupInput", "sortOrder"),
            type = "string",
            name = "sortOrder",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListReportsForReportGroupInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        filter = schema.new({
            id = id.from(_N, "ListReportsForReportGroupInput", "filter"),
            type = "structure",
            name = "filter",
            target_id = id.from(_N, "ReportFilter"),
            target = M.ReportFilter,
        }),
    },
})

M.ListReportsForReportGroupOutput = schema.new({
    id = id.from(_N, "ListReportsForReportGroupOutput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListReportsForReportGroupOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        reports = schema.new({
            id = id.from(_N, "ListReportsForReportGroupOutput", "reports"),
            type = "list",
            name = "reports",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ListSandboxesInput = schema.new({
    id = id.from(_N, "ListSandboxesInput"),
    type = "structure",
    members = {
        maxResults = schema.new({
            id = id.from(_N, "ListSandboxesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        sortOrder = schema.new({
            id = id.from(_N, "ListSandboxesInput", "sortOrder"),
            type = "string",
            name = "sortOrder",
            target_id = prelude.String.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListSandboxesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListSandboxesOutput = schema.new({
    id = id.from(_N, "ListSandboxesOutput"),
    type = "structure",
    members = {
        ids = schema.new({
            id = id.from(_N, "ListSandboxesOutput", "ids"),
            type = "list",
            name = "ids",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListSandboxesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListSandboxesForProjectInput = schema.new({
    id = id.from(_N, "ListSandboxesForProjectInput"),
    type = "structure",
    members = {
        projectName = schema.new({
            id = id.from(_N, "ListSandboxesForProjectInput", "projectName"),
            type = "string",
            name = "projectName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListSandboxesForProjectInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        sortOrder = schema.new({
            id = id.from(_N, "ListSandboxesForProjectInput", "sortOrder"),
            type = "string",
            name = "sortOrder",
            target_id = prelude.String.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListSandboxesForProjectInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListSandboxesForProjectOutput = schema.new({
    id = id.from(_N, "ListSandboxesForProjectOutput"),
    type = "structure",
    members = {
        ids = schema.new({
            id = id.from(_N, "ListSandboxesForProjectOutput", "ids"),
            type = "list",
            name = "ids",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListSandboxesForProjectOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListSharedProjectsInput = schema.new({
    id = id.from(_N, "ListSharedProjectsInput"),
    type = "structure",
    members = {
        sortBy = schema.new({
            id = id.from(_N, "ListSharedProjectsInput", "sortBy"),
            type = "string",
            name = "sortBy",
            target_id = prelude.String.id,
        }),
        sortOrder = schema.new({
            id = id.from(_N, "ListSharedProjectsInput", "sortOrder"),
            type = "string",
            name = "sortOrder",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListSharedProjectsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListSharedProjectsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListSharedProjectsOutput = schema.new({
    id = id.from(_N, "ListSharedProjectsOutput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListSharedProjectsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        projects = schema.new({
            id = id.from(_N, "ListSharedProjectsOutput", "projects"),
            type = "list",
            name = "projects",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ListSharedReportGroupsInput = schema.new({
    id = id.from(_N, "ListSharedReportGroupsInput"),
    type = "structure",
    members = {
        sortOrder = schema.new({
            id = id.from(_N, "ListSharedReportGroupsInput", "sortOrder"),
            type = "string",
            name = "sortOrder",
            target_id = prelude.String.id,
        }),
        sortBy = schema.new({
            id = id.from(_N, "ListSharedReportGroupsInput", "sortBy"),
            type = "string",
            name = "sortBy",
            target_id = prelude.String.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListSharedReportGroupsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListSharedReportGroupsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListSharedReportGroupsOutput = schema.new({
    id = id.from(_N, "ListSharedReportGroupsOutput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListSharedReportGroupsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        reportGroups = schema.new({
            id = id.from(_N, "ListSharedReportGroupsOutput", "reportGroups"),
            type = "list",
            name = "reportGroups",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ListSourceCredentialsInput = schema.new({
    id = id.from(_N, "ListSourceCredentialsInput"),
    type = "structure",
})

M.SourceCredentialsInfo = schema.new({
    id = id.from(_N, "SourceCredentialsInfo"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "SourceCredentialsInfo", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        serverType = schema.new({
            id = id.from(_N, "SourceCredentialsInfo", "serverType"),
            type = "string",
            name = "serverType",
            target_id = prelude.String.id,
        }),
        authType = schema.new({
            id = id.from(_N, "SourceCredentialsInfo", "authType"),
            type = "string",
            name = "authType",
            target_id = prelude.String.id,
        }),
        resource = schema.new({
            id = id.from(_N, "SourceCredentialsInfo", "resource"),
            type = "string",
            name = "resource",
            target_id = prelude.String.id,
        }),
    },
})

M.ListSourceCredentialsOutput = schema.new({
    id = id.from(_N, "ListSourceCredentialsOutput"),
    type = "structure",
    members = {
        sourceCredentialsInfos = schema.new({
            id = id.from(_N, "ListSourceCredentialsOutput", "sourceCredentialsInfos"),
            type = "list",
            name = "sourceCredentialsInfos",
            target_id = prelude.Document.id,
            list_member = M.SourceCredentialsInfo,
        }),
    },
})

M.PutResourcePolicyInput = schema.new({
    id = id.from(_N, "PutResourcePolicyInput"),
    type = "structure",
    members = {
        policy = schema.new({
            id = id.from(_N, "PutResourcePolicyInput", "policy"),
            type = "string",
            name = "policy",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceArn = schema.new({
            id = id.from(_N, "PutResourcePolicyInput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutResourcePolicyOutput = schema.new({
    id = id.from(_N, "PutResourcePolicyOutput"),
    type = "structure",
    members = {
        resourceArn = schema.new({
            id = id.from(_N, "PutResourcePolicyOutput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
        }),
    },
})

M.RetryBuildInput = schema.new({
    id = id.from(_N, "RetryBuildInput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "RetryBuildInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        idempotencyToken = schema.new({
            id = id.from(_N, "RetryBuildInput", "idempotencyToken"),
            type = "string",
            name = "idempotencyToken",
            target_id = prelude.String.id,
        }),
    },
})

M.RetryBuildOutput = schema.new({
    id = id.from(_N, "RetryBuildOutput"),
    type = "structure",
    members = {
        build = schema.new({
            id = id.from(_N, "RetryBuildOutput", "build"),
            type = "structure",
            name = "build",
            target_id = id.from(_N, "Build"),
            target = M.Build,
        }),
    },
})

M.RetryBuildBatchInput = schema.new({
    id = id.from(_N, "RetryBuildBatchInput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "RetryBuildBatchInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        idempotencyToken = schema.new({
            id = id.from(_N, "RetryBuildBatchInput", "idempotencyToken"),
            type = "string",
            name = "idempotencyToken",
            target_id = prelude.String.id,
        }),
        retryType = schema.new({
            id = id.from(_N, "RetryBuildBatchInput", "retryType"),
            type = "string",
            name = "retryType",
            target_id = prelude.String.id,
        }),
    },
})

M.RetryBuildBatchOutput = schema.new({
    id = id.from(_N, "RetryBuildBatchOutput"),
    type = "structure",
    members = {
        buildBatch = schema.new({
            id = id.from(_N, "RetryBuildBatchOutput", "buildBatch"),
            type = "structure",
            name = "buildBatch",
            target_id = id.from(_N, "BuildBatch"),
            target = M.BuildBatch,
        }),
    },
})

M.StartBuildInput = schema.new({
    id = id.from(_N, "StartBuildInput"),
    type = "structure",
    members = {
        projectName = schema.new({
            id = id.from(_N, "StartBuildInput", "projectName"),
            type = "string",
            name = "projectName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        secondarySourcesOverride = schema.new({
            id = id.from(_N, "StartBuildInput", "secondarySourcesOverride"),
            type = "list",
            name = "secondarySourcesOverride",
            target_id = prelude.Document.id,
            list_member = M.ProjectSource,
        }),
        secondarySourcesVersionOverride = schema.new({
            id = id.from(_N, "StartBuildInput", "secondarySourcesVersionOverride"),
            type = "list",
            name = "secondarySourcesVersionOverride",
            target_id = prelude.Document.id,
            list_member = M.ProjectSourceVersion,
        }),
        sourceVersion = schema.new({
            id = id.from(_N, "StartBuildInput", "sourceVersion"),
            type = "string",
            name = "sourceVersion",
            target_id = prelude.String.id,
        }),
        artifactsOverride = schema.new({
            id = id.from(_N, "StartBuildInput", "artifactsOverride"),
            type = "structure",
            name = "artifactsOverride",
            target_id = id.from(_N, "ProjectArtifacts"),
            target = M.ProjectArtifacts,
        }),
        secondaryArtifactsOverride = schema.new({
            id = id.from(_N, "StartBuildInput", "secondaryArtifactsOverride"),
            type = "list",
            name = "secondaryArtifactsOverride",
            target_id = prelude.Document.id,
            list_member = M.ProjectArtifacts,
        }),
        environmentVariablesOverride = schema.new({
            id = id.from(_N, "StartBuildInput", "environmentVariablesOverride"),
            type = "list",
            name = "environmentVariablesOverride",
            target_id = prelude.Document.id,
            list_member = M.EnvironmentVariable,
        }),
        sourceTypeOverride = schema.new({
            id = id.from(_N, "StartBuildInput", "sourceTypeOverride"),
            type = "string",
            name = "sourceTypeOverride",
            target_id = prelude.String.id,
        }),
        sourceLocationOverride = schema.new({
            id = id.from(_N, "StartBuildInput", "sourceLocationOverride"),
            type = "string",
            name = "sourceLocationOverride",
            target_id = prelude.String.id,
        }),
        sourceAuthOverride = schema.new({
            id = id.from(_N, "StartBuildInput", "sourceAuthOverride"),
            type = "structure",
            name = "sourceAuthOverride",
            target_id = id.from(_N, "SourceAuth"),
            target = M.SourceAuth,
        }),
        gitCloneDepthOverride = schema.new({
            id = id.from(_N, "StartBuildInput", "gitCloneDepthOverride"),
            type = "integer",
            name = "gitCloneDepthOverride",
            target_id = prelude.Integer.id,
        }),
        gitSubmodulesConfigOverride = schema.new({
            id = id.from(_N, "StartBuildInput", "gitSubmodulesConfigOverride"),
            type = "structure",
            name = "gitSubmodulesConfigOverride",
            target_id = id.from(_N, "GitSubmodulesConfig"),
            target = M.GitSubmodulesConfig,
        }),
        buildspecOverride = schema.new({
            id = id.from(_N, "StartBuildInput", "buildspecOverride"),
            type = "string",
            name = "buildspecOverride",
            target_id = prelude.String.id,
        }),
        insecureSslOverride = schema.new({
            id = id.from(_N, "StartBuildInput", "insecureSslOverride"),
            type = "boolean",
            name = "insecureSslOverride",
            target_id = prelude.Boolean.id,
        }),
        reportBuildStatusOverride = schema.new({
            id = id.from(_N, "StartBuildInput", "reportBuildStatusOverride"),
            type = "boolean",
            name = "reportBuildStatusOverride",
            target_id = prelude.Boolean.id,
        }),
        buildStatusConfigOverride = schema.new({
            id = id.from(_N, "StartBuildInput", "buildStatusConfigOverride"),
            type = "structure",
            name = "buildStatusConfigOverride",
            target_id = id.from(_N, "BuildStatusConfig"),
            target = M.BuildStatusConfig,
        }),
        environmentTypeOverride = schema.new({
            id = id.from(_N, "StartBuildInput", "environmentTypeOverride"),
            type = "string",
            name = "environmentTypeOverride",
            target_id = prelude.String.id,
        }),
        imageOverride = schema.new({
            id = id.from(_N, "StartBuildInput", "imageOverride"),
            type = "string",
            name = "imageOverride",
            target_id = prelude.String.id,
        }),
        computeTypeOverride = schema.new({
            id = id.from(_N, "StartBuildInput", "computeTypeOverride"),
            type = "string",
            name = "computeTypeOverride",
            target_id = prelude.String.id,
        }),
        certificateOverride = schema.new({
            id = id.from(_N, "StartBuildInput", "certificateOverride"),
            type = "string",
            name = "certificateOverride",
            target_id = prelude.String.id,
        }),
        cacheOverride = schema.new({
            id = id.from(_N, "StartBuildInput", "cacheOverride"),
            type = "structure",
            name = "cacheOverride",
            target_id = id.from(_N, "ProjectCache"),
            target = M.ProjectCache,
        }),
        serviceRoleOverride = schema.new({
            id = id.from(_N, "StartBuildInput", "serviceRoleOverride"),
            type = "string",
            name = "serviceRoleOverride",
            target_id = prelude.String.id,
        }),
        privilegedModeOverride = schema.new({
            id = id.from(_N, "StartBuildInput", "privilegedModeOverride"),
            type = "boolean",
            name = "privilegedModeOverride",
            target_id = prelude.Boolean.id,
        }),
        timeoutInMinutesOverride = schema.new({
            id = id.from(_N, "StartBuildInput", "timeoutInMinutesOverride"),
            type = "integer",
            name = "timeoutInMinutesOverride",
            target_id = prelude.Integer.id,
        }),
        queuedTimeoutInMinutesOverride = schema.new({
            id = id.from(_N, "StartBuildInput", "queuedTimeoutInMinutesOverride"),
            type = "integer",
            name = "queuedTimeoutInMinutesOverride",
            target_id = prelude.Integer.id,
        }),
        encryptionKeyOverride = schema.new({
            id = id.from(_N, "StartBuildInput", "encryptionKeyOverride"),
            type = "string",
            name = "encryptionKeyOverride",
            target_id = prelude.String.id,
        }),
        idempotencyToken = schema.new({
            id = id.from(_N, "StartBuildInput", "idempotencyToken"),
            type = "string",
            name = "idempotencyToken",
            target_id = prelude.String.id,
        }),
        logsConfigOverride = schema.new({
            id = id.from(_N, "StartBuildInput", "logsConfigOverride"),
            type = "structure",
            name = "logsConfigOverride",
            target_id = id.from(_N, "LogsConfig"),
            target = M.LogsConfig,
        }),
        registryCredentialOverride = schema.new({
            id = id.from(_N, "StartBuildInput", "registryCredentialOverride"),
            type = "structure",
            name = "registryCredentialOverride",
            target_id = id.from(_N, "RegistryCredential"),
            target = M.RegistryCredential,
        }),
        imagePullCredentialsTypeOverride = schema.new({
            id = id.from(_N, "StartBuildInput", "imagePullCredentialsTypeOverride"),
            type = "string",
            name = "imagePullCredentialsTypeOverride",
            target_id = prelude.String.id,
        }),
        debugSessionEnabled = schema.new({
            id = id.from(_N, "StartBuildInput", "debugSessionEnabled"),
            type = "boolean",
            name = "debugSessionEnabled",
            target_id = prelude.Boolean.id,
        }),
        fleetOverride = schema.new({
            id = id.from(_N, "StartBuildInput", "fleetOverride"),
            type = "structure",
            name = "fleetOverride",
            target_id = id.from(_N, "ProjectFleet"),
            target = M.ProjectFleet,
        }),
        autoRetryLimitOverride = schema.new({
            id = id.from(_N, "StartBuildInput", "autoRetryLimitOverride"),
            type = "integer",
            name = "autoRetryLimitOverride",
            target_id = prelude.Integer.id,
        }),
    },
})

M.StartBuildOutput = schema.new({
    id = id.from(_N, "StartBuildOutput"),
    type = "structure",
    members = {
        build = schema.new({
            id = id.from(_N, "StartBuildOutput", "build"),
            type = "structure",
            name = "build",
            target_id = id.from(_N, "Build"),
            target = M.Build,
        }),
    },
})

M.StartBuildBatchInput = schema.new({
    id = id.from(_N, "StartBuildBatchInput"),
    type = "structure",
    members = {
        projectName = schema.new({
            id = id.from(_N, "StartBuildBatchInput", "projectName"),
            type = "string",
            name = "projectName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        secondarySourcesOverride = schema.new({
            id = id.from(_N, "StartBuildBatchInput", "secondarySourcesOverride"),
            type = "list",
            name = "secondarySourcesOverride",
            target_id = prelude.Document.id,
            list_member = M.ProjectSource,
        }),
        secondarySourcesVersionOverride = schema.new({
            id = id.from(_N, "StartBuildBatchInput", "secondarySourcesVersionOverride"),
            type = "list",
            name = "secondarySourcesVersionOverride",
            target_id = prelude.Document.id,
            list_member = M.ProjectSourceVersion,
        }),
        sourceVersion = schema.new({
            id = id.from(_N, "StartBuildBatchInput", "sourceVersion"),
            type = "string",
            name = "sourceVersion",
            target_id = prelude.String.id,
        }),
        artifactsOverride = schema.new({
            id = id.from(_N, "StartBuildBatchInput", "artifactsOverride"),
            type = "structure",
            name = "artifactsOverride",
            target_id = id.from(_N, "ProjectArtifacts"),
            target = M.ProjectArtifacts,
        }),
        secondaryArtifactsOverride = schema.new({
            id = id.from(_N, "StartBuildBatchInput", "secondaryArtifactsOverride"),
            type = "list",
            name = "secondaryArtifactsOverride",
            target_id = prelude.Document.id,
            list_member = M.ProjectArtifacts,
        }),
        environmentVariablesOverride = schema.new({
            id = id.from(_N, "StartBuildBatchInput", "environmentVariablesOverride"),
            type = "list",
            name = "environmentVariablesOverride",
            target_id = prelude.Document.id,
            list_member = M.EnvironmentVariable,
        }),
        sourceTypeOverride = schema.new({
            id = id.from(_N, "StartBuildBatchInput", "sourceTypeOverride"),
            type = "string",
            name = "sourceTypeOverride",
            target_id = prelude.String.id,
        }),
        sourceLocationOverride = schema.new({
            id = id.from(_N, "StartBuildBatchInput", "sourceLocationOverride"),
            type = "string",
            name = "sourceLocationOverride",
            target_id = prelude.String.id,
        }),
        sourceAuthOverride = schema.new({
            id = id.from(_N, "StartBuildBatchInput", "sourceAuthOverride"),
            type = "structure",
            name = "sourceAuthOverride",
            target_id = id.from(_N, "SourceAuth"),
            target = M.SourceAuth,
        }),
        gitCloneDepthOverride = schema.new({
            id = id.from(_N, "StartBuildBatchInput", "gitCloneDepthOverride"),
            type = "integer",
            name = "gitCloneDepthOverride",
            target_id = prelude.Integer.id,
        }),
        gitSubmodulesConfigOverride = schema.new({
            id = id.from(_N, "StartBuildBatchInput", "gitSubmodulesConfigOverride"),
            type = "structure",
            name = "gitSubmodulesConfigOverride",
            target_id = id.from(_N, "GitSubmodulesConfig"),
            target = M.GitSubmodulesConfig,
        }),
        buildspecOverride = schema.new({
            id = id.from(_N, "StartBuildBatchInput", "buildspecOverride"),
            type = "string",
            name = "buildspecOverride",
            target_id = prelude.String.id,
        }),
        insecureSslOverride = schema.new({
            id = id.from(_N, "StartBuildBatchInput", "insecureSslOverride"),
            type = "boolean",
            name = "insecureSslOverride",
            target_id = prelude.Boolean.id,
        }),
        reportBuildBatchStatusOverride = schema.new({
            id = id.from(_N, "StartBuildBatchInput", "reportBuildBatchStatusOverride"),
            type = "boolean",
            name = "reportBuildBatchStatusOverride",
            target_id = prelude.Boolean.id,
        }),
        environmentTypeOverride = schema.new({
            id = id.from(_N, "StartBuildBatchInput", "environmentTypeOverride"),
            type = "string",
            name = "environmentTypeOverride",
            target_id = prelude.String.id,
        }),
        imageOverride = schema.new({
            id = id.from(_N, "StartBuildBatchInput", "imageOverride"),
            type = "string",
            name = "imageOverride",
            target_id = prelude.String.id,
        }),
        computeTypeOverride = schema.new({
            id = id.from(_N, "StartBuildBatchInput", "computeTypeOverride"),
            type = "string",
            name = "computeTypeOverride",
            target_id = prelude.String.id,
        }),
        certificateOverride = schema.new({
            id = id.from(_N, "StartBuildBatchInput", "certificateOverride"),
            type = "string",
            name = "certificateOverride",
            target_id = prelude.String.id,
        }),
        cacheOverride = schema.new({
            id = id.from(_N, "StartBuildBatchInput", "cacheOverride"),
            type = "structure",
            name = "cacheOverride",
            target_id = id.from(_N, "ProjectCache"),
            target = M.ProjectCache,
        }),
        serviceRoleOverride = schema.new({
            id = id.from(_N, "StartBuildBatchInput", "serviceRoleOverride"),
            type = "string",
            name = "serviceRoleOverride",
            target_id = prelude.String.id,
        }),
        privilegedModeOverride = schema.new({
            id = id.from(_N, "StartBuildBatchInput", "privilegedModeOverride"),
            type = "boolean",
            name = "privilegedModeOverride",
            target_id = prelude.Boolean.id,
        }),
        buildTimeoutInMinutesOverride = schema.new({
            id = id.from(_N, "StartBuildBatchInput", "buildTimeoutInMinutesOverride"),
            type = "integer",
            name = "buildTimeoutInMinutesOverride",
            target_id = prelude.Integer.id,
        }),
        queuedTimeoutInMinutesOverride = schema.new({
            id = id.from(_N, "StartBuildBatchInput", "queuedTimeoutInMinutesOverride"),
            type = "integer",
            name = "queuedTimeoutInMinutesOverride",
            target_id = prelude.Integer.id,
        }),
        encryptionKeyOverride = schema.new({
            id = id.from(_N, "StartBuildBatchInput", "encryptionKeyOverride"),
            type = "string",
            name = "encryptionKeyOverride",
            target_id = prelude.String.id,
        }),
        idempotencyToken = schema.new({
            id = id.from(_N, "StartBuildBatchInput", "idempotencyToken"),
            type = "string",
            name = "idempotencyToken",
            target_id = prelude.String.id,
        }),
        logsConfigOverride = schema.new({
            id = id.from(_N, "StartBuildBatchInput", "logsConfigOverride"),
            type = "structure",
            name = "logsConfigOverride",
            target_id = id.from(_N, "LogsConfig"),
            target = M.LogsConfig,
        }),
        registryCredentialOverride = schema.new({
            id = id.from(_N, "StartBuildBatchInput", "registryCredentialOverride"),
            type = "structure",
            name = "registryCredentialOverride",
            target_id = id.from(_N, "RegistryCredential"),
            target = M.RegistryCredential,
        }),
        imagePullCredentialsTypeOverride = schema.new({
            id = id.from(_N, "StartBuildBatchInput", "imagePullCredentialsTypeOverride"),
            type = "string",
            name = "imagePullCredentialsTypeOverride",
            target_id = prelude.String.id,
        }),
        buildBatchConfigOverride = schema.new({
            id = id.from(_N, "StartBuildBatchInput", "buildBatchConfigOverride"),
            type = "structure",
            name = "buildBatchConfigOverride",
            target_id = id.from(_N, "ProjectBuildBatchConfig"),
            target = M.ProjectBuildBatchConfig,
        }),
        debugSessionEnabled = schema.new({
            id = id.from(_N, "StartBuildBatchInput", "debugSessionEnabled"),
            type = "boolean",
            name = "debugSessionEnabled",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.StartBuildBatchOutput = schema.new({
    id = id.from(_N, "StartBuildBatchOutput"),
    type = "structure",
    members = {
        buildBatch = schema.new({
            id = id.from(_N, "StartBuildBatchOutput", "buildBatch"),
            type = "structure",
            name = "buildBatch",
            target_id = id.from(_N, "BuildBatch"),
            target = M.BuildBatch,
        }),
    },
})

M.StartCommandExecutionInput = schema.new({
    id = id.from(_N, "StartCommandExecutionInput"),
    type = "structure",
    members = {
        sandboxId = schema.new({
            id = id.from(_N, "StartCommandExecutionInput", "sandboxId"),
            type = "string",
            name = "sandboxId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        command = schema.new({
            id = id.from(_N, "StartCommandExecutionInput", "command"),
            type = "string",
            name = "command",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        type = schema.new({
            id = id.from(_N, "StartCommandExecutionInput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
    },
})

M.StartCommandExecutionOutput = schema.new({
    id = id.from(_N, "StartCommandExecutionOutput"),
    type = "structure",
    members = {
        commandExecution = schema.new({
            id = id.from(_N, "StartCommandExecutionOutput", "commandExecution"),
            type = "structure",
            name = "commandExecution",
            target_id = id.from(_N, "CommandExecution"),
            target = M.CommandExecution,
        }),
    },
})

M.StartSandboxInput = schema.new({
    id = id.from(_N, "StartSandboxInput"),
    type = "structure",
    members = {
        projectName = schema.new({
            id = id.from(_N, "StartSandboxInput", "projectName"),
            type = "string",
            name = "projectName",
            target_id = prelude.String.id,
        }),
        idempotencyToken = schema.new({
            id = id.from(_N, "StartSandboxInput", "idempotencyToken"),
            type = "string",
            name = "idempotencyToken",
            target_id = prelude.String.id,
        }),
    },
})

M.StartSandboxOutput = schema.new({
    id = id.from(_N, "StartSandboxOutput"),
    type = "structure",
    members = {
        sandbox = schema.new({
            id = id.from(_N, "StartSandboxOutput", "sandbox"),
            type = "structure",
            name = "sandbox",
            target_id = id.from(_N, "Sandbox"),
            target = M.Sandbox,
        }),
    },
})

M.StartSandboxConnectionInput = schema.new({
    id = id.from(_N, "StartSandboxConnectionInput"),
    type = "structure",
    members = {
        sandboxId = schema.new({
            id = id.from(_N, "StartSandboxConnectionInput", "sandboxId"),
            type = "string",
            name = "sandboxId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SSMSession = schema.new({
    id = id.from(_N, "SSMSession"),
    type = "structure",
    members = {
        sessionId = schema.new({
            id = id.from(_N, "SSMSession", "sessionId"),
            type = "string",
            name = "sessionId",
            target_id = prelude.String.id,
        }),
        tokenValue = schema.new({
            id = id.from(_N, "SSMSession", "tokenValue"),
            type = "string",
            name = "tokenValue",
            target_id = prelude.String.id,
        }),
        streamUrl = schema.new({
            id = id.from(_N, "SSMSession", "streamUrl"),
            type = "string",
            name = "streamUrl",
            target_id = prelude.String.id,
        }),
    },
})

M.StartSandboxConnectionOutput = schema.new({
    id = id.from(_N, "StartSandboxConnectionOutput"),
    type = "structure",
    members = {
        ssmSession = schema.new({
            id = id.from(_N, "StartSandboxConnectionOutput", "ssmSession"),
            type = "structure",
            name = "ssmSession",
            target_id = id.from(_N, "SSMSession"),
            target = M.SSMSession,
        }),
    },
})

M.StopBuildInput = schema.new({
    id = id.from(_N, "StopBuildInput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "StopBuildInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StopBuildOutput = schema.new({
    id = id.from(_N, "StopBuildOutput"),
    type = "structure",
    members = {
        build = schema.new({
            id = id.from(_N, "StopBuildOutput", "build"),
            type = "structure",
            name = "build",
            target_id = id.from(_N, "Build"),
            target = M.Build,
        }),
    },
})

M.StopBuildBatchInput = schema.new({
    id = id.from(_N, "StopBuildBatchInput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "StopBuildBatchInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StopBuildBatchOutput = schema.new({
    id = id.from(_N, "StopBuildBatchOutput"),
    type = "structure",
    members = {
        buildBatch = schema.new({
            id = id.from(_N, "StopBuildBatchOutput", "buildBatch"),
            type = "structure",
            name = "buildBatch",
            target_id = id.from(_N, "BuildBatch"),
            target = M.BuildBatch,
        }),
    },
})

M.StopSandboxInput = schema.new({
    id = id.from(_N, "StopSandboxInput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "StopSandboxInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StopSandboxOutput = schema.new({
    id = id.from(_N, "StopSandboxOutput"),
    type = "structure",
    members = {
        sandbox = schema.new({
            id = id.from(_N, "StopSandboxOutput", "sandbox"),
            type = "structure",
            name = "sandbox",
            target_id = id.from(_N, "Sandbox"),
            target = M.Sandbox,
        }),
    },
})

M.UpdateFleetInput = schema.new({
    id = id.from(_N, "UpdateFleetInput"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "UpdateFleetInput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        baseCapacity = schema.new({
            id = id.from(_N, "UpdateFleetInput", "baseCapacity"),
            type = "integer",
            name = "baseCapacity",
            target_id = prelude.Integer.id,
        }),
        environmentType = schema.new({
            id = id.from(_N, "UpdateFleetInput", "environmentType"),
            type = "string",
            name = "environmentType",
            target_id = prelude.String.id,
        }),
        computeType = schema.new({
            id = id.from(_N, "UpdateFleetInput", "computeType"),
            type = "string",
            name = "computeType",
            target_id = prelude.String.id,
        }),
        computeConfiguration = schema.new({
            id = id.from(_N, "UpdateFleetInput", "computeConfiguration"),
            type = "structure",
            name = "computeConfiguration",
            target_id = id.from(_N, "ComputeConfiguration"),
            target = M.ComputeConfiguration,
        }),
        scalingConfiguration = schema.new({
            id = id.from(_N, "UpdateFleetInput", "scalingConfiguration"),
            type = "structure",
            name = "scalingConfiguration",
            target_id = id.from(_N, "ScalingConfigurationInput"),
            target = M.ScalingConfigurationInput,
        }),
        overflowBehavior = schema.new({
            id = id.from(_N, "UpdateFleetInput", "overflowBehavior"),
            type = "string",
            name = "overflowBehavior",
            target_id = prelude.String.id,
        }),
        vpcConfig = schema.new({
            id = id.from(_N, "UpdateFleetInput", "vpcConfig"),
            type = "structure",
            name = "vpcConfig",
            target_id = id.from(_N, "VpcConfig"),
            target = M.VpcConfig,
        }),
        proxyConfiguration = schema.new({
            id = id.from(_N, "UpdateFleetInput", "proxyConfiguration"),
            type = "structure",
            name = "proxyConfiguration",
            target_id = id.from(_N, "ProxyConfiguration"),
            target = M.ProxyConfiguration,
        }),
        imageId = schema.new({
            id = id.from(_N, "UpdateFleetInput", "imageId"),
            type = "string",
            name = "imageId",
            target_id = prelude.String.id,
        }),
        fleetServiceRole = schema.new({
            id = id.from(_N, "UpdateFleetInput", "fleetServiceRole"),
            type = "string",
            name = "fleetServiceRole",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "UpdateFleetInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.UpdateFleetOutput = schema.new({
    id = id.from(_N, "UpdateFleetOutput"),
    type = "structure",
    members = {
        fleet = schema.new({
            id = id.from(_N, "UpdateFleetOutput", "fleet"),
            type = "structure",
            name = "fleet",
            target_id = id.from(_N, "Fleet"),
            target = M.Fleet,
        }),
    },
})

M.UpdateProjectInput = schema.new({
    id = id.from(_N, "UpdateProjectInput"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "UpdateProjectInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "UpdateProjectInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        source = schema.new({
            id = id.from(_N, "UpdateProjectInput", "source"),
            type = "structure",
            name = "source",
            target_id = id.from(_N, "ProjectSource"),
            target = M.ProjectSource,
        }),
        secondarySources = schema.new({
            id = id.from(_N, "UpdateProjectInput", "secondarySources"),
            type = "list",
            name = "secondarySources",
            target_id = prelude.Document.id,
            list_member = M.ProjectSource,
        }),
        sourceVersion = schema.new({
            id = id.from(_N, "UpdateProjectInput", "sourceVersion"),
            type = "string",
            name = "sourceVersion",
            target_id = prelude.String.id,
        }),
        secondarySourceVersions = schema.new({
            id = id.from(_N, "UpdateProjectInput", "secondarySourceVersions"),
            type = "list",
            name = "secondarySourceVersions",
            target_id = prelude.Document.id,
            list_member = M.ProjectSourceVersion,
        }),
        artifacts = schema.new({
            id = id.from(_N, "UpdateProjectInput", "artifacts"),
            type = "structure",
            name = "artifacts",
            target_id = id.from(_N, "ProjectArtifacts"),
            target = M.ProjectArtifacts,
        }),
        secondaryArtifacts = schema.new({
            id = id.from(_N, "UpdateProjectInput", "secondaryArtifacts"),
            type = "list",
            name = "secondaryArtifacts",
            target_id = prelude.Document.id,
            list_member = M.ProjectArtifacts,
        }),
        cache = schema.new({
            id = id.from(_N, "UpdateProjectInput", "cache"),
            type = "structure",
            name = "cache",
            target_id = id.from(_N, "ProjectCache"),
            target = M.ProjectCache,
        }),
        environment = schema.new({
            id = id.from(_N, "UpdateProjectInput", "environment"),
            type = "structure",
            name = "environment",
            target_id = id.from(_N, "ProjectEnvironment"),
            target = M.ProjectEnvironment,
        }),
        serviceRole = schema.new({
            id = id.from(_N, "UpdateProjectInput", "serviceRole"),
            type = "string",
            name = "serviceRole",
            target_id = prelude.String.id,
        }),
        timeoutInMinutes = schema.new({
            id = id.from(_N, "UpdateProjectInput", "timeoutInMinutes"),
            type = "integer",
            name = "timeoutInMinutes",
            target_id = prelude.Integer.id,
        }),
        queuedTimeoutInMinutes = schema.new({
            id = id.from(_N, "UpdateProjectInput", "queuedTimeoutInMinutes"),
            type = "integer",
            name = "queuedTimeoutInMinutes",
            target_id = prelude.Integer.id,
        }),
        encryptionKey = schema.new({
            id = id.from(_N, "UpdateProjectInput", "encryptionKey"),
            type = "string",
            name = "encryptionKey",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "UpdateProjectInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        vpcConfig = schema.new({
            id = id.from(_N, "UpdateProjectInput", "vpcConfig"),
            type = "structure",
            name = "vpcConfig",
            target_id = id.from(_N, "VpcConfig"),
            target = M.VpcConfig,
        }),
        badgeEnabled = schema.new({
            id = id.from(_N, "UpdateProjectInput", "badgeEnabled"),
            type = "boolean",
            name = "badgeEnabled",
            target_id = prelude.Boolean.id,
        }),
        logsConfig = schema.new({
            id = id.from(_N, "UpdateProjectInput", "logsConfig"),
            type = "structure",
            name = "logsConfig",
            target_id = id.from(_N, "LogsConfig"),
            target = M.LogsConfig,
        }),
        fileSystemLocations = schema.new({
            id = id.from(_N, "UpdateProjectInput", "fileSystemLocations"),
            type = "list",
            name = "fileSystemLocations",
            target_id = prelude.Document.id,
            list_member = M.ProjectFileSystemLocation,
        }),
        buildBatchConfig = schema.new({
            id = id.from(_N, "UpdateProjectInput", "buildBatchConfig"),
            type = "structure",
            name = "buildBatchConfig",
            target_id = id.from(_N, "ProjectBuildBatchConfig"),
            target = M.ProjectBuildBatchConfig,
        }),
        concurrentBuildLimit = schema.new({
            id = id.from(_N, "UpdateProjectInput", "concurrentBuildLimit"),
            type = "integer",
            name = "concurrentBuildLimit",
            target_id = prelude.Integer.id,
        }),
        autoRetryLimit = schema.new({
            id = id.from(_N, "UpdateProjectInput", "autoRetryLimit"),
            type = "integer",
            name = "autoRetryLimit",
            target_id = prelude.Integer.id,
        }),
    },
})

M.UpdateProjectOutput = schema.new({
    id = id.from(_N, "UpdateProjectOutput"),
    type = "structure",
    members = {
        project = schema.new({
            id = id.from(_N, "UpdateProjectOutput", "project"),
            type = "structure",
            name = "project",
            target_id = id.from(_N, "Project"),
            target = M.Project,
        }),
    },
})

M.UpdateProjectVisibilityInput = schema.new({
    id = id.from(_N, "UpdateProjectVisibilityInput"),
    type = "structure",
    members = {
        projectArn = schema.new({
            id = id.from(_N, "UpdateProjectVisibilityInput", "projectArn"),
            type = "string",
            name = "projectArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        projectVisibility = schema.new({
            id = id.from(_N, "UpdateProjectVisibilityInput", "projectVisibility"),
            type = "string",
            name = "projectVisibility",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceAccessRole = schema.new({
            id = id.from(_N, "UpdateProjectVisibilityInput", "resourceAccessRole"),
            type = "string",
            name = "resourceAccessRole",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateProjectVisibilityOutput = schema.new({
    id = id.from(_N, "UpdateProjectVisibilityOutput"),
    type = "structure",
    members = {
        projectArn = schema.new({
            id = id.from(_N, "UpdateProjectVisibilityOutput", "projectArn"),
            type = "string",
            name = "projectArn",
            target_id = prelude.String.id,
        }),
        publicProjectAlias = schema.new({
            id = id.from(_N, "UpdateProjectVisibilityOutput", "publicProjectAlias"),
            type = "string",
            name = "publicProjectAlias",
            target_id = prelude.String.id,
        }),
        projectVisibility = schema.new({
            id = id.from(_N, "UpdateProjectVisibilityOutput", "projectVisibility"),
            type = "string",
            name = "projectVisibility",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateReportGroupInput = schema.new({
    id = id.from(_N, "UpdateReportGroupInput"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "UpdateReportGroupInput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        exportConfig = schema.new({
            id = id.from(_N, "UpdateReportGroupInput", "exportConfig"),
            type = "structure",
            name = "exportConfig",
            target_id = id.from(_N, "ReportExportConfig"),
            target = M.ReportExportConfig,
        }),
        tags = schema.new({
            id = id.from(_N, "UpdateReportGroupInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.UpdateReportGroupOutput = schema.new({
    id = id.from(_N, "UpdateReportGroupOutput"),
    type = "structure",
    members = {
        reportGroup = schema.new({
            id = id.from(_N, "UpdateReportGroupOutput", "reportGroup"),
            type = "structure",
            name = "reportGroup",
            target_id = id.from(_N, "ReportGroup"),
            target = M.ReportGroup,
        }),
    },
})

M.UpdateWebhookInput = schema.new({
    id = id.from(_N, "UpdateWebhookInput"),
    type = "structure",
    members = {
        projectName = schema.new({
            id = id.from(_N, "UpdateWebhookInput", "projectName"),
            type = "string",
            name = "projectName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        branchFilter = schema.new({
            id = id.from(_N, "UpdateWebhookInput", "branchFilter"),
            type = "string",
            name = "branchFilter",
            target_id = prelude.String.id,
        }),
        rotateSecret = schema.new({
            id = id.from(_N, "UpdateWebhookInput", "rotateSecret"),
            type = "boolean",
            name = "rotateSecret",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        filterGroups = schema.new({
            id = id.from(_N, "UpdateWebhookInput", "filterGroups"),
            type = "list",
            name = "filterGroups",
            target_id = prelude.Document.id,
            list_member = prelude.Document,
        }),
        buildType = schema.new({
            id = id.from(_N, "UpdateWebhookInput", "buildType"),
            type = "string",
            name = "buildType",
            target_id = prelude.String.id,
        }),
        pullRequestBuildPolicy = schema.new({
            id = id.from(_N, "UpdateWebhookInput", "pullRequestBuildPolicy"),
            type = "structure",
            name = "pullRequestBuildPolicy",
            target_id = id.from(_N, "PullRequestBuildPolicy"),
            target = M.PullRequestBuildPolicy,
        }),
    },
})

M.UpdateWebhookOutput = schema.new({
    id = id.from(_N, "UpdateWebhookOutput"),
    type = "structure",
    members = {
        webhook = schema.new({
            id = id.from(_N, "UpdateWebhookOutput", "webhook"),
            type = "structure",
            name = "webhook",
            target_id = id.from(_N, "Webhook"),
            target = M.Webhook,
        }),
    },
})

return M
