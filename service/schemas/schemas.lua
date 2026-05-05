local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.schemas"

local M = {}

M.Tags = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.__listOfGetDiscoveredSchemaVersionItemInput = schema.new({ type = "list", list_member = prelude.String })

M.__listOfDiscovererSummary = schema.new({ type = "list", list_member = M.DiscovererSummary })

M.__listOfRegistrySummary = schema.new({ type = "list", list_member = M.RegistrySummary })

M.__listOfSchemaSummary = schema.new({ type = "list", list_member = M.SchemaSummary })

M.__listOfSchemaVersionSummary = schema.new({ type = "list", list_member = M.SchemaVersionSummary })

M.__listOfSearchSchemaSummary = schema.new({ type = "list", list_member = M.SearchSchemaSummary })

M.__listOf__string = schema.new({ type = "list", list_member = prelude.String })

M.__listOfSearchSchemaVersionSummary = schema.new({ type = "list", list_member = M.SearchSchemaVersionSummary })

M.DiscovererSummary = schema.new({
    id = id.from(_N, "DiscovererSummary"),
    type = "structure",
    members = {
        DiscovererArn = schema.new({
            id = id.from(_N, "DiscovererSummary", "DiscovererArn"),
            type = "string",
            name = "DiscovererArn",
            target_id = prelude.String.id,
        }),
        DiscovererId = schema.new({
            id = id.from(_N, "DiscovererSummary", "DiscovererId"),
            type = "string",
            name = "DiscovererId",
            target_id = prelude.String.id,
        }),
        SourceArn = schema.new({
            id = id.from(_N, "DiscovererSummary", "SourceArn"),
            type = "string",
            name = "SourceArn",
            target_id = prelude.String.id,
        }),
        State = schema.new({
            id = id.from(_N, "DiscovererSummary", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
        }),
        CrossAccount = schema.new({
            id = id.from(_N, "DiscovererSummary", "CrossAccount"),
            type = "boolean",
            name = "CrossAccount",
            target_id = prelude.Boolean.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "DiscovererSummary", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "tags" },
            },
        }),
    },
})

M.RegistrySummary = schema.new({
    id = id.from(_N, "RegistrySummary"),
    type = "structure",
    members = {
        RegistryArn = schema.new({
            id = id.from(_N, "RegistrySummary", "RegistryArn"),
            type = "string",
            name = "RegistryArn",
            target_id = prelude.String.id,
        }),
        RegistryName = schema.new({
            id = id.from(_N, "RegistrySummary", "RegistryName"),
            type = "string",
            name = "RegistryName",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "RegistrySummary", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "tags" },
            },
        }),
    },
})

M.SchemaSummary = schema.new({
    id = id.from(_N, "SchemaSummary"),
    type = "structure",
    members = {
        LastModified = schema.new({
            id = id.from(_N, "SchemaSummary", "LastModified"),
            type = "timestamp",
            name = "LastModified",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        SchemaArn = schema.new({
            id = id.from(_N, "SchemaSummary", "SchemaArn"),
            type = "string",
            name = "SchemaArn",
            target_id = prelude.String.id,
        }),
        SchemaName = schema.new({
            id = id.from(_N, "SchemaSummary", "SchemaName"),
            type = "string",
            name = "SchemaName",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "SchemaSummary", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "tags" },
            },
        }),
        VersionCount = schema.new({
            id = id.from(_N, "SchemaSummary", "VersionCount"),
            type = "long",
            name = "VersionCount",
            target_id = prelude.Long.id,
        }),
    },
})

