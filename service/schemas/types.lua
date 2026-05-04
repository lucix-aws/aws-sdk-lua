local M = {}

M.DiscovererState = {
    STARTED = "STARTED",
    STOPPED = "STOPPED",
}

M.DiscovererSummary = {
    type = "structure",
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
    members = {
        LastModified = {
            type = "timestamp",
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
    members = {
        CreatedDate = {
            type = "timestamp",
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
    members = {
        Description = {
            type = "string",
        },
        LastModified = {
            type = "timestamp",
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
        },
    },
}

M.DeleteDiscovererInput = {
    type = "structure",
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
}

M.NotFoundException = {
    type = "structure",
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
}

M.DeleteResourcePolicyInput = {
    type = "structure",
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
}

M.DeleteSchemaInput = {
    type = "structure",
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
}

M.DeleteSchemaVersionInput = {
    type = "structure",
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
}

M.DescribeCodeBindingInput = {
    type = "structure",
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
    members = {
        CreationDate = {
            type = "timestamp",
        },
        LastModified = {
            type = "timestamp",
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
    members = {
        Content = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        LastModified = {
            type = "timestamp",
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
        },
    },
}

M.ExportSchemaInput = {
    type = "structure",
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
    members = {
        Content = {
            type = "string",
        },
    },
}

M.GetResourcePolicyInput = {
    type = "structure",
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
    members = {
        Policy = {
            type = "string",
        },
        RevisionId = {
            type = "string",
        },
    },
}

M.GoneException = {
    type = "structure",
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
    members = {
        CreationDate = {
            type = "timestamp",
        },
        LastModified = {
            type = "timestamp",
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
    members = {
        Policy = {
            type = "string",
            traits = {
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
    members = {
        Policy = {
            type = "string",
        },
        RevisionId = {
            type = "string",
        },
    },
}

M.SearchSchemasInput = {
    type = "structure",
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
}

M.UntagResourceInput = {
    type = "structure",
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
}

M.UpdateDiscovererInput = {
    type = "structure",
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
    members = {
        ClientTokenId = {
            type = "string",
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
    members = {
        Description = {
            type = "string",
        },
        LastModified = {
            type = "timestamp",
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
        },
    },
}

return M
