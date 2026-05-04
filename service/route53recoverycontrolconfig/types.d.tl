local record CreateClusterInput
    ClientToken: string
    ClusterName: string
    Tags: {string : string}
    NetworkType: string
end

local record CreateClusterOutput
    Cluster: Cluster
end

local record CreateControlPanelInput
    ClientToken: string
    ClusterArn: string
    ControlPanelName: string
    Tags: {string : string}
end

local record CreateControlPanelOutput
    ControlPanel: ControlPanel
end

local record CreateRoutingControlInput
    ClientToken: string
    ClusterArn: string
    ControlPanelArn: string
    RoutingControlName: string
end

local record CreateRoutingControlOutput
    RoutingControl: RoutingControl
end

local record CreateSafetyRuleInput
    AssertionRule: NewAssertionRule
    ClientToken: string
    GatingRule: NewGatingRule
    Tags: {string : string}
end

local record CreateSafetyRuleOutput
    AssertionRule: AssertionRule
    GatingRule: GatingRule
end

local record DeleteClusterInput
    ClusterArn: string
end

local record DeleteClusterOutput
end

local record DeleteControlPanelInput
    ControlPanelArn: string
end

local record DeleteControlPanelOutput
end

local record DeleteRoutingControlInput
    RoutingControlArn: string
end

local record DeleteRoutingControlOutput
end

local record DeleteSafetyRuleInput
    SafetyRuleArn: string
end

local record DeleteSafetyRuleOutput
end

local record DescribeClusterInput
    ClusterArn: string
end

local record DescribeClusterOutput
    Cluster: Cluster
end

local record DescribeControlPanelInput
    ControlPanelArn: string
end

local record DescribeControlPanelOutput
    ControlPanel: ControlPanel
end

local record DescribeRoutingControlInput
    RoutingControlArn: string
end

local record DescribeRoutingControlOutput
    RoutingControl: RoutingControl
end

local record DescribeSafetyRuleInput
    SafetyRuleArn: string
end

local record DescribeSafetyRuleOutput
    AssertionRule: AssertionRule
    GatingRule: GatingRule
end

local record GetResourcePolicyInput
    ResourceArn: string
end

local record GetResourcePolicyOutput
    Policy: string
end

local record ListAssociatedRoute53HealthChecksInput
    MaxResults: number
    NextToken: string
    RoutingControlArn: string
end

local record ListAssociatedRoute53HealthChecksOutput
    HealthCheckIds: {string}
    NextToken: string
end

local record ListClustersInput
    MaxResults: number
    NextToken: string
end

local record ListClustersOutput
    Clusters: {Cluster}
    NextToken: string
end

local record ListControlPanelsInput
    ClusterArn: string
    MaxResults: number
    NextToken: string
end

local record ListControlPanelsOutput
    ControlPanels: {ControlPanel}
    NextToken: string
end

local record ListRoutingControlsInput
    ControlPanelArn: string
    MaxResults: number
    NextToken: string
end

local record ListRoutingControlsOutput
    NextToken: string
    RoutingControls: {RoutingControl}
end

local record ListSafetyRulesInput
    ControlPanelArn: string
    MaxResults: number
    NextToken: string
end

local record ListSafetyRulesOutput
    NextToken: string
    SafetyRules: {Rule}
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

local record UpdateClusterInput
    ClusterArn: string
    NetworkType: string
end

local record UpdateClusterOutput
    Cluster: Cluster
end

local record UpdateControlPanelInput
    ControlPanelArn: string
    ControlPanelName: string
end

local record UpdateControlPanelOutput
    ControlPanel: ControlPanel
end

local record UpdateRoutingControlInput
    RoutingControlArn: string
    RoutingControlName: string
end

local record UpdateRoutingControlOutput
    RoutingControl: RoutingControl
end

local record UpdateSafetyRuleInput
    AssertionRuleUpdate: AssertionRuleUpdate
    GatingRuleUpdate: GatingRuleUpdate
end

local record UpdateSafetyRuleOutput
    AssertionRule: AssertionRule
    GatingRule: GatingRule
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ThrottlingException
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

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ThrottlingException
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

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record InternalServerException
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

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
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

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
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

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
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

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
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

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
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

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
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

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
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

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
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

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
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

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
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

local type NetworkType = "IPV4" | "DUALSTACK"

local record M
    CreateClusterInput: CreateClusterInput
    CreateClusterOutput: CreateClusterOutput
    CreateControlPanelInput: CreateControlPanelInput
    CreateControlPanelOutput: CreateControlPanelOutput
    CreateRoutingControlInput: CreateRoutingControlInput
    CreateRoutingControlOutput: CreateRoutingControlOutput
    CreateSafetyRuleInput: CreateSafetyRuleInput
    CreateSafetyRuleOutput: CreateSafetyRuleOutput
    DeleteClusterInput: DeleteClusterInput
    DeleteClusterOutput: DeleteClusterOutput
    DeleteControlPanelInput: DeleteControlPanelInput
    DeleteControlPanelOutput: DeleteControlPanelOutput
    DeleteRoutingControlInput: DeleteRoutingControlInput
    DeleteRoutingControlOutput: DeleteRoutingControlOutput
    DeleteSafetyRuleInput: DeleteSafetyRuleInput
    DeleteSafetyRuleOutput: DeleteSafetyRuleOutput
    DescribeClusterInput: DescribeClusterInput
    DescribeClusterOutput: DescribeClusterOutput
    DescribeControlPanelInput: DescribeControlPanelInput
    DescribeControlPanelOutput: DescribeControlPanelOutput
    DescribeRoutingControlInput: DescribeRoutingControlInput
    DescribeRoutingControlOutput: DescribeRoutingControlOutput
    DescribeSafetyRuleInput: DescribeSafetyRuleInput
    DescribeSafetyRuleOutput: DescribeSafetyRuleOutput
    GetResourcePolicyInput: GetResourcePolicyInput
    GetResourcePolicyOutput: GetResourcePolicyOutput
    ListAssociatedRoute53HealthChecksInput: ListAssociatedRoute53HealthChecksInput
    ListAssociatedRoute53HealthChecksOutput: ListAssociatedRoute53HealthChecksOutput
    ListClustersInput: ListClustersInput
    ListClustersOutput: ListClustersOutput
    ListControlPanelsInput: ListControlPanelsInput
    ListControlPanelsOutput: ListControlPanelsOutput
    ListRoutingControlsInput: ListRoutingControlsInput
    ListRoutingControlsOutput: ListRoutingControlsOutput
    ListSafetyRulesInput: ListSafetyRulesInput
    ListSafetyRulesOutput: ListSafetyRulesOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateClusterInput: UpdateClusterInput
    UpdateClusterOutput: UpdateClusterOutput
    UpdateControlPanelInput: UpdateControlPanelInput
    UpdateControlPanelOutput: UpdateControlPanelOutput
    UpdateRoutingControlInput: UpdateRoutingControlInput
    UpdateRoutingControlOutput: UpdateRoutingControlOutput
    UpdateSafetyRuleInput: UpdateSafetyRuleInput
    UpdateSafetyRuleOutput: UpdateSafetyRuleOutput
end

return M
