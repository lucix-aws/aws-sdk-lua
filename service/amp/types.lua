local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
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

M.ConflictException = {
    type = "structure",
    id = "ConflictException",
    error = "client",
    members = {
        message = {
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
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateAlertManagerDefinitionInput = {
    type = "structure",
    id = "CreateAlertManagerDefinitionInput",
    members = {
        workspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        data = {
            type = "blob",
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

M.AlertManagerDefinitionStatusCode = {
    CREATING = "CREATING",
    ACTIVE = "ACTIVE",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
    CREATION_FAILED = "CREATION_FAILED",
    UPDATE_FAILED = "UPDATE_FAILED",
}

M.AlertManagerDefinitionStatus = {
    type = "structure",
    id = "AlertManagerDefinitionStatus",
    members = {
        statusCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusReason = {
            type = "string",
        },
    },
}

M.CreateAlertManagerDefinitionOutput = {
    type = "structure",
    id = "CreateAlertManagerDefinitionOutput",
    members = {
        status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AlertManagerDefinitionStatus }),
    },
}

M.InternalServerException = {
    type = "structure",
    id = "InternalServerException",
    error = "server",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        retryAfterSeconds = {
            type = "integer",
            traits = {
                http_header = "Retry-After",
            },
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
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    id = "ServiceQuotaExceededException",
    error = "client",
    members = {
        message = {
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
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        serviceCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        quotaCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    id = "ThrottlingException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        serviceCode = {
            type = "string",
        },
        quotaCode = {
            type = "string",
        },
        retryAfterSeconds = {
            type = "integer",
            traits = {
                http_header = "Retry-After",
            },
        },
    },
}

M.ValidationExceptionField = {
    type = "structure",
    id = "ValidationExceptionField",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ValidationExceptionReason = {
    UNKNOWN_OPERATION = "UNKNOWN_OPERATION",
    CANNOT_PARSE = "CANNOT_PARSE",
    FIELD_VALIDATION_FAILED = "FIELD_VALIDATION_FAILED",
    OTHER = "OTHER",
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        reason = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fieldList = {
            type = "list",
            member = M.ValidationExceptionField,
        },
    },
}

M.DeleteAlertManagerDefinitionInput = {
    type = "structure",
    id = "DeleteAlertManagerDefinitionInput",
    members = {
        workspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_query = "clientToken",
                idempotency_token = true,
            },
        },
    },
}

M.DeleteAlertManagerDefinitionOutput = {
    type = "structure",
    id = "DeleteAlertManagerDefinitionOutput",
}

M.DescribeAlertManagerDefinitionInput = {
    type = "structure",
    id = "DescribeAlertManagerDefinitionInput",
    members = {
        workspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.AlertManagerDefinitionDescription = {
    type = "structure",
    id = "AlertManagerDefinitionDescription",
    members = {
        status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AlertManagerDefinitionStatus }),
        data = {
            type = "blob",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        modifiedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeAlertManagerDefinitionOutput = {
    type = "structure",
    id = "DescribeAlertManagerDefinitionOutput",
    members = {
        alertManagerDefinition = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AlertManagerDefinitionDescription }),
    },
}

M.PutAlertManagerDefinitionInput = {
    type = "structure",
    id = "PutAlertManagerDefinitionInput",
    members = {
        workspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        data = {
            type = "blob",
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

M.PutAlertManagerDefinitionOutput = {
    type = "structure",
    id = "PutAlertManagerDefinitionOutput",
    members = {
        status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AlertManagerDefinitionStatus }),
    },
}

M.GetDefaultScraperConfigurationInput = {
    type = "structure",
    id = "GetDefaultScraperConfigurationInput",
}

M.GetDefaultScraperConfigurationOutput = {
    type = "structure",
    id = "GetDefaultScraperConfigurationOutput",
    members = {
        configuration = {
            type = "blob",
            traits = {
                required = true,
            },
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

M.AmpConfiguration = {
    type = "structure",
    id = "AmpConfiguration",
    members = {
        workspaceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Destination = {
    type = "union",
    id = "Destination",
    members = {
        ampConfiguration = M.AmpConfiguration,
    },
}

M.RoleConfiguration = {
    type = "structure",
    id = "RoleConfiguration",
    members = {
        sourceRoleArn = {
            type = "string",
        },
        targetRoleArn = {
            type = "string",
        },
    },
}

M.ScrapeConfiguration = {
    type = "union",
    id = "ScrapeConfiguration",
    members = {
        configurationBlob = {
            type = "blob",
        },
    },
}

M.EksConfiguration = {
    type = "structure",
    id = "EksConfiguration",
    members = {
        clusterArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        securityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        subnetIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.VpcConfiguration = {
    type = "structure",
    id = "VpcConfiguration",
    members = {
        securityGroupIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        subnetIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.Source = {
    type = "union",
    id = "Source",
    members = {
        eksConfiguration = M.EksConfiguration,
        vpcConfiguration = M.VpcConfiguration,
    },
}

M.CreateScraperInput = {
    type = "structure",
    id = "CreateScraperInput",
    members = {
        alias = {
            type = "string",
        },
        scrapeConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ScrapeConfiguration }),
        source = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Source }),
        destination = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Destination }),
        roleConfiguration = M.RoleConfiguration,
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

M.ScraperStatusCode = {
    CREATING = "CREATING",
    UPDATING = "UPDATING",
    ACTIVE = "ACTIVE",
    DELETING = "DELETING",
    CREATION_FAILED = "CREATION_FAILED",
    UPDATE_FAILED = "UPDATE_FAILED",
    DELETION_FAILED = "DELETION_FAILED",
}

M.ScraperStatus = {
    type = "structure",
    id = "ScraperStatus",
    members = {
        statusCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateScraperOutput = {
    type = "structure",
    id = "CreateScraperOutput",
    members = {
        scraperId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ScraperStatus }),
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.DeleteScraperInput = {
    type = "structure",
    id = "DeleteScraperInput",
    members = {
        scraperId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_query = "clientToken",
                idempotency_token = true,
            },
        },
    },
}

M.DeleteScraperOutput = {
    type = "structure",
    id = "DeleteScraperOutput",
    members = {
        scraperId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ScraperStatus }),
    },
}

M.DescribeScraperInput = {
    type = "structure",
    id = "DescribeScraperInput",
    members = {
        scraperId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ScraperDescription = {
    type = "structure",
    id = "ScraperDescription",
    members = {
        alias = {
            type = "string",
        },
        scraperId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ScraperStatus }),
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastModifiedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        statusReason = {
            type = "string",
        },
        scrapeConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ScrapeConfiguration }),
        source = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Source }),
        destination = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Destination }),
        roleConfiguration = M.RoleConfiguration,
    },
}

M.DescribeScraperOutput = {
    type = "structure",
    id = "DescribeScraperOutput",
    members = {
        scraper = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ScraperDescription }),
    },
}

