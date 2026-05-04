local record CreateContainerInput
    ContainerName: string
    Tags: {Tag}
end

local record CreateContainerOutput
    Container: Container
end

local record DeleteContainerInput
    ContainerName: string
end

local record DeleteContainerOutput
end

local record DeleteContainerPolicyInput
    ContainerName: string
end

local record DeleteContainerPolicyOutput
end

local record DeleteCorsPolicyInput
    ContainerName: string
end

local record DeleteCorsPolicyOutput
end

local record DeleteLifecyclePolicyInput
    ContainerName: string
end

local record DeleteLifecyclePolicyOutput
end

local record DeleteMetricPolicyInput
    ContainerName: string
end

local record DeleteMetricPolicyOutput
end

local record DescribeContainerInput
    ContainerName: string
end

local record DescribeContainerOutput
    Container: Container
end

local record GetContainerPolicyInput
    ContainerName: string
end

local record GetContainerPolicyOutput
    Policy: string
end

local record GetCorsPolicyInput
    ContainerName: string
end

local record GetCorsPolicyOutput
    CorsPolicy: {CorsRule}
end

local record GetLifecyclePolicyInput
    ContainerName: string
end

local record GetLifecyclePolicyOutput
    LifecyclePolicy: string
end

local record GetMetricPolicyInput
    ContainerName: string
end

local record GetMetricPolicyOutput
    MetricPolicy: MetricPolicy
end

local record ListContainersInput
    NextToken: string
    MaxResults: number
end

local record ListContainersOutput
    Containers: {Container}
    NextToken: string
end

local record ListTagsForResourceInput
    Resource: string
end

local record ListTagsForResourceOutput
    Tags: {Tag}
end

local record PutContainerPolicyInput
    ContainerName: string
    Policy: string
end

local record PutContainerPolicyOutput
end

local record PutCorsPolicyInput
    ContainerName: string
    CorsPolicy: {CorsRule}
end

local record PutCorsPolicyOutput
end

local record PutLifecyclePolicyInput
    ContainerName: string
    LifecyclePolicy: string
end

local record PutLifecyclePolicyOutput
end

local record PutMetricPolicyInput
    ContainerName: string
    MetricPolicy: MetricPolicy
end

local record PutMetricPolicyOutput
end

local record StartAccessLoggingInput
    ContainerName: string
end

local record StartAccessLoggingOutput
end

local record StopAccessLoggingInput
    ContainerName: string
end

local record StopAccessLoggingOutput
end

local record TagResourceInput
    Resource: string
    Tags: {Tag}
end

local record TagResourceOutput
end

local record UntagResourceInput
    Resource: string
    TagKeys: {string}
end

local record UntagResourceOutput
end

local record ContainerInUseException
    Message: string
end

local record InternalServerError
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ContainerInUseException
    Message: string
end

local record ContainerNotFoundException
    Message: string
end

local record InternalServerError
    Message: string
end

local record ContainerInUseException
    Message: string
end

local record ContainerNotFoundException
    Message: string
end

local record InternalServerError
    Message: string
end

local record PolicyNotFoundException
    Message: string
end

local record ContainerInUseException
    Message: string
end

local record ContainerNotFoundException
    Message: string
end

local record CorsPolicyNotFoundException
    Message: string
end

local record InternalServerError
    Message: string
end

local record ContainerInUseException
    Message: string
end

local record ContainerNotFoundException
    Message: string
end

local record InternalServerError
    Message: string
end

local record PolicyNotFoundException
    Message: string
end

local record ContainerInUseException
    Message: string
end

local record ContainerNotFoundException
    Message: string
end

local record InternalServerError
    Message: string
end

local record PolicyNotFoundException
    Message: string
end

local record ContainerNotFoundException
    Message: string
end

local record InternalServerError
    Message: string
end

local record ContainerInUseException
    Message: string
end

local record ContainerNotFoundException
    Message: string
end

local record InternalServerError
    Message: string
end

local record PolicyNotFoundException
    Message: string
end

local record ContainerInUseException
    Message: string
end

local record ContainerNotFoundException
    Message: string
end

local record CorsPolicyNotFoundException
    Message: string
end

