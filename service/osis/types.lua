local M = {}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.BufferOptions = {
    type = "structure",
    members = {
        PersistentBufferEnabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.EncryptionAtRestOptions = {
    type = "structure",
    members = {
        KmsKeyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CloudWatchLogDestination = {
    type = "structure",
    members = {
        LogGroup = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.LogPublishingOptions = {
    type = "structure",
    members = {
        IsLoggingEnabled = {
            type = "boolean",
        },
        CloudWatchLogDestination = {
            type = "structure",
        },
    },
}

M.Tag = {
    type = "structure",
    members = {
        Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.VpcAttachmentOptions = {
    type = "structure",
    members = {
        AttachToVpc = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        CidrBlock = {
            type = "string",
        },
    },
}

M.VpcEndpointManagement = {
    CUSTOMER = "CUSTOMER",
    SERVICE = "SERVICE",
}

M.VpcOptions = {
    type = "structure",
    members = {
        SubnetIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        SecurityGroupIds = {
            type = "list",
            member_type = "string",
        },
        VpcAttachmentOptions = {
            type = "structure",
        },
        VpcEndpointManagement = {
            type = "string",
        },
    },
}

M.CreatePipelineInput = {
    type = "structure",
    members = {
        PipelineName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MinUnits = {
            type = "number",
            traits = {
                required = true,
            },
        },
        MaxUnits = {
            type = "number",
            traits = {
                required = true,
            },
        },
        PipelineConfigurationBody = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LogPublishingOptions = {
            type = "structure",
        },
        VpcOptions = {
            type = "structure",
        },
        BufferOptions = {
            type = "structure",
        },
        EncryptionAtRestOptions = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        PipelineRoleArn = {
            type = "string",
        },
    },
}

M.PipelineDestination = {
    type = "structure",
    members = {
        ServiceName = {
            type = "string",
        },
        Endpoint = {
            type = "string",
        },
    },
}

M.VpcEndpointServiceName = {
    OPENSEARCH_SERVERLESS = "OPENSEARCH_SERVERLESS",
}

M.ServiceVpcEndpoint = {
    type = "structure",
    members = {
        ServiceName = {
            type = "string",
        },
        VpcEndpointId = {
            type = "string",
        },
    },
}

M.PipelineStatus = {
    CREATING = "CREATING",
    ACTIVE = "ACTIVE",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
    CREATE_FAILED = "CREATE_FAILED",
    UPDATE_FAILED = "UPDATE_FAILED",
    STARTING = "STARTING",
    START_FAILED = "START_FAILED",
    STOPPING = "STOPPING",
    STOPPED = "STOPPED",
}

M.PipelineStatusReason = {
    type = "structure",
    members = {
        Description = {
            type = "string",
        },
    },
}

M.VpcEndpoint = {
    type = "structure",
    members = {
        VpcEndpointId = {
            type = "string",
        },
        VpcId = {
            type = "string",
        },
        VpcOptions = {
            type = "structure",
        },
    },
}

M.Pipeline = {
    type = "structure",
    members = {
        PipelineName = {
            type = "string",
        },
        PipelineArn = {
            type = "string",
        },
        MinUnits = {
            type = "number",
        },
        MaxUnits = {
            type = "number",
        },
        Status = {
            type = "string",
        },
        StatusReason = {
            type = "structure",
        },
        PipelineConfigurationBody = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        LastUpdatedAt = {
            type = "timestamp",
        },
        IngestEndpointUrls = {
            type = "list",
            member_type = "string",
        },
        LogPublishingOptions = {
            type = "structure",
        },
        VpcEndpoints = {
            type = "list",
            member_type = "structure",
        },
        BufferOptions = {
            type = "structure",
        },
        EncryptionAtRestOptions = {
            type = "structure",
        },
        VpcEndpointService = {
            type = "string",
        },
        ServiceVpcEndpoints = {
            type = "list",
            member_type = "structure",
        },
        Destinations = {
            type = "list",
            member_type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        PipelineRoleArn = {
            type = "string",
        },
    },
}

M.CreatePipelineOutput = {
    type = "structure",
    members = {
        Pipeline = {
            type = "structure",
        },
    },
}

M.DisabledOperationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InternalException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.LimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResourceAlreadyExistsException = {
    type = "structure",
    error = "client",
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

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PipelineEndpointVpcOptions = {
    type = "structure",
    members = {
        SubnetIds = {
            type = "list",
            member_type = "string",
        },
        SecurityGroupIds = {
            type = "list",
            member_type = "string",
        },
    },
}

M.CreatePipelineEndpointInput = {
    type = "structure",
    members = {
        PipelineArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VpcOptions = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PipelineEndpointStatus = {
    CREATING = "CREATING",
    ACTIVE = "ACTIVE",
    CREATE_FAILED = "CREATE_FAILED",
    DELETING = "DELETING",
    REVOKING = "REVOKING",
    REVOKED = "REVOKED",
}

M.CreatePipelineEndpointOutput = {
    type = "structure",
    members = {
        PipelineArn = {
            type = "string",
        },
        EndpointId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        VpcId = {
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
        },
    },
}

M.DeletePipelineInput = {
    type = "structure",
    members = {
        PipelineName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeletePipelineOutput = {
    type = "structure",
}

M.DeletePipelineEndpointInput = {
    type = "structure",
    members = {
        EndpointId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeletePipelineEndpointOutput = {
    type = "structure",
}

M.DeleteResourcePolicyInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteResourcePolicyOutput = {
    type = "structure",
}

M.GetPipelineInput = {
    type = "structure",
    members = {
        PipelineName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetPipelineOutput = {
    type = "structure",
    members = {
        Pipeline = {
            type = "structure",
        },
    },
}

M.GetPipelineBlueprintInput = {
    type = "structure",
    members = {
        BlueprintName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Format = {
            type = "string",
            traits = {
                http_query = "format",
            },
        },
    },
}

M.PipelineBlueprint = {
    type = "structure",
    members = {
        BlueprintName = {
            type = "string",
        },
        PipelineConfigurationBody = {
            type = "string",
        },
        DisplayName = {
            type = "string",
        },
        DisplayDescription = {
            type = "string",
        },
        Service = {
            type = "string",
        },
        UseCase = {
            type = "string",
        },
    },
}

M.GetPipelineBlueprintOutput = {
    type = "structure",
    members = {
        Blueprint = {
            type = "structure",
        },
        Format = {
            type = "string",
        },
    },
}

M.GetPipelineChangeProgressInput = {
    type = "structure",
    members = {
        PipelineName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ChangeProgressStageStatuses = {
    PENDING = "PENDING",
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
}

M.ChangeProgressStage = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        LastUpdatedAt = {
            type = "timestamp",
        },
    },
}

M.ChangeProgressStatuses = {
    PENDING = "PENDING",
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
}

M.ChangeProgressStatus = {
    type = "structure",
    members = {
        StartTime = {
            type = "timestamp",
        },
        Status = {
            type = "string",
        },
        TotalNumberOfStages = {
            type = "number",
        },
        ChangeProgressStages = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetPipelineChangeProgressOutput = {
    type = "structure",
    members = {
        ChangeProgressStatuses = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetResourcePolicyInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetResourcePolicyOutput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
        },
        Policy = {
            type = "string",
        },
    },
}

M.InvalidPaginationTokenException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ListPipelineBlueprintsInput = {
    type = "structure",
}

M.PipelineBlueprintSummary = {
    type = "structure",
    members = {
        BlueprintName = {
            type = "string",
        },
        DisplayName = {
            type = "string",
        },
        DisplayDescription = {
            type = "string",
        },
        Service = {
            type = "string",
        },
        UseCase = {
            type = "string",
        },
    },
}

M.ListPipelineBlueprintsOutput = {
    type = "structure",
    members = {
        Blueprints = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListPipelineEndpointConnectionsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.PipelineEndpointConnection = {
    type = "structure",
    members = {
        PipelineArn = {
            type = "string",
        },
        EndpointId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        VpcEndpointOwner = {
            type = "string",
        },
    },
}

M.ListPipelineEndpointConnectionsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        PipelineEndpointConnections = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListPipelineEndpointsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.PipelineEndpoint = {
    type = "structure",
    members = {
        PipelineArn = {
            type = "string",
        },
        EndpointId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        VpcId = {
            type = "string",
        },
        VpcOptions = {
            type = "structure",
        },
        IngestEndpointUrl = {
            type = "string",
        },
    },
}

M.ListPipelineEndpointsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        PipelineEndpoints = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListPipelinesInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.PipelineSummary = {
    type = "structure",
    members = {
        Status = {
            type = "string",
        },
        StatusReason = {
            type = "structure",
        },
        PipelineName = {
            type = "string",
        },
        PipelineArn = {
            type = "string",
        },
        MinUnits = {
            type = "number",
        },
        MaxUnits = {
            type = "number",
        },
        CreatedAt = {
            type = "timestamp",
        },
        LastUpdatedAt = {
            type = "timestamp",
        },
        Destinations = {
            type = "list",
            member_type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListPipelinesOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        Pipelines = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                http_query = "arn",
                required = true,
            },
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    members = {
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.PutResourcePolicyInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Policy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutResourcePolicyOutput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
        },
        Policy = {
            type = "string",
        },
    },
}

M.RevokePipelineEndpointConnectionsInput = {
    type = "structure",
    members = {
        PipelineArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EndpointIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RevokePipelineEndpointConnectionsOutput = {
    type = "structure",
    members = {
        PipelineArn = {
            type = "string",
        },
    },
}

M.StartPipelineInput = {
    type = "structure",
    members = {
        PipelineName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StartPipelineOutput = {
    type = "structure",
    members = {
        Pipeline = {
            type = "structure",
        },
    },
}

M.StopPipelineInput = {
    type = "structure",
    members = {
        PipelineName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StopPipelineOutput = {
    type = "structure",
    members = {
        Pipeline = {
            type = "structure",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                http_query = "arn",
                required = true,
            },
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
        Arn = {
            type = "string",
            traits = {
                http_query = "arn",
                required = true,
            },
        },
        TagKeys = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
}

M.UpdatePipelineInput = {
    type = "structure",
    members = {
        PipelineName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MinUnits = {
            type = "number",
        },
        MaxUnits = {
            type = "number",
        },
        PipelineConfigurationBody = {
            type = "string",
        },
        LogPublishingOptions = {
            type = "structure",
        },
        BufferOptions = {
            type = "structure",
        },
        EncryptionAtRestOptions = {
            type = "structure",
        },
        PipelineRoleArn = {
            type = "string",
        },
    },
}

M.UpdatePipelineOutput = {
    type = "structure",
    members = {
        Pipeline = {
            type = "structure",
        },
    },
}

M.ValidatePipelineInput = {
    type = "structure",
    members = {
        PipelineConfigurationBody = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ValidationMessage = {
    type = "structure",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ValidatePipelineOutput = {
    type = "structure",
    members = {
        isValid = {
            type = "boolean",
        },
        Errors = {
            type = "list",
            member_type = "structure",
        },
    },
}

return M