M.ListScrapersInput = {
    type = "structure",
    id = "ListScrapersInput",
    members = {
        filters = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
            traits = {
                http_query_params = true,
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

M.ScraperSummary = {
    type = "structure",
    id = "ScraperSummary",
    members = {
        alias = {
            type = "string",
        },
        scraperId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ScraperStatus }),
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastModifiedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        statusReason = {
            type = "string",
        },
        source = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Source }),
        destination = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Destination }),
        roleConfiguration = M.RoleConfiguration,
    },
}

M.ListScrapersOutput = {
    type = "structure",
    id = "ListScrapersOutput",
    members = {
        scrapers = {
            type = "list",
            member = M.ScraperSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DeleteScraperLoggingConfigurationInput = {
    type = "structure",
    id = "DeleteScraperLoggingConfigurationInput",
    members = {
        scraperId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_query = "clientToken",
                idempotency_token = true,
            },
        },
    },
}

M.DeleteScraperLoggingConfigurationOutput = {
    type = "structure",
    id = "DeleteScraperLoggingConfigurationOutput",
}

M.DescribeScraperLoggingConfigurationInput = {
    type = "structure",
    id = "DescribeScraperLoggingConfigurationInput",
    members = {
        scraperId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.CloudWatchLogDestination = {
    type = "structure",
    id = "CloudWatchLogDestination",
    members = {
        logGroupArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ScraperLoggingDestination = {
    type = "union",
    id = "ScraperLoggingDestination",
    members = {
        cloudWatchLogs = M.CloudWatchLogDestination,
    },
}

M.ComponentConfig = {
    type = "structure",
    id = "ComponentConfig",
    members = {
        options = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ScraperComponentType = {
    SERVICE_DISCOVERY = "SERVICE_DISCOVERY",
    COLLECTOR = "COLLECTOR",
    EXPORTER = "EXPORTER",
}

M.ScraperComponent = {
    type = "structure",
    id = "ScraperComponent",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        config = M.ComponentConfig,
    },
}

M.ScraperLoggingConfigurationStatusCode = {
    CREATING = "CREATING",
    ACTIVE = "ACTIVE",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
    CREATION_FAILED = "CREATION_FAILED",
    UPDATE_FAILED = "UPDATE_FAILED",
}

M.ScraperLoggingConfigurationStatus = {
    type = "structure",
    id = "ScraperLoggingConfigurationStatus",
    members = {
        statusCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusReason = {
            type = "string",
        },
    },
}

M.DescribeScraperLoggingConfigurationOutput = {
    type = "structure",
    id = "DescribeScraperLoggingConfigurationOutput",
    members = {
        status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ScraperLoggingConfigurationStatus }),
        scraperId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        loggingDestination = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ScraperLoggingDestination }),
        scraperComponents = {
            type = "list",
            member = M.ScraperComponent,
            traits = {
                required = true,
            },
        },
        modifiedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateScraperLoggingConfigurationInput = {
    type = "structure",
    id = "UpdateScraperLoggingConfigurationInput",
    members = {
        scraperId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        loggingDestination = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ScraperLoggingDestination }),
        scraperComponents = {
            type = "list",
            member = M.ScraperComponent,
        },
    },
}

M.UpdateScraperLoggingConfigurationOutput = {
    type = "structure",
    id = "UpdateScraperLoggingConfigurationOutput",
    members = {
        status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ScraperLoggingConfigurationStatus }),
    },
}

