local record CreateDiscovererInput
    Description: string
    SourceArn: string
    CrossAccount: boolean
    Tags: {string : string}
end

local record CreateDiscovererOutput
    Description: string
    DiscovererArn: string
    DiscovererId: string
    SourceArn: string
    State: string
    CrossAccount: boolean
    Tags: {string : string}
end

local record CreateRegistryInput
    Description: string
    RegistryName: string
    Tags: {string : string}
end

local record CreateRegistryOutput
    Description: string
    RegistryArn: string
    RegistryName: string
    Tags: {string : string}
end

local record CreateSchemaInput
    Content: string
    Description: string
    RegistryName: string
    SchemaName: string
    Tags: {string : string}
    Type: string
end

local record CreateSchemaOutput
    Description: string
    LastModified: number
    SchemaArn: string
    SchemaName: string
    SchemaVersion: string
    Tags: {string : string}
    Type: string
    VersionCreatedDate: number
end

local record DeleteDiscovererInput
    DiscovererId: string
end

local record DeleteDiscovererOutput
end

local record DeleteRegistryInput
    RegistryName: string
end

local record DeleteRegistryOutput
end

local record DeleteResourcePolicyInput
    RegistryName: string
end

local record DeleteResourcePolicyOutput
end

local record DeleteSchemaInput
    RegistryName: string
    SchemaName: string
end

local record DeleteSchemaOutput
end

local record DeleteSchemaVersionInput
    RegistryName: string
    SchemaName: string
    SchemaVersion: string
end

local record DeleteSchemaVersionOutput
end

local record DescribeCodeBindingInput
    Language: string
    RegistryName: string
    SchemaName: string
    SchemaVersion: string
end

local record DescribeCodeBindingOutput
    CreationDate: number
    LastModified: number
    SchemaVersion: string
    Status: string
end

local record DescribeDiscovererInput
    DiscovererId: string
end

local record DescribeDiscovererOutput
    Description: string
    DiscovererArn: string
    DiscovererId: string
    SourceArn: string
    State: string
    CrossAccount: boolean
    Tags: {string : string}
end

local record DescribeRegistryInput
    RegistryName: string
end

local record DescribeRegistryOutput
    Description: string
    RegistryArn: string
    RegistryName: string
    Tags: {string : string}
end

local record DescribeSchemaInput
    RegistryName: string
    SchemaName: string
    SchemaVersion: string
end

local record DescribeSchemaOutput
    Content: string
    Description: string
    LastModified: number
    SchemaArn: string
    SchemaName: string
    SchemaVersion: string
    Tags: {string : string}
    Type: string
    VersionCreatedDate: number
end

local record ExportSchemaInput
    RegistryName: string
    SchemaName: string
    SchemaVersion: string
    Type: string
end

local record ExportSchemaOutput
    Content: string
    SchemaArn: string
    SchemaName: string
    SchemaVersion: string
    Type: string
end

local record GetCodeBindingSourceInput
    Language: string
    RegistryName: string
    SchemaName: string
    SchemaVersion: string
end

local record GetCodeBindingSourceOutput
    Body: string
end

local record GetDiscoveredSchemaInput
    Events: {string}
    Type: string
end

local record GetDiscoveredSchemaOutput
    Content: string
end

local record GetResourcePolicyInput
    RegistryName: string
end

local record GetResourcePolicyOutput
    Policy: string
    RevisionId: string
end

local record ListDiscoverersInput
    DiscovererIdPrefix: string
    Limit: number
    NextToken: string
    SourceArnPrefix: string
end

local record ListDiscoverersOutput
    Discoverers: {DiscovererSummary}
    NextToken: string
end

local record ListRegistriesInput
    Limit: number
    NextToken: string
    RegistryNamePrefix: string
    Scope: string
end

local record ListRegistriesOutput
    NextToken: string
    Registries: {RegistrySummary}
end

local record ListSchemasInput
    Limit: number
    NextToken: string
    RegistryName: string
    SchemaNamePrefix: string
end

local record ListSchemasOutput
    NextToken: string
    Schemas: {SchemaSummary}
