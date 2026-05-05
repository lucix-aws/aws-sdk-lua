local record CreateEnvironmentEC2Input
    name: string
    description: string
    clientRequestToken: string
    instanceType: string
    subnetId: string
    imageId: string
    automaticStopTimeMinutes: number
    ownerArn: string
    tags: {Tag}
    connectionType: string
    dryRun: boolean
end

local record CreateEnvironmentEC2Output
    environmentId: string
end

local record CreateEnvironmentMembershipInput
    environmentId: string
    userArn: string
    permissions: string
end

local record CreateEnvironmentMembershipOutput
    membership: EnvironmentMember
end

local record DeleteEnvironmentInput
    environmentId: string
end

local record DeleteEnvironmentOutput
end

local record DeleteEnvironmentMembershipInput
    environmentId: string
    userArn: string
end

local record DeleteEnvironmentMembershipOutput
end

local record DescribeEnvironmentMembershipsInput
    userArn: string
    environmentId: string
    permissions: {string}
    nextToken: string
    maxResults: number
end

local record DescribeEnvironmentMembershipsOutput
    memberships: {EnvironmentMember}
    nextToken: string
end

local record DescribeEnvironmentsInput
    environmentIds: {string}
end

local record DescribeEnvironmentsOutput
    environments: {Environment}
end

local record DescribeEnvironmentStatusInput
    environmentId: string
end

local record DescribeEnvironmentStatusOutput
    status: string
    message: string
end

local record ListEnvironmentsInput
    nextToken: string
    maxResults: number
end

local record ListEnvironmentsOutput
    nextToken: string
    environmentIds: {string}
end

local record ListTagsForResourceInput
    ResourceARN: string
end

local record ListTagsForResourceOutput
    Tags: {Tag}
end

local record TagResourceInput
    ResourceARN: string
    Tags: {Tag}
end

local record TagResourceOutput
end

local record UntagResourceInput
    ResourceARN: string
    TagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateEnvironmentInput
    environmentId: string
    name: string
    description: string
    managedCredentialsAction: string
end

local record UpdateEnvironmentOutput
end

local record UpdateEnvironmentMembershipInput
    environmentId: string
    userArn: string
    permissions: string
end

local record UpdateEnvironmentMembershipOutput
    membership: EnvironmentMember
end

local record BadRequestException
    message: string
    className: string
    code: number
end

local record ConflictException
    message: string
    className: string
    code: number
end

local record ForbiddenException
    message: string
    className: string
    code: number
end

local record InternalServerErrorException
    message: string
    className: string
    code: number
end

local record LimitExceededException
    message: string
    className: string
    code: number
end

local record NotFoundException
    message: string
    className: string
    code: number
end

local record TooManyRequestsException
    message: string
    className: string
    code: number
end

local record BadRequestException
    message: string
    className: string
    code: number
end

local record ConflictException
    message: string
    className: string
    code: number
end

local record ForbiddenException
    message: string
    className: string
    code: number
end

local record InternalServerErrorException
    message: string
    className: string
    code: number
end

local record LimitExceededException
    message: string
    className: string
    code: number
end

local record NotFoundException
    message: string
    className: string
    code: number
end

local record TooManyRequestsException
    message: string
    className: string
    code: number
end

local record BadRequestException
    message: string
    className: string
    code: number
end

local record ConflictException
    message: string
    className: string
    code: number
end

local record ForbiddenException
    message: string
    className: string
    code: number
end

local record InternalServerErrorException
    message: string
    className: string
    code: number
end

local record LimitExceededException
    message: string
    className: string
    code: number
end

local record NotFoundException
    message: string
    className: string
    code: number
end

local record TooManyRequestsException
    message: string
    className: string
    code: number
end

local record BadRequestException
    message: string
    className: string
    code: number
end

local record ConflictException
    message: string
    className: string
    code: number
end

local record ForbiddenException
    message: string
    className: string
    code: number
end

local record InternalServerErrorException
    message: string
    className: string
    code: number
end

local record LimitExceededException
    message: string
    className: string
    code: number
end

local record NotFoundException
    message: string
    className: string
    code: number
end

local record TooManyRequestsException
    message: string
    className: string
    code: number
end

local record BadRequestException
    message: string
    className: string
    code: number
end

local record ConflictException
    message: string
    className: string
    code: number
end

local record ForbiddenException
    message: string
    className: string
    code: number
end

local record InternalServerErrorException
    message: string
    className: string
    code: number
end

local record LimitExceededException
    message: string
    className: string
    code: number
end

local record NotFoundException
    message: string
    className: string
    code: number
end

local record TooManyRequestsException
    message: string
    className: string
    code: number
end

local record BadRequestException
    message: string
    className: string
    code: number
end

local record ConflictException
    message: string
    className: string
    code: number
end

local record ForbiddenException
    message: string
    className: string
    code: number
end