M.UpdateScraperInput = {
    type = "structure",
    id = "UpdateScraperInput",
    members = {
        scraperId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        alias = {
            type = "string",
        },
        scrapeConfiguration = M.ScrapeConfiguration,
        destination = M.Destination,
        roleConfiguration = M.RoleConfiguration,
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.UpdateScraperOutput = {
    type = "structure",
    id = "UpdateScraperOutput",
    members = {
        scraperId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ScraperStatus }),
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
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

M.IgnoreNearExpected = {
    type = "union",
    id = "IgnoreNearExpected",
    members = {
        amount = {
            type = "double",
        },
        ratio = {
            type = "double",
        },
    },
}

M.RandomCutForestConfiguration = {
    type = "structure",
    id = "RandomCutForestConfiguration",
    members = {
        query = {
            type = "string",
            traits = {
                required = true,
            },
        },
        shingleSize = {
            type = "integer",
            traits = {
                default = 8,
            },
        },
        sampleSize = {
            type = "integer",
            traits = {
                default = 256,
            },
        },
        ignoreNearExpectedFromAbove = M.IgnoreNearExpected,
        ignoreNearExpectedFromBelow = M.IgnoreNearExpected,
    },
}

M.AnomalyDetectorConfiguration = {
    type = "union",
    id = "AnomalyDetectorConfiguration",
    members = {
        randomCutForest = M.RandomCutForestConfiguration,
    },
}

M.AnomalyDetectorMissingDataAction = {
    type = "union",
    id = "AnomalyDetectorMissingDataAction",
    members = {
        markAsAnomaly = {
            type = "boolean",
        },
        skip = {
            type = "boolean",
        },
    },
}

M.CreateAnomalyDetectorInput = {
    type = "structure",
    id = "CreateAnomalyDetectorInput",
    members = {
        workspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        alias = {
            type = "string",
            traits = {
                required = true,
            },
        },
        evaluationIntervalInSeconds = {
            type = "integer",
            traits = {
                default = 60,
            },
        },
        missingDataAction = M.AnomalyDetectorMissingDataAction,
        configuration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AnomalyDetectorConfiguration }),
        labels = {
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
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.AnomalyDetectorStatusCode = {
    CREATING = "CREATING",
    ACTIVE = "ACTIVE",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
    CREATION_FAILED = "CREATION_FAILED",
    UPDATE_FAILED = "UPDATE_FAILED",
    DELETION_FAILED = "DELETION_FAILED",
}

M.AnomalyDetectorStatus = {
    type = "structure",
    id = "AnomalyDetectorStatus",
    members = {
        statusCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusReason = {
            type = "string",
        },
    },
}

M.CreateAnomalyDetectorOutput = {
    type = "structure",
    id = "CreateAnomalyDetectorOutput",
    members = {
        anomalyDetectorId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AnomalyDetectorStatus }),
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.DeleteAnomalyDetectorInput = {
    type = "structure",
    id = "DeleteAnomalyDetectorInput",
    members = {
        workspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        anomalyDetectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_query = "clientToken",
                idempotency_token = true,
            },
        },
    },
}

M.DeleteAnomalyDetectorOutput = {
    type = "structure",
    id = "DeleteAnomalyDetectorOutput",
}

M.DescribeAnomalyDetectorInput = {
    type = "structure",
    id = "DescribeAnomalyDetectorInput",
    members = {
        workspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        anomalyDetectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.AnomalyDetectorDescription = {
    type = "structure",
    id = "AnomalyDetectorDescription",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        anomalyDetectorId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        alias = {
            type = "string",
            traits = {
                required = true,
            },
        },
        evaluationIntervalInSeconds = {
            type = "integer",
        },
        missingDataAction = M.AnomalyDetectorMissingDataAction,
        configuration = M.AnomalyDetectorConfiguration,
        labels = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AnomalyDetectorStatus }),
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        modifiedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.DescribeAnomalyDetectorOutput = {
    type = "structure",
    id = "DescribeAnomalyDetectorOutput",
    members = {
        anomalyDetector = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AnomalyDetectorDescription }),
    },
}

