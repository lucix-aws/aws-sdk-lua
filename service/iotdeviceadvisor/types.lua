local M = {}

M.AuthenticationMethod = {
    X509ClientCertificate = "X509ClientCertificate",
    SignatureVersion4 = "SignatureVersion4",
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

M.DeviceUnderTest = {
    type = "structure",
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
    members = {
        suiteDefinitionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        devices = {
            type = "list",
            member_type = "structure",
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
    members = {
        suiteDefinitionConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        clientToken = {
            type = "string",
        },
    },
}

M.CreateSuiteDefinitionOutput = {
    type = "structure",
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
    error = "server",
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

M.DeleteSuiteDefinitionInput = {
    type = "structure",
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
}

M.GetEndpointInput = {
    type = "structure",
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
    members = {
        endpoint = {
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

M.GetSuiteDefinitionInput = {
    type = "structure",
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
        suiteDefinitionConfiguration = {
            type = "structure",
        },
        createdAt = {
            type = "timestamp",
        },
        lastModifiedAt = {
            type = "timestamp",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.GetSuiteRunInput = {
    type = "structure",
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
    members = {
        primaryDevice = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        selectedTestList = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
        },
    },
}

M.GroupResult = {
    type = "structure",
    members = {
        groupId = {
            type = "string",
        },
        groupName = {
            type = "string",
        },
        tests = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.TestResult = {
    type = "structure",
    members = {
        groups = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetSuiteRunOutput = {
    type = "structure",
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
        suiteRunConfiguration = {
            type = "structure",
        },
        testResult = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.GetSuiteRunReportInput = {
    type = "structure",
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
    members = {
        qualificationReportDownloadUrl = {
            type = "string",
        },
    },
}

M.ListSuiteDefinitionsInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "number",
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
    members = {
        suiteDefinitionId = {
            type = "string",
        },
        suiteDefinitionName = {
            type = "string",
        },
        defaultDevices = {
            type = "list",
            member_type = "structure",
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
    members = {
        suiteDefinitionInformationList = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListSuiteRunsInput = {
    type = "structure",
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
            type = "number",
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
            type = "number",
        },
        failed = {
            type = "number",
        },
    },
}

M.ListSuiteRunsOutput = {
    type = "structure",
    members = {
        suiteRunsList = {
            type = "list",
            member_type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.StartSuiteRunInput = {
    type = "structure",
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
        suiteRunConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.StartSuiteRunOutput = {
    type = "structure",
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
            member_type = "string",
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

M.UpdateSuiteDefinitionInput = {
    type = "structure",
    members = {
        suiteDefinitionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        suiteDefinitionConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateSuiteDefinitionOutput = {
    type = "structure",
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
