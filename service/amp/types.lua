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
        status = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            type = "number",
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
            type = "number",
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
            member_type = "structure",
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
        status = {
            type = "structure",
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
        alertManagerDefinition = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        },
    },
}

M.PutAlertManagerDefinitionOutput = {
    type = "structure",
    members = {
        status = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            key_type = "string",
            value_type = "string",
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
        ampConfiguration = {
            type = "structure",
        },
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
            member_type = "string",
        },
        subnetIds = {
            type = "list",
            member_type = "string",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
        subnetIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Source = {
    type = "union",
    members = {
        eksConfiguration = {
            type = "structure",
        },
        vpcConfiguration = {
            type = "structure",
        },
    },
}

M.CreateScraperInput = {
    type = "structure",
    members = {
        alias = {
            type = "string",
        },
        scrapeConfiguration = {
            type = "union",
            traits = {
                required = true,
            },
        },
        source = {
            type = "union",
            traits = {
                required = true,
            },
        },
        destination = {
            type = "union",
            traits = {
                required = true,
            },
        },
        roleConfiguration = {
            type = "structure",
        },
        clientToken = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
        status = {
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
        status = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        status = {
            type = "structure",
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
        lastModifiedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        statusReason = {
            type = "string",
        },
        scrapeConfiguration = {
            type = "union",
            traits = {
                required = true,
            },
        },
        source = {
            type = "union",
            traits = {
                required = true,
            },
        },
        destination = {
            type = "union",
            traits = {
                required = true,
            },
        },
        roleConfiguration = {
            type = "structure",
        },
    },
}

M.DescribeScraperOutput = {
    type = "structure",
    members = {
        scraper = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListScrapersInput = {
    type = "structure",
    members = {
        filters = {
            type = "map",
            key_type = "string",
            value_type = "list",
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
            type = "number",
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
        status = {
            type = "structure",
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
        lastModifiedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        statusReason = {
            type = "string",
        },
        source = {
            type = "union",
            traits = {
                required = true,
            },
        },
        destination = {
            type = "union",
            traits = {
                required = true,
            },
        },
        roleConfiguration = {
            type = "structure",
        },
    },
}

M.ListScrapersOutput = {
    type = "structure",
    members = {
        scrapers = {
            type = "list",
            member_type = "structure",
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
        cloudWatchLogs = {
            type = "structure",
        },
    },
}

M.ComponentConfig = {
    type = "structure",
    members = {
        options = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
        config = {
            type = "structure",
        },
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
        status = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        scraperId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        loggingDestination = {
            type = "union",
            traits = {
                required = true,
            },
        },
        scraperComponents = {
            type = "list",
            member_type = "structure",
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
        loggingDestination = {
            type = "union",
            traits = {
                required = true,
            },
        },
        scraperComponents = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.UpdateScraperLoggingConfigurationOutput = {
    type = "structure",
    members = {
        status = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        scrapeConfiguration = {
            type = "union",
        },
        destination = {
            type = "union",
        },
        roleConfiguration = {
            type = "structure",
        },
        clientToken = {
            type = "string",
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
        status = {
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

M.IgnoreNearExpected = {
    type = "union",
    members = {
        amount = {
            type = "number",
        },
        ratio = {
            type = "number",
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
            type = "number",
        },
        sampleSize = {
            type = "number",
        },
        ignoreNearExpectedFromAbove = {
            type = "union",
        },
        ignoreNearExpectedFromBelow = {
            type = "union",
        },
    },
}

M.AnomalyDetectorConfiguration = {
    type = "union",
    members = {
        randomCutForest = {
            type = "structure",
        },
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
            type = "number",
        },
        missingDataAction = {
            type = "union",
        },
        configuration = {
            type = "union",
            traits = {
                required = true,
            },
        },
        labels = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        clientToken = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
        status = {
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
            type = "number",
        },
        missingDataAction = {
            type = "union",
        },
        configuration = {
            type = "union",
        },
        labels = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        status = {
            type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.DescribeAnomalyDetectorOutput = {
    type = "structure",
    members = {
        anomalyDetector = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        status = {
            type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ListAnomalyDetectorsOutput = {
    type = "structure",
    members = {
        anomalyDetectors = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
        missingDataAction = {
            type = "union",
        },
        configuration = {
            type = "union",
            traits = {
                required = true,
            },
        },
        labels = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        clientToken = {
            type = "string",
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
        status = {
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

M.CreateWorkspaceInput = {
    type = "structure",
    members = {
        alias = {
            type = "string",
        },
        clientToken = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
        status = {
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
        status = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            key_type = "string",
            value_type = "string",
        },
        kmsKeyArn = {
            type = "string",
        },
    },
}

M.DescribeWorkspaceOutput = {
    type = "structure",
    members = {
        workspace = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            type = "number",
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
        status = {
            type = "structure",
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
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            member_type = "structure",
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
        status = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        status = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        loggingConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        },
    },
}

M.UpdateLoggingConfigurationOutput = {
    type = "structure",
    members = {
        status = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.LoggingFilter = {
    type = "structure",
    members = {
        qspThreshold = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.LoggingDestination = {
    type = "structure",
    members = {
        cloudWatchLogs = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        filters = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
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
        status = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        status = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        workspace = {
            type = "string",
            traits = {
                required = true,
            },
        },
        destinations = {
            type = "list",
            member_type = "structure",
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
        queryLoggingConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
    },
}

M.UpdateQueryLoggingConfigurationOutput = {
    type = "structure",
    members = {
        status = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
        status = {
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
        status = {
            type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.DescribeRuleGroupsNamespaceOutput = {
    type = "structure",
    members = {
        ruleGroupsNamespace = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            type = "number",
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
        status = {
            type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ListRuleGroupsNamespacesOutput = {
    type = "structure",
    members = {
        ruleGroupsNamespaces = {
            type = "list",
            member_type = "structure",
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
        status = {
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
            type = "number",
        },
    },
}

M.LimitsPerLabelSet = {
    type = "structure",
    members = {
        limits = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        labelSet = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
        status = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        limitsPerLabelSet = {
            type = "list",
            member_type = "structure",
        },
        retentionPeriodInDays = {
            type = "number",
        },
    },
}

M.DescribeWorkspaceConfigurationOutput = {
    type = "structure",
    members = {
        workspaceConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        },
        limitsPerLabelSet = {
            type = "list",
            member_type = "structure",
        },
        retentionPeriodInDays = {
            type = "number",
        },
    },
}

M.UpdateWorkspaceConfigurationOutput = {
    type = "structure",
    members = {
        status = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