end

local record ListSchemaVersionsInput
    Limit: number
    NextToken: string
    RegistryName: string
    SchemaName: string
end

local record ListSchemaVersionsOutput
    NextToken: string
    SchemaVersions: {SchemaVersionSummary}
end

local record ListTagsForResourceInput
    ResourceArn: string
end

local record ListTagsForResourceOutput
    Tags: {string : string}
end

local record PutCodeBindingInput
    Language: string
    RegistryName: string
    SchemaName: string
    SchemaVersion: string
end

local record PutCodeBindingOutput
    CreationDate: number
    LastModified: number
    SchemaVersion: string
    Status: string
end

local record PutResourcePolicyInput
    Policy: string
    RegistryName: string
    RevisionId: string
end

local record PutResourcePolicyOutput
    Policy: string
    RevisionId: string
end

local record SearchSchemasInput
    Keywords: string
    Limit: number
    NextToken: string
    RegistryName: string
end

local record SearchSchemasOutput
    NextToken: string
    Schemas: {SearchSchemaSummary}
end

local record StartDiscovererInput
    DiscovererId: string
end

local record StartDiscovererOutput
    DiscovererId: string
    State: string
end

local record StopDiscovererInput
    DiscovererId: string
end

local record StopDiscovererOutput
    DiscovererId: string
    State: string
end

local record TagResourceInput
    ResourceArn: string
    Tags: {string : string}
end

local record TagResourceOutput
end

local record UntagResourceInput
    ResourceArn: string
    TagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateDiscovererInput
    Description: string
    DiscovererId: string
    CrossAccount: boolean
end

local record UpdateDiscovererOutput
    Description: string
    DiscovererArn: string
    DiscovererId: string
    SourceArn: string
    State: string
    CrossAccount: boolean
    Tags: {string : string}
end

local record UpdateRegistryInput
    Description: string
    RegistryName: string
end

local record UpdateRegistryOutput
    Description: string
    RegistryArn: string
    RegistryName: string
    Tags: {string : string}
end

local record UpdateSchemaInput
    ClientTokenId: string
    Content: string
    Description: string
    RegistryName: string
    SchemaName: string
    Type: string
end

local record UpdateSchemaOutput
    Description: string
    LastModified: number
    SchemaArn: string
    SchemaName: string
    SchemaVersion: string
    Tags: {string : string}
    Type: string
    VersionCreatedDate: number
end

local record BadRequestException
    Code: string
    Message: string
end

local record ConflictException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record InternalServerErrorException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record UnauthorizedException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ConflictException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record InternalServerErrorException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record UnauthorizedException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record InternalServerErrorException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record InternalServerErrorException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record UnauthorizedException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record InternalServerErrorException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record UnauthorizedException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record InternalServerErrorException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record UnauthorizedException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record InternalServerErrorException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record UnauthorizedException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record InternalServerErrorException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record UnauthorizedException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record InternalServerErrorException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record TooManyRequestsException
    Code: string
    Message: string
end

local record UnauthorizedException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record InternalServerErrorException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record UnauthorizedException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record InternalServerErrorException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record UnauthorizedException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record InternalServerErrorException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record UnauthorizedException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record InternalServerErrorException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record TooManyRequestsException
    Code: string
    Message: string
end

local record UnauthorizedException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record InternalServerErrorException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record TooManyRequestsException
    Code: string
    Message: string
end

local record UnauthorizedException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record InternalServerErrorException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record UnauthorizedException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record InternalServerErrorException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record UnauthorizedException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record InternalServerErrorException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record UnauthorizedException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record InternalServerErrorException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record UnauthorizedException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record InternalServerErrorException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record UnauthorizedException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record InternalServerErrorException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record UnauthorizedException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record InternalServerErrorException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record GoneException
    Code: string
    Message: string
end

local record InternalServerErrorException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record TooManyRequestsException
    Code: string
    Message: string
end