M.SchemaVersionSummary = schema.new({
    id = id.from(_N, "SchemaVersionSummary"),
    type = "structure",
    members = {
        SchemaArn = schema.new({
            id = id.from(_N, "SchemaVersionSummary", "SchemaArn"),
            type = "string",
            name = "SchemaArn",
            target_id = prelude.String.id,
        }),
        SchemaName = schema.new({
            id = id.from(_N, "SchemaVersionSummary", "SchemaName"),
            type = "string",
            name = "SchemaName",
            target_id = prelude.String.id,
        }),
        SchemaVersion = schema.new({
            id = id.from(_N, "SchemaVersionSummary", "SchemaVersion"),
            type = "string",
            name = "SchemaVersion",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "SchemaVersionSummary", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
    },
})

M.SearchSchemaVersionSummary = schema.new({
    id = id.from(_N, "SearchSchemaVersionSummary"),
    type = "structure",
    members = {
        CreatedDate = schema.new({
            id = id.from(_N, "SearchSchemaVersionSummary", "CreatedDate"),
            type = "timestamp",
            name = "CreatedDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        SchemaVersion = schema.new({
            id = id.from(_N, "SearchSchemaVersionSummary", "SchemaVersion"),
            type = "string",
            name = "SchemaVersion",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "SearchSchemaVersionSummary", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
    },
})

M.SearchSchemaSummary = schema.new({
    id = id.from(_N, "SearchSchemaSummary"),
    type = "structure",
    members = {
        RegistryName = schema.new({
            id = id.from(_N, "SearchSchemaSummary", "RegistryName"),
            type = "string",
            name = "RegistryName",
            target_id = prelude.String.id,
        }),
        SchemaArn = schema.new({
            id = id.from(_N, "SearchSchemaSummary", "SchemaArn"),
            type = "string",
            name = "SchemaArn",
            target_id = prelude.String.id,
        }),
        SchemaName = schema.new({
            id = id.from(_N, "SearchSchemaSummary", "SchemaName"),
            type = "string",
            name = "SchemaName",
            target_id = prelude.String.id,
        }),
        SchemaVersions = schema.new({
            id = id.from(_N, "SearchSchemaSummary", "SchemaVersions"),
            type = "list",
            name = "SchemaVersions",
            target_id = prelude.Document.id,
            list_member = M.SearchSchemaVersionSummary,
        }),
    },
})

M.BadRequestException = schema.new({
    id = id.from(_N, "BadRequestException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Code = schema.new({
            id = id.from(_N, "BadRequestException", "Code"),
            type = "string",
            name = "Code",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Message = schema.new({
            id = id.from(_N, "BadRequestException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ConflictException = schema.new({
    id = id.from(_N, "ConflictException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Code = schema.new({
            id = id.from(_N, "ConflictException", "Code"),
            type = "string",
            name = "Code",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Message = schema.new({
            id = id.from(_N, "ConflictException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateDiscovererInput = schema.new({
    id = id.from(_N, "CreateDiscovererRequest"),
    type = "structure",
    members = {
        Description = schema.new({
            id = id.from(_N, "CreateDiscovererInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        SourceArn = schema.new({
            id = id.from(_N, "CreateDiscovererInput", "SourceArn"),
            type = "string",
            name = "SourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CrossAccount = schema.new({
            id = id.from(_N, "CreateDiscovererInput", "CrossAccount"),
            type = "boolean",
            name = "CrossAccount",
            target_id = prelude.Boolean.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateDiscovererInput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "tags" },
            },
        }),
    },
})

M.CreateDiscovererOutput = schema.new({
    id = id.from(_N, "CreateDiscovererResponse"),
    type = "structure",
    members = {
        Description = schema.new({
            id = id.from(_N, "CreateDiscovererOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        DiscovererArn = schema.new({
            id = id.from(_N, "CreateDiscovererOutput", "DiscovererArn"),
            type = "string",
            name = "DiscovererArn",
            target_id = prelude.String.id,
        }),
        DiscovererId = schema.new({
            id = id.from(_N, "CreateDiscovererOutput", "DiscovererId"),
            type = "string",
            name = "DiscovererId",
            target_id = prelude.String.id,
        }),
        SourceArn = schema.new({
            id = id.from(_N, "CreateDiscovererOutput", "SourceArn"),
            type = "string",
            name = "SourceArn",
            target_id = prelude.String.id,
        }),
        State = schema.new({
            id = id.from(_N, "CreateDiscovererOutput", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
        }),
        CrossAccount = schema.new({
            id = id.from(_N, "CreateDiscovererOutput", "CrossAccount"),
            type = "boolean",
            name = "CrossAccount",
            target_id = prelude.Boolean.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateDiscovererOutput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "tags" },
            },
        }),
    },
})

M.ForbiddenException = schema.new({
    id = id.from(_N, "ForbiddenException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Code = schema.new({
            id = id.from(_N, "ForbiddenException", "Code"),
            type = "string",
            name = "Code",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Message = schema.new({
            id = id.from(_N, "ForbiddenException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.InternalServerErrorException = schema.new({
    id = id.from(_N, "InternalServerErrorException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        Code = schema.new({
            id = id.from(_N, "InternalServerErrorException", "Code"),
            type = "string",
            name = "Code",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Message = schema.new({
            id = id.from(_N, "InternalServerErrorException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ServiceUnavailableException = schema.new({
    id = id.from(_N, "ServiceUnavailableException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        Code = schema.new({
            id = id.from(_N, "ServiceUnavailableException", "Code"),
            type = "string",
            name = "Code",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Message = schema.new({
            id = id.from(_N, "ServiceUnavailableException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UnauthorizedException = schema.new({
    id = id.from(_N, "UnauthorizedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Code = schema.new({
            id = id.from(_N, "UnauthorizedException", "Code"),
            type = "string",
            name = "Code",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Message = schema.new({
            id = id.from(_N, "UnauthorizedException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateRegistryInput = schema.new({
    id = id.from(_N, "CreateRegistryRequest"),
    type = "structure",
    members = {
        Description = schema.new({
            id = id.from(_N, "CreateRegistryInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        RegistryName = schema.new({
            id = id.from(_N, "CreateRegistryInput", "RegistryName"),
            type = "string",
            name = "RegistryName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateRegistryInput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "tags" },
            },
        }),
    },
})

M.CreateRegistryOutput = schema.new({
    id = id.from(_N, "CreateRegistryResponse"),
    type = "structure",
    members = {
        Description = schema.new({
            id = id.from(_N, "CreateRegistryOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        RegistryArn = schema.new({
            id = id.from(_N, "CreateRegistryOutput", "RegistryArn"),
            type = "string",
            name = "RegistryArn",
            target_id = prelude.String.id,
        }),
        RegistryName = schema.new({
            id = id.from(_N, "CreateRegistryOutput", "RegistryName"),
            type = "string",
            name = "RegistryName",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateRegistryOutput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "tags" },
            },
        }),
    },
})

M.CreateSchemaInput = schema.new({
    id = id.from(_N, "CreateSchemaRequest"),
    type = "structure",
    members = {
        Content = schema.new({
            id = id.from(_N, "CreateSchemaInput", "Content"),
            type = "string",
            name = "Content",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "CreateSchemaInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        RegistryName = schema.new({
            id = id.from(_N, "CreateSchemaInput", "RegistryName"),
            type = "string",
            name = "RegistryName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        SchemaName = schema.new({
            id = id.from(_N, "CreateSchemaInput", "SchemaName"),
            type = "string",
            name = "SchemaName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateSchemaInput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "tags" },
            },
        }),
        Type = schema.new({
            id = id.from(_N, "CreateSchemaInput", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateSchemaOutput = schema.new({
    id = id.from(_N, "CreateSchemaResponse"),
    type = "structure",
    members = {
        Description = schema.new({
            id = id.from(_N, "CreateSchemaOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        LastModified = schema.new({
            id = id.from(_N, "CreateSchemaOutput", "LastModified"),
            type = "timestamp",
            name = "LastModified",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        SchemaArn = schema.new({
            id = id.from(_N, "CreateSchemaOutput", "SchemaArn"),
            type = "string",
            name = "SchemaArn",
            target_id = prelude.String.id,
        }),
        SchemaName = schema.new({
            id = id.from(_N, "CreateSchemaOutput", "SchemaName"),
            type = "string",
            name = "SchemaName",
            target_id = prelude.String.id,
        }),
        SchemaVersion = schema.new({
            id = id.from(_N, "CreateSchemaOutput", "SchemaVersion"),
            type = "string",
            name = "SchemaVersion",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateSchemaOutput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "tags" },
            },
        }),
        Type = schema.new({
            id = id.from(_N, "CreateSchemaOutput", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        VersionCreatedDate = schema.new({
            id = id.from(_N, "CreateSchemaOutput", "VersionCreatedDate"),
            type = "timestamp",
            name = "VersionCreatedDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.DeleteDiscovererInput = schema.new({
    id = id.from(_N, "DeleteDiscovererRequest"),
    type = "structure",
    members = {
        DiscovererId = schema.new({
            id = id.from(_N, "DeleteDiscovererInput", "DiscovererId"),
            type = "string",
            name = "DiscovererId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteDiscovererOutput = prelude.Unit

M.NotFoundException = schema.new({
    id = id.from(_N, "NotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Code = schema.new({
            id = id.from(_N, "NotFoundException", "Code"),
            type = "string",
            name = "Code",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Message = schema.new({
            id = id.from(_N, "NotFoundException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteRegistryInput = schema.new({
    id = id.from(_N, "DeleteRegistryRequest"),
    type = "structure",
    members = {
        RegistryName = schema.new({
            id = id.from(_N, "DeleteRegistryInput", "RegistryName"),
            type = "string",
            name = "RegistryName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteRegistryOutput = prelude.Unit

M.DeleteResourcePolicyInput = schema.new({
    id = id.from(_N, "DeleteResourcePolicyRequest"),
    type = "structure",
    members = {
        RegistryName = schema.new({
            id = id.from(_N, "DeleteResourcePolicyInput", "RegistryName"),
            type = "string",
            name = "RegistryName",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "registryName" },
            },
        }),
    },
})

M.DeleteResourcePolicyOutput = prelude.Unit

M.DeleteSchemaInput = schema.new({
    id = id.from(_N, "DeleteSchemaRequest"),
    type = "structure",
    members = {
        RegistryName = schema.new({
            id = id.from(_N, "DeleteSchemaInput", "RegistryName"),
            type = "string",
            name = "RegistryName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        SchemaName = schema.new({
            id = id.from(_N, "DeleteSchemaInput", "SchemaName"),
            type = "string",
            name = "SchemaName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteSchemaOutput = prelude.Unit

M.DeleteSchemaVersionInput = schema.new({
    id = id.from(_N, "DeleteSchemaVersionRequest"),
    type = "structure",
    members = {
        RegistryName = schema.new({
            id = id.from(_N, "DeleteSchemaVersionInput", "RegistryName"),
            type = "string",
            name = "RegistryName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        SchemaName = schema.new({
            id = id.from(_N, "DeleteSchemaVersionInput", "SchemaName"),
            type = "string",
            name = "SchemaName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        SchemaVersion = schema.new({
            id = id.from(_N, "DeleteSchemaVersionInput", "SchemaVersion"),
            type = "string",
            name = "SchemaVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteSchemaVersionOutput = prelude.Unit

M.DescribeCodeBindingInput = schema.new({
    id = id.from(_N, "DescribeCodeBindingRequest"),
    type = "structure",
    members = {
        Language = schema.new({
            id = id.from(_N, "DescribeCodeBindingInput", "Language"),
            type = "string",
            name = "Language",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        RegistryName = schema.new({
            id = id.from(_N, "DescribeCodeBindingInput", "RegistryName"),
            type = "string",
            name = "RegistryName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        SchemaName = schema.new({
            id = id.from(_N, "DescribeCodeBindingInput", "SchemaName"),
            type = "string",
            name = "SchemaName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        SchemaVersion = schema.new({
            id = id.from(_N, "DescribeCodeBindingInput", "SchemaVersion"),
            type = "string",
            name = "SchemaVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "schemaVersion" },
            },
        }),
    },
})

M.DescribeCodeBindingOutput = schema.new({
    id = id.from(_N, "DescribeCodeBindingResponse"),
    type = "structure",
    members = {
        CreationDate = schema.new({
            id = id.from(_N, "DescribeCodeBindingOutput", "CreationDate"),
            type = "timestamp",
            name = "CreationDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        LastModified = schema.new({
            id = id.from(_N, "DescribeCodeBindingOutput", "LastModified"),
            type = "timestamp",
            name = "LastModified",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        SchemaVersion = schema.new({
            id = id.from(_N, "DescribeCodeBindingOutput", "SchemaVersion"),
            type = "string",
            name = "SchemaVersion",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "DescribeCodeBindingOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
    },
})

M.TooManyRequestsException = schema.new({
    id = id.from(_N, "TooManyRequestsException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Code = schema.new({
            id = id.from(_N, "TooManyRequestsException", "Code"),
            type = "string",
            name = "Code",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Message = schema.new({
            id = id.from(_N, "TooManyRequestsException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeDiscovererInput = schema.new({
    id = id.from(_N, "DescribeDiscovererRequest"),
    type = "structure",
    members = {
        DiscovererId = schema.new({
            id = id.from(_N, "DescribeDiscovererInput", "DiscovererId"),
            type = "string",
            name = "DiscovererId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DescribeDiscovererOutput = schema.new({
    id = id.from(_N, "DescribeDiscovererResponse"),
    type = "structure",
    members = {
        Description = schema.new({
            id = id.from(_N, "DescribeDiscovererOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        DiscovererArn = schema.new({
            id = id.from(_N, "DescribeDiscovererOutput", "DiscovererArn"),
            type = "string",
            name = "DiscovererArn",
            target_id = prelude.String.id,
        }),
        DiscovererId = schema.new({
            id = id.from(_N, "DescribeDiscovererOutput", "DiscovererId"),
            type = "string",
            name = "DiscovererId",
            target_id = prelude.String.id,
        }),
        SourceArn = schema.new({
            id = id.from(_N, "DescribeDiscovererOutput", "SourceArn"),
            type = "string",
            name = "SourceArn",
            target_id = prelude.String.id,
        }),
        State = schema.new({
            id = id.from(_N, "DescribeDiscovererOutput", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
        }),
        CrossAccount = schema.new({
            id = id.from(_N, "DescribeDiscovererOutput", "CrossAccount"),
            type = "boolean",
            name = "CrossAccount",
            target_id = prelude.Boolean.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "DescribeDiscovererOutput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "tags" },
            },
        }),
    },
})

M.DescribeRegistryInput = schema.new({
    id = id.from(_N, "DescribeRegistryRequest"),
    type = "structure",
    members = {
        RegistryName = schema.new({
            id = id.from(_N, "DescribeRegistryInput", "RegistryName"),
            type = "string",
            name = "RegistryName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DescribeRegistryOutput = schema.new({
    id = id.from(_N, "DescribeRegistryResponse"),
    type = "structure",
    members = {
        Description = schema.new({
            id = id.from(_N, "DescribeRegistryOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        RegistryArn = schema.new({
            id = id.from(_N, "DescribeRegistryOutput", "RegistryArn"),
            type = "string",
            name = "RegistryArn",
            target_id = prelude.String.id,
        }),
        RegistryName = schema.new({
            id = id.from(_N, "DescribeRegistryOutput", "RegistryName"),
            type = "string",
            name = "RegistryName",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "DescribeRegistryOutput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "tags" },
            },
        }),
    },
})

M.DescribeSchemaInput = schema.new({
    id = id.from(_N, "DescribeSchemaRequest"),
    type = "structure",
    members = {
        RegistryName = schema.new({
            id = id.from(_N, "DescribeSchemaInput", "RegistryName"),
            type = "string",
            name = "RegistryName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        SchemaName = schema.new({
            id = id.from(_N, "DescribeSchemaInput", "SchemaName"),
            type = "string",
            name = "SchemaName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        SchemaVersion = schema.new({
            id = id.from(_N, "DescribeSchemaInput", "SchemaVersion"),
            type = "string",
            name = "SchemaVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "schemaVersion" },
            },
        }),
    },
})

M.DescribeSchemaOutput = schema.new({
    id = id.from(_N, "DescribeSchemaResponse"),
    type = "structure",
    members = {
        Content = schema.new({
            id = id.from(_N, "DescribeSchemaOutput", "Content"),
            type = "string",
            name = "Content",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "DescribeSchemaOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        LastModified = schema.new({
            id = id.from(_N, "DescribeSchemaOutput", "LastModified"),
            type = "timestamp",
            name = "LastModified",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        SchemaArn = schema.new({
            id = id.from(_N, "DescribeSchemaOutput", "SchemaArn"),
            type = "string",
            name = "SchemaArn",
            target_id = prelude.String.id,
        }),
        SchemaName = schema.new({
            id = id.from(_N, "DescribeSchemaOutput", "SchemaName"),
            type = "string",
            name = "SchemaName",
            target_id = prelude.String.id,
        }),
        SchemaVersion = schema.new({
            id = id.from(_N, "DescribeSchemaOutput", "SchemaVersion"),
            type = "string",
            name = "SchemaVersion",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "DescribeSchemaOutput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "tags" },
            },
        }),
        Type = schema.new({
            id = id.from(_N, "DescribeSchemaOutput", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        VersionCreatedDate = schema.new({
            id = id.from(_N, "DescribeSchemaOutput", "VersionCreatedDate"),
            type = "timestamp",
            name = "VersionCreatedDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.ExportSchemaInput = schema.new({
    id = id.from(_N, "ExportSchemaRequest"),
    type = "structure",
    members = {
        RegistryName = schema.new({
            id = id.from(_N, "ExportSchemaInput", "RegistryName"),
            type = "string",
            name = "RegistryName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        SchemaName = schema.new({
            id = id.from(_N, "ExportSchemaInput", "SchemaName"),
            type = "string",
            name = "SchemaName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        SchemaVersion = schema.new({
            id = id.from(_N, "ExportSchemaInput", "SchemaVersion"),
            type = "string",
            name = "SchemaVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "schemaVersion" },
            },
        }),
        Type = schema.new({
            id = id.from(_N, "ExportSchemaInput", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "type" },
            },
        }),
    },
})

M.ExportSchemaOutput = schema.new({
    id = id.from(_N, "ExportSchemaResponse"),
    type = "structure",
    members = {
        Content = schema.new({
            id = id.from(_N, "ExportSchemaOutput", "Content"),
            type = "string",
            name = "Content",
            target_id = prelude.String.id,
        }),
        SchemaArn = schema.new({
            id = id.from(_N, "ExportSchemaOutput", "SchemaArn"),
            type = "string",
            name = "SchemaArn",
            target_id = prelude.String.id,
        }),
        SchemaName = schema.new({
            id = id.from(_N, "ExportSchemaOutput", "SchemaName"),
            type = "string",
            name = "SchemaName",
            target_id = prelude.String.id,
        }),
        SchemaVersion = schema.new({
            id = id.from(_N, "ExportSchemaOutput", "SchemaVersion"),
            type = "string",
            name = "SchemaVersion",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "ExportSchemaOutput", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
    },
})

M.GetCodeBindingSourceInput = schema.new({
    id = id.from(_N, "GetCodeBindingSourceRequest"),
    type = "structure",
    members = {
        Language = schema.new({
            id = id.from(_N, "GetCodeBindingSourceInput", "Language"),
            type = "string",
            name = "Language",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        RegistryName = schema.new({
            id = id.from(_N, "GetCodeBindingSourceInput", "RegistryName"),
            type = "string",
            name = "RegistryName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        SchemaName = schema.new({
            id = id.from(_N, "GetCodeBindingSourceInput", "SchemaName"),
            type = "string",
            name = "SchemaName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        SchemaVersion = schema.new({
            id = id.from(_N, "GetCodeBindingSourceInput", "SchemaVersion"),
            type = "string",
            name = "SchemaVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "schemaVersion" },
            },
        }),
    },
})

M.GetCodeBindingSourceOutput = schema.new({
    id = id.from(_N, "GetCodeBindingSourceResponse"),
    type = "structure",
    members = {
        Body = schema.new({
            id = id.from(_N, "GetCodeBindingSourceOutput", "Body"),
            type = "blob",
            name = "Body",
            target_id = prelude.Blob.id,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
    },
})

M.GetDiscoveredSchemaInput = schema.new({
    id = id.from(_N, "GetDiscoveredSchemaRequest"),
    type = "structure",
    members = {
        Events = schema.new({
            id = id.from(_N, "GetDiscoveredSchemaInput", "Events"),
            type = "list",
            name = "Events",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Type = schema.new({
            id = id.from(_N, "GetDiscoveredSchemaInput", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetDiscoveredSchemaOutput = schema.new({
    id = id.from(_N, "GetDiscoveredSchemaResponse"),
    type = "structure",
    members = {
        Content = schema.new({
            id = id.from(_N, "GetDiscoveredSchemaOutput", "Content"),
            type = "string",
            name = "Content",
            target_id = prelude.String.id,
        }),
    },
})

M.GetResourcePolicyInput = schema.new({
    id = id.from(_N, "GetResourcePolicyRequest"),
    type = "structure",
    members = {
        RegistryName = schema.new({
            id = id.from(_N, "GetResourcePolicyInput", "RegistryName"),
            type = "string",
            name = "RegistryName",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "registryName" },
            },
        }),
    },
})

M.GetResourcePolicyOutput = schema.new({
    id = id.from(_N, "GetResourcePolicyResponse"),
    type = "structure",
    members = {
        Policy = schema.new({
            id = id.from(_N, "GetResourcePolicyOutput", "Policy"),
            type = "string",
            name = "Policy",
            target_id = prelude.String.id,
            traits = {
                [traits.MEDIA_TYPE] = { value = "application/json" },
            },
        }),
        RevisionId = schema.new({
            id = id.from(_N, "GetResourcePolicyOutput", "RevisionId"),
            type = "string",
            name = "RevisionId",
            target_id = prelude.String.id,
        }),
    },
})

M.GoneException = schema.new({
    id = id.from(_N, "GoneException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Code = schema.new({
            id = id.from(_N, "GoneException", "Code"),
            type = "string",
            name = "Code",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Message = schema.new({
            id = id.from(_N, "GoneException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListDiscoverersInput = schema.new({
    id = id.from(_N, "ListDiscoverersRequest"),
    type = "structure",
    members = {
        DiscovererIdPrefix = schema.new({
            id = id.from(_N, "ListDiscoverersInput", "DiscovererIdPrefix"),
            type = "string",
            name = "DiscovererIdPrefix",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "discovererIdPrefix" },
            },
        }),
        Limit = schema.new({
            id = id.from(_N, "ListDiscoverersInput", "Limit"),
            type = "integer",
            name = "Limit",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "limit" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListDiscoverersInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        SourceArnPrefix = schema.new({
            id = id.from(_N, "ListDiscoverersInput", "SourceArnPrefix"),
            type = "string",
            name = "SourceArnPrefix",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "sourceArnPrefix" },
            },
        }),
    },
})

M.ListDiscoverersOutput = schema.new({
    id = id.from(_N, "ListDiscoverersResponse"),
    type = "structure",
    members = {
        Discoverers = schema.new({
            id = id.from(_N, "ListDiscoverersOutput", "Discoverers"),
            type = "list",
            name = "Discoverers",
            target_id = prelude.Document.id,
            list_member = M.DiscovererSummary,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListDiscoverersOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListRegistriesInput = schema.new({
    id = id.from(_N, "ListRegistriesRequest"),
    type = "structure",
    members = {
        Limit = schema.new({
            id = id.from(_N, "ListRegistriesInput", "Limit"),
            type = "integer",
            name = "Limit",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "limit" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListRegistriesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        RegistryNamePrefix = schema.new({
            id = id.from(_N, "ListRegistriesInput", "RegistryNamePrefix"),
            type = "string",
            name = "RegistryNamePrefix",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "registryNamePrefix" },
            },
        }),
        Scope = schema.new({
            id = id.from(_N, "ListRegistriesInput", "Scope"),
            type = "string",
            name = "Scope",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "scope" },
            },
        }),
    },
})

M.ListRegistriesOutput = schema.new({
    id = id.from(_N, "ListRegistriesResponse"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListRegistriesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Registries = schema.new({
            id = id.from(_N, "ListRegistriesOutput", "Registries"),
            type = "list",
            name = "Registries",
            target_id = prelude.Document.id,
            list_member = M.RegistrySummary,
        }),
    },
})

M.ListSchemasInput = schema.new({
    id = id.from(_N, "ListSchemasRequest"),
    type = "structure",
    members = {
        Limit = schema.new({
            id = id.from(_N, "ListSchemasInput", "Limit"),
            type = "integer",
            name = "Limit",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "limit" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListSchemasInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        RegistryName = schema.new({
            id = id.from(_N, "ListSchemasInput", "RegistryName"),
            type = "string",
            name = "RegistryName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        SchemaNamePrefix = schema.new({
            id = id.from(_N, "ListSchemasInput", "SchemaNamePrefix"),
            type = "string",
            name = "SchemaNamePrefix",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "schemaNamePrefix" },
            },
        }),
    },
})

M.ListSchemasOutput = schema.new({
    id = id.from(_N, "ListSchemasResponse"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListSchemasOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Schemas = schema.new({
            id = id.from(_N, "ListSchemasOutput", "Schemas"),
            type = "list",
            name = "Schemas",
            target_id = prelude.Document.id,
            list_member = M.SchemaSummary,
        }),
    },
})

M.ListSchemaVersionsInput = schema.new({
    id = id.from(_N, "ListSchemaVersionsRequest"),
    type = "structure",
    members = {
        Limit = schema.new({
            id = id.from(_N, "ListSchemaVersionsInput", "Limit"),
            type = "integer",
            name = "Limit",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "limit" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListSchemaVersionsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        RegistryName = schema.new({
            id = id.from(_N, "ListSchemaVersionsInput", "RegistryName"),
            type = "string",
            name = "RegistryName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        SchemaName = schema.new({
            id = id.from(_N, "ListSchemaVersionsInput", "SchemaName"),
            type = "string",
            name = "SchemaName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.ListSchemaVersionsOutput = schema.new({
    id = id.from(_N, "ListSchemaVersionsResponse"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListSchemaVersionsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        SchemaVersions = schema.new({
            id = id.from(_N, "ListSchemaVersionsOutput", "SchemaVersions"),
            type = "list",
            name = "SchemaVersions",
            target_id = prelude.Document.id,
            list_member = M.SchemaVersionSummary,
        }),
    },
})

M.ListTagsForResourceInput = schema.new({
    id = id.from(_N, "ListTagsForResourceRequest"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.ListTagsForResourceOutput = schema.new({
    id = id.from(_N, "ListTagsForResourceResponse"),
    type = "structure",
    members = {
        Tags = schema.new({
            id = id.from(_N, "ListTagsForResourceOutput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "tags" },
            },
        }),
    },
})

M.PreconditionFailedException = schema.new({
    id = id.from(_N, "PreconditionFailedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Code = schema.new({
            id = id.from(_N, "PreconditionFailedException", "Code"),
            type = "string",
            name = "Code",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Message = schema.new({
            id = id.from(_N, "PreconditionFailedException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutCodeBindingInput = schema.new({
    id = id.from(_N, "PutCodeBindingRequest"),
    type = "structure",
    members = {
        Language = schema.new({
            id = id.from(_N, "PutCodeBindingInput", "Language"),
            type = "string",
            name = "Language",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        RegistryName = schema.new({
            id = id.from(_N, "PutCodeBindingInput", "RegistryName"),
            type = "string",
            name = "RegistryName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        SchemaName = schema.new({
            id = id.from(_N, "PutCodeBindingInput", "SchemaName"),
            type = "string",
            name = "SchemaName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        SchemaVersion = schema.new({
            id = id.from(_N, "PutCodeBindingInput", "SchemaVersion"),
            type = "string",
            name = "SchemaVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "schemaVersion" },
            },
        }),
    },
})

M.PutCodeBindingOutput = schema.new({
    id = id.from(_N, "PutCodeBindingResponse"),
    type = "structure",
    members = {
        CreationDate = schema.new({
            id = id.from(_N, "PutCodeBindingOutput", "CreationDate"),
            type = "timestamp",
            name = "CreationDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        LastModified = schema.new({
            id = id.from(_N, "PutCodeBindingOutput", "LastModified"),
            type = "timestamp",
            name = "LastModified",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        SchemaVersion = schema.new({
            id = id.from(_N, "PutCodeBindingOutput", "SchemaVersion"),
            type = "string",
            name = "SchemaVersion",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "PutCodeBindingOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
    },
})

M.PutResourcePolicyInput = schema.new({
    id = id.from(_N, "PutResourcePolicyRequest"),
    type = "structure",
    members = {
        Policy = schema.new({
            id = id.from(_N, "PutResourcePolicyInput", "Policy"),
            type = "string",
            name = "Policy",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.MEDIA_TYPE] = { value = "application/json" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RegistryName = schema.new({
            id = id.from(_N, "PutResourcePolicyInput", "RegistryName"),
            type = "string",
            name = "RegistryName",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "registryName" },
            },
        }),
        RevisionId = schema.new({
            id = id.from(_N, "PutResourcePolicyInput", "RevisionId"),
            type = "string",
            name = "RevisionId",
            target_id = prelude.String.id,
        }),
    },
})

M.PutResourcePolicyOutput = schema.new({
    id = id.from(_N, "PutResourcePolicyResponse"),
    type = "structure",
    members = {
        Policy = schema.new({
            id = id.from(_N, "PutResourcePolicyOutput", "Policy"),
            type = "string",
            name = "Policy",
            target_id = prelude.String.id,
            traits = {
                [traits.MEDIA_TYPE] = { value = "application/json" },
            },
        }),
        RevisionId = schema.new({
            id = id.from(_N, "PutResourcePolicyOutput", "RevisionId"),
            type = "string",
            name = "RevisionId",
            target_id = prelude.String.id,
        }),
    },
})

M.SearchSchemasInput = schema.new({
    id = id.from(_N, "SearchSchemasRequest"),
    type = "structure",
    members = {
        Keywords = schema.new({
            id = id.from(_N, "SearchSchemasInput", "Keywords"),
            type = "string",
            name = "Keywords",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "keywords" },
            },
        }),
        Limit = schema.new({
            id = id.from(_N, "SearchSchemasInput", "Limit"),
            type = "integer",
            name = "Limit",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "limit" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "SearchSchemasInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        RegistryName = schema.new({
            id = id.from(_N, "SearchSchemasInput", "RegistryName"),
            type = "string",
            name = "RegistryName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.SearchSchemasOutput = schema.new({
    id = id.from(_N, "SearchSchemasResponse"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "SearchSchemasOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Schemas = schema.new({
            id = id.from(_N, "SearchSchemasOutput", "Schemas"),
            type = "list",
            name = "Schemas",
            target_id = prelude.Document.id,
            list_member = M.SearchSchemaSummary,
        }),
    },
})

M.StartDiscovererInput = schema.new({
    id = id.from(_N, "StartDiscovererRequest"),
    type = "structure",
    members = {
        DiscovererId = schema.new({
            id = id.from(_N, "StartDiscovererInput", "DiscovererId"),
            type = "string",
            name = "DiscovererId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.StartDiscovererOutput = schema.new({
    id = id.from(_N, "StartDiscovererResponse"),
    type = "structure",
    members = {
        DiscovererId = schema.new({
            id = id.from(_N, "StartDiscovererOutput", "DiscovererId"),
            type = "string",
            name = "DiscovererId",
            target_id = prelude.String.id,
        }),
        State = schema.new({
            id = id.from(_N, "StartDiscovererOutput", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
        }),
    },
})

M.StopDiscovererInput = schema.new({
    id = id.from(_N, "StopDiscovererRequest"),
    type = "structure",
    members = {
        DiscovererId = schema.new({
            id = id.from(_N, "StopDiscovererInput", "DiscovererId"),
            type = "string",
            name = "DiscovererId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.StopDiscovererOutput = schema.new({
    id = id.from(_N, "StopDiscovererResponse"),
    type = "structure",
    members = {
        DiscovererId = schema.new({
            id = id.from(_N, "StopDiscovererOutput", "DiscovererId"),
            type = "string",
            name = "DiscovererId",
            target_id = prelude.String.id,
        }),
        State = schema.new({
            id = id.from(_N, "StopDiscovererOutput", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
        }),
    },
})

M.TagResourceInput = schema.new({
    id = id.from(_N, "TagResourceRequest"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "TagResourceInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "TagResourceInput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "tags" },
            },
        }),
    },
})

M.TagResourceOutput = prelude.Unit

M.UntagResourceInput = schema.new({
    id = id.from(_N, "UntagResourceRequest"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "UntagResourceInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        TagKeys = schema.new({
            id = id.from(_N, "UntagResourceInput", "TagKeys"),
            type = "list",
            name = "TagKeys",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "tagKeys" },
            },
        }),
    },
})

M.UntagResourceOutput = prelude.Unit

M.UpdateDiscovererInput = schema.new({
    id = id.from(_N, "UpdateDiscovererRequest"),
    type = "structure",
    members = {
        Description = schema.new({
            id = id.from(_N, "UpdateDiscovererInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        DiscovererId = schema.new({
            id = id.from(_N, "UpdateDiscovererInput", "DiscovererId"),
            type = "string",
            name = "DiscovererId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        CrossAccount = schema.new({
            id = id.from(_N, "UpdateDiscovererInput", "CrossAccount"),
            type = "boolean",
            name = "CrossAccount",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.UpdateDiscovererOutput = schema.new({
    id = id.from(_N, "UpdateDiscovererResponse"),
    type = "structure",
    members = {
        Description = schema.new({
            id = id.from(_N, "UpdateDiscovererOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        DiscovererArn = schema.new({
            id = id.from(_N, "UpdateDiscovererOutput", "DiscovererArn"),
            type = "string",
            name = "DiscovererArn",
            target_id = prelude.String.id,
        }),
        DiscovererId = schema.new({
            id = id.from(_N, "UpdateDiscovererOutput", "DiscovererId"),
            type = "string",
            name = "DiscovererId",
            target_id = prelude.String.id,
        }),
        SourceArn = schema.new({
            id = id.from(_N, "UpdateDiscovererOutput", "SourceArn"),
            type = "string",
            name = "SourceArn",
            target_id = prelude.String.id,
        }),
        State = schema.new({
            id = id.from(_N, "UpdateDiscovererOutput", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
        }),
        CrossAccount = schema.new({
            id = id.from(_N, "UpdateDiscovererOutput", "CrossAccount"),
            type = "boolean",
            name = "CrossAccount",
            target_id = prelude.Boolean.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "UpdateDiscovererOutput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "tags" },
            },
        }),
    },
})

M.UpdateRegistryInput = schema.new({
    id = id.from(_N, "UpdateRegistryRequest"),
    type = "structure",
    members = {
        Description = schema.new({
            id = id.from(_N, "UpdateRegistryInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        RegistryName = schema.new({
            id = id.from(_N, "UpdateRegistryInput", "RegistryName"),
            type = "string",
            name = "RegistryName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.UpdateRegistryOutput = schema.new({
    id = id.from(_N, "UpdateRegistryResponse"),
    type = "structure",
    members = {
        Description = schema.new({
            id = id.from(_N, "UpdateRegistryOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        RegistryArn = schema.new({
            id = id.from(_N, "UpdateRegistryOutput", "RegistryArn"),
            type = "string",
            name = "RegistryArn",
            target_id = prelude.String.id,
        }),
        RegistryName = schema.new({
            id = id.from(_N, "UpdateRegistryOutput", "RegistryName"),
            type = "string",
            name = "RegistryName",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "UpdateRegistryOutput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "tags" },
            },
        }),
    },
})

M.UpdateSchemaInput = schema.new({
    id = id.from(_N, "UpdateSchemaRequest"),
    type = "structure",
    members = {
        ClientTokenId = schema.new({
            id = id.from(_N, "UpdateSchemaInput", "ClientTokenId"),
            type = "string",
            name = "ClientTokenId",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        Content = schema.new({
            id = id.from(_N, "UpdateSchemaInput", "Content"),
            type = "string",
            name = "Content",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "UpdateSchemaInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        RegistryName = schema.new({
            id = id.from(_N, "UpdateSchemaInput", "RegistryName"),
            type = "string",
            name = "RegistryName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        SchemaName = schema.new({
            id = id.from(_N, "UpdateSchemaInput", "SchemaName"),
            type = "string",
            name = "SchemaName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Type = schema.new({
            id = id.from(_N, "UpdateSchemaInput", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateSchemaOutput = schema.new({
    id = id.from(_N, "UpdateSchemaResponse"),
    type = "structure",
    members = {
        Description = schema.new({
            id = id.from(_N, "UpdateSchemaOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        LastModified = schema.new({
            id = id.from(_N, "UpdateSchemaOutput", "LastModified"),
            type = "timestamp",
            name = "LastModified",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        SchemaArn = schema.new({
            id = id.from(_N, "UpdateSchemaOutput", "SchemaArn"),
            type = "string",
            name = "SchemaArn",
            target_id = prelude.String.id,
        }),
        SchemaName = schema.new({
            id = id.from(_N, "UpdateSchemaOutput", "SchemaName"),
            type = "string",
            name = "SchemaName",
            target_id = prelude.String.id,
        }),
        SchemaVersion = schema.new({
            id = id.from(_N, "UpdateSchemaOutput", "SchemaVersion"),
            type = "string",
            name = "SchemaVersion",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "UpdateSchemaOutput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "tags" },
            },
        }),
        Type = schema.new({
            id = id.from(_N, "UpdateSchemaOutput", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        VersionCreatedDate = schema.new({
            id = id.from(_N, "UpdateSchemaOutput", "VersionCreatedDate"),
            type = "timestamp",
            name = "VersionCreatedDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

-- Fix forward references for recursive schemas
for _, s in pairs(M) do
    if type(s) == "table" and (s.type == "structure" or s.type == "union") then
        local members = rawget(s, "_members")
        if members then
            for _, ms in pairs(members) do
                if (ms.type == "structure" or ms.type == "union") and not rawget(ms, "_target") and ms.target_id then
                    rawset(ms, "_target", M[ms.target_id.name])
                end
            end
        end
    end
end

return M
