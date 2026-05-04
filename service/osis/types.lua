local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.BufferOptions = {
    type = "structure",
    id = "BufferOptions",
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
    id = "EncryptionAtRestOptions",
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
    id = "CloudWatchLogDestination",
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
    id = "LogPublishingOptions",
    members = {
        IsLoggingEnabled = {
            type = "boolean",
        },
        CloudWatchLogDestination = M.CloudWatchLogDestination,
    },
}

M.Tag = {
    type = "structure",
    id = "Tag",
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
    id = "VpcAttachmentOptions",
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
    id = "VpcOptions",
    members = {
        SubnetIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        SecurityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        VpcAttachmentOptions = M.VpcAttachmentOptions,
        VpcEndpointManagement = {
            type = "string",
        },
    },
}

M.CreatePipelineInput = {
    type = "structure",
    id = "CreatePipelineInput",
    members = {
        PipelineName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MinUnits = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        MaxUnits = {
            type = "integer",
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
        LogPublishingOptions = M.LogPublishingOptions,
        VpcOptions = M.VpcOptions,
        BufferOptions = M.BufferOptions,
        EncryptionAtRestOptions = M.EncryptionAtRestOptions,
        Tags = {
            type = "list",
            member = M.Tag,
        },
        PipelineRoleArn = {
            type = "string",
        },
    },
}

M.PipelineDestination = {
    type = "structure",
    id = "PipelineDestination",
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
    id = "ServiceVpcEndpoint",
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
    id = "PipelineStatusReason",
    members = {
        Description = {
            type = "string",
        },
    },
}

M.VpcEndpoint = {
    type = "structure",
    id = "VpcEndpoint",
    members = {
        VpcEndpointId = {
            type = "string",
        },
        VpcId = {
            type = "string",
        },
        VpcOptions = M.VpcOptions,
    },
}

M.Pipeline = {
    type = "structure",
    id = "Pipeline",
    members = {
        PipelineName = {
            type = "string",
        },
        PipelineArn = {
            type = "string",
        },
        MinUnits = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        MaxUnits = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        Status = {
            type = "string",
        },
        StatusReason = M.PipelineStatusReason,
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
            member = { type = "string" },
        },
        LogPublishingOptions = M.LogPublishingOptions,
        VpcEndpoints = {
            type = "list",
            member = M.VpcEndpoint,
        },
        BufferOptions = M.BufferOptions,
        EncryptionAtRestOptions = M.EncryptionAtRestOptions,
        VpcEndpointService = {
            type = "string",
        },
        ServiceVpcEndpoints = {
            type = "list",
            member = M.ServiceVpcEndpoint,
        },
        Destinations = {
            type = "list",
            member = M.PipelineDestination,
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        PipelineRoleArn = {
            type = "string",
        },
    },
}

M.CreatePipelineOutput = {
    type = "structure",
    id = "CreatePipelineOutput",
    members = {
        Pipeline = M.Pipeline,
    },
}

M.DisabledOperationException = {
    type = "structure",
    id = "DisabledOperationException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InternalException = {
    type = "structure",
    id = "InternalException",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.LimitExceededException = {
    type = "structure",
    id = "LimitExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResourceAlreadyExistsException = {
    type = "structure",
    id = "ResourceAlreadyExistsException",
    error = "client",
    members = {
        message = {
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

M.PipelineEndpointVpcOptions = {
    type = "structure",
    id = "PipelineEndpointVpcOptions",
    members = {
        SubnetIds = {
            type = "list",
            member = { type = "string" },
        },
        SecurityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CreatePipelineEndpointInput = {
    type = "structure",
    id = "CreatePipelineEndpointInput",
    members = {
        PipelineArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VpcOptions = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PipelineEndpointVpcOptions }),
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
    id = "CreatePipelineEndpointOutput",
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
    id = "ConflictException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeletePipelineInput = {
    type = "structure",
    id = "DeletePipelineInput",
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
    id = "DeletePipelineOutput",
}

M.DeletePipelineEndpointInput = {
    type = "structure",
    id = "DeletePipelineEndpointInput",
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
    id = "DeletePipelineEndpointOutput",
}

M.DeleteResourcePolicyInput = {
    type = "structure",
    id = "DeleteResourcePolicyInput",
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
    id = "DeleteResourcePolicyOutput",
}

M.GetPipelineInput = {
    type = "structure",
    id = "GetPipelineInput",
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
    id = "GetPipelineOutput",
    members = {
        Pipeline = M.Pipeline,
    },
}

M.GetPipelineBlueprintInput = {
    type = "structure",
    id = "GetPipelineBlueprintInput",
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
    id = "PipelineBlueprint",
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
    id = "GetPipelineBlueprintOutput",
    members = {
        Blueprint = M.PipelineBlueprint,
        Format = {
            type = "string",
        },
    },
}

M.GetPipelineChangeProgressInput = {
    type = "structure",
    id = "GetPipelineChangeProgressInput",
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
    id = "ChangeProgressStage",
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
    id = "ChangeProgressStatus",
    members = {
        StartTime = {
            type = "timestamp",
        },
        Status = {
            type = "string",
        },
        TotalNumberOfStages = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        ChangeProgressStages = {
            type = "list",
            member = M.ChangeProgressStage,
        },
    },
}

M.GetPipelineChangeProgressOutput = {
    type = "structure",
    id = "GetPipelineChangeProgressOutput",
    members = {
        ChangeProgressStatuses = {
            type = "list",
            member = M.ChangeProgressStatus,
        },
    },
}

M.GetResourcePolicyInput = {
    type = "structure",
    id = "GetResourcePolicyInput",
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
    id = "GetResourcePolicyOutput",
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
    id = "InvalidPaginationTokenException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ListPipelineBlueprintsInput = {
    type = "structure",
    id = "ListPipelineBlueprintsInput",
}

M.PipelineBlueprintSummary = {
    type = "structure",
    id = "PipelineBlueprintSummary",
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
    id = "ListPipelineBlueprintsOutput",
    members = {
        Blueprints = {
            type = "list",
            member = M.PipelineBlueprintSummary,
        },
    },
}

M.ListPipelineEndpointConnectionsInput = {
    type = "structure",
    id = "ListPipelineEndpointConnectionsInput",
    members = {
        MaxResults = {
            type = "integer",
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
    id = "PipelineEndpointConnection",
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
    id = "ListPipelineEndpointConnectionsOutput",
    members = {
        NextToken = {
            type = "string",
        },
        PipelineEndpointConnections = {
            type = "list",
            member = M.PipelineEndpointConnection,
        },
    },
}

M.ListPipelineEndpointsInput = {
    type = "structure",
    id = "ListPipelineEndpointsInput",
    members = {
        MaxResults = {
            type = "integer",
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
    id = "PipelineEndpoint",
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
        VpcOptions = M.PipelineEndpointVpcOptions,
        IngestEndpointUrl = {
            type = "string",
        },
    },
}

M.ListPipelineEndpointsOutput = {
    type = "structure",
    id = "ListPipelineEndpointsOutput",
    members = {
        NextToken = {
            type = "string",
        },
        PipelineEndpoints = {
            type = "list",
            member = M.PipelineEndpoint,
        },
    },
}

M.ListPipelinesInput = {
    type = "structure",
    id = "ListPipelinesInput",
    members = {
        MaxResults = {
            type = "integer",
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
    id = "PipelineSummary",
    members = {
        Status = {
            type = "string",
        },
        StatusReason = M.PipelineStatusReason,
        PipelineName = {
            type = "string",
        },
        PipelineArn = {
            type = "string",
        },
        MinUnits = {
            type = "integer",
        },
        MaxUnits = {
            type = "integer",
        },
        CreatedAt = {
            type = "timestamp",
        },
        LastUpdatedAt = {
            type = "timestamp",
        },
        Destinations = {
            type = "list",
            member = M.PipelineDestination,
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.ListPipelinesOutput = {
    type = "structure",
    id = "ListPipelinesOutput",
    members = {
        NextToken = {
            type = "string",
        },
        Pipelines = {
            type = "list",
            member = M.PipelineSummary,
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    id = "ListTagsForResourceInput",
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
    id = "ListTagsForResourceOutput",
    members = {
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.PutResourcePolicyInput = {
    type = "structure",
    id = "PutResourcePolicyInput",
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
    id = "PutResourcePolicyOutput",
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
    id = "RevokePipelineEndpointConnectionsInput",
    members = {
        PipelineArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EndpointIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.RevokePipelineEndpointConnectionsOutput = {
    type = "structure",
    id = "RevokePipelineEndpointConnectionsOutput",
    members = {
        PipelineArn = {
            type = "string",
        },
    },
}

M.StartPipelineInput = {
    type = "structure",
    id = "StartPipelineInput",
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
    id = "StartPipelineOutput",
    members = {
        Pipeline = M.Pipeline,
    },
}

M.StopPipelineInput = {
    type = "structure",
    id = "StopPipelineInput",
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
    id = "StopPipelineOutput",
    members = {
        Pipeline = M.Pipeline,
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
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
            member = M.Tag,
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
        Arn = {
            type = "string",
            traits = {
                http_query = "arn",
                required = true,
            },
        },
        TagKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
    id = "UntagResourceOutput",
}

M.UpdatePipelineInput = {
    type = "structure",
    id = "UpdatePipelineInput",
    members = {
        PipelineName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MinUnits = {
            type = "integer",
        },
        MaxUnits = {
            type = "integer",
        },
        PipelineConfigurationBody = {
            type = "string",
        },
        LogPublishingOptions = M.LogPublishingOptions,
        BufferOptions = M.BufferOptions,
        EncryptionAtRestOptions = M.EncryptionAtRestOptions,
        PipelineRoleArn = {
            type = "string",
        },
    },
}

M.UpdatePipelineOutput = {
    type = "structure",
    id = "UpdatePipelineOutput",
    members = {
        Pipeline = M.Pipeline,
    },
}

M.ValidatePipelineInput = {
    type = "structure",
    id = "ValidatePipelineInput",
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
    id = "ValidationMessage",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ValidatePipelineOutput = {
    type = "structure",
    id = "ValidatePipelineOutput",
    members = {
        isValid = {
            type = "boolean",
        },
        Errors = {
            type = "list",
            member = M.ValidationMessage,
        },
    },
}

return M
