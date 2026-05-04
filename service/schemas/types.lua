local M = {}

M.DiscovererState = {
    STARTED = "STARTED",
    STOPPED = "STOPPED",
}

M.DiscovererSummary = {
    type = "structure",
    id = "DiscovererSummary",
    members = {
        DiscovererArn = {
            type = "string",
        },
        DiscovererId = {
            type = "string",
        },
        SourceArn = {
            type = "string",
        },
        State = {
            type = "string",
        },
        CrossAccount = {
            type = "boolean",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.RegistrySummary = {
    type = "structure",
    id = "RegistrySummary",
    members = {
        RegistryArn = {
            type = "string",
        },
        RegistryName = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.SchemaSummary = {
    type = "structure",
    id = "SchemaSummary",
    members = {
        LastModified = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        SchemaArn = {
            type = "string",
        },
        SchemaName = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
        VersionCount = {
            type = "long",
        },
    },
}

M.Type = {
    OpenApi3 = "OpenApi3",
    JSONSchemaDraft4 = "JSONSchemaDraft4",
}

M.SchemaVersionSummary = {
    type = "structure",
    id = "SchemaVersionSummary",
    members = {
        SchemaArn = {
            type = "string",
        },
        SchemaName = {
            type = "string",
        },
        SchemaVersion = {
            type = "string",
        },
        Type = {
            type = "string",
        },
    },
}

M.SearchSchemaVersionSummary = {
    type = "structure",
    id = "SearchSchemaVersionSummary",
    members = {
        CreatedDate = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        SchemaVersion = {
            type = "string",
        },
        Type = {
            type = "string",
        },
    },
}

M.SearchSchemaSummary = {
    type = "structure",
    id = "SearchSchemaSummary",
    members = {
        RegistryName = {
            type = "string",
        },
        SchemaArn = {
            type = "string",
        },
        SchemaName = {
            type = "string",
        },
        SchemaVersions = {
            type = "list",
            member = M.SearchSchemaVersionSummary,
        },
    },
}

M.BadRequestException = {
    type = "structure",
    id = "BadRequestException",
    error = "client",
    members = {
        Code = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CodeGenerationStatus = {
    CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS",
    CREATE_COMPLETE = "CREATE_COMPLETE",
    CREATE_FAILED = "CREATE_FAILED",
}

M.ConflictException = {
    type = "structure",
    id = "ConflictException",
    error = "client",
    members = {
        Code = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateDiscovererInput = {
    type = "structure",
    id = "CreateDiscovererInput",
    members = {
        Description = {
            type = "string",
        },
        SourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CrossAccount = {
            type = "boolean",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.CreateDiscovererOutput = {
    type = "structure",
    id = "CreateDiscovererOutput",
    members = {
        Description = {
            type = "string",
        },
        DiscovererArn = {
            type = "string",
        },
        DiscovererId = {
            type = "string",
        },
        SourceArn = {
            type = "string",
        },
        State = {
            type = "string",
        },
        CrossAccount = {
            type = "boolean",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.ForbiddenException = {
    type = "structure",
    id = "ForbiddenException",
    error = "client",
    members = {
        Code = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InternalServerErrorException = {
    type = "structure",
    id = "InternalServerErrorException",
    error = "server",
    members = {
        Code = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ServiceUnavailableException = {
    type = "structure",
    id = "ServiceUnavailableException",
    error = "server",
    members = {
        Code = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UnauthorizedException = {
    type = "structure",
    id = "UnauthorizedException",
    error = "client",
    members = {
        Code = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateRegistryInput = {
    type = "structure",
    id = "CreateRegistryInput",
    members = {
        Description = {
            type = "string",
        },
        RegistryName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.CreateRegistryOutput = {
    type = "structure",
    id = "CreateRegistryOutput",
    members = {
        Description = {
            type = "string",
        },
        RegistryArn = {
            type = "string",
        },
        RegistryName = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.CreateSchemaInput = {
    type = "structure",
    id = "CreateSchemaInput",
    members = {
        Content = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        RegistryName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SchemaName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateSchemaOutput = {
    type = "structure",
    id = "CreateSchemaOutput",
    members = {
        Description = {
            type = "string",
        },
        LastModified = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        SchemaArn = {
            type = "string",
        },
        SchemaName = {
            type = "string",
        },
        SchemaVersion = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
        Type = {
            type = "string",
        },
        VersionCreatedDate = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.DeleteDiscovererInput = {
    type = "structure",
    id = "DeleteDiscovererInput",
    members = {
        DiscovererId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteDiscovererOutput = {
    type = "structure",
    id = "DeleteDiscovererOutput",
}

M.NotFoundException = {
    type = "structure",
    id = "NotFoundException",
    error = "client",
    members = {
        Code = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteRegistryInput = {
    type = "structure",
    id = "DeleteRegistryInput",
    members = {
        RegistryName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteRegistryOutput = {
    type = "structure",
    id = "DeleteRegistryOutput",
}

M.DeleteResourcePolicyInput = {
    type = "structure",
    id = "DeleteResourcePolicyInput",
    members = {
        RegistryName = {
            type = "string",
            traits = {
                http_query = "registryName",
            },
        },
    },
}

M.DeleteResourcePolicyOutput = {
    type = "structure",
    id = "DeleteResourcePolicyOutput",
}

M.DeleteSchemaInput = {
    type = "structure",
    id = "DeleteSchemaInput",
    members = {
        RegistryName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SchemaName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteSchemaOutput = {
    type = "structure",
    id = "DeleteSchemaOutput",
}

M.DeleteSchemaVersionInput = {
    type = "structure",
    id = "DeleteSchemaVersionInput",
    members = {
        RegistryName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SchemaName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SchemaVersion = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteSchemaVersionOutput = {
    type = "structure",
    id = "DeleteSchemaVersionOutput",
}

M.DescribeCodeBindingInput = {
    type = "structure",
    id = "DescribeCodeBindingInput",
    members = {
        Language = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RegistryName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SchemaName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SchemaVersion = {
            type = "string",
            traits = {
                http_query = "schemaVersion",
            },
        },
    },
}

M.DescribeCodeBindingOutput = {
    type = "structure",
    id = "DescribeCodeBindingOutput",
    members = {
        CreationDate = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        LastModified = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        SchemaVersion = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.TooManyRequestsException = {
    type = "structure",
    id = "TooManyRequestsException",
    error = "client",
    members = {
        Code = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeDiscovererInput = {
    type = "structure",
    id = "DescribeDiscovererInput",
    members = {
        DiscovererId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeDiscovererOutput = {
    type = "structure",
    id = "DescribeDiscovererOutput",
    members = {
        Description = {
            type = "string",
        },
        DiscovererArn = {
            type = "string",
        },
        DiscovererId = {
            type = "string",
        },
        SourceArn = {
            type = "string",
        },
        State = {
            type = "string",
        },
        CrossAccount = {
            type = "boolean",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.DescribeRegistryInput = {
    type = "structure",
    id = "DescribeRegistryInput",
    members = {
        RegistryName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeRegistryOutput = {
    type = "structure",
    id = "DescribeRegistryOutput",
    members = {
        Description = {
            type = "string",
        },
        RegistryArn = {
            type = "string",
        },
        RegistryName = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.DescribeSchemaInput = {
    type = "structure",
    id = "DescribeSchemaInput",
    members = {
        RegistryName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SchemaName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SchemaVersion = {
            type = "string",
            traits = {
                http_query = "schemaVersion",
            },
        },
    },
}

M.DescribeSchemaOutput = {
    type = "structure",
    id = "DescribeSchemaOutput",
    members = {
        Content = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        LastModified = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        SchemaArn = {
            type = "string",
        },
        SchemaName = {
            type = "string",
        },
        SchemaVersion = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
        Type = {
            type = "string",
        },
        VersionCreatedDate = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.ExportSchemaInput = {
    type = "structure",
    id = "ExportSchemaInput",
    members = {
        RegistryName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SchemaName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SchemaVersion = {
            type = "string",
            traits = {
                http_query = "schemaVersion",
            },
        },
        Type = {
            type = "string",
            traits = {
                http_query = "type",
                required = true,
            },
        },
    },
}

M.ExportSchemaOutput = {
    type = "structure",
    id = "ExportSchemaOutput",
    members = {
        Content = {
            type = "string",
        },
        SchemaArn = {
            type = "string",
        },
        SchemaName = {
            type = "string",
        },
        SchemaVersion = {
            type = "string",
        },
        Type = {
            type = "string",
        },
    },
}

M.GetCodeBindingSourceInput = {
    type = "structure",
    id = "GetCodeBindingSourceInput",
    members = {
        Language = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RegistryName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SchemaName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SchemaVersion = {
            type = "string",
            traits = {
                http_query = "schemaVersion",
            },
        },
    },
}

M.GetCodeBindingSourceOutput = {
    type = "structure",
    id = "GetCodeBindingSourceOutput",
    members = {
        Body = {
            type = "blob",
            traits = {
                http_payload = true,
            },
        },
    },
}

M.GetDiscoveredSchemaInput = {
    type = "structure",
    id = "GetDiscoveredSchemaInput",
    members = {
        Events = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetDiscoveredSchemaOutput = {
    type = "structure",
    id = "GetDiscoveredSchemaOutput",
    members = {
        Content = {
            type = "string",
        },
    },
}

M.GetResourcePolicyInput = {
    type = "structure",
    id = "GetResourcePolicyInput",
    members = {
        RegistryName = {
            type = "string",
            traits = {
                http_query = "registryName",
            },
        },
    },
}

M.GetResourcePolicyOutput = {
    type = "structure",
    id = "GetResourcePolicyOutput",
    members = {
        Policy = {
            type = "string",
            traits = {
                media_type = "application/json",
            },
        },
        RevisionId = {
            type = "string",
        },
    },
}

M.GoneException = {
    type = "structure",
    id = "GoneException",
    error = "client",
    members = {
        Code = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListDiscoverersInput = {
    type = "structure",
    id = "ListDiscoverersInput",
    members = {
        DiscovererIdPrefix = {
            type = "string",
            traits = {
                http_query = "discovererIdPrefix",
            },
        },
        Limit = {
            type = "integer",
            traits = {
                http_query = "limit",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        SourceArnPrefix = {
            type = "string",
            traits = {
                http_query = "sourceArnPrefix",
            },
        },
    },
}

M.ListDiscoverersOutput = {
    type = "structure",
    id = "ListDiscoverersOutput",
    members = {
        Discoverers = {
            type = "list",
            member = M.DiscovererSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListRegistriesInput = {
    type = "structure",
    id = "ListRegistriesInput",
    members = {
        Limit = {
            type = "integer",
            traits = {
                http_query = "limit",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        RegistryNamePrefix = {
            type = "string",
            traits = {
                http_query = "registryNamePrefix",
            },
        },
        Scope = {
            type = "string",
            traits = {
                http_query = "scope",
            },
        },
    },
}

M.ListRegistriesOutput = {
    type = "structure",
    id = "ListRegistriesOutput",
    members = {
        NextToken = {
            type = "string",
        },
        Registries = {
            type = "list",
            member = M.RegistrySummary,
        },
    },
}

M.ListSchemasInput = {
    type = "structure",
    id = "ListSchemasInput",
    members = {
        Limit = {
            type = "integer",
            traits = {
                http_query = "limit",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        RegistryName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SchemaNamePrefix = {
            type = "string",
            traits = {
                http_query = "schemaNamePrefix",
            },
        },
    },
}

M.ListSchemasOutput = {
    type = "structure",
    id = "ListSchemasOutput",
    members = {
        NextToken = {
            type = "string",
        },
        Schemas = {
            type = "list",
            member = M.SchemaSummary,
        },
    },
}

M.ListSchemaVersionsInput = {
    type = "structure",
    id = "ListSchemaVersionsInput",
    members = {
        Limit = {
            type = "integer",
            traits = {
                http_query = "limit",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        RegistryName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SchemaName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListSchemaVersionsOutput = {
    type = "structure",
    id = "ListSchemaVersionsOutput",
    members = {
        NextToken = {
            type = "string",
        },
        SchemaVersions = {
            type = "list",
            member = M.SchemaVersionSummary,
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    id = "ListTagsForResourceInput",
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

M.ListTagsForResourceOutput = {
    type = "structure",
    id = "ListTagsForResourceOutput",
    members = {
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.PreconditionFailedException = {
    type = "structure",
    id = "PreconditionFailedException",
    error = "client",
    members = {
        Code = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutCodeBindingInput = {
    type = "structure",
    id = "PutCodeBindingInput",
    members = {
        Language = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RegistryName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SchemaName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SchemaVersion = {
            type = "string",
            traits = {
                http_query = "schemaVersion",
            },
        },
    },
}

M.PutCodeBindingOutput = {
    type = "structure",
    id = "PutCodeBindingOutput",
    members = {
        CreationDate = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        LastModified = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        SchemaVersion = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.PutResourcePolicyInput = {
    type = "structure",
    id = "PutResourcePolicyInput",
    members = {
        Policy = {
            type = "string",
            traits = {
                media_type = "application/json",
                required = true,
            },
        },
        RegistryName = {
            type = "string",
            traits = {
                http_query = "registryName",
            },
        },
        RevisionId = {
            type = "string",
        },
    },
}

M.PutResourcePolicyOutput = {
    type = "structure",
    id = "PutResourcePolicyOutput",
    members = {
        Policy = {
            type = "string",
            traits = {
                media_type = "application/json",
            },
        },
        RevisionId = {
            type = "string",
        },
    },
}

M.SearchSchemasInput = {
    type = "structure",
    id = "SearchSchemasInput",
    members = {
        Keywords = {
            type = "string",
            traits = {
                http_query = "keywords",
                required = true,
            },
        },
        Limit = {
            type = "integer",
            traits = {
                http_query = "limit",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        RegistryName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.SearchSchemasOutput = {
    type = "structure",
    id = "SearchSchemasOutput",
    members = {
        NextToken = {
            type = "string",
        },
        Schemas = {
            type = "list",
            member = M.SearchSchemaSummary,
        },
    },
}

M.StartDiscovererInput = {
    type = "structure",
    id = "StartDiscovererInput",
    members = {
        DiscovererId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StartDiscovererOutput = {
    type = "structure",
    id = "StartDiscovererOutput",
    members = {
        DiscovererId = {
            type = "string",
        },
        State = {
            type = "string",
        },
    },
}

M.StopDiscovererInput = {
    type = "structure",
    id = "StopDiscovererInput",
    members = {
        DiscovererId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StopDiscovererOutput = {
    type = "structure",
    id = "StopDiscovererOutput",
    members = {
        DiscovererId = {
            type = "string",
        },
        State = {
            type = "string",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
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
        ResourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TagKeys = {
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

M.UpdateDiscovererInput = {
    type = "structure",
    id = "UpdateDiscovererInput",
    members = {
        Description = {
            type = "string",
        },
        DiscovererId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        CrossAccount = {
            type = "boolean",
        },
    },
}

M.UpdateDiscovererOutput = {
    type = "structure",
    id = "UpdateDiscovererOutput",
    members = {
        Description = {
            type = "string",
        },
        DiscovererArn = {
            type = "string",
        },
        DiscovererId = {
            type = "string",
        },
        SourceArn = {
            type = "string",
        },
        State = {
            type = "string",
        },
        CrossAccount = {
            type = "boolean",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.UpdateRegistryInput = {
    type = "structure",
    id = "UpdateRegistryInput",
    members = {
        Description = {
            type = "string",
        },
        RegistryName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.UpdateRegistryOutput = {
    type = "structure",
    id = "UpdateRegistryOutput",
    members = {
        Description = {
            type = "string",
        },
        RegistryArn = {
            type = "string",
        },
        RegistryName = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.UpdateSchemaInput = {
    type = "structure",
    id = "UpdateSchemaInput",
    members = {
        ClientTokenId = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        Content = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        RegistryName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SchemaName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Type = {
            type = "string",
        },
    },
}

M.UpdateSchemaOutput = {
    type = "structure",
    id = "UpdateSchemaOutput",
    members = {
        Description = {
            type = "string",
        },
        LastModified = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        SchemaArn = {
            type = "string",
        },
        SchemaName = {
            type = "string",
        },
        SchemaVersion = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
        Type = {
            type = "string",
        },
        VersionCreatedDate = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

return M
