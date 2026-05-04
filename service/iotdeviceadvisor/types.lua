local M = {}

M.AuthenticationMethod = {
    X509ClientCertificate = "X509ClientCertificate",
    SignatureVersion4 = "SignatureVersion4",
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

M.DeviceUnderTest = {
    type = "structure",
    id = "DeviceUnderTest",
    members = {
        thingArn = {
            type = "string",
        },
        certificateArn = {
            type = "string",
        },
        deviceRoleArn = {
            type = "string",
        },
    },
}

M.Protocol = {
    MqttV3_1_1 = "MqttV3_1_1",
    MqttV5 = "MqttV5",
    MqttV3_1_1_OverWebSocket = "MqttV3_1_1_OverWebSocket",
    MqttV5_OverWebSocket = "MqttV5_OverWebSocket",
}

M.SuiteDefinitionConfiguration = {
    type = "structure",
    id = "SuiteDefinitionConfiguration",
    members = {
        suiteDefinitionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        devices = {
            type = "list",
            member = M.DeviceUnderTest,
        },
        intendedForQualification = {
            type = "boolean",
        },
        isLongDurationTest = {
            type = "boolean",
        },
        rootGroup = {
            type = "string",
            traits = {
                required = true,
            },
        },
        devicePermissionRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        protocol = {
            type = "string",
        },
    },
}

M.CreateSuiteDefinitionInput = {
    type = "structure",
    id = "CreateSuiteDefinitionInput",
    members = {
        suiteDefinitionConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SuiteDefinitionConfiguration }),
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
    },
}

M.CreateSuiteDefinitionOutput = {
    type = "structure",
    id = "CreateSuiteDefinitionOutput",
    members = {
        suiteDefinitionId = {
            type = "string",
        },
        suiteDefinitionArn = {
            type = "string",
        },
        suiteDefinitionName = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
    },
}

