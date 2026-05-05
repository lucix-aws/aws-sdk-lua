local record CreateScalingPlanInput
    ScalingPlanName: string
    ApplicationSource: ApplicationSource
    ScalingInstructions: {ScalingInstruction}
end

local record CreateScalingPlanOutput
    ScalingPlanVersion: number
end

local record DeleteScalingPlanInput
    ScalingPlanName: string
    ScalingPlanVersion: number
end

local record DeleteScalingPlanOutput
end

local record DescribeScalingPlanResourcesInput
    ScalingPlanName: string
    ScalingPlanVersion: number
    MaxResults: number
    NextToken: string
end

local record DescribeScalingPlanResourcesOutput
    ScalingPlanResources: {ScalingPlanResource}
    NextToken: string
end

local record DescribeScalingPlansInput
    ScalingPlanNames: {string}
    ScalingPlanVersion: number
    ApplicationSources: {ApplicationSource}
    MaxResults: number
    NextToken: string
end

local record DescribeScalingPlansOutput
    ScalingPlans: {ScalingPlan}
    NextToken: string
end

local record GetScalingPlanResourceForecastDataInput
    ScalingPlanName: string
    ScalingPlanVersion: number
    ServiceNamespace: string
    ResourceId: string
    ScalableDimension: string
    ForecastDataType: string
    StartTime: number
    EndTime: number
end

local record GetScalingPlanResourceForecastDataOutput
    Datapoints: {Datapoint}
end

local record UpdateScalingPlanInput
    ScalingPlanName: string
    ScalingPlanVersion: number
    ApplicationSource: ApplicationSource
    ScalingInstructions: {ScalingInstruction}
end

local record UpdateScalingPlanOutput
end

local record ConcurrentUpdateException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ValidationException
    Message: string
end

local record ConcurrentUpdateException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record ObjectNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record ConcurrentUpdateException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record ValidationException
    Message: string
end

local record ConcurrentUpdateException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record ValidationException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record ValidationException
    Message: string
end

local record ConcurrentUpdateException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record ObjectNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local type ForecastDataType = "CapacityForecast" | "LoadForecast" | "ScheduledActionMinCapacity" | "ScheduledActionMaxCapacity"

local type ServiceNamespace = "autoscaling" | "ecs" | "ec2" | "rds" | "dynamodb"

local type ScalableDimension = "autoscaling:autoScalingGroup:DesiredCapacity" | "ecs:service:DesiredCount" | "ec2:spot-fleet-request:TargetCapacity" | "rds:cluster:ReadReplicaCount" | "dynamodb:table:ReadCapacityUnits" | "dynamodb:table:WriteCapacityUnits" | "dynamodb:index:ReadCapacityUnits" | "dynamodb:index:WriteCapacityUnits"

local record M
    CreateScalingPlanInput: CreateScalingPlanInput
    CreateScalingPlanOutput: CreateScalingPlanOutput
    DeleteScalingPlanInput: DeleteScalingPlanInput
    DeleteScalingPlanOutput: DeleteScalingPlanOutput
    DescribeScalingPlanResourcesInput: DescribeScalingPlanResourcesInput
    DescribeScalingPlanResourcesOutput: DescribeScalingPlanResourcesOutput
    DescribeScalingPlansInput: DescribeScalingPlansInput
    DescribeScalingPlansOutput: DescribeScalingPlansOutput
    GetScalingPlanResourceForecastDataInput: GetScalingPlanResourceForecastDataInput
    GetScalingPlanResourceForecastDataOutput: GetScalingPlanResourceForecastDataOutput
    UpdateScalingPlanInput: UpdateScalingPlanInput
    UpdateScalingPlanOutput: UpdateScalingPlanOutput
end

return M
