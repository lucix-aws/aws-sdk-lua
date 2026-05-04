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
    members = {
        status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AlertManagerDefinitionStatus }),
    },
}

M.InternalServerException = {
    type = "structure",
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
}

M.DescribeAlertManagerDefinitionInput = {
    type = "structure",
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
    members = {
        alertManagerDefinition = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AlertManagerDefinitionDescription }),
    },
}

M.PutAlertManagerDefinitionInput = {
    type = "structure",
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
    members = {
        status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AlertManagerDefinitionStatus }),
    },
}

M.GetDefaultScraperConfigurationInput = {
    type = "structure",
}

M.GetDefaultScraperConfigurationOutput = {
    type = "structure",
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

M.AmpConfiguration = {
    type = "structure",
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
    members = {
        ampConfiguration = M.AmpConfiguration,
    },
}

M.RoleConfiguration = {
    type = "structure",
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
    members = {
        configurationBlob = {
            type = "blob",
        },
    },
}

M.EksConfiguration = {
    type = "structure",
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
    members = {
        eksConfiguration = M.EksConfiguration,
        vpcConfiguration = M.VpcConfiguration,
    },
}

M.CreateScraperInput = {
    type = "structure",
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
    members = {
        scraper = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ScraperDescription }),
    },
}

M.ListScrapersInput = {
    type = "structure",
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
}

M.DescribeScraperLoggingConfigurationInput = {
    type = "structure",
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
    members = {
        cloudWatchLogs = M.CloudWatchLogDestination,
    },
}

M.ComponentConfig = {
    type = "structure",
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
    members = {
        status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ScraperLoggingConfigurationStatus }),
    },
}

M.UpdateScraperInput = {
    type = "structure",
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

M.IgnoreNearExpected = {
    type = "union",
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
    members = {
        randomCutForest = M.RandomCutForestConfiguration,
    },
}

M.AnomalyDetectorMissingDataAction = {
    type = "union",
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
}

M.DescribeAnomalyDetectorInput = {
    type = "structure",
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
    members = {
        anomalyDetector = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AnomalyDetectorDescription }),
    },
}

M.ListAnomalyDetectorsInput = {
    type = "structure",
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
}

M.DescribeWorkspaceInput = {
    type = "structure",
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
    members = {
        workspace = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WorkspaceDescription }),
    },
}

M.ListWorkspacesInput = {
    type = "structure",
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
    members = {
        status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LoggingConfigurationStatus }),
    },
}

M.DeleteLoggingConfigurationInput = {
    type = "structure",
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
}

M.DescribeLoggingConfigurationInput = {
    type = "structure",
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
    members = {
        loggingConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LoggingConfigurationMetadata }),
    },
}

M.UpdateLoggingConfigurationInput = {
    type = "structure",
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
    members = {
        status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LoggingConfigurationStatus }),
    },
}

M.LoggingFilter = {
    type = "structure",
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
    members = {
        status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.QueryLoggingConfigurationStatus }),
    },
}

M.DeleteQueryLoggingConfigurationInput = {
    type = "structure",
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
}

M.DescribeQueryLoggingConfigurationInput = {
    type = "structure",
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
    members = {
        queryLoggingConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.QueryLoggingConfigurationMetadata }),
    },
}

M.UpdateQueryLoggingConfigurationInput = {
    type = "structure",
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
    members = {
        status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.QueryLoggingConfigurationStatus }),
    },
}

M.CreateRuleGroupsNamespaceInput = {
    type = "structure",
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
}

M.DescribeRuleGroupsNamespaceInput = {
    type = "structure",
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
    members = {
        ruleGroupsNamespace = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RuleGroupsNamespaceDescription }),
    },
}

M.ListRuleGroupsNamespacesInput = {
    type = "structure",
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
}

M.DescribeWorkspaceConfigurationInput = {
    type = "structure",
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
    members = {
        maxSeries = {
            type = "long",
        },
    },
}

M.LimitsPerLabelSet = {
    type = "structure",
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
    members = {
        workspaceConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WorkspaceConfigurationDescription }),
    },
}

M.UpdateWorkspaceConfigurationInput = {
    type = "structure",
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
    members = {
        status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WorkspaceConfigurationStatus }),
    },
}

M.DeleteResourcePolicyInput = {
    type = "structure",
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
}

M.DescribeResourcePolicyInput = {
    type = "structure",
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