M.InternalServerException = {
    type = "structure",
    id = "InternalServerException",
    error = "server",
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

M.DeleteSuiteDefinitionInput = {
    type = "structure",
    id = "DeleteSuiteDefinitionInput",
    members = {
        suiteDefinitionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteSuiteDefinitionOutput = {
    type = "structure",
    id = "DeleteSuiteDefinitionOutput",
}

M.GetEndpointInput = {
    type = "structure",
    id = "GetEndpointInput",
    members = {
        thingArn = {
            type = "string",
            traits = {
                http_query = "thingArn",
            },
        },
        certificateArn = {
            type = "string",
            traits = {
                http_query = "certificateArn",
            },
        },
        deviceRoleArn = {
            type = "string",
            traits = {
                http_query = "deviceRoleArn",
            },
        },
        authenticationMethod = {
            type = "string",
            traits = {
                http_query = "authenticationMethod",
            },
        },
    },
}

M.GetEndpointOutput = {
    type = "structure",
    id = "GetEndpointOutput",
    members = {
        endpoint = {
            type = "string",
        },
    },
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

M.GetSuiteDefinitionInput = {
    type = "structure",
    id = "GetSuiteDefinitionInput",
    members = {
        suiteDefinitionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        suiteDefinitionVersion = {
            type = "string",
            traits = {
                http_query = "suiteDefinitionVersion",
            },
        },
    },
}

M.GetSuiteDefinitionOutput = {
    type = "structure",
    id = "GetSuiteDefinitionOutput",
    members = {
        suiteDefinitionId = {
            type = "string",
        },
        suiteDefinitionArn = {
            type = "string",
        },
        suiteDefinitionVersion = {
            type = "string",
        },
        latestVersion = {
            type = "string",
        },
        suiteDefinitionConfiguration = M.SuiteDefinitionConfiguration,
        createdAt = {
            type = "timestamp",
        },
        lastModifiedAt = {
            type = "timestamp",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetSuiteRunInput = {
    type = "structure",
    id = "GetSuiteRunInput",
    members = {
        suiteDefinitionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        suiteRunId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.SuiteRunStatus = {
    PASS = "PASS",
    FAIL = "FAIL",
    CANCELED = "CANCELED",
    PENDING = "PENDING",
    RUNNING = "RUNNING",
    STOPPING = "STOPPING",
    STOPPED = "STOPPED",
    PASS_WITH_WARNINGS = "PASS_WITH_WARNINGS",
    ERROR = "ERROR",
}

M.SuiteRunConfiguration = {
    type = "structure",
    id = "SuiteRunConfiguration",
    members = {
        primaryDevice = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DeviceUnderTest }),
        selectedTestList = {
            type = "list",
            member = { type = "string" },
        },
        parallelRun = {
            type = "boolean",
        },
    },
}

M.Status = {
    PASS = "PASS",
    FAIL = "FAIL",
    CANCELED = "CANCELED",
    PENDING = "PENDING",
    RUNNING = "RUNNING",
    STOPPING = "STOPPING",
    STOPPED = "STOPPED",
    PASS_WITH_WARNINGS = "PASS_WITH_WARNINGS",
    ERROR = "ERROR",
}

M.TestCaseScenarioStatus = {
    PASS = "PASS",
    FAIL = "FAIL",
    CANCELED = "CANCELED",
    PENDING = "PENDING",
    RUNNING = "RUNNING",
    STOPPING = "STOPPING",
    STOPPED = "STOPPED",
    PASS_WITH_WARNINGS = "PASS_WITH_WARNINGS",
    ERROR = "ERROR",
}

M.TestCaseScenarioType = {
    Advanced = "Advanced",
    Basic = "Basic",
}

M.TestCaseScenario = {
    type = "structure",
    id = "TestCaseScenario",
    members = {
        testCaseScenarioId = {
            type = "string",
        },
        testCaseScenarioType = {
            type = "string",
        },
        status = {
            type = "string",
        },
        failure = {
            type = "string",
        },
        systemMessage = {
            type = "string",
        },
    },
}

M.TestCaseRun = {
    type = "structure",
    id = "TestCaseRun",
    members = {
        testCaseRunId = {
            type = "string",
        },
        testCaseDefinitionId = {
            type = "string",
        },
        testCaseDefinitionName = {
            type = "string",
        },
        status = {
            type = "string",
        },
        startTime = {
            type = "timestamp",
        },
        endTime = {
            type = "timestamp",
        },
        logUrl = {
            type = "string",
        },
        warnings = {
            type = "string",
        },
        failure = {
            type = "string",
        },
        testScenarios = {
            type = "list",
            member = M.TestCaseScenario,
        },
    },
}

M.GroupResult = {
    type = "structure",
    id = "GroupResult",
    members = {
        groupId = {
            type = "string",
        },
        groupName = {
            type = "string",
        },
        tests = {
            type = "list",
            member = M.TestCaseRun,
        },
    },
}

M.TestResult = {
    type = "structure",
    id = "TestResult",
    members = {
        groups = {
            type = "list",
            member = M.GroupResult,
        },
    },
}

M.GetSuiteRunOutput = {
    type = "structure",
    id = "GetSuiteRunOutput",
    members = {
        suiteDefinitionId = {
            type = "string",
        },
        suiteDefinitionVersion = {
            type = "string",
        },
        suiteRunId = {
            type = "string",
        },
        suiteRunArn = {
            type = "string",
        },
        suiteRunConfiguration = M.SuiteRunConfiguration,
        testResult = M.TestResult,
        startTime = {
            type = "timestamp",
        },
        endTime = {
            type = "timestamp",
        },
        status = {
            type = "string",
        },
        errorReason = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetSuiteRunReportInput = {
    type = "structure",
    id = "GetSuiteRunReportInput",
    members = {
        suiteDefinitionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        suiteRunId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetSuiteRunReportOutput = {
    type = "structure",
    id = "GetSuiteRunReportOutput",
    members = {
        qualificationReportDownloadUrl = {
            type = "string",
        },
    },
}

M.ListSuiteDefinitionsInput = {
    type = "structure",
    id = "ListSuiteDefinitionsInput",
    members = {
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.SuiteDefinitionInformation = {
    type = "structure",
    id = "SuiteDefinitionInformation",
    members = {
        suiteDefinitionId = {
            type = "string",
        },
        suiteDefinitionName = {
            type = "string",
        },
        defaultDevices = {
            type = "list",
            member = M.DeviceUnderTest,
        },
        intendedForQualification = {
            type = "boolean",
        },
        isLongDurationTest = {
            type = "boolean",
        },
        protocol = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
    },
}

M.ListSuiteDefinitionsOutput = {
    type = "structure",
    id = "ListSuiteDefinitionsOutput",
    members = {
        suiteDefinitionInformationList = {
            type = "list",
            member = M.SuiteDefinitionInformation,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListSuiteRunsInput = {
    type = "structure",
    id = "ListSuiteRunsInput",
    members = {
        suiteDefinitionId = {
            type = "string",
            traits = {
                http_query = "suiteDefinitionId",
            },
        },
        suiteDefinitionVersion = {
            type = "string",
            traits = {
                http_query = "suiteDefinitionVersion",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.SuiteRunInformation = {
    type = "structure",
    id = "SuiteRunInformation",
    members = {
        suiteDefinitionId = {
            type = "string",
        },
        suiteDefinitionVersion = {
            type = "string",
        },
        suiteDefinitionName = {
            type = "string",
        },
        suiteRunId = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        startedAt = {
            type = "timestamp",
        },
        endAt = {
            type = "timestamp",
        },
        status = {
            type = "string",
        },
        passed = {
            type = "integer",
        },
        failed = {
            type = "integer",
        },
    },
}

M.ListSuiteRunsOutput = {
    type = "structure",
    id = "ListSuiteRunsOutput",
    members = {
        suiteRunsList = {
            type = "list",
            member = M.SuiteRunInformation,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    id = "ListTagsForResourceInput",
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
    id = "ListTagsForResourceOutput",
    members = {
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.StartSuiteRunInput = {
    type = "structure",
    id = "StartSuiteRunInput",
    members = {
        suiteDefinitionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        suiteDefinitionVersion = {
            type = "string",
        },
        suiteRunConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SuiteRunConfiguration }),
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.StartSuiteRunOutput = {
    type = "structure",
    id = "StartSuiteRunOutput",
    members = {
        suiteRunId = {
            type = "string",
        },
        suiteRunArn = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        endpoint = {
            type = "string",
        },
    },
}

M.StopSuiteRunInput = {
    type = "structure",
    id = "StopSuiteRunInput",
    members = {
        suiteDefinitionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        suiteRunId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StopSuiteRunOutput = {
    type = "structure",
    id = "StopSuiteRunOutput",
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
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
    id = "TagResourceOutput",
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
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
    id = "UntagResourceOutput",
}

M.UpdateSuiteDefinitionInput = {
    type = "structure",
    id = "UpdateSuiteDefinitionInput",
    members = {
        suiteDefinitionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        suiteDefinitionConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SuiteDefinitionConfiguration }),
    },
}

M.UpdateSuiteDefinitionOutput = {
    type = "structure",
    id = "UpdateSuiteDefinitionOutput",
    members = {
        suiteDefinitionId = {
            type = "string",
        },
        suiteDefinitionArn = {
            type = "string",
        },
        suiteDefinitionName = {
            type = "string",
        },
        suiteDefinitionVersion = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        lastUpdatedAt = {
            type = "timestamp",
        },
    },
}

return M
