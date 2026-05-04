local M = {}

M.AcceptGroupingRecommendationEntry = {
    type = "structure",
    members = {
        groupingRecommendationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AcceptResourceGroupingRecommendationsInput = {
    type = "structure",
    members = {
        appArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        entries = {
            type = "list",
            member = M.AcceptGroupingRecommendationEntry,
            traits = {
                required = true,
            },
        },
    },
}

M.FailedGroupingRecommendationEntry = {
    type = "structure",
    members = {
        groupingRecommendationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        errorMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AcceptResourceGroupingRecommendationsOutput = {
    type = "structure",
    members = {
        appArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        failedEntries = {
            type = "list",
            member = M.FailedGroupingRecommendationEntry,
            traits = {
                required = true,
            },
        },
    },
}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
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
        resourceId = {
            type = "string",
        },
        resourceType = {
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
        retryAfterSeconds = {
            type = "integer",
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

M.ResourceMappingType = {
    CFN_STACK = "CfnStack",
    RESOURCE = "Resource",
    APP_REGISTRY_APP = "AppRegistryApp",
    RESOURCE_GROUP = "ResourceGroup",
    TERRAFORM = "Terraform",
    EKS = "EKS",
}

M.PhysicalIdentifierType = {
    ARN = "Arn",
    NATIVE = "Native",
}

M.PhysicalResourceId = {
    type = "structure",
    members = {
        identifier = {
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
        awsRegion = {
            type = "string",
        },
        awsAccountId = {
            type = "string",
        },
    },
}

M.ResourceMapping = {
    type = "structure",
    members = {
        resourceName = {
            type = "string",
        },
        logicalStackName = {
            type = "string",
        },
        appRegistryAppName = {
            type = "string",
        },
        resourceGroupName = {
            type = "string",
        },
        mappingType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        physicalResourceId = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PhysicalResourceId }),
        terraformSourceName = {
            type = "string",
        },
        eksSourceName = {
            type = "string",
        },
    },
}

M.AddDraftAppVersionResourceMappingsInput = {
    type = "structure",
    members = {
        appArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceMappings = {
            type = "list",
            member = M.ResourceMapping,
            traits = {
                required = true,
            },
        },
    },
}

M.AddDraftAppVersionResourceMappingsOutput = {
    type = "structure",
    members = {
        appArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        appVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceMappings = {
            type = "list",
            member = M.ResourceMapping,
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
        resourceId = {
            type = "string",
        },
        resourceType = {
            type = "string",
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.Alarm = {
    type = "structure",
    members = {
        alarmArn = {
            type = "string",
        },
        source = {
            type = "string",
        },
    },
}

M.ExcludeRecommendationReason = {
    ALREADY_IMPLEMENTED = "AlreadyImplemented",
    NOT_RELEVANT = "NotRelevant",
    COMPLEXITY_OF_IMPLEMENTATION = "ComplexityOfImplementation",
}

M.Experiment = {
    type = "structure",
    members = {
        experimentArn = {
            type = "string",
        },
        experimentTemplateId = {
            type = "string",
        },
    },
}

M.RecommendationItem = {
    type = "structure",
    members = {
        resourceId = {
            type = "string",
        },
        targetAccountId = {
            type = "string",
        },
        targetRegion = {
            type = "string",
        },
        alreadyImplemented = {
            type = "boolean",
        },
        excluded = {
            type = "boolean",
        },
        excludeReason = {
            type = "string",
        },
        latestDiscoveredExperiment = M.Experiment,
        discoveredAlarm = M.Alarm,
    },
}

M.RecommendationStatus = {
    IMPLEMENTED = "Implemented",
    INACTIVE = "Inactive",
    NOT_IMPLEMENTED = "NotImplemented",
    EXCLUDED = "Excluded",
}

M.AlarmType = {
    METRIC = "Metric",
    COMPOSITE = "Composite",
    CANARY = "Canary",
    LOGS = "Logs",
    EVENT = "Event",
}

M.AlarmRecommendation = {
    type = "structure",
    members = {
        recommendationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        referenceId = {
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
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        appComponentName = {
            type = "string",
        },
        items = {
            type = "list",
            member = M.RecommendationItem,
        },
        prerequisite = {
            type = "string",
        },
        appComponentNames = {
            type = "list",
            member = { type = "string" },
        },
        recommendationStatus = {
            type = "string",
        },
    },
}

M.AppAssessmentScheduleType = {
    DISABLED = "Disabled",
    DAILY = "Daily",
}

M.AppComplianceStatusType = {
    POLICY_BREACHED = "PolicyBreached",
    POLICY_MET = "PolicyMet",
    NOT_ASSESSED = "NotAssessed",
    CHANGES_DETECTED = "ChangesDetected",
    NOT_APPLICABLE = "NotApplicable",
    MISSING_POLICY = "MissingPolicy",
}

M.AppDriftStatusType = {
    NOT_CHECKED = "NotChecked",
    NOT_DETECTED = "NotDetected",
    DETECTED = "Detected",
}

M.EventType = {
    SCHEDULED_ASSESSMENT_FAILURE = "ScheduledAssessmentFailure",
    DRIFT_DETECTED = "DriftDetected",
}

M.EventSubscription = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        eventType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        snsTopicArn = {
            type = "string",
        },
    },
}

M.PermissionModelType = {
    LEGACY_IAM_USER = "LegacyIAMUser",
    ROLE_BASED = "RoleBased",
}

M.PermissionModel = {
    type = "structure",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        invokerRoleName = {
            type = "string",
        },
        crossAccountRoleArns = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.AppStatusType = {
    ACTIVE = "Active",
    DELETING = "Deleting",
}

M.App = {
    type = "structure",
    members = {
        appArn = {
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
        policyArn = {
            type = "string",
        },
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
        },
        complianceStatus = {
            type = "string",
        },
        lastAppComplianceEvaluationTime = {
            type = "timestamp",
        },
        resiliencyScore = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        lastResiliencyScoreEvaluationTime = {
            type = "timestamp",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        assessmentSchedule = {
            type = "string",
        },
        permissionModel = M.PermissionModel,
        eventSubscriptions = {
            type = "list",
            member = M.EventSubscription,
        },
        driftStatus = {
            type = "string",
        },
        lastDriftEvaluationTime = {
            type = "timestamp",
        },
        rtoInSecs = {
            type = "integer",
        },
        rpoInSecs = {
            type = "integer",
        },
        awsApplicationArn = {
            type = "string",
        },
    },
}

M.AssessmentStatus = {
    PENDING = "Pending",
    INPROGRESS = "InProgress",
    FAILED = "Failed",
    SUCCESS = "Success",
}

M.DisruptionType = {
    SOFTWARE = "Software",
    HARDWARE = "Hardware",
    AZ = "AZ",
    REGION = "Region",
}

M.ComplianceStatus = {
    POLICY_BREACHED = "PolicyBreached",
    POLICY_MET = "PolicyMet",
    NOT_APPLICABLE = "NotApplicable",
    MISSING_POLICY = "MissingPolicy",
}

M.DisruptionCompliance = {
    type = "structure",
    members = {
        achievableRtoInSecs = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        currentRtoInSecs = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        rtoReferenceId = {
            type = "string",
        },
        rtoDescription = {
            type = "string",
        },
        currentRpoInSecs = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        rpoReferenceId = {
            type = "string",
        },
        rpoDescription = {
            type = "string",
        },
        complianceStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        achievableRpoInSecs = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        message = {
            type = "string",
        },
    },
}

M.CostFrequency = {
    HOURLY = "Hourly",
    DAILY = "Daily",
    MONTHLY = "Monthly",
    YEARLY = "Yearly",
}

M.Cost = {
    type = "structure",
    members = {
        amount = {
            type = "double",
            traits = {
                default = 0,
                required = true,
            },
        },
        currency = {
            type = "string",
            traits = {
                required = true,
            },
        },
        frequency = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DriftStatus = {
    NOT_CHECKED = "NotChecked",
    NOT_DETECTED = "NotDetected",
    DETECTED = "Detected",
}

M.AssessmentInvoker = {
    USER = "User",
    SYSTEM = "System",
}

M.DataLocationConstraint = {
    ANY_LOCATION = "AnyLocation",
    SAME_CONTINENT = "SameContinent",
    SAME_COUNTRY = "SameCountry",
}

M.EstimatedCostTier = {
    L1 = "L1",
    L2 = "L2",
    L3 = "L3",
    L4 = "L4",
}

M.FailurePolicy = {
    type = "structure",
    members = {
        rtoInSecs = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        rpoInSecs = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.ResiliencyPolicyTier = {
    MISSION_CRITICAL = "MissionCritical",
    CRITICAL = "Critical",
    IMPORTANT = "Important",
    CORE_SERVICES = "CoreServices",
    NON_CRITICAL = "NonCritical",
    NOT_APPLICABLE = "NotApplicable",
}

M.ResiliencyPolicy = {
    type = "structure",
    members = {
        policyArn = {
            type = "string",
        },
        policyName = {
            type = "string",
        },
        policyDescription = {
            type = "string",
        },
        dataLocationConstraint = {
            type = "string",
        },
        tier = {
            type = "string",
        },
        estimatedCostTier = {
            type = "string",
        },
        policy = {
            type = "map",
            key = { type = "string" },
            value = M.FailurePolicy,
        },
        creationTime = {
            type = "timestamp",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ResiliencyScoreType = {
    COMPLIANCE = "Compliance",
    TEST = "Test",
    ALARM = "Alarm",
    SOP = "Sop",
}

M.ScoringComponentResiliencyScore = {
    type = "structure",
    members = {
        score = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        possibleScore = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        outstandingCount = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        excludedCount = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.ResiliencyScore = {
    type = "structure",
    members = {
        score = {
            type = "double",
            traits = {
                default = 0,
                required = true,
            },
        },
        disruptionScore = {
            type = "map",
            key = { type = "string" },
            value = { type = "double" },
            traits = {
                required = true,
            },
        },
        componentScore = {
            type = "map",
            key = { type = "string" },
            value = M.ScoringComponentResiliencyScore,
        },
    },
}

M.ResourceError = {
    type = "structure",
    members = {
        logicalResourceId = {
            type = "string",
        },
        physicalResourceId = {
            type = "string",
        },
        reason = {
            type = "string",
        },
    },
}

M.ResourceErrorsDetails = {
    type = "structure",
    members = {
        resourceErrors = {
            type = "list",
            member = M.ResourceError,
        },
        hasMoreErrors = {
            type = "boolean",
        },
    },
}

M.AssessmentRiskRecommendation = {
    type = "structure",
    members = {
        risk = {
            type = "string",
        },
        recommendation = {
            type = "string",
        },
        appComponents = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.AssessmentSummary = {
    type = "structure",
    members = {
        summary = {
            type = "string",
        },
        riskRecommendations = {
            type = "list",
            member = M.AssessmentRiskRecommendation,
        },
    },
}

M.AppAssessment = {
    type = "structure",
    members = {
        appArn = {
            type = "string",
        },
        appVersion = {
            type = "string",
        },
        invoker = {
            type = "string",
            traits = {
                required = true,
            },
        },
        cost = M.Cost,
        resiliencyScore = M.ResiliencyScore,
        compliance = {
            type = "map",
            key = { type = "string" },
            value = M.DisruptionCompliance,
        },
        complianceStatus = {
            type = "string",
        },
        assessmentStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        startTime = {
            type = "timestamp",
        },
        endTime = {
            type = "timestamp",
        },
        message = {
            type = "string",
        },
        assessmentName = {
            type = "string",
        },
        assessmentArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policy = M.ResiliencyPolicy,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        resourceErrorsDetails = M.ResourceErrorsDetails,
        versionName = {
            type = "string",
        },
        driftStatus = {
            type = "string",
        },
        summary = M.AssessmentSummary,
    },
}

M.AppAssessmentSummary = {
    type = "structure",
    members = {
        appArn = {
            type = "string",
        },
        appVersion = {
            type = "string",
        },
        assessmentStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        invoker = {
            type = "string",
        },
        startTime = {
            type = "timestamp",
        },
        endTime = {
            type = "timestamp",
        },
        message = {
            type = "string",
        },
        assessmentName = {
            type = "string",
        },
        assessmentArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        complianceStatus = {
            type = "string",
        },
        cost = M.Cost,
        resiliencyScore = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        versionName = {
            type = "string",
        },
        driftStatus = {
            type = "string",
        },
    },
}

M.AppComponent = {
    type = "structure",
    members = {
        name = {
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
        id = {
            type = "string",
        },
        additionalInfo = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
    },
}

M.AppComponentCompliance = {
    type = "structure",
    members = {
        cost = M.Cost,
        appComponentName = {
            type = "string",
        },
        compliance = {
            type = "map",
            key = { type = "string" },
            value = M.DisruptionCompliance,
        },
        message = {
            type = "string",
        },
        status = {
            type = "string",
        },
        resiliencyScore = M.ResiliencyScore,
    },
}

M.EksSourceClusterNamespace = {
    type = "structure",
    members = {
        eksClusterArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        namespace = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TerraformSource = {
    type = "structure",
    members = {
        s3StateFileUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AppInputSource = {
    type = "structure",
    members = {
        sourceName = {
            type = "string",
        },
        importType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sourceArn = {
            type = "string",
        },
        terraformSource = M.TerraformSource,
        resourceCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        eksSourceClusterNamespace = M.EksSourceClusterNamespace,
    },
}

M.AppSummary = {
    type = "structure",
    members = {
        appArn = {
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
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        complianceStatus = {
            type = "string",
        },
        resiliencyScore = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        assessmentSchedule = {
            type = "string",
        },
        status = {
            type = "string",
        },
        driftStatus = {
            type = "string",
        },
        lastAppComplianceEvaluationTime = {
            type = "timestamp",
        },
        rtoInSecs = {
            type = "integer",
        },
        rpoInSecs = {
            type = "integer",
        },
        awsApplicationArn = {
            type = "string",
        },
    },
}

M.AppVersionSummary = {
    type = "structure",
    members = {
        appVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        identifier = {
            type = "long",
        },
        creationTime = {
            type = "timestamp",
        },
        versionName = {
            type = "string",
        },
    },
}

M.UpdateRecommendationStatusItem = {
    type = "structure",
    members = {
        resourceId = {
            type = "string",
        },
        targetAccountId = {
            type = "string",
        },
        targetRegion = {
            type = "string",
        },
    },
}

M.UpdateRecommendationStatusRequestEntry = {
    type = "structure",
    members = {
        entryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        referenceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        item = M.UpdateRecommendationStatusItem,
        excluded = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        appComponentId = {
            type = "string",
        },
        excludeReason = {
            type = "string",
        },
    },
}

M.BatchUpdateRecommendationStatusInput = {
    type = "structure",
    members = {
        appArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        requestEntries = {
            type = "list",
            member = M.UpdateRecommendationStatusRequestEntry,
            traits = {
                required = true,
            },
        },
    },
}

M.BatchUpdateRecommendationStatusFailedEntry = {
    type = "structure",
    members = {
        entryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        errorMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchUpdateRecommendationStatusSuccessfulEntry = {
    type = "structure",
    members = {
        entryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        referenceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        item = M.UpdateRecommendationStatusItem,
        excluded = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        appComponentId = {
            type = "string",
        },
        excludeReason = {
            type = "string",
        },
    },
}

M.BatchUpdateRecommendationStatusOutput = {
    type = "structure",
    members = {
        appArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        successfulEntries = {
            type = "list",
            member = M.BatchUpdateRecommendationStatusSuccessfulEntry,
            traits = {
                required = true,
            },
        },
        failedEntries = {
            type = "list",
            member = M.BatchUpdateRecommendationStatusFailedEntry,
            traits = {
                required = true,
            },
        },
    },
}

M.CreateAppInput = {
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
        policyArn = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        assessmentSchedule = {
            type = "string",
        },
        permissionModel = M.PermissionModel,
        eventSubscriptions = {
            type = "list",
            member = M.EventSubscription,
        },
        awsApplicationArn = {
            type = "string",
        },
    },
}

M.CreateAppOutput = {
    type = "structure",
    members = {
        app = setmetatable({ traits = {
            required = true,
        } }, { __index = M.App }),
    },
}

M.CreateAppVersionAppComponentInput = {
    type = "structure",
    members = {
        appArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
            type = "string",
        },
        name = {
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
        additionalInfo = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.CreateAppVersionAppComponentOutput = {
    type = "structure",
    members = {
        appArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        appVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        appComponent = M.AppComponent,
    },
}

M.LogicalResourceId = {
    type = "structure",
    members = {
        identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        logicalStackName = {
            type = "string",
        },
        resourceGroupName = {
            type = "string",
        },
        terraformSourceName = {
            type = "string",
        },
        eksSourceName = {
            type = "string",
        },
    },
}

M.CreateAppVersionResourceInput = {
    type = "structure",
    members = {
        appArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceName = {
            type = "string",
        },
        logicalResourceId = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LogicalResourceId }),
        physicalResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        awsRegion = {
            type = "string",
        },
        awsAccountId = {
            type = "string",
        },
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        appComponents = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        additionalInfo = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.ResourceSourceType = {
    APP_TEMPLATE = "AppTemplate",
    DISCOVERED = "Discovered",
}

M.PhysicalResource = {
    type = "structure",
    members = {
        resourceName = {
            type = "string",
        },
        logicalResourceId = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LogicalResourceId }),
        physicalResourceId = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PhysicalResourceId }),
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        appComponents = {
            type = "list",
            member = M.AppComponent,
        },
        additionalInfo = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        excluded = {
            type = "boolean",
        },
        sourceType = {
            type = "string",
        },
        parentResourceName = {
            type = "string",
        },
    },
}

M.CreateAppVersionResourceOutput = {
    type = "structure",
    members = {
        appArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        appVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        physicalResource = M.PhysicalResource,
    },
}

M.TemplateFormat = {
    CFN_YAML = "CfnYaml",
    CFN_JSON = "CfnJson",
}

M.RenderRecommendationType = {
    ALARM = "Alarm",
    SOP = "Sop",
    TEST = "Test",
}

M.CreateRecommendationTemplateInput = {
    type = "structure",
    members = {
        recommendationIds = {
            type = "list",
            member = { type = "string" },
        },
        format = {
            type = "string",
        },
        recommendationTypes = {
            type = "list",
            member = { type = "string" },
        },
        assessmentArn = {
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
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        bucketName = {
            type = "string",
        },
    },
}

M.RecommendationTemplateStatus = {
    PENDING = "Pending",
    IN_PROGRESS = "InProgress",
    FAILED = "Failed",
    SUCCESS = "Success",
}

M.S3Location = {
    type = "structure",
    members = {
        bucket = {
            type = "string",
        },
        prefix = {
            type = "string",
        },
    },
}

M.RecommendationTemplate = {
    type = "structure",
    members = {
        templatesLocation = M.S3Location,
        assessmentArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        appArn = {
            type = "string",
        },
        recommendationIds = {
            type = "list",
            member = { type = "string" },
        },
        recommendationTypes = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        format = {
            type = "string",
            traits = {
                required = true,
            },
        },
        recommendationTemplateArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        message = {
            type = "string",
        },
        status = {
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
        startTime = {
            type = "timestamp",
        },
        endTime = {
            type = "timestamp",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        needsReplacements = {
            type = "boolean",
        },
    },
}

M.CreateRecommendationTemplateOutput = {
    type = "structure",
    members = {
        recommendationTemplate = M.RecommendationTemplate,
    },
}

M.CreateResiliencyPolicyInput = {
    type = "structure",
    members = {
        policyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policyDescription = {
            type = "string",
        },
        dataLocationConstraint = {
            type = "string",
        },
        tier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policy = {
            type = "map",
            key = { type = "string" },
            value = M.FailurePolicy,
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateResiliencyPolicyOutput = {
    type = "structure",
    members = {
        policy = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ResiliencyPolicy }),
    },
}

M.DeleteAppInput = {
    type = "structure",
    members = {
        appArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        forceDelete = {
            type = "boolean",
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.DeleteAppOutput = {
    type = "structure",
    members = {
        appArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteAppAssessmentInput = {
    type = "structure",
    members = {
        assessmentArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.DeleteAppAssessmentOutput = {
    type = "structure",
    members = {
        assessmentArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assessmentStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteAppInputSourceInput = {
    type = "structure",
    members = {
        appArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sourceArn = {
            type = "string",
        },
        terraformSource = M.TerraformSource,
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        eksSourceClusterNamespace = M.EksSourceClusterNamespace,
    },
}

M.DeleteAppInputSourceOutput = {
    type = "structure",
    members = {
        appArn = {
            type = "string",
        },
        appInputSource = M.AppInputSource,
    },
}

M.DeleteAppVersionAppComponentInput = {
    type = "structure",
    members = {
        appArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.DeleteAppVersionAppComponentOutput = {
    type = "structure",
    members = {
        appArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        appVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        appComponent = M.AppComponent,
    },
}

M.DeleteAppVersionResourceInput = {
    type = "structure",
    members = {
        appArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceName = {
            type = "string",
        },
        logicalResourceId = M.LogicalResourceId,
        physicalResourceId = {
            type = "string",
        },
        awsRegion = {
            type = "string",
        },
        awsAccountId = {
            type = "string",
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.DeleteAppVersionResourceOutput = {
    type = "structure",
    members = {
        appArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        appVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        physicalResource = M.PhysicalResource,
    },
}

M.DeleteRecommendationTemplateInput = {
    type = "structure",
    members = {
        recommendationTemplateArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.DeleteRecommendationTemplateOutput = {
    type = "structure",
    members = {
        recommendationTemplateArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteResiliencyPolicyInput = {
    type = "structure",
    members = {
        policyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.DeleteResiliencyPolicyOutput = {
    type = "structure",
    members = {
        policyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeAppInput = {
    type = "structure",
    members = {
        appArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeAppOutput = {
    type = "structure",
    members = {
        app = setmetatable({ traits = {
            required = true,
        } }, { __index = M.App }),
    },
}

M.DescribeAppAssessmentInput = {
    type = "structure",
    members = {
        assessmentArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeAppAssessmentOutput = {
    type = "structure",
    members = {
        assessment = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AppAssessment }),
    },
}

M.DescribeAppVersionInput = {
    type = "structure",
    members = {
        appArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        appVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeAppVersionOutput = {
    type = "structure",
    members = {
        appArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        appVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        additionalInfo = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
    },
}

M.DescribeAppVersionAppComponentInput = {
    type = "structure",
    members = {
        appArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        appVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeAppVersionAppComponentOutput = {
    type = "structure",
    members = {
        appArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        appVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        appComponent = M.AppComponent,
    },
}

M.DescribeAppVersionResourceInput = {
    type = "structure",
    members = {
        appArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        appVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceName = {
            type = "string",
        },
        logicalResourceId = M.LogicalResourceId,
        physicalResourceId = {
            type = "string",
        },
        awsRegion = {
            type = "string",
        },
        awsAccountId = {
            type = "string",
        },
    },
}

M.DescribeAppVersionResourceOutput = {
    type = "structure",
    members = {
        appArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        appVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        physicalResource = M.PhysicalResource,
    },
}

M.DescribeAppVersionResourcesResolutionStatusInput = {
    type = "structure",
    members = {
        appArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        appVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resolutionId = {
            type = "string",
        },
    },
}

M.ResourceResolutionStatusType = {
    PENDING = "Pending",
    IN_PROGRESS = "InProgress",
    FAILED = "Failed",
    SUCCESS = "Success",
}

M.DescribeAppVersionResourcesResolutionStatusOutput = {
    type = "structure",
    members = {
        appArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        appVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resolutionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        errorMessage = {
            type = "string",
        },
    },
}

M.DescribeAppVersionTemplateInput = {
    type = "structure",
    members = {
        appArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        appVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeAppVersionTemplateOutput = {
    type = "structure",
    members = {
        appArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        appVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        appTemplateBody = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeDraftAppVersionResourcesImportStatusInput = {
    type = "structure",
    members = {
        appArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ErrorDetail = {
    type = "structure",
    members = {
        errorMessage = {
            type = "string",
        },
    },
}

M.ResourceImportStatusType = {
    PENDING = "Pending",
    IN_PROGRESS = "InProgress",
    FAILED = "Failed",
    SUCCESS = "Success",
}

M.DescribeDraftAppVersionResourcesImportStatusOutput = {
    type = "structure",
    members = {
        appArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        appVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusChangeTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        errorMessage = {
            type = "string",
        },
        errorDetails = {
            type = "list",
            member = M.ErrorDetail,
        },
    },
}

M.DescribeMetricsExportInput = {
    type = "structure",
    members = {
        metricsExportId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MetricsExportStatusType = {
    PENDING = "Pending",
    IN_PROGRESS = "InProgress",
    FAILED = "Failed",
    SUCCESS = "Success",
}

M.DescribeMetricsExportOutput = {
    type = "structure",
    members = {
        metricsExportId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        exportLocation = M.S3Location,
        errorMessage = {
            type = "string",
        },
    },
}

M.DescribeResiliencyPolicyInput = {
    type = "structure",
    members = {
        policyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeResiliencyPolicyOutput = {
    type = "structure",
    members = {
        policy = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ResiliencyPolicy }),
    },
}

M.DescribeResourceGroupingRecommendationTaskInput = {
    type = "structure",
    members = {
        appArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        groupingId = {
            type = "string",
        },
    },
}

M.ResourcesGroupingRecGenStatusType = {
    PENDING = "Pending",
    IN_PROGRESS = "InProgress",
    FAILED = "Failed",
    SUCCESS = "Success",
}

M.DescribeResourceGroupingRecommendationTaskOutput = {
    type = "structure",
    members = {
        groupingId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        errorMessage = {
            type = "string",
        },
    },
}

M.EksSource = {
    type = "structure",
    members = {
        eksClusterArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        namespaces = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceImportStrategyType = {
    ADD_ONLY = "AddOnly",
    REPLACE_ALL = "ReplaceAll",
}

M.ImportResourcesToDraftAppVersionInput = {
    type = "structure",
    members = {
        appArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sourceArns = {
            type = "list",
            member = { type = "string" },
        },
        terraformSources = {
            type = "list",
            member = M.TerraformSource,
        },
        importStrategy = {
            type = "string",
        },
        eksSources = {
            type = "list",
            member = M.EksSource,
        },
    },
}

M.ImportResourcesToDraftAppVersionOutput = {
    type = "structure",
    members = {
        appArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        appVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sourceArns = {
            type = "list",
            member = { type = "string" },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        terraformSources = {
            type = "list",
            member = M.TerraformSource,
        },
        eksSources = {
            type = "list",
            member = M.EksSource,
        },
    },
}

M.ListAlarmRecommendationsInput = {
    type = "structure",
    members = {
        assessmentArn = {
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

M.ListAlarmRecommendationsOutput = {
    type = "structure",
    members = {
        alarmRecommendations = {
            type = "list",
            member = M.AlarmRecommendation,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAppAssessmentComplianceDriftsInput = {
    type = "structure",
    members = {
        assessmentArn = {
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

M.DifferenceType = {
    NOT_EQUAL = "NotEqual",
    ADDED = "Added",
    REMOVED = "Removed",
}

M.DriftType = {
    APPLICATION_COMPLIANCE = "ApplicationCompliance",
    APP_COMPONENT_RESILIENCY_COMPLIANCE_STATUS = "AppComponentResiliencyComplianceStatus",
}

M.ComplianceDrift = {
    type = "structure",
    members = {
        entityId = {
            type = "string",
        },
        entityType = {
            type = "string",
        },
        driftType = {
            type = "string",
        },
        appId = {
            type = "string",
        },
        appVersion = {
            type = "string",
        },
        expectedReferenceId = {
            type = "string",
        },
        expectedValue = {
            type = "map",
            key = { type = "string" },
            value = M.DisruptionCompliance,
        },
        actualReferenceId = {
            type = "string",
        },
        actualValue = {
            type = "map",
            key = { type = "string" },
            value = M.DisruptionCompliance,
        },
        diffType = {
            type = "string",
        },
    },
}

M.ListAppAssessmentComplianceDriftsOutput = {
    type = "structure",
    members = {
        complianceDrifts = {
            type = "list",
            member = M.ComplianceDrift,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAppAssessmentResourceDriftsInput = {
    type = "structure",
    members = {
        assessmentArn = {
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

M.ResourceIdentifier = {
    type = "structure",
    members = {
        logicalResourceId = M.LogicalResourceId,
        resourceType = {
            type = "string",
        },
    },
}

M.ResourceDrift = {
    type = "structure",
    members = {
        appArn = {
            type = "string",
        },
        appVersion = {
            type = "string",
        },
        referenceId = {
            type = "string",
        },
        resourceIdentifier = M.ResourceIdentifier,
        diffType = {
            type = "string",
        },
    },
}

M.ListAppAssessmentResourceDriftsOutput = {
    type = "structure",
    members = {
        resourceDrifts = {
            type = "list",
            member = M.ResourceDrift,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAppAssessmentsInput = {
    type = "structure",
    members = {
        appArn = {
            type = "string",
            traits = {
                http_query = "appArn",
            },
        },
        assessmentName = {
            type = "string",
            traits = {
                http_query = "assessmentName",
            },
        },
        assessmentStatus = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "assessmentStatus",
            },
        },
        complianceStatus = {
            type = "string",
            traits = {
                http_query = "complianceStatus",
            },
        },
        invoker = {
            type = "string",
            traits = {
                http_query = "invoker",
            },
        },
        reverseOrder = {
            type = "boolean",
            traits = {
                http_query = "reverseOrder",
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

M.ListAppAssessmentsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        assessmentSummaries = {
            type = "list",
            member = M.AppAssessmentSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.ListAppComponentCompliancesInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
        assessmentArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListAppComponentCompliancesOutput = {
    type = "structure",
    members = {
        componentCompliances = {
            type = "list",
            member = M.AppComponentCompliance,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAppComponentRecommendationsInput = {
    type = "structure",
    members = {
        assessmentArn = {
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

M.HaArchitecture = {
    MULTI_SITE = "MultiSite",
    WARM_STANDBY = "WarmStandby",
    PILOT_LIGHT = "PilotLight",
    BACKUP_AND_RESTORE = "BackupAndRestore",
    NO_RECOVERY_PLAN = "NoRecoveryPlan",
}

M.ConfigRecommendationOptimizationType = {
    LEAST_COST = "LeastCost",
    LEAST_CHANGE = "LeastChange",
    BEST_AZ_RECOVERY = "BestAZRecovery",
    LEAST_ERRORS = "LeastErrors",
    BEST_ATTAINABLE = "BestAttainable",
    BEST_REGION_RECOVERY = "BestRegionRecovery",
}

M.RecommendationDisruptionCompliance = {
    type = "structure",
    members = {
        expectedComplianceStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        expectedRtoInSecs = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        expectedRtoDescription = {
            type = "string",
        },
        expectedRpoInSecs = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        expectedRpoDescription = {
            type = "string",
        },
    },
}

M.ConfigRecommendation = {
    type = "structure",
    members = {
        cost = M.Cost,
        appComponentName = {
            type = "string",
        },
        compliance = {
            type = "map",
            key = { type = "string" },
            value = M.DisruptionCompliance,
        },
        recommendationCompliance = {
            type = "map",
            key = { type = "string" },
            value = M.RecommendationDisruptionCompliance,
        },
        optimizationType = {
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
        suggestedChanges = {
            type = "list",
            member = { type = "string" },
        },
        haArchitecture = {
            type = "string",
        },
        referenceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RecommendationComplianceStatus = {
    BREACHED_UNATTAINABLE = "BreachedUnattainable",
    BREACHED_CAN_MEET = "BreachedCanMeet",
    MET_CAN_IMPROVE = "MetCanImprove",
    MISSING_POLICY = "MissingPolicy",
}

M.ComponentRecommendation = {
    type = "structure",
    members = {
        appComponentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        recommendationStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configRecommendations = {
            type = "list",
            member = M.ConfigRecommendation,
            traits = {
                required = true,
            },
        },
    },
}

M.ListAppComponentRecommendationsOutput = {
    type = "structure",
    members = {
        componentRecommendations = {
            type = "list",
            member = M.ComponentRecommendation,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAppInputSourcesInput = {
    type = "structure",
    members = {
        appArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        appVersion = {
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

M.ListAppInputSourcesOutput = {
    type = "structure",
    members = {
        appInputSources = {
            type = "list",
            member = M.AppInputSource,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAppsInput = {
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
        name = {
            type = "string",
            traits = {
                http_query = "name",
            },
        },
        appArn = {
            type = "string",
            traits = {
                http_query = "appArn",
            },
        },
        fromLastAssessmentTime = {
            type = "timestamp",
            traits = {
                http_query = "fromLastAssessmentTime",
            },
        },
        toLastAssessmentTime = {
            type = "timestamp",
            traits = {
                http_query = "toLastAssessmentTime",
            },
        },
        reverseOrder = {
            type = "boolean",
            traits = {
                http_query = "reverseOrder",
            },
        },
        awsApplicationArn = {
            type = "string",
            traits = {
                http_query = "awsApplicationArn",
            },
        },
    },
}

M.ListAppsOutput = {
    type = "structure",
    members = {
        appSummaries = {
            type = "list",
            member = M.AppSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAppVersionAppComponentsInput = {
    type = "structure",
    members = {
        appArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        appVersion = {
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

M.ListAppVersionAppComponentsOutput = {
    type = "structure",
    members = {
        appArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        appVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        appComponents = {
            type = "list",
            member = M.AppComponent,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAppVersionResourceMappingsInput = {
    type = "structure",
    members = {
        appArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        appVersion = {
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

M.ListAppVersionResourceMappingsOutput = {
    type = "structure",
    members = {
        resourceMappings = {
            type = "list",
            member = M.ResourceMapping,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAppVersionResourcesInput = {
    type = "structure",
    members = {
        appArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        appVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resolutionId = {
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

M.ListAppVersionResourcesOutput = {
    type = "structure",
    members = {
        physicalResources = {
            type = "list",
            member = M.PhysicalResource,
            traits = {
                required = true,
            },
        },
        resolutionId = {
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

M.ListAppVersionsInput = {
    type = "structure",
    members = {
        appArn = {
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
        startTime = {
            type = "timestamp",
        },
        endTime = {
            type = "timestamp",
        },
    },
}

M.ListAppVersionsOutput = {
    type = "structure",
    members = {
        appVersions = {
            type = "list",
            member = M.AppVersionSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ConditionOperatorType = {
    EQUALS = "Equals",
    NOT_EQUALS = "NotEquals",
    GREATER_THEN = "GreaterThen",
    GREATER_OR_EQUALS = "GreaterOrEquals",
    LESS_THEN = "LessThen",
    LESS_OR_EQUALS = "LessOrEquals",
}

M.Condition = {
    type = "structure",
    members = {
        field = {
            type = "string",
            traits = {
                required = true,
            },
        },
        operator = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "string",
        },
    },
}

M.FieldAggregationType = {
    MIN = "Min",
    MAX = "Max",
    SUM = "Sum",
    AVG = "Avg",
    COUNT = "Count",
}

M.Field = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        aggregation = {
            type = "string",
        },
    },
}

M.Sort = {
    type = "structure",
    members = {
        field = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ascending = {
            type = "boolean",
        },
    },
}

M.ListMetricsInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
        fields = {
            type = "list",
            member = M.Field,
        },
        dataSource = {
            type = "string",
        },
        conditions = {
            type = "list",
            member = M.Condition,
        },
        sorts = {
            type = "list",
            member = M.Sort,
        },
    },
}

M.ListMetricsOutput = {
    type = "structure",
    members = {
        rows = {
            type = "list",
            member = { type = "list" },
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListRecommendationTemplatesInput = {
    type = "structure",
    members = {
        assessmentArn = {
            type = "string",
            traits = {
                http_query = "assessmentArn",
            },
        },
        reverseOrder = {
            type = "boolean",
            traits = {
                http_query = "reverseOrder",
            },
        },
        status = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "status",
            },
        },
        recommendationTemplateArn = {
            type = "string",
            traits = {
                http_query = "recommendationTemplateArn",
            },
        },
        name = {
            type = "string",
            traits = {
                http_query = "name",
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

M.ListRecommendationTemplatesOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        recommendationTemplates = {
            type = "list",
            member = M.RecommendationTemplate,
        },
    },
}

M.ListResiliencyPoliciesInput = {
    type = "structure",
    members = {
        policyName = {
            type = "string",
            traits = {
                http_query = "policyName",
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

M.ListResiliencyPoliciesOutput = {
    type = "structure",
    members = {
        resiliencyPolicies = {
            type = "list",
            member = M.ResiliencyPolicy,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListResourceGroupingRecommendationsInput = {
    type = "structure",
    members = {
        appArn = {
            type = "string",
            traits = {
                http_query = "appArn",
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

M.GroupingRecommendationConfidenceLevel = {
    HIGH = "High",
    MEDIUM = "Medium",
}

M.GroupingAppComponent = {
    type = "structure",
    members = {
        appComponentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        appComponentType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        appComponentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GroupingRecommendationRejectionReason = {
    DISTINCT_BUSINESS_PURPOSE = "DistinctBusinessPurpose",
    SEPARATE_DATA_CONCERN = "SeparateDataConcern",
    DISTINCT_USER_GROUP_HANDLING = "DistinctUserGroupHandling",
    OTHER = "Other",
}

M.GroupingResource = {
    type = "structure",
    members = {
        resourceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        physicalResourceId = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PhysicalResourceId }),
        logicalResourceId = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LogicalResourceId }),
        sourceAppComponentIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.GroupingRecommendationStatusType = {
    ACCEPTED = "Accepted",
    REJECTED = "Rejected",
    PENDING_DECISION = "PendingDecision",
}

M.GroupingRecommendation = {
    type = "structure",
    members = {
        groupingRecommendationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        groupingAppComponent = setmetatable({ traits = {
            required = true,
        } }, { __index = M.GroupingAppComponent }),
        resources = {
            type = "list",
            member = M.GroupingResource,
            traits = {
                required = true,
            },
        },
        score = {
            type = "double",
            traits = {
                default = 0,
                required = true,
            },
        },
        recommendationReasons = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        confidenceLevel = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        rejectionReason = {
            type = "string",
        },
    },
}

M.ListResourceGroupingRecommendationsOutput = {
    type = "structure",
    members = {
        groupingRecommendations = {
            type = "list",
            member = M.GroupingRecommendation,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListSopRecommendationsInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
        assessmentArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SopServiceType = {
    SSM = "SSM",
}

M.SopRecommendation = {
    type = "structure",
    members = {
        serviceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        appComponentName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        recommendationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        items = {
            type = "list",
            member = M.RecommendationItem,
        },
        referenceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        prerequisite = {
            type = "string",
        },
        recommendationStatus = {
            type = "string",
        },
    },
}

M.ListSopRecommendationsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        sopRecommendations = {
            type = "list",
            member = M.SopRecommendation,
            traits = {
                required = true,
            },
        },
    },
}

M.ListSuggestedResiliencyPoliciesInput = {
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

M.ListSuggestedResiliencyPoliciesOutput = {
    type = "structure",
    members = {
        resiliencyPolicies = {
            type = "list",
            member = M.ResiliencyPolicy,
            traits = {
                required = true,
            },
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

M.ListTestRecommendationsInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
        assessmentArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TestRisk = {
    SMALL = "Small",
    MEDIUM = "Medium",
    HIGH = "High",
}

M.TestType = {
    SOFTWARE = "Software",
    HARDWARE = "Hardware",
    AZ = "AZ",
    REGION = "Region",
}

M.TestRecommendation = {
    type = "structure",
    members = {
        recommendationId = {
            type = "string",
        },
        referenceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        appComponentId = {
            type = "string",
        },
        appComponentName = {
            type = "string",
        },
        name = {
            type = "string",
        },
        intent = {
            type = "string",
        },
        risk = {
            type = "string",
        },
        type = {
            type = "string",
        },
        description = {
            type = "string",
        },
        items = {
            type = "list",
            member = M.RecommendationItem,
        },
        prerequisite = {
            type = "string",
        },
        dependsOnAlarms = {
            type = "list",
            member = { type = "string" },
        },
        recommendationStatus = {
            type = "string",
        },
    },
}

M.ListTestRecommendationsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        testRecommendations = {
            type = "list",
            member = M.TestRecommendation,
            traits = {
                required = true,
            },
        },
    },
}

M.ListUnsupportedAppVersionResourcesInput = {
    type = "structure",
    members = {
        appArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        appVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resolutionId = {
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

M.UnsupportedResource = {
    type = "structure",
    members = {
        logicalResourceId = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LogicalResourceId }),
        physicalResourceId = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PhysicalResourceId }),
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        unsupportedResourceStatus = {
            type = "string",
        },
    },
}

M.ListUnsupportedAppVersionResourcesOutput = {
    type = "structure",
    members = {
        unsupportedResources = {
            type = "list",
            member = M.UnsupportedResource,
            traits = {
                required = true,
            },
        },
        resolutionId = {
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

M.PublishAppVersionInput = {
    type = "structure",
    members = {
        appArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        versionName = {
            type = "string",
        },
    },
}

M.PublishAppVersionOutput = {
    type = "structure",
    members = {
        appArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        appVersion = {
            type = "string",
        },
        identifier = {
            type = "long",
        },
        versionName = {
            type = "string",
        },
    },
}

M.PutDraftAppVersionTemplateInput = {
    type = "structure",
    members = {
        appArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        appTemplateBody = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutDraftAppVersionTemplateOutput = {
    type = "structure",
    members = {
        appArn = {
            type = "string",
        },
        appVersion = {
            type = "string",
        },
    },
}

M.RejectGroupingRecommendationEntry = {
    type = "structure",
    members = {
        groupingRecommendationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        rejectionReason = {
            type = "string",
        },
    },
}

M.RejectResourceGroupingRecommendationsInput = {
    type = "structure",
    members = {
        appArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        entries = {
            type = "list",
            member = M.RejectGroupingRecommendationEntry,
            traits = {
                required = true,
            },
        },
    },
}

M.RejectResourceGroupingRecommendationsOutput = {
    type = "structure",
    members = {
        appArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        failedEntries = {
            type = "list",
            member = M.FailedGroupingRecommendationEntry,
            traits = {
                required = true,
            },
        },
    },
}

M.RemoveDraftAppVersionResourceMappingsInput = {
    type = "structure",
    members = {
        appArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceNames = {
            type = "list",
            member = { type = "string" },
        },
        logicalStackNames = {
            type = "list",
            member = { type = "string" },
        },
        appRegistryAppNames = {
            type = "list",
            member = { type = "string" },
        },
        resourceGroupNames = {
            type = "list",
            member = { type = "string" },
        },
        terraformSourceNames = {
            type = "list",
            member = { type = "string" },
        },
        eksSourceNames = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.RemoveDraftAppVersionResourceMappingsOutput = {
    type = "structure",
    members = {
        appArn = {
            type = "string",
        },
        appVersion = {
            type = "string",
        },
    },
}

M.ResolveAppVersionResourcesInput = {
    type = "structure",
    members = {
        appArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        appVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResolveAppVersionResourcesOutput = {
    type = "structure",
    members = {
        appArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        appVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resolutionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartAppAssessmentInput = {
    type = "structure",
    members = {
        appArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        appVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assessmentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.StartAppAssessmentOutput = {
    type = "structure",
    members = {
        assessment = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AppAssessment }),
    },
}

M.StartMetricsExportInput = {
    type = "structure",
    members = {
        bucketName = {
            type = "string",
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.StartMetricsExportOutput = {
    type = "structure",
    members = {
        metricsExportId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartResourceGroupingRecommendationTaskInput = {
    type = "structure",
    members = {
        appArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartResourceGroupingRecommendationTaskOutput = {
    type = "structure",
    members = {
        appArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        groupingId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        errorMessage = {
            type = "string",
        },
    },
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

M.UpdateAppInput = {
    type = "structure",
    members = {
        appArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        policyArn = {
            type = "string",
        },
        clearResiliencyPolicyArn = {
            type = "boolean",
        },
        assessmentSchedule = {
            type = "string",
        },
        permissionModel = M.PermissionModel,
        eventSubscriptions = {
            type = "list",
            member = M.EventSubscription,
        },
    },
}

M.UpdateAppOutput = {
    type = "structure",
    members = {
        app = setmetatable({ traits = {
            required = true,
        } }, { __index = M.App }),
    },
}

M.UpdateAppVersionInput = {
    type = "structure",
    members = {
        appArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        additionalInfo = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
    },
}

M.UpdateAppVersionOutput = {
    type = "structure",
    members = {
        appArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        appVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        additionalInfo = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
    },
}

M.UpdateAppVersionAppComponentInput = {
    type = "structure",
    members = {
        appArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        type = {
            type = "string",
        },
        additionalInfo = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
    },
}

M.UpdateAppVersionAppComponentOutput = {
    type = "structure",
    members = {
        appArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        appVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        appComponent = M.AppComponent,
    },
}

M.UpdateAppVersionResourceInput = {
    type = "structure",
    members = {
        appArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceName = {
            type = "string",
        },
        logicalResourceId = M.LogicalResourceId,
        physicalResourceId = {
            type = "string",
        },
        awsRegion = {
            type = "string",
        },
        awsAccountId = {
            type = "string",
        },
        resourceType = {
            type = "string",
        },
        appComponents = {
            type = "list",
            member = { type = "string" },
        },
        additionalInfo = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        excluded = {
            type = "boolean",
        },
    },
}

M.UpdateAppVersionResourceOutput = {
    type = "structure",
    members = {
        appArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        appVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        physicalResource = M.PhysicalResource,
    },
}

M.UpdateResiliencyPolicyInput = {
    type = "structure",
    members = {
        policyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policyName = {
            type = "string",
        },
        policyDescription = {
            type = "string",
        },
        dataLocationConstraint = {
            type = "string",
        },
        tier = {
            type = "string",
        },
        policy = {
            type = "map",
            key = { type = "string" },
            value = M.FailurePolicy,
        },
    },
}

M.UpdateResiliencyPolicyOutput = {
    type = "structure",
    members = {
        policy = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ResiliencyPolicy }),
    },
}

return M
