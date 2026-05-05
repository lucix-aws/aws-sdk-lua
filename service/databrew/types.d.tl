local record BatchDeleteRecipeVersionInput
    Name: string
    RecipeVersions: {string}
end

local record BatchDeleteRecipeVersionOutput
    Name: string
    Errors: {RecipeVersionErrorDetail}
end

local record CreateDatasetInput
    Name: string
    Format: string
    FormatOptions: FormatOptions
    Input: Input
    PathOptions: PathOptions
    Tags: {string : string}
end

local record CreateDatasetOutput
    Name: string
end

local record CreateProfileJobInput
    DatasetName: string
    EncryptionKeyArn: string
    EncryptionMode: string
    Name: string
    LogSubscription: string
    MaxCapacity: number
    MaxRetries: number
    OutputLocation: S3Location
    Configuration: ProfileConfiguration
    ValidationConfigurations: {ValidationConfiguration}
    RoleArn: string
    Tags: {string : string}
    Timeout: number
    JobSample: JobSample
end

local record CreateProfileJobOutput
    Name: string
end

local record CreateProjectInput
    DatasetName: string
    Name: string
    RecipeName: string
    Sample: Sample
    RoleArn: string
    Tags: {string : string}
end

local record CreateProjectOutput
    Name: string
end

local record CreateRecipeInput
    Description: string
    Name: string
    Steps: {RecipeStep}
    Tags: {string : string}
end

local record CreateRecipeOutput
    Name: string
end

local record CreateRecipeJobInput
    DatasetName: string
    EncryptionKeyArn: string
    EncryptionMode: string
    Name: string
    LogSubscription: string
    MaxCapacity: number
    MaxRetries: number
    Outputs: {Output}
    DataCatalogOutputs: {DataCatalogOutput}
    DatabaseOutputs: {DatabaseOutput}
    ProjectName: string
    RecipeReference: RecipeReference
    RoleArn: string
    Tags: {string : string}
    Timeout: number
end

local record CreateRecipeJobOutput
    Name: string
end

local record CreateRulesetInput
    Name: string
    Description: string
    TargetArn: string
    Rules: {Rule}
    Tags: {string : string}
end

local record CreateRulesetOutput
    Name: string
end

local record CreateScheduleInput
    JobNames: {string}
    CronExpression: string
    Tags: {string : string}
    Name: string
end

local record CreateScheduleOutput
    Name: string
end

local record DeleteDatasetInput
    Name: string
end

local record DeleteDatasetOutput
    Name: string
end

local record DeleteJobInput
    Name: string
end

local record DeleteJobOutput
    Name: string
end

local record DeleteProjectInput
    Name: string
end

local record DeleteProjectOutput
    Name: string
end

local record DeleteRecipeVersionInput
    Name: string
    RecipeVersion: string
end

local record DeleteRecipeVersionOutput
    Name: string
    RecipeVersion: string
end

local record DeleteRulesetInput
    Name: string
end

local record DeleteRulesetOutput
    Name: string
end

local record DeleteScheduleInput
    Name: string
end

local record DeleteScheduleOutput
    Name: string
end

local record DescribeDatasetInput
    Name: string
end

local record DescribeDatasetOutput
    CreatedBy: string
    CreateDate: number
    Name: string
    Format: string
    FormatOptions: FormatOptions
    Input: Input
    LastModifiedDate: number
    LastModifiedBy: string
    Source: string
    PathOptions: PathOptions
    Tags: {string : string}
    ResourceArn: string
end

local record DescribeJobInput
    Name: string
end

local record DescribeJobOutput
    CreateDate: number
    CreatedBy: string
    DatasetName: string
    EncryptionKeyArn: string
    EncryptionMode: string
    Name: string
    Type: string
    LastModifiedBy: string
    LastModifiedDate: number
    LogSubscription: string
    MaxCapacity: number
    MaxRetries: number
    Outputs: {Output}
    DataCatalogOutputs: {DataCatalogOutput}
    DatabaseOutputs: {DatabaseOutput}
    ProjectName: string
    ProfileConfiguration: ProfileConfiguration
    ValidationConfigurations: {ValidationConfiguration}
    RecipeReference: RecipeReference
    ResourceArn: string
    RoleArn: string
    Tags: {string : string}
    Timeout: number
    JobSample: JobSample
