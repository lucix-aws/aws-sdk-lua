local record ConfigureLogsInput
    EgressAccessLogs: EgressAccessLogs
    Id: string
end

local record ConfigureLogsOutput
    Arn: string
    Authorization: Authorization
    CreatedAt: string
    DomainName: string
    EgressAccessLogs: EgressAccessLogs
    Id: string
    Tags: {string : string}
end

local record CreateAssetInput
    Id: string
    PackagingGroupId: string
    ResourceId: string
    SourceArn: string
    SourceRoleArn: string
    Tags: {string : string}
end

local record CreateAssetOutput
    Arn: string
    CreatedAt: string
    EgressEndpoints: {EgressEndpoint}
    Id: string
    PackagingGroupId: string
    ResourceId: string
    SourceArn: string
    SourceRoleArn: string
    Tags: {string : string}
end

local record CreatePackagingConfigurationInput
    CmafPackage: CmafPackage
    DashPackage: DashPackage
    HlsPackage: HlsPackage
    Id: string
    MssPackage: MssPackage
    PackagingGroupId: string
    Tags: {string : string}
end

local record CreatePackagingConfigurationOutput
    Arn: string
    CmafPackage: CmafPackage
    CreatedAt: string
    DashPackage: DashPackage
    HlsPackage: HlsPackage
    Id: string
    MssPackage: MssPackage
    PackagingGroupId: string
    Tags: {string : string}
end

local record CreatePackagingGroupInput
    Authorization: Authorization
    EgressAccessLogs: EgressAccessLogs
    Id: string
    Tags: {string : string}
end

local record CreatePackagingGroupOutput
    Arn: string
    Authorization: Authorization
    CreatedAt: string
    DomainName: string
    EgressAccessLogs: EgressAccessLogs
    Id: string
    Tags: {string : string}
end

local record DeleteAssetInput
    Id: string
end

local record DeleteAssetOutput
end

local record DeletePackagingConfigurationInput
    Id: string
end

local record DeletePackagingConfigurationOutput
end

local record DeletePackagingGroupInput
    Id: string
end

local record DeletePackagingGroupOutput
end

local record DescribeAssetInput
    Id: string
end

local record DescribeAssetOutput
    Arn: string
    CreatedAt: string
    EgressEndpoints: {EgressEndpoint}
    Id: string
    PackagingGroupId: string
    ResourceId: string
    SourceArn: string
    SourceRoleArn: string
    Tags: {string : string}
end

local record DescribePackagingConfigurationInput
    Id: string
end

local record DescribePackagingConfigurationOutput
    Arn: string
    CmafPackage: CmafPackage
    CreatedAt: string
    DashPackage: DashPackage
    HlsPackage: HlsPackage
    Id: string
    MssPackage: MssPackage
    PackagingGroupId: string
    Tags: {string : string}
end

local record DescribePackagingGroupInput
    Id: string
end

local record DescribePackagingGroupOutput
    ApproximateAssetCount: number
    Arn: string
    Authorization: Authorization
    CreatedAt: string
    DomainName: string
    EgressAccessLogs: EgressAccessLogs
    Id: string
    Tags: {string : string}
end

local record ListAssetsInput
    MaxResults: number
    NextToken: string
    PackagingGroupId: string
end

local record ListAssetsOutput
    Assets: {AssetShallow}
    NextToken: string
end

local record ListPackagingConfigurationsInput
    MaxResults: number
    NextToken: string
    PackagingGroupId: string
end

local record ListPackagingConfigurationsOutput
    NextToken: string
    PackagingConfigurations: {PackagingConfiguration}
end

local record ListPackagingGroupsInput
    MaxResults: number
    NextToken: string
end

local record ListPackagingGroupsOutput
    NextToken: string
    PackagingGroups: {PackagingGroup}
end

local record ListTagsForResourceInput
    ResourceArn: string
end

local record ListTagsForResourceOutput
    Tags: {string : string}
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

local record UpdatePackagingGroupInput
    Authorization: Authorization
    Id: string
end

local record UpdatePackagingGroupOutput
    ApproximateAssetCount: number
    Arn: string
    Authorization: Authorization
    CreatedAt: string
    DomainName: string
    EgressAccessLogs: EgressAccessLogs
    Id: string
    Tags: {string : string}
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record UnprocessableEntityException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record UnprocessableEntityException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record UnprocessableEntityException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record UnprocessableEntityException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record UnprocessableEntityException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record UnprocessableEntityException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record UnprocessableEntityException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record UnprocessableEntityException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record UnprocessableEntityException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record UnprocessableEntityException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record UnprocessableEntityException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record UnprocessableEntityException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record UnprocessableEntityException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record UnprocessableEntityException
    Message: string
end

local record M
    ConfigureLogsInput: ConfigureLogsInput
    ConfigureLogsOutput: ConfigureLogsOutput
    CreateAssetInput: CreateAssetInput
    CreateAssetOutput: CreateAssetOutput
    CreatePackagingConfigurationInput: CreatePackagingConfigurationInput
    CreatePackagingConfigurationOutput: CreatePackagingConfigurationOutput
    CreatePackagingGroupInput: CreatePackagingGroupInput
    CreatePackagingGroupOutput: CreatePackagingGroupOutput
    DeleteAssetInput: DeleteAssetInput
    DeleteAssetOutput: DeleteAssetOutput
    DeletePackagingConfigurationInput: DeletePackagingConfigurationInput
    DeletePackagingConfigurationOutput: DeletePackagingConfigurationOutput
    DeletePackagingGroupInput: DeletePackagingGroupInput
    DeletePackagingGroupOutput: DeletePackagingGroupOutput
    DescribeAssetInput: DescribeAssetInput
    DescribeAssetOutput: DescribeAssetOutput
    DescribePackagingConfigurationInput: DescribePackagingConfigurationInput
    DescribePackagingConfigurationOutput: DescribePackagingConfigurationOutput
    DescribePackagingGroupInput: DescribePackagingGroupInput
    DescribePackagingGroupOutput: DescribePackagingGroupOutput
    ListAssetsInput: ListAssetsInput
    ListAssetsOutput: ListAssetsOutput
    ListPackagingConfigurationsInput: ListPackagingConfigurationsInput
    ListPackagingConfigurationsOutput: ListPackagingConfigurationsOutput
    ListPackagingGroupsInput: ListPackagingGroupsInput
    ListPackagingGroupsOutput: ListPackagingGroupsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdatePackagingGroupInput: UpdatePackagingGroupInput
    UpdatePackagingGroupOutput: UpdatePackagingGroupOutput
end

return M