local record UnauthorizedException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record InternalServerErrorException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record PreconditionFailedException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record UnauthorizedException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record InternalServerErrorException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record UnauthorizedException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record InternalServerErrorException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record UnauthorizedException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record InternalServerErrorException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record UnauthorizedException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record InternalServerErrorException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record InternalServerErrorException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record InternalServerErrorException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record UnauthorizedException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record InternalServerErrorException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record UnauthorizedException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record InternalServerErrorException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local type CodeGenerationStatus = "CREATE_IN_PROGRESS" | "CREATE_COMPLETE" | "CREATE_FAILED"

local type DiscovererState = "STARTED" | "STOPPED"

local type Type = "OpenApi3" | "JSONSchemaDraft4"

local record M
    CreateDiscovererInput: CreateDiscovererInput
    CreateDiscovererOutput: CreateDiscovererOutput
    CreateRegistryInput: CreateRegistryInput
    CreateRegistryOutput: CreateRegistryOutput
    CreateSchemaInput: CreateSchemaInput
    CreateSchemaOutput: CreateSchemaOutput
    DeleteDiscovererInput: DeleteDiscovererInput
    DeleteDiscovererOutput: DeleteDiscovererOutput
    DeleteRegistryInput: DeleteRegistryInput
    DeleteRegistryOutput: DeleteRegistryOutput
    DeleteResourcePolicyInput: DeleteResourcePolicyInput
    DeleteResourcePolicyOutput: DeleteResourcePolicyOutput
    DeleteSchemaInput: DeleteSchemaInput
    DeleteSchemaOutput: DeleteSchemaOutput
    DeleteSchemaVersionInput: DeleteSchemaVersionInput
    DeleteSchemaVersionOutput: DeleteSchemaVersionOutput
    DescribeCodeBindingInput: DescribeCodeBindingInput
    DescribeCodeBindingOutput: DescribeCodeBindingOutput
    DescribeDiscovererInput: DescribeDiscovererInput
    DescribeDiscovererOutput: DescribeDiscovererOutput
    DescribeRegistryInput: DescribeRegistryInput
    DescribeRegistryOutput: DescribeRegistryOutput
    DescribeSchemaInput: DescribeSchemaInput
    DescribeSchemaOutput: DescribeSchemaOutput
    ExportSchemaInput: ExportSchemaInput
    ExportSchemaOutput: ExportSchemaOutput
    GetCodeBindingSourceInput: GetCodeBindingSourceInput
    GetCodeBindingSourceOutput: GetCodeBindingSourceOutput
    GetDiscoveredSchemaInput: GetDiscoveredSchemaInput
    GetDiscoveredSchemaOutput: GetDiscoveredSchemaOutput
    GetResourcePolicyInput: GetResourcePolicyInput
    GetResourcePolicyOutput: GetResourcePolicyOutput
    ListDiscoverersInput: ListDiscoverersInput
    ListDiscoverersOutput: ListDiscoverersOutput
    ListRegistriesInput: ListRegistriesInput
    ListRegistriesOutput: ListRegistriesOutput
    ListSchemasInput: ListSchemasInput
    ListSchemasOutput: ListSchemasOutput
    ListSchemaVersionsInput: ListSchemaVersionsInput
    ListSchemaVersionsOutput: ListSchemaVersionsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    PutCodeBindingInput: PutCodeBindingInput
    PutCodeBindingOutput: PutCodeBindingOutput
    PutResourcePolicyInput: PutResourcePolicyInput
    PutResourcePolicyOutput: PutResourcePolicyOutput
    SearchSchemasInput: SearchSchemasInput
    SearchSchemasOutput: SearchSchemasOutput
    StartDiscovererInput: StartDiscovererInput
    StartDiscovererOutput: StartDiscovererOutput
    StopDiscovererInput: StopDiscovererInput
    StopDiscovererOutput: StopDiscovererOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateDiscovererInput: UpdateDiscovererInput
    UpdateDiscovererOutput: UpdateDiscovererOutput
    UpdateRegistryInput: UpdateRegistryInput
    UpdateRegistryOutput: UpdateRegistryOutput
    UpdateSchemaInput: UpdateSchemaInput
    UpdateSchemaOutput: UpdateSchemaOutput
end

return M