end

local record DescribeJobRunInput
    Name: string
    RunId: string
end

local record DescribeJobRunOutput
    Attempt: number
    CompletedOn: number
    DatasetName: string
    ErrorMessage: string
    ExecutionTime: number
    JobName: string
    ProfileConfiguration: ProfileConfiguration
    ValidationConfigurations: {ValidationConfiguration}
    RunId: string
    State: string
    LogSubscription: string
    LogGroupName: string
    Outputs: {Output}
    DataCatalogOutputs: {DataCatalogOutput}
    DatabaseOutputs: {DatabaseOutput}
    RecipeReference: RecipeReference
    StartedBy: string
    StartedOn: number
    JobSample: JobSample
end

local record DescribeProjectInput
    Name: string
end

local record DescribeProjectOutput
    CreateDate: number
    CreatedBy: string
    DatasetName: string
    LastModifiedDate: number
    LastModifiedBy: string
    Name: string
    RecipeName: string
    ResourceArn: string
    Sample: Sample
    RoleArn: string
    Tags: {string : string}
    SessionStatus: string
    OpenedBy: string
    OpenDate: number
end

local record DescribeRecipeInput
    Name: string
    RecipeVersion: string
end

local record DescribeRecipeOutput
    CreatedBy: string
    CreateDate: number
    LastModifiedBy: string
    LastModifiedDate: number
    ProjectName: string
    PublishedBy: string
    PublishedDate: number
    Description: string
    Name: string
    Steps: {RecipeStep}
    Tags: {string : string}
    ResourceArn: string
    RecipeVersion: string
end

local record DescribeRulesetInput
    Name: string
end

local record DescribeRulesetOutput
    Name: string
    Description: string
    TargetArn: string
    Rules: {Rule}
    CreateDate: number
    CreatedBy: string
    LastModifiedBy: string
    LastModifiedDate: number
    ResourceArn: string
    Tags: {string : string}
end

local record DescribeScheduleInput
    Name: string
end

local record DescribeScheduleOutput
    CreateDate: number
    CreatedBy: string
    JobNames: {string}
    LastModifiedBy: string
    LastModifiedDate: number
    ResourceArn: string
    CronExpression: string
    Tags: {string : string}
    Name: string
end

local record ListDatasetsInput
    MaxResults: number
    NextToken: string
end

local record ListDatasetsOutput
    Datasets: {Dataset}
    NextToken: string
end

local record ListJobRunsInput
    Name: string
    MaxResults: number
    NextToken: string
end

local record ListJobRunsOutput
    JobRuns: {JobRun}
    NextToken: string
end

local record ListJobsInput
    DatasetName: string
    MaxResults: number
    NextToken: string
    ProjectName: string
end

local record ListJobsOutput
    Jobs: {Job}
    NextToken: string
end

local record ListProjectsInput
    NextToken: string
    MaxResults: number
end

local record ListProjectsOutput
    Projects: {Project}
    NextToken: string
end

local record ListRecipesInput
    MaxResults: number
    NextToken: string
    RecipeVersion: string
end

local record ListRecipesOutput
    Recipes: {Recipe}
    NextToken: string
end

local record ListRecipeVersionsInput
    MaxResults: number
    NextToken: string
    Name: string
end

local record ListRecipeVersionsOutput
    NextToken: string
    Recipes: {Recipe}
end

local record ListRulesetsInput
    TargetArn: string
    MaxResults: number
    NextToken: string
end

local record ListRulesetsOutput
    Rulesets: {RulesetItem}
    NextToken: string
end

local record ListSchedulesInput
    JobName: string
    MaxResults: number
    NextToken: string
end

local record ListSchedulesOutput
    Schedules: {Schedule}
    NextToken: string
end

local record ListTagsForResourceInput
    ResourceArn: string
end

local record ListTagsForResourceOutput
    Tags: {string : string}
end

local record PublishRecipeInput
    Description: string
    Name: string
end

local record PublishRecipeOutput
    Name: string
end

local record SendProjectSessionActionInput
    Preview: boolean
    Name: string
    RecipeStep: RecipeStep
    StepIndex: number
    ClientSessionId: string
    ViewFrame: ViewFrame
end