local record InternalServerErrorException
    message: string
    className: string
    code: number
end

local record LimitExceededException
    message: string
    className: string
    code: number
end

local record NotFoundException
    message: string
    className: string
    code: number
end

local record TooManyRequestsException
    message: string
    className: string
    code: number
end

local record BadRequestException
    message: string
    className: string
    code: number
end

local record ConflictException
    message: string
    className: string
    code: number
end

local record ForbiddenException
    message: string
    className: string
    code: number
end

local record InternalServerErrorException
    message: string
    className: string
    code: number
end

local record LimitExceededException
    message: string
    className: string
    code: number
end

local record NotFoundException
    message: string
    className: string
    code: number
end

local record TooManyRequestsException
    message: string
    className: string
    code: number
end

local record BadRequestException
    message: string
    className: string
    code: number
end

local record ConflictException
    message: string
    className: string
    code: number
end

local record ForbiddenException
    message: string
    className: string
    code: number
end

local record InternalServerErrorException
    message: string
    className: string
    code: number
end

local record LimitExceededException
    message: string
    className: string
    code: number
end

local record NotFoundException
    message: string
    className: string
    code: number
end

local record TooManyRequestsException
    message: string
    className: string
    code: number
end

local record BadRequestException
    message: string
    className: string
    code: number
end

local record InternalServerErrorException
    message: string
    className: string
    code: number
end

local record NotFoundException
    message: string
    className: string
    code: number
end

local record BadRequestException
    message: string
    className: string
    code: number
end

local record ConcurrentAccessException
    message: string
    className: string
    code: number
end

local record InternalServerErrorException
    message: string
    className: string
    code: number
end

local record NotFoundException
    message: string
    className: string
    code: number
end

local record BadRequestException
    message: string
    className: string
    code: number
end

local record ConcurrentAccessException
    message: string
    className: string
    code: number
end

local record InternalServerErrorException
    message: string
    className: string
    code: number
end

local record NotFoundException
    message: string
    className: string
    code: number
end

local record BadRequestException
    message: string
    className: string
    code: number
end

local record ConflictException
    message: string
    className: string
    code: number
end

local record ForbiddenException
    message: string
    className: string
    code: number
end

local record InternalServerErrorException
    message: string
    className: string
    code: number
end

local record LimitExceededException
    message: string
    className: string
    code: number
end

local record NotFoundException
    message: string
    className: string
    code: number
end

local record TooManyRequestsException
    message: string
    className: string
    code: number
end

local record BadRequestException
    message: string
    className: string
    code: number
end

local record ConflictException
    message: string
    className: string
    code: number
end

local record ForbiddenException
    message: string
    className: string
    code: number
end

local record InternalServerErrorException
    message: string
    className: string
    code: number
end

local record LimitExceededException
    message: string
    className: string
    code: number
end

local record NotFoundException
    message: string
    className: string
    code: number
end

local record TooManyRequestsException
    message: string
    className: string
    code: number
end

local type ManagedCredentialsAction = "ENABLE" | "DISABLE"

local type MemberPermissions = "read-write" | "read-only"

local type EnvironmentStatus = "error" | "creating" | "connecting" | "ready" | "stopping" | "stopped" | "deleting"

local type ConnectionType = "CONNECT_SSH" | "CONNECT_SSM"

local record M
    CreateEnvironmentEC2Input: CreateEnvironmentEC2Input
    CreateEnvironmentEC2Output: CreateEnvironmentEC2Output
    CreateEnvironmentMembershipInput: CreateEnvironmentMembershipInput
    CreateEnvironmentMembershipOutput: CreateEnvironmentMembershipOutput
    DeleteEnvironmentInput: DeleteEnvironmentInput
    DeleteEnvironmentOutput: DeleteEnvironmentOutput
    DeleteEnvironmentMembershipInput: DeleteEnvironmentMembershipInput
    DeleteEnvironmentMembershipOutput: DeleteEnvironmentMembershipOutput
    DescribeEnvironmentMembershipsInput: DescribeEnvironmentMembershipsInput
    DescribeEnvironmentMembershipsOutput: DescribeEnvironmentMembershipsOutput
    DescribeEnvironmentsInput: DescribeEnvironmentsInput
    DescribeEnvironmentsOutput: DescribeEnvironmentsOutput
    DescribeEnvironmentStatusInput: DescribeEnvironmentStatusInput
    DescribeEnvironmentStatusOutput: DescribeEnvironmentStatusOutput
    ListEnvironmentsInput: ListEnvironmentsInput
    ListEnvironmentsOutput: ListEnvironmentsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateEnvironmentInput: UpdateEnvironmentInput
    UpdateEnvironmentOutput: UpdateEnvironmentOutput
    UpdateEnvironmentMembershipInput: UpdateEnvironmentMembershipInput
    UpdateEnvironmentMembershipOutput: UpdateEnvironmentMembershipOutput
end

return M