M.ListAnomalyDetectorsInput = {
    type = "structure",
    id = "ListAnomalyDetectorsInput",
    members = {
        workspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        alias = {
            type = "string",
            traits = {
                http_query = "alias",
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

M.AnomalyDetectorSummary = {
    type = "structure",
    id = "AnomalyDetectorSummary",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        anomalyDetectorId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        alias = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AnomalyDetectorStatus }),
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        modifiedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListAnomalyDetectorsOutput = {
    type = "structure",
    id = "ListAnomalyDetectorsOutput",
    members = {
        anomalyDetectors = {
            type = "list",
            member = M.AnomalyDetectorSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.PutAnomalyDetectorInput = {
    type = "structure",
    id = "PutAnomalyDetectorInput",
    members = {
        workspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        anomalyDetectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        evaluationIntervalInSeconds = {
            type = "integer",
            traits = {
                default = 60,
            },
        },
        missingDataAction = M.AnomalyDetectorMissingDataAction,
        configuration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AnomalyDetectorConfiguration }),
        labels = {
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

M.PutAnomalyDetectorOutput = {
    type = "structure",
    id = "PutAnomalyDetectorOutput",
    members = {
        anomalyDetectorId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AnomalyDetectorStatus }),
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateWorkspaceInput = {
    type = "structure",
    id = "CreateWorkspaceInput",
    members = {
        alias = {
            type = "string",
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
        kmsKeyArn = {
            type = "string",
        },
    },
}

M.WorkspaceStatusCode = {
    CREATING = "CREATING",
    ACTIVE = "ACTIVE",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
    CREATION_FAILED = "CREATION_FAILED",
}

M.WorkspaceStatus = {
    type = "structure",
    id = "WorkspaceStatus",
    members = {
        statusCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateWorkspaceOutput = {
    type = "structure",
    id = "CreateWorkspaceOutput",
    members = {
        workspaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WorkspaceStatus }),
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        kmsKeyArn = {
            type = "string",
        },
    },
}

M.DeleteWorkspaceInput = {
    type = "structure",
    id = "DeleteWorkspaceInput",
    members = {
        workspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_query = "clientToken",
                idempotency_token = true,
            },
        },
    },
}

M.DeleteWorkspaceOutput = {
    type = "structure",
    id = "DeleteWorkspaceOutput",
}

M.DescribeWorkspaceInput = {
    type = "structure",
    id = "DescribeWorkspaceInput",
    members = {
        workspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.WorkspaceDescription = {
    type = "structure",
    id = "WorkspaceDescription",
    members = {
        workspaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        alias = {
            type = "string",
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WorkspaceStatus }),
        prometheusEndpoint = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        kmsKeyArn = {
            type = "string",
        },
    },
}

M.DescribeWorkspaceOutput = {
    type = "structure",
    id = "DescribeWorkspaceOutput",
    members = {
        workspace = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WorkspaceDescription }),
    },
}

M.ListWorkspacesInput = {
    type = "structure",
    id = "ListWorkspacesInput",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        alias = {
            type = "string",
            traits = {
                http_query = "alias",
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

M.WorkspaceSummary = {
    type = "structure",
    id = "WorkspaceSummary",
    members = {
        workspaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        alias = {
            type = "string",
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WorkspaceStatus }),
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        kmsKeyArn = {
            type = "string",
        },
    },
}

M.ListWorkspacesOutput = {
    type = "structure",
    id = "ListWorkspacesOutput",
    members = {
        workspaces = {
            type = "list",
            member = M.WorkspaceSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.CreateLoggingConfigurationInput = {
    type = "structure",
    id = "CreateLoggingConfigurationInput",
    members = {
        workspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        logGroupArn = {
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

M.LoggingConfigurationStatusCode = {
    CREATING = "CREATING",
    ACTIVE = "ACTIVE",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
    CREATION_FAILED = "CREATION_FAILED",
    UPDATE_FAILED = "UPDATE_FAILED",
}

M.LoggingConfigurationStatus = {
    type = "structure",
    id = "LoggingConfigurationStatus",
    members = {
        statusCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusReason = {
            type = "string",
        },
    },
}

M.CreateLoggingConfigurationOutput = {
    type = "structure",
    id = "CreateLoggingConfigurationOutput",
    members = {
        status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LoggingConfigurationStatus }),
    },
}

M.DeleteLoggingConfigurationInput = {
    type = "structure",
    id = "DeleteLoggingConfigurationInput",
    members = {
        workspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_query = "clientToken",
                idempotency_token = true,
            },
        },
    },
}

M.DeleteLoggingConfigurationOutput = {
    type = "structure",
    id = "DeleteLoggingConfigurationOutput",
}

M.DescribeLoggingConfigurationInput = {
    type = "structure",
    id = "DescribeLoggingConfigurationInput",
    members = {
        workspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.LoggingConfigurationMetadata = {
    type = "structure",
    id = "LoggingConfigurationMetadata",
    members = {
        status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LoggingConfigurationStatus }),
        workspace = {
            type = "string",
            traits = {
                required = true,
            },
        },
        logGroupArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        modifiedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeLoggingConfigurationOutput = {
    type = "structure",
    id = "DescribeLoggingConfigurationOutput",
    members = {
        loggingConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LoggingConfigurationMetadata }),
    },
}

M.UpdateLoggingConfigurationInput = {
    type = "structure",
    id = "UpdateLoggingConfigurationInput",
    members = {
        workspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        logGroupArn = {
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

M.UpdateLoggingConfigurationOutput = {
    type = "structure",
    id = "UpdateLoggingConfigurationOutput",
    members = {
        status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LoggingConfigurationStatus }),
    },
}

M.LoggingFilter = {
    type = "structure",
    id = "LoggingFilter",
    members = {
        qspThreshold = {
            type = "long",
            traits = {
                required = true,
            },
        },
    },
}

M.LoggingDestination = {
    type = "structure",
    id = "LoggingDestination",
    members = {
        cloudWatchLogs = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CloudWatchLogDestination }),
        filters = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LoggingFilter }),
    },
}

M.CreateQueryLoggingConfigurationInput = {
    type = "structure",
    id = "CreateQueryLoggingConfigurationInput",
    members = {
        workspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        destinations = {
            type = "list",
            member = M.LoggingDestination,
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

M.QueryLoggingConfigurationStatusCode = {
    CREATING = "CREATING",
    ACTIVE = "ACTIVE",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
    CREATION_FAILED = "CREATION_FAILED",
    UPDATE_FAILED = "UPDATE_FAILED",
}

M.QueryLoggingConfigurationStatus = {
    type = "structure",
    id = "QueryLoggingConfigurationStatus",
    members = {
        statusCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusReason = {
            type = "string",
        },
    },
}

M.CreateQueryLoggingConfigurationOutput = {
    type = "structure",
    id = "CreateQueryLoggingConfigurationOutput",
    members = {
        status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.QueryLoggingConfigurationStatus }),
    },
}

M.DeleteQueryLoggingConfigurationInput = {
    type = "structure",
    id = "DeleteQueryLoggingConfigurationInput",
    members = {
        workspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_query = "clientToken",
                idempotency_token = true,
            },
        },
    },
}

M.DeleteQueryLoggingConfigurationOutput = {
    type = "structure",
    id = "DeleteQueryLoggingConfigurationOutput",
}

M.DescribeQueryLoggingConfigurationInput = {
    type = "structure",
    id = "DescribeQueryLoggingConfigurationInput",
    members = {
        workspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.QueryLoggingConfigurationMetadata = {
    type = "structure",
    id = "QueryLoggingConfigurationMetadata",
    members = {
        status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.QueryLoggingConfigurationStatus }),
        workspace = {
            type = "string",
            traits = {
                required = true,
            },
        },
        destinations = {
            type = "list",
            member = M.LoggingDestination,
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        modifiedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeQueryLoggingConfigurationOutput = {
    type = "structure",
    id = "DescribeQueryLoggingConfigurationOutput",
    members = {
        queryLoggingConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.QueryLoggingConfigurationMetadata }),
    },
}

M.UpdateQueryLoggingConfigurationInput = {
    type = "structure",
    id = "UpdateQueryLoggingConfigurationInput",
    members = {
        workspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        destinations = {
            type = "list",
            member = M.LoggingDestination,
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

M.UpdateQueryLoggingConfigurationOutput = {
    type = "structure",
    id = "UpdateQueryLoggingConfigurationOutput",
    members = {
        status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.QueryLoggingConfigurationStatus }),
    },
}

M.CreateRuleGroupsNamespaceInput = {
    type = "structure",
    id = "CreateRuleGroupsNamespaceInput",
    members = {
        workspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        data = {
            type = "blob",
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

M.RuleGroupsNamespaceStatusCode = {
    CREATING = "CREATING",
    ACTIVE = "ACTIVE",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
    CREATION_FAILED = "CREATION_FAILED",
    UPDATE_FAILED = "UPDATE_FAILED",
}

M.RuleGroupsNamespaceStatus = {
    type = "structure",
    id = "RuleGroupsNamespaceStatus",
    members = {
        statusCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusReason = {
            type = "string",
        },
    },
}

M.CreateRuleGroupsNamespaceOutput = {
    type = "structure",
    id = "CreateRuleGroupsNamespaceOutput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RuleGroupsNamespaceStatus }),
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.DeleteRuleGroupsNamespaceInput = {
    type = "structure",
    id = "DeleteRuleGroupsNamespaceInput",
    members = {
        workspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_query = "clientToken",
                idempotency_token = true,
            },
        },
    },
}

M.DeleteRuleGroupsNamespaceOutput = {
    type = "structure",
    id = "DeleteRuleGroupsNamespaceOutput",
}

M.DescribeRuleGroupsNamespaceInput = {
    type = "structure",
    id = "DescribeRuleGroupsNamespaceInput",
    members = {
        workspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.RuleGroupsNamespaceDescription = {
    type = "structure",
    id = "RuleGroupsNamespaceDescription",
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
        status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RuleGroupsNamespaceStatus }),
        data = {
            type = "blob",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        modifiedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.DescribeRuleGroupsNamespaceOutput = {
    type = "structure",
    id = "DescribeRuleGroupsNamespaceOutput",
    members = {
        ruleGroupsNamespace = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RuleGroupsNamespaceDescription }),
    },
}

M.ListRuleGroupsNamespacesInput = {
    type = "structure",
    id = "ListRuleGroupsNamespacesInput",
    members = {
        workspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
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

M.RuleGroupsNamespaceSummary = {
    type = "structure",
    id = "RuleGroupsNamespaceSummary",
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
        status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RuleGroupsNamespaceStatus }),
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        modifiedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListRuleGroupsNamespacesOutput = {
    type = "structure",
    id = "ListRuleGroupsNamespacesOutput",
    members = {
        ruleGroupsNamespaces = {
            type = "list",
            member = M.RuleGroupsNamespaceSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.PutRuleGroupsNamespaceInput = {
    type = "structure",
    id = "PutRuleGroupsNamespaceInput",
    members = {
        workspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        data = {
            type = "blob",
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

M.PutRuleGroupsNamespaceOutput = {
    type = "structure",
    id = "PutRuleGroupsNamespaceOutput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RuleGroupsNamespaceStatus }),
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.UpdateWorkspaceAliasInput = {
    type = "structure",
    id = "UpdateWorkspaceAliasInput",
    members = {
        workspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        alias = {
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

M.UpdateWorkspaceAliasOutput = {
    type = "structure",
    id = "UpdateWorkspaceAliasOutput",
}

M.DescribeWorkspaceConfigurationInput = {
    type = "structure",
    id = "DescribeWorkspaceConfigurationInput",
    members = {
        workspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.LimitsPerLabelSetEntry = {
    type = "structure",
    id = "LimitsPerLabelSetEntry",
    members = {
        maxSeries = {
            type = "long",
        },
    },
}

M.LimitsPerLabelSet = {
    type = "structure",
    id = "LimitsPerLabelSet",
    members = {
        limits = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LimitsPerLabelSetEntry }),
        labelSet = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.WorkspaceConfigurationStatusCode = {
    ACTIVE = "ACTIVE",
    UPDATING = "UPDATING",
    UPDATE_FAILED = "UPDATE_FAILED",
}

M.WorkspaceConfigurationStatus = {
    type = "structure",
    id = "WorkspaceConfigurationStatus",
    members = {
        statusCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusReason = {
            type = "string",
        },
    },
}

M.WorkspaceConfigurationDescription = {
    type = "structure",
    id = "WorkspaceConfigurationDescription",
    members = {
        status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WorkspaceConfigurationStatus }),
        limitsPerLabelSet = {
            type = "list",
            member = M.LimitsPerLabelSet,
        },
        retentionPeriodInDays = {
            type = "integer",
        },
    },
}

M.DescribeWorkspaceConfigurationOutput = {
    type = "structure",
    id = "DescribeWorkspaceConfigurationOutput",
    members = {
        workspaceConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WorkspaceConfigurationDescription }),
    },
}

M.UpdateWorkspaceConfigurationInput = {
    type = "structure",
    id = "UpdateWorkspaceConfigurationInput",
    members = {
        workspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        limitsPerLabelSet = {
            type = "list",
            member = M.LimitsPerLabelSet,
        },
        retentionPeriodInDays = {
            type = "integer",
        },
    },
}

M.UpdateWorkspaceConfigurationOutput = {
    type = "structure",
    id = "UpdateWorkspaceConfigurationOutput",
    members = {
        status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WorkspaceConfigurationStatus }),
    },
}

M.DeleteResourcePolicyInput = {
    type = "structure",
    id = "DeleteResourcePolicyInput",
    members = {
        workspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_query = "clientToken",
                idempotency_token = true,
            },
        },
        revisionId = {
            type = "string",
            traits = {
                http_query = "revisionId",
            },
        },
    },
}

M.DeleteResourcePolicyOutput = {
    type = "structure",
    id = "DeleteResourcePolicyOutput",
}

M.DescribeResourcePolicyInput = {
    type = "structure",
    id = "DescribeResourcePolicyInput",
    members = {
        workspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.WorkspacePolicyStatusCode = {
    CREATING = "CREATING",
    ACTIVE = "ACTIVE",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
}

M.DescribeResourcePolicyOutput = {
    type = "structure",
    id = "DescribeResourcePolicyOutput",
    members = {
        policyDocument = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policyStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        revisionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutResourcePolicyInput = {
    type = "structure",
    id = "PutResourcePolicyInput",
    members = {
        workspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        policyDocument = {
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
        revisionId = {
            type = "string",
        },
    },
}

M.PutResourcePolicyOutput = {
    type = "structure",
    id = "PutResourcePolicyOutput",
    members = {
        policyStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        revisionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

return M