local record SendProjectSessionActionOutput
    Result: string
    Name: string
    ActionId: number
end

local record StartJobRunInput
    Name: string
end

local record StartJobRunOutput
    RunId: string
end

local record StartProjectSessionInput
    Name: string
    AssumeControl: boolean
end

local record StartProjectSessionOutput
    Name: string
    ClientSessionId: string
end

local record StopJobRunInput
    Name: string
    RunId: string
end

local record StopJobRunOutput
    RunId: string
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

local record UpdateDatasetInput
    Name: string
    Format: string
    FormatOptions: FormatOptions
    Input: Input
    PathOptions: PathOptions
end

local record UpdateDatasetOutput
    Name: string
end

local record UpdateProfileJobInput
    Configuration: ProfileConfiguration
    EncryptionKeyArn: string
    EncryptionMode: string
    Name: string
    LogSubscription: string
    MaxCapacity: number
    MaxRetries: number
    OutputLocation: S3Location
    ValidationConfigurations: {ValidationConfiguration}
    RoleArn: string
    Timeout: number
    JobSample: JobSample
end

local record UpdateProfileJobOutput
    Name: string
end

local record UpdateProjectInput
    Sample: Sample
    RoleArn: string
    Name: string
end

local record UpdateProjectOutput
    LastModifiedDate: number
    Name: string
end

local record UpdateRecipeInput
    Description: string
    Name: string
    Steps: {RecipeStep}
end

local record UpdateRecipeOutput
    Name: string
end

local record UpdateRecipeJobInput
    EncryptionKeyArn: string
    EncryptionMode: string
    Name: string
    LogSubscription: string
    MaxCapacity: number
    MaxRetries: number
    Outputs: {Output}
    DataCatalogOutputs: {DataCatalogOutput}
    DatabaseOutputs: {DatabaseOutput}
    RoleArn: string
    Timeout: number
end

local record UpdateRecipeJobOutput
    Name: string
end

local record UpdateRulesetInput
    Name: string
    Description: string
    Rules: {Rule}
end

local record UpdateRulesetOutput
    Name: string
end

local record UpdateScheduleInput
    JobNames: {string}
    CronExpression: string
    Name: string
end

local record UpdateScheduleOutput
    Name: string
end

local record ConflictException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ValidationException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ValidationException
    Message: string
end

local record ConflictException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ValidationException
    Message: string
end

local record ConflictException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ValidationException
    Message: string
end

local record ConflictException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ValidationException
    Message: string
end

local record ConflictException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record ConflictException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record ConflictException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record ConflictException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record ConflictException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record ValidationException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record ValidationException
    Message: string
end

local record ValidationException
    Message: string
end

local record ValidationException
    Message: string
end

local record ValidationException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record ValidationException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ValidationException
    Message: string
end

local record ConflictException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record ConflictException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ValidationException
    Message: string
end

local record ConflictException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ValidationException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ValidationException
    Message: string
end

local type SessionStatus = "ASSIGNED" | "FAILED" | "INITIALIZING" | "PROVISIONING" | "READY" | "RECYCLING" | "ROTATING" | "TERMINATED" | "TERMINATING" | "UPDATING"

local type JobType = "PROFILE" | "RECIPE"

local type Source = "S3" | "DATA-CATALOG" | "DATABASE"

local type InputFormat = "CSV" | "JSON" | "PARQUET" | "EXCEL" | "ORC"

local type JobRunState = "STARTING" | "RUNNING" | "STOPPING" | "STOPPED" | "SUCCEEDED" | "FAILED" | "TIMEOUT"

local type EncryptionMode = "SSE-KMS" | "SSE-S3"

local type LogSubscription = "ENABLE" | "DISABLE"