local record InternalServerError
    Message: string
end

local record ContainerInUseException
    Message: string
end

local record ContainerNotFoundException
    Message: string
end

local record InternalServerError
    Message: string
end

local record PolicyNotFoundException
    Message: string
end

local record ContainerInUseException
    Message: string
end

local record ContainerNotFoundException
    Message: string
end

local record InternalServerError
    Message: string
end

local record PolicyNotFoundException
    Message: string
end

local record InternalServerError
    Message: string
end

local record ContainerInUseException
    Message: string
end

local record ContainerNotFoundException
    Message: string
end

local record InternalServerError
    Message: string
end

local record ContainerInUseException
    Message: string
end

local record ContainerNotFoundException
    Message: string
end

local record InternalServerError
    Message: string
end

local record ContainerInUseException
    Message: string
end

local record ContainerNotFoundException
    Message: string
end

local record InternalServerError
    Message: string
end

local record ContainerInUseException
    Message: string
end

local record ContainerNotFoundException
    Message: string
end

local record InternalServerError
    Message: string
end

local record ContainerInUseException
    Message: string
end

local record ContainerNotFoundException
    Message: string
end

local record InternalServerError
    Message: string
end

local record ContainerInUseException
    Message: string
end

local record ContainerNotFoundException
    Message: string
end

local record InternalServerError
    Message: string
end

local record ContainerInUseException
    Message: string
end

local record ContainerNotFoundException
    Message: string
end

local record InternalServerError
    Message: string
end

local record ContainerInUseException
    Message: string
end

local record ContainerNotFoundException
    Message: string
end

local record InternalServerError
    Message: string
end

local record ContainerInUseException
    Message: string
end

local record ContainerNotFoundException
    Message: string
end

local record InternalServerError
    Message: string
end

local record M
    CreateContainerInput: CreateContainerInput
    CreateContainerOutput: CreateContainerOutput
    DeleteContainerInput: DeleteContainerInput
    DeleteContainerOutput: DeleteContainerOutput
    DeleteContainerPolicyInput: DeleteContainerPolicyInput
    DeleteContainerPolicyOutput: DeleteContainerPolicyOutput
    DeleteCorsPolicyInput: DeleteCorsPolicyInput
    DeleteCorsPolicyOutput: DeleteCorsPolicyOutput
    DeleteLifecyclePolicyInput: DeleteLifecyclePolicyInput
    DeleteLifecyclePolicyOutput: DeleteLifecyclePolicyOutput
    DeleteMetricPolicyInput: DeleteMetricPolicyInput
    DeleteMetricPolicyOutput: DeleteMetricPolicyOutput
    DescribeContainerInput: DescribeContainerInput
    DescribeContainerOutput: DescribeContainerOutput
    GetContainerPolicyInput: GetContainerPolicyInput
    GetContainerPolicyOutput: GetContainerPolicyOutput
    GetCorsPolicyInput: GetCorsPolicyInput
    GetCorsPolicyOutput: GetCorsPolicyOutput
    GetLifecyclePolicyInput: GetLifecyclePolicyInput
    GetLifecyclePolicyOutput: GetLifecyclePolicyOutput
    GetMetricPolicyInput: GetMetricPolicyInput
    GetMetricPolicyOutput: GetMetricPolicyOutput
    ListContainersInput: ListContainersInput
    ListContainersOutput: ListContainersOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    PutContainerPolicyInput: PutContainerPolicyInput
    PutContainerPolicyOutput: PutContainerPolicyOutput
    PutCorsPolicyInput: PutCorsPolicyInput
    PutCorsPolicyOutput: PutCorsPolicyOutput
    PutLifecyclePolicyInput: PutLifecyclePolicyInput
    PutLifecyclePolicyOutput: PutLifecyclePolicyOutput
    PutMetricPolicyInput: PutMetricPolicyInput
    PutMetricPolicyOutput: PutMetricPolicyOutput
    StartAccessLoggingInput: StartAccessLoggingInput
    StartAccessLoggingOutput: StartAccessLoggingOutput
    StopAccessLoggingInput: StopAccessLoggingInput
    StopAccessLoggingOutput: StopAccessLoggingOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
end

return M