local record M
    BatchDeleteRecipeVersionInput: BatchDeleteRecipeVersionInput
    BatchDeleteRecipeVersionOutput: BatchDeleteRecipeVersionOutput
    CreateDatasetInput: CreateDatasetInput
    CreateDatasetOutput: CreateDatasetOutput
    CreateProfileJobInput: CreateProfileJobInput
    CreateProfileJobOutput: CreateProfileJobOutput
    CreateProjectInput: CreateProjectInput
    CreateProjectOutput: CreateProjectOutput
    CreateRecipeInput: CreateRecipeInput
    CreateRecipeOutput: CreateRecipeOutput
    CreateRecipeJobInput: CreateRecipeJobInput
    CreateRecipeJobOutput: CreateRecipeJobOutput
    CreateRulesetInput: CreateRulesetInput
    CreateRulesetOutput: CreateRulesetOutput
    CreateScheduleInput: CreateScheduleInput
    CreateScheduleOutput: CreateScheduleOutput
    DeleteDatasetInput: DeleteDatasetInput
    DeleteDatasetOutput: DeleteDatasetOutput
    DeleteJobInput: DeleteJobInput
    DeleteJobOutput: DeleteJobOutput
    DeleteProjectInput: DeleteProjectInput
    DeleteProjectOutput: DeleteProjectOutput
    DeleteRecipeVersionInput: DeleteRecipeVersionInput
    DeleteRecipeVersionOutput: DeleteRecipeVersionOutput
    DeleteRulesetInput: DeleteRulesetInput
    DeleteRulesetOutput: DeleteRulesetOutput
    DeleteScheduleInput: DeleteScheduleInput
    DeleteScheduleOutput: DeleteScheduleOutput
    DescribeDatasetInput: DescribeDatasetInput
    DescribeDatasetOutput: DescribeDatasetOutput
    DescribeJobInput: DescribeJobInput
    DescribeJobOutput: DescribeJobOutput
    DescribeJobRunInput: DescribeJobRunInput
    DescribeJobRunOutput: DescribeJobRunOutput
    DescribeProjectInput: DescribeProjectInput
    DescribeProjectOutput: DescribeProjectOutput
    DescribeRecipeInput: DescribeRecipeInput
    DescribeRecipeOutput: DescribeRecipeOutput
    DescribeRulesetInput: DescribeRulesetInput
    DescribeRulesetOutput: DescribeRulesetOutput
    DescribeScheduleInput: DescribeScheduleInput
    DescribeScheduleOutput: DescribeScheduleOutput
    ListDatasetsInput: ListDatasetsInput
    ListDatasetsOutput: ListDatasetsOutput
    ListJobRunsInput: ListJobRunsInput
    ListJobRunsOutput: ListJobRunsOutput
    ListJobsInput: ListJobsInput
    ListJobsOutput: ListJobsOutput
    ListProjectsInput: ListProjectsInput
    ListProjectsOutput: ListProjectsOutput
    ListRecipesInput: ListRecipesInput
    ListRecipesOutput: ListRecipesOutput
    ListRecipeVersionsInput: ListRecipeVersionsInput
    ListRecipeVersionsOutput: ListRecipeVersionsOutput
    ListRulesetsInput: ListRulesetsInput
    ListRulesetsOutput: ListRulesetsOutput
    ListSchedulesInput: ListSchedulesInput
    ListSchedulesOutput: ListSchedulesOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    PublishRecipeInput: PublishRecipeInput
    PublishRecipeOutput: PublishRecipeOutput
    SendProjectSessionActionInput: SendProjectSessionActionInput
    SendProjectSessionActionOutput: SendProjectSessionActionOutput
    StartJobRunInput: StartJobRunInput
    StartJobRunOutput: StartJobRunOutput
    StartProjectSessionInput: StartProjectSessionInput
    StartProjectSessionOutput: StartProjectSessionOutput
    StopJobRunInput: StopJobRunInput
    StopJobRunOutput: StopJobRunOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateDatasetInput: UpdateDatasetInput
    UpdateDatasetOutput: UpdateDatasetOutput
    UpdateProfileJobInput: UpdateProfileJobInput
    UpdateProfileJobOutput: UpdateProfileJobOutput
    UpdateProjectInput: UpdateProjectInput
    UpdateProjectOutput: UpdateProjectOutput
    UpdateRecipeInput: UpdateRecipeInput
    UpdateRecipeOutput: UpdateRecipeOutput
    UpdateRecipeJobInput: UpdateRecipeJobInput
    UpdateRecipeJobOutput: UpdateRecipeJobOutput
    UpdateRulesetInput: UpdateRulesetInput
    UpdateRulesetOutput: UpdateRulesetOutput
    UpdateScheduleInput: UpdateScheduleInput
    UpdateScheduleOutput: UpdateScheduleOutput
end

return M
