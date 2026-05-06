local record AcceptPortfolioShareInput
    AcceptLanguage: string
    PortfolioId: string
    PortfolioShareType: string
end

local record AcceptPortfolioShareOutput
end

local record AssociateBudgetWithResourceInput
    BudgetName: string
    ResourceId: string
end

local record AssociateBudgetWithResourceOutput
end

local record AssociatePrincipalWithPortfolioInput
    AcceptLanguage: string
    PortfolioId: string
    PrincipalARN: string
    PrincipalType: string
end

local record AssociatePrincipalWithPortfolioOutput
end

local record AssociateProductWithPortfolioInput
    AcceptLanguage: string
    ProductId: string
    PortfolioId: string
    SourcePortfolioId: string
end

local record AssociateProductWithPortfolioOutput
end

local record AssociateServiceActionWithProvisioningArtifactInput
    ProductId: string
    ProvisioningArtifactId: string
    ServiceActionId: string
    AcceptLanguage: string
    IdempotencyToken: string
end

local record AssociateServiceActionWithProvisioningArtifactOutput
end

local record AssociateTagOptionWithResourceInput
    ResourceId: string
    TagOptionId: string
end

local record AssociateTagOptionWithResourceOutput
end

local record BatchAssociateServiceActionWithProvisioningArtifactInput
    ServiceActionAssociations: {ServiceActionAssociation}
    AcceptLanguage: string
end

local record BatchAssociateServiceActionWithProvisioningArtifactOutput
    FailedServiceActionAssociations: {FailedServiceActionAssociation}
end

local record BatchDisassociateServiceActionFromProvisioningArtifactInput
    ServiceActionAssociations: {ServiceActionAssociation}
    AcceptLanguage: string
end

local record BatchDisassociateServiceActionFromProvisioningArtifactOutput
    FailedServiceActionAssociations: {FailedServiceActionAssociation}
end

local record CopyProductInput
    AcceptLanguage: string
    SourceProductArn: string
    TargetProductId: string
    TargetProductName: string
    SourceProvisioningArtifactIdentifiers: {{string : string}}
    CopyOptions: {string}
    IdempotencyToken: string
end

local record CopyProductOutput
    CopyProductToken: string
end

local record CreateConstraintInput
    AcceptLanguage: string
    PortfolioId: string
    ProductId: string
    Parameters: string
    Type: string
    Description: string
    IdempotencyToken: string
end

local record CreateConstraintOutput
    ConstraintDetail: ConstraintDetail
    ConstraintParameters: string
    Status: string
end

local record CreatePortfolioInput
    AcceptLanguage: string
    DisplayName: string
    Description: string
    ProviderName: string
    Tags: {Tag}
    IdempotencyToken: string
end

local record CreatePortfolioOutput
    PortfolioDetail: PortfolioDetail
    Tags: {Tag}
end

local record CreatePortfolioShareInput
    AcceptLanguage: string
    PortfolioId: string
    AccountId: string
    OrganizationNode: OrganizationNode
    ShareTagOptions: boolean
    SharePrincipals: boolean
end

local record CreatePortfolioShareOutput
    PortfolioShareToken: string
end

local record CreateProductInput
    AcceptLanguage: string
    Name: string
    Owner: string
    Description: string
    Distributor: string
    SupportDescription: string
    SupportEmail: string
    SupportUrl: string
    ProductType: string
    Tags: {Tag}
    ProvisioningArtifactParameters: ProvisioningArtifactProperties
    IdempotencyToken: string
    SourceConnection: SourceConnection
end

local record CreateProductOutput
    ProductViewDetail: ProductViewDetail
    ProvisioningArtifactDetail: ProvisioningArtifactDetail
    Tags: {Tag}
end

local record CreateProvisionedProductPlanInput
    AcceptLanguage: string
    PlanName: string
    PlanType: string
    NotificationArns: {string}
    PathId: string
    ProductId: string
    ProvisionedProductName: string
    ProvisioningArtifactId: string
    ProvisioningParameters: {UpdateProvisioningParameter}
    IdempotencyToken: string
    Tags: {Tag}
end

local record CreateProvisionedProductPlanOutput
    PlanName: string
    PlanId: string
    ProvisionProductId: string
    ProvisionedProductName: string
    ProvisioningArtifactId: string
end

local record CreateProvisioningArtifactInput
    AcceptLanguage: string
    ProductId: string
    Parameters: ProvisioningArtifactProperties
    IdempotencyToken: string
end

local record CreateProvisioningArtifactOutput
    ProvisioningArtifactDetail: ProvisioningArtifactDetail
    Info: {string : string}
    Status: string
end

local record CreateServiceActionInput
    Name: string
    DefinitionType: string
    Definition: {string : string}
    Description: string
    AcceptLanguage: string
    IdempotencyToken: string
end

local record CreateServiceActionOutput
    ServiceActionDetail: ServiceActionDetail
end

local record CreateTagOptionInput
    Key: string
    Value: string
end

local record CreateTagOptionOutput
    TagOptionDetail: TagOptionDetail
end

local record DeleteConstraintInput
    AcceptLanguage: string
    Id: string
end

local record DeleteConstraintOutput
end

local record DeletePortfolioInput
    AcceptLanguage: string
    Id: string
end

local record DeletePortfolioOutput
end

local record DeletePortfolioShareInput
    AcceptLanguage: string
    PortfolioId: string
    AccountId: string
    OrganizationNode: OrganizationNode
end

local record DeletePortfolioShareOutput
    PortfolioShareToken: string
end

local record DeleteProductInput
    AcceptLanguage: string
    Id: string
end

local record DeleteProductOutput
end

local record DeleteProvisionedProductPlanInput
    AcceptLanguage: string
    PlanId: string
    IgnoreErrors: boolean
end

local record DeleteProvisionedProductPlanOutput
end

local record DeleteProvisioningArtifactInput
    AcceptLanguage: string
    ProductId: string
    ProvisioningArtifactId: string
end

local record DeleteProvisioningArtifactOutput
end

local record DeleteServiceActionInput
    Id: string
    AcceptLanguage: string
    IdempotencyToken: string
end

local record DeleteServiceActionOutput
end

local record DeleteTagOptionInput
    Id: string
end

local record DeleteTagOptionOutput
end

local record DescribeConstraintInput
    AcceptLanguage: string
    Id: string
end

local record DescribeConstraintOutput
    ConstraintDetail: ConstraintDetail
    ConstraintParameters: string
    Status: string
end

local record DescribeCopyProductStatusInput
    AcceptLanguage: string
    CopyProductToken: string
end

local record DescribeCopyProductStatusOutput
    CopyProductStatus: string
    TargetProductId: string
    StatusDetail: string
end

local record DescribePortfolioInput
    AcceptLanguage: string
    Id: string
end

local record DescribePortfolioOutput
    PortfolioDetail: PortfolioDetail
    Tags: {Tag}
    TagOptions: {TagOptionDetail}
    Budgets: {BudgetDetail}
end

local record DescribePortfolioSharesInput
    PortfolioId: string
    Type: string
    PageToken: string
    PageSize: number
end

local record DescribePortfolioSharesOutput
    NextPageToken: string
    PortfolioShareDetails: {PortfolioShareDetail}
end

local record DescribePortfolioShareStatusInput
    PortfolioShareToken: string
end

local record DescribePortfolioShareStatusOutput
    PortfolioShareToken: string
    PortfolioId: string
    OrganizationNodeValue: string
    Status: string
    ShareDetails: ShareDetails
end

local record DescribeProductInput
    AcceptLanguage: string
    Id: string
    Name: string
end

local record DescribeProductOutput
    ProductViewSummary: ProductViewSummary
    ProvisioningArtifacts: {ProvisioningArtifact}
    Budgets: {BudgetDetail}
    LaunchPaths: {LaunchPath}
end

local record DescribeProductAsAdminInput
    AcceptLanguage: string
    Id: string
    Name: string
    SourcePortfolioId: string
end

local record DescribeProductAsAdminOutput
    ProductViewDetail: ProductViewDetail
    ProvisioningArtifactSummaries: {ProvisioningArtifactSummary}
    Tags: {Tag}
    TagOptions: {TagOptionDetail}
    Budgets: {BudgetDetail}
end

local record DescribeProductViewInput
    AcceptLanguage: string
    Id: string
end

local record DescribeProductViewOutput
    ProductViewSummary: ProductViewSummary
    ProvisioningArtifacts: {ProvisioningArtifact}
end

local record DescribeProvisionedProductInput
    AcceptLanguage: string
    Id: string
    Name: string
end

local record DescribeProvisionedProductOutput
    ProvisionedProductDetail: ProvisionedProductDetail
    CloudWatchDashboards: {CloudWatchDashboard}
end

local record DescribeProvisionedProductPlanInput
    AcceptLanguage: string
    PlanId: string
    PageSize: number
    PageToken: string
end

local record DescribeProvisionedProductPlanOutput
    ProvisionedProductPlanDetails: ProvisionedProductPlanDetails
    ResourceChanges: {ResourceChange}
    NextPageToken: string
end

local record DescribeProvisioningArtifactInput
    AcceptLanguage: string
    ProvisioningArtifactId: string
    ProductId: string
    ProvisioningArtifactName: string
    ProductName: string
    Verbose: boolean
    IncludeProvisioningArtifactParameters: boolean
end

local record DescribeProvisioningArtifactOutput
    ProvisioningArtifactDetail: ProvisioningArtifactDetail
    Info: {string : string}
    Status: string
    ProvisioningArtifactParameters: {ProvisioningArtifactParameter}
end

local record DescribeProvisioningParametersInput
    AcceptLanguage: string
    ProductId: string
    ProductName: string
    ProvisioningArtifactId: string
    ProvisioningArtifactName: string
    PathId: string
    PathName: string
end

local record DescribeProvisioningParametersOutput
    ProvisioningArtifactParameters: {ProvisioningArtifactParameter}
    ConstraintSummaries: {ConstraintSummary}
    UsageInstructions: {UsageInstruction}
    TagOptions: {TagOptionSummary}
    ProvisioningArtifactPreferences: ProvisioningArtifactPreferences
    ProvisioningArtifactOutputs: {ProvisioningArtifactOutput}
    ProvisioningArtifactOutputKeys: {ProvisioningArtifactOutput}
end

local record DescribeRecordInput
    AcceptLanguage: string
    Id: string
    PageToken: string
    PageSize: number
end

local record DescribeRecordOutput
    RecordDetail: RecordDetail
    RecordOutputs: {RecordOutput}
    NextPageToken: string
end

local record DescribeServiceActionInput
    Id: string
    AcceptLanguage: string
end

local record DescribeServiceActionOutput
    ServiceActionDetail: ServiceActionDetail
end

local record DescribeServiceActionExecutionParametersInput
    ProvisionedProductId: string
    ServiceActionId: string
    AcceptLanguage: string
end

local record DescribeServiceActionExecutionParametersOutput
    ServiceActionParameters: {ExecutionParameter}
end

local record DescribeTagOptionInput
    Id: string
end

local record DescribeTagOptionOutput
    TagOptionDetail: TagOptionDetail
end

local record DisableAWSOrganizationsAccessInput
end

local record DisableAWSOrganizationsAccessOutput
end

local record DisassociateBudgetFromResourceInput
    BudgetName: string
    ResourceId: string
end

local record DisassociateBudgetFromResourceOutput
end

local record DisassociatePrincipalFromPortfolioInput
    AcceptLanguage: string
    PortfolioId: string
    PrincipalARN: string
    PrincipalType: string
end

local record DisassociatePrincipalFromPortfolioOutput
end

local record DisassociateProductFromPortfolioInput
    AcceptLanguage: string
    ProductId: string
    PortfolioId: string
end

local record DisassociateProductFromPortfolioOutput
end

local record DisassociateServiceActionFromProvisioningArtifactInput
    ProductId: string
    ProvisioningArtifactId: string
    ServiceActionId: string
    AcceptLanguage: string
    IdempotencyToken: string
end

local record DisassociateServiceActionFromProvisioningArtifactOutput
end

local record DisassociateTagOptionFromResourceInput
    ResourceId: string
    TagOptionId: string
end

local record DisassociateTagOptionFromResourceOutput
end

local record EnableAWSOrganizationsAccessInput
end

local record EnableAWSOrganizationsAccessOutput
end

local record ExecuteProvisionedProductPlanInput
    AcceptLanguage: string
    PlanId: string
    IdempotencyToken: string
end

local record ExecuteProvisionedProductPlanOutput
    RecordDetail: RecordDetail
end

local record ExecuteProvisionedProductServiceActionInput
    ProvisionedProductId: string
    ServiceActionId: string
    ExecuteToken: string
    AcceptLanguage: string
    Parameters: {string : {string}}
end

local record ExecuteProvisionedProductServiceActionOutput
    RecordDetail: RecordDetail
end

local record GetAWSOrganizationsAccessStatusInput
end

local record GetAWSOrganizationsAccessStatusOutput
    AccessStatus: string
end

local record GetProvisionedProductOutputsInput
    AcceptLanguage: string
    ProvisionedProductId: string
    ProvisionedProductName: string
    OutputKeys: {string}
    PageSize: number
    PageToken: string
end

local record GetProvisionedProductOutputsOutput
    Outputs: {RecordOutput}
    NextPageToken: string
end

local record ImportAsProvisionedProductInput
    AcceptLanguage: string
    ProductId: string
    ProvisioningArtifactId: string
    ProvisionedProductName: string
    PhysicalId: string
    IdempotencyToken: string
end

local record ImportAsProvisionedProductOutput
    RecordDetail: RecordDetail
end

local record ListAcceptedPortfolioSharesInput
    AcceptLanguage: string
    PageToken: string
    PageSize: number
    PortfolioShareType: string
end

local record ListAcceptedPortfolioSharesOutput
    PortfolioDetails: {PortfolioDetail}
    NextPageToken: string
end

local record ListBudgetsForResourceInput
    AcceptLanguage: string
    ResourceId: string
    PageSize: number
    PageToken: string
end

local record ListBudgetsForResourceOutput
    Budgets: {BudgetDetail}
    NextPageToken: string
end

local record ListConstraintsForPortfolioInput
    AcceptLanguage: string
    PortfolioId: string
    ProductId: string
    PageSize: number
    PageToken: string
end

local record ListConstraintsForPortfolioOutput
    ConstraintDetails: {ConstraintDetail}
    NextPageToken: string
end

local record ListLaunchPathsInput
    AcceptLanguage: string
    ProductId: string
    PageSize: number
    PageToken: string
end

local record ListLaunchPathsOutput
    LaunchPathSummaries: {LaunchPathSummary}
    NextPageToken: string
end

local record ListOrganizationPortfolioAccessInput
    AcceptLanguage: string
    PortfolioId: string
    OrganizationNodeType: string
    PageToken: string
    PageSize: number
end

local record ListOrganizationPortfolioAccessOutput
    OrganizationNodes: {OrganizationNode}
    NextPageToken: string
end

local record ListPortfolioAccessInput
    AcceptLanguage: string
    PortfolioId: string
    OrganizationParentId: string
    PageToken: string
    PageSize: number
end

local record ListPortfolioAccessOutput
    AccountIds: {string}
    NextPageToken: string
end

local record ListPortfoliosInput
    AcceptLanguage: string
    PageToken: string
    PageSize: number
end

local record ListPortfoliosOutput
    PortfolioDetails: {PortfolioDetail}
    NextPageToken: string
end

local record ListPortfoliosForProductInput
    AcceptLanguage: string
    ProductId: string
    PageToken: string
    PageSize: number
end

local record ListPortfoliosForProductOutput
    PortfolioDetails: {PortfolioDetail}
    NextPageToken: string
end

local record ListPrincipalsForPortfolioInput
    AcceptLanguage: string
    PortfolioId: string
    PageSize: number
    PageToken: string
end

local record ListPrincipalsForPortfolioOutput
    Principals: {Principal}
    NextPageToken: string
end

local record ListProvisionedProductPlansInput
    AcceptLanguage: string
    ProvisionProductId: string
    PageSize: number
    PageToken: string
    AccessLevelFilter: AccessLevelFilter
end

local record ListProvisionedProductPlansOutput
    ProvisionedProductPlans: {ProvisionedProductPlanSummary}
    NextPageToken: string
end

local record ListProvisioningArtifactsInput
    AcceptLanguage: string
    ProductId: string
end

local record ListProvisioningArtifactsOutput
    ProvisioningArtifactDetails: {ProvisioningArtifactDetail}
    NextPageToken: string
end

local record ListProvisioningArtifactsForServiceActionInput
    ServiceActionId: string
    PageSize: number
    PageToken: string
    AcceptLanguage: string
end

local record ListProvisioningArtifactsForServiceActionOutput
    ProvisioningArtifactViews: {ProvisioningArtifactView}
    NextPageToken: string
end

local record ListRecordHistoryInput
    AcceptLanguage: string
    AccessLevelFilter: AccessLevelFilter
    SearchFilter: ListRecordHistorySearchFilter
    PageSize: number
    PageToken: string
end

local record ListRecordHistoryOutput
    RecordDetails: {RecordDetail}
    NextPageToken: string
end

local record ListResourcesForTagOptionInput
    TagOptionId: string
    ResourceType: string
    PageSize: number
    PageToken: string
end

local record ListResourcesForTagOptionOutput
    ResourceDetails: {ResourceDetail}
    PageToken: string
end

local record ListServiceActionsInput
    AcceptLanguage: string
    PageSize: number
    PageToken: string
end

local record ListServiceActionsOutput
    ServiceActionSummaries: {ServiceActionSummary}
    NextPageToken: string
end

local record ListServiceActionsForProvisioningArtifactInput
    ProductId: string
    ProvisioningArtifactId: string
    PageSize: number
    PageToken: string
    AcceptLanguage: string
end

local record ListServiceActionsForProvisioningArtifactOutput
    ServiceActionSummaries: {ServiceActionSummary}
    NextPageToken: string
end

local record ListStackInstancesForProvisionedProductInput
    AcceptLanguage: string
    ProvisionedProductId: string
    PageToken: string
    PageSize: number
end

local record ListStackInstancesForProvisionedProductOutput
    StackInstances: {StackInstance}
    NextPageToken: string
end

local record ListTagOptionsInput
    Filters: ListTagOptionsFilters
    PageSize: number
    PageToken: string
end

local record ListTagOptionsOutput
    TagOptionDetails: {TagOptionDetail}
    PageToken: string
end

local record NotifyProvisionProductEngineWorkflowResultInput
    WorkflowToken: string
    RecordId: string
    Status: string
    FailureReason: string
    ResourceIdentifier: EngineWorkflowResourceIdentifier
    Outputs: {RecordOutput}
    IdempotencyToken: string
end

local record NotifyProvisionProductEngineWorkflowResultOutput
end

local record NotifyTerminateProvisionedProductEngineWorkflowResultInput
    WorkflowToken: string
    RecordId: string
    Status: string
    FailureReason: string
    IdempotencyToken: string
end

local record NotifyTerminateProvisionedProductEngineWorkflowResultOutput
end

local record NotifyUpdateProvisionedProductEngineWorkflowResultInput
    WorkflowToken: string
    RecordId: string
    Status: string
    FailureReason: string
    Outputs: {RecordOutput}
    IdempotencyToken: string
end

local record NotifyUpdateProvisionedProductEngineWorkflowResultOutput
end

local record ProvisionProductInput
    AcceptLanguage: string
    ProductId: string
    ProductName: string
    ProvisioningArtifactId: string
    ProvisioningArtifactName: string
    PathId: string
    PathName: string
    ProvisionedProductName: string
    ProvisioningParameters: {ProvisioningParameter}
    ProvisioningPreferences: ProvisioningPreferences
    Tags: {Tag}
    NotificationArns: {string}
    ProvisionToken: string
end

local record ProvisionProductOutput
    RecordDetail: RecordDetail
end

local record RejectPortfolioShareInput
    AcceptLanguage: string
    PortfolioId: string
    PortfolioShareType: string
end

local record RejectPortfolioShareOutput
end

local record ScanProvisionedProductsInput
    AcceptLanguage: string
    AccessLevelFilter: AccessLevelFilter
    PageSize: number
    PageToken: string
end

local record ScanProvisionedProductsOutput
    ProvisionedProducts: {ProvisionedProductDetail}
    NextPageToken: string
end

local record SearchProductsInput
    AcceptLanguage: string
    Filters: {string : {string}}
    PageSize: number
    SortBy: string
    SortOrder: string
    PageToken: string
end

local record SearchProductsOutput
    ProductViewSummaries: {ProductViewSummary}
    ProductViewAggregations: {string : {ProductViewAggregationValue}}
    NextPageToken: string
end

local record SearchProductsAsAdminInput
    AcceptLanguage: string
    PortfolioId: string
    Filters: {string : {string}}
    SortBy: string
    SortOrder: string
    PageToken: string
    PageSize: number
    ProductSource: string
end

local record SearchProductsAsAdminOutput
    ProductViewDetails: {ProductViewDetail}
    NextPageToken: string
end

local record SearchProvisionedProductsInput
    AcceptLanguage: string
    AccessLevelFilter: AccessLevelFilter
    Filters: {string : {string}}
    SortBy: string
    SortOrder: string
    PageSize: number
    PageToken: string
end

local record SearchProvisionedProductsOutput
    ProvisionedProducts: {ProvisionedProductAttribute}
    TotalResultsCount: number
    NextPageToken: string
end

local record TerminateProvisionedProductInput
    ProvisionedProductName: string
    ProvisionedProductId: string
    TerminateToken: string
    IgnoreErrors: boolean
    AcceptLanguage: string
    RetainPhysicalResources: boolean
end

local record TerminateProvisionedProductOutput
    RecordDetail: RecordDetail
end

local record UpdateConstraintInput
    AcceptLanguage: string
    Id: string
    Description: string
    Parameters: string
end

local record UpdateConstraintOutput
    ConstraintDetail: ConstraintDetail
    ConstraintParameters: string
    Status: string
end

local record UpdatePortfolioInput
    AcceptLanguage: string
    Id: string
    DisplayName: string
    Description: string
    ProviderName: string
    AddTags: {Tag}
    RemoveTags: {string}
end

local record UpdatePortfolioOutput
    PortfolioDetail: PortfolioDetail
    Tags: {Tag}
end

local record UpdatePortfolioShareInput
    AcceptLanguage: string
    PortfolioId: string
    AccountId: string
    OrganizationNode: OrganizationNode
    ShareTagOptions: boolean
    SharePrincipals: boolean
end

local record UpdatePortfolioShareOutput
    PortfolioShareToken: string
    Status: string
end

local record UpdateProductInput
    AcceptLanguage: string
    Id: string
    Name: string
    Owner: string
    Description: string
    Distributor: string
    SupportDescription: string
    SupportEmail: string
    SupportUrl: string
    AddTags: {Tag}
    RemoveTags: {string}
    SourceConnection: SourceConnection
end

local record UpdateProductOutput
    ProductViewDetail: ProductViewDetail
    Tags: {Tag}
end

local record UpdateProvisionedProductInput
    AcceptLanguage: string
    ProvisionedProductName: string
    ProvisionedProductId: string
    ProductId: string
    ProductName: string
    ProvisioningArtifactId: string
    ProvisioningArtifactName: string
    PathId: string
    PathName: string
    ProvisioningParameters: {UpdateProvisioningParameter}
    ProvisioningPreferences: UpdateProvisioningPreferences
    Tags: {Tag}
    UpdateToken: string
end

local record UpdateProvisionedProductOutput
    RecordDetail: RecordDetail
end

local record UpdateProvisionedProductPropertiesInput
    AcceptLanguage: string
    ProvisionedProductId: string
    ProvisionedProductProperties: {string : string}
    IdempotencyToken: string
end

local record UpdateProvisionedProductPropertiesOutput
    ProvisionedProductId: string
    ProvisionedProductProperties: {string : string}
    RecordId: string
    Status: string
end

local record UpdateProvisioningArtifactInput
    AcceptLanguage: string
    ProductId: string
    ProvisioningArtifactId: string
    Name: string
    Description: string
    Active: boolean
    Guidance: string
end

local record UpdateProvisioningArtifactOutput
    ProvisioningArtifactDetail: ProvisioningArtifactDetail
    Info: {string : string}
    Status: string
end

local record UpdateServiceActionInput
    Id: string
    Name: string
    Definition: {string : string}
    Description: string
    AcceptLanguage: string
end

local record UpdateServiceActionOutput
    ServiceActionDetail: ServiceActionDetail
end

local record UpdateTagOptionInput
    Id: string
    Value: string
    Active: boolean
end

local record UpdateTagOptionOutput
    TagOptionDetail: TagOptionDetail
end

local record InvalidParametersException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record DuplicateResourceException
    Message: string
end

local record InvalidParametersException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidParametersException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidParametersException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record DuplicateResourceException
    Message: string
end

local record InvalidParametersException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record DuplicateResourceException
    Message: string
end

local record InvalidParametersException
    Message: string
end

local record InvalidStateException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record TagOptionNotMigratedException
    Message: string
end

local record InvalidParametersException
    Message: string
end

local record InvalidParametersException
    Message: string
end

local record InvalidParametersException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record DuplicateResourceException
    Message: string
end

local record InvalidParametersException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidParametersException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record TagOptionNotMigratedException
    Message: string
end

local record InvalidParametersException
    Message: string
end

local record InvalidStateException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record OperationNotSupportedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidParametersException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record TagOptionNotMigratedException
    Message: string
end

local record InvalidParametersException
    Message: string
end

local record InvalidStateException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidParametersException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidParametersException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record DuplicateResourceException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record TagOptionNotMigratedException
    Message: string
end

local record InvalidParametersException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidParametersException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record TagOptionNotMigratedException
    Message: string
end

local record InvalidParametersException
    Message: string
end

local record InvalidStateException
    Message: string
end

local record OperationNotSupportedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidParametersException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record TagOptionNotMigratedException
    Message: string
end

local record InvalidParametersException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidParametersException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidParametersException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record TagOptionNotMigratedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidParametersException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidParametersException
    Message: string
end

local record OperationNotSupportedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidParametersException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidParametersException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidParametersException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidParametersException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidParametersException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidParametersException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidParametersException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidParametersException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record TagOptionNotMigratedException
    Message: string
end

local record InvalidStateException
    Message: string
end

local record OperationNotSupportedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidParametersException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidParametersException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidParametersException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record TagOptionNotMigratedException
    Message: string
end

local record InvalidStateException
    Message: string
end

local record OperationNotSupportedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidParametersException
    Message: string
end

local record InvalidStateException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidParametersException
    Message: string
end

local record InvalidStateException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record OperationNotSupportedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidParametersException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record DuplicateResourceException
    Message: string
end

local record InvalidParametersException
    Message: string
end

local record InvalidStateException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidParametersException
    Message: string
end

local record OperationNotSupportedException
    Message: string
end

local record InvalidParametersException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidParametersException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidParametersException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidParametersException
    Message: string
end

local record OperationNotSupportedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidParametersException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidParametersException
    Message: string
end

local record InvalidParametersException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidParametersException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidParametersException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidParametersException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidParametersException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidParametersException
    Message: string
end

local record InvalidParametersException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record TagOptionNotMigratedException
    Message: string
end

local record InvalidParametersException
    Message: string
end

local record InvalidParametersException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidParametersException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidParametersException
    Message: string
end

local record TagOptionNotMigratedException
    Message: string
end

local record InvalidParametersException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidParametersException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidParametersException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record DuplicateResourceException
    Message: string
end

local record InvalidParametersException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidParametersException
    Message: string
end

local record InvalidParametersException
    Message: string
end

local record InvalidParametersException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidParametersException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidParametersException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidParametersException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record TagOptionNotMigratedException
    Message: string
end

local record InvalidParametersException
    Message: string
end

local record InvalidStateException
    Message: string
end

local record OperationNotSupportedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidParametersException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record TagOptionNotMigratedException
    Message: string
end

local record InvalidParametersException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidParametersException
    Message: string
end

local record InvalidStateException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidParametersException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidParametersException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record DuplicateResourceException
    Message: string
end

local record InvalidParametersException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record TagOptionNotMigratedException
    Message: string
end

local type AccessStatus = "ENABLED" | "UNDER_CHANGE" | "DISABLED"

local type ProductViewSortBy = "Title" | "VersionCount" | "CreationDate"

local type ProvisionedProductPlanType = "CLOUDFORMATION"

local type CopyProductStatus = "SUCCEEDED" | "IN_PROGRESS" | "FAILED"

local type DescribePortfolioShareType = "ACCOUNT" | "ORGANIZATION" | "ORGANIZATIONAL_UNIT" | "ORGANIZATION_MEMBER_ACCOUNT"

local type EngineWorkflowStatus = "SUCCEEDED" | "FAILED"

local type ProductSource = "ACCOUNT"

local type SortOrder = "ASCENDING" | "DESCENDING"

local type Status = "AVAILABLE" | "CREATING" | "FAILED"

local type ServiceActionDefinitionType = "SSM_AUTOMATION"

local type OrganizationNodeType = "ORGANIZATION" | "ORGANIZATIONAL_UNIT" | "ACCOUNT"

local type PortfolioShareType = "IMPORTED" | "AWS_SERVICECATALOG" | "AWS_ORGANIZATIONS"

local type PrincipalType = "IAM" | "IAM_PATTERN"

local type ShareStatus = "NOT_STARTED" | "IN_PROGRESS" | "COMPLETED" | "COMPLETED_WITH_ERRORS" | "ERROR"

local type RecordStatus = "CREATED" | "IN_PROGRESS" | "IN_PROGRESS_IN_ERROR" | "SUCCEEDED" | "FAILED"

local type ProvisioningArtifactGuidance = "DEFAULT" | "DEPRECATED"

local type ProductType = "CLOUD_FORMATION_TEMPLATE" | "MARKETPLACE" | "TERRAFORM_OPEN_SOURCE" | "TERRAFORM_CLOUD" | "EXTERNAL"

local record M
    AcceptPortfolioShareInput: AcceptPortfolioShareInput
    AcceptPortfolioShareOutput: AcceptPortfolioShareOutput
    AssociateBudgetWithResourceInput: AssociateBudgetWithResourceInput
    AssociateBudgetWithResourceOutput: AssociateBudgetWithResourceOutput
    AssociatePrincipalWithPortfolioInput: AssociatePrincipalWithPortfolioInput
    AssociatePrincipalWithPortfolioOutput: AssociatePrincipalWithPortfolioOutput
    AssociateProductWithPortfolioInput: AssociateProductWithPortfolioInput
    AssociateProductWithPortfolioOutput: AssociateProductWithPortfolioOutput
    AssociateServiceActionWithProvisioningArtifactInput: AssociateServiceActionWithProvisioningArtifactInput
    AssociateServiceActionWithProvisioningArtifactOutput: AssociateServiceActionWithProvisioningArtifactOutput
    AssociateTagOptionWithResourceInput: AssociateTagOptionWithResourceInput
    AssociateTagOptionWithResourceOutput: AssociateTagOptionWithResourceOutput
    BatchAssociateServiceActionWithProvisioningArtifactInput: BatchAssociateServiceActionWithProvisioningArtifactInput
    BatchAssociateServiceActionWithProvisioningArtifactOutput: BatchAssociateServiceActionWithProvisioningArtifactOutput
    BatchDisassociateServiceActionFromProvisioningArtifactInput: BatchDisassociateServiceActionFromProvisioningArtifactInput
    BatchDisassociateServiceActionFromProvisioningArtifactOutput: BatchDisassociateServiceActionFromProvisioningArtifactOutput
    CopyProductInput: CopyProductInput
    CopyProductOutput: CopyProductOutput
    CreateConstraintInput: CreateConstraintInput
    CreateConstraintOutput: CreateConstraintOutput
    CreatePortfolioInput: CreatePortfolioInput
    CreatePortfolioOutput: CreatePortfolioOutput
    CreatePortfolioShareInput: CreatePortfolioShareInput
    CreatePortfolioShareOutput: CreatePortfolioShareOutput
    CreateProductInput: CreateProductInput
    CreateProductOutput: CreateProductOutput
    CreateProvisionedProductPlanInput: CreateProvisionedProductPlanInput
    CreateProvisionedProductPlanOutput: CreateProvisionedProductPlanOutput
    CreateProvisioningArtifactInput: CreateProvisioningArtifactInput
    CreateProvisioningArtifactOutput: CreateProvisioningArtifactOutput
    CreateServiceActionInput: CreateServiceActionInput
    CreateServiceActionOutput: CreateServiceActionOutput
    CreateTagOptionInput: CreateTagOptionInput
    CreateTagOptionOutput: CreateTagOptionOutput
    DeleteConstraintInput: DeleteConstraintInput
    DeleteConstraintOutput: DeleteConstraintOutput
    DeletePortfolioInput: DeletePortfolioInput
    DeletePortfolioOutput: DeletePortfolioOutput
    DeletePortfolioShareInput: DeletePortfolioShareInput
    DeletePortfolioShareOutput: DeletePortfolioShareOutput
    DeleteProductInput: DeleteProductInput
    DeleteProductOutput: DeleteProductOutput
    DeleteProvisionedProductPlanInput: DeleteProvisionedProductPlanInput
    DeleteProvisionedProductPlanOutput: DeleteProvisionedProductPlanOutput
    DeleteProvisioningArtifactInput: DeleteProvisioningArtifactInput
    DeleteProvisioningArtifactOutput: DeleteProvisioningArtifactOutput
    DeleteServiceActionInput: DeleteServiceActionInput
    DeleteServiceActionOutput: DeleteServiceActionOutput
    DeleteTagOptionInput: DeleteTagOptionInput
    DeleteTagOptionOutput: DeleteTagOptionOutput
    DescribeConstraintInput: DescribeConstraintInput
    DescribeConstraintOutput: DescribeConstraintOutput
    DescribeCopyProductStatusInput: DescribeCopyProductStatusInput
    DescribeCopyProductStatusOutput: DescribeCopyProductStatusOutput
    DescribePortfolioInput: DescribePortfolioInput
    DescribePortfolioOutput: DescribePortfolioOutput
    DescribePortfolioSharesInput: DescribePortfolioSharesInput
    DescribePortfolioSharesOutput: DescribePortfolioSharesOutput
    DescribePortfolioShareStatusInput: DescribePortfolioShareStatusInput
    DescribePortfolioShareStatusOutput: DescribePortfolioShareStatusOutput
    DescribeProductInput: DescribeProductInput
    DescribeProductOutput: DescribeProductOutput
    DescribeProductAsAdminInput: DescribeProductAsAdminInput
    DescribeProductAsAdminOutput: DescribeProductAsAdminOutput
    DescribeProductViewInput: DescribeProductViewInput
    DescribeProductViewOutput: DescribeProductViewOutput
    DescribeProvisionedProductInput: DescribeProvisionedProductInput
    DescribeProvisionedProductOutput: DescribeProvisionedProductOutput
    DescribeProvisionedProductPlanInput: DescribeProvisionedProductPlanInput
    DescribeProvisionedProductPlanOutput: DescribeProvisionedProductPlanOutput
    DescribeProvisioningArtifactInput: DescribeProvisioningArtifactInput
    DescribeProvisioningArtifactOutput: DescribeProvisioningArtifactOutput
    DescribeProvisioningParametersInput: DescribeProvisioningParametersInput
    DescribeProvisioningParametersOutput: DescribeProvisioningParametersOutput
    DescribeRecordInput: DescribeRecordInput
    DescribeRecordOutput: DescribeRecordOutput
    DescribeServiceActionInput: DescribeServiceActionInput
    DescribeServiceActionOutput: DescribeServiceActionOutput
    DescribeServiceActionExecutionParametersInput: DescribeServiceActionExecutionParametersInput
    DescribeServiceActionExecutionParametersOutput: DescribeServiceActionExecutionParametersOutput
    DescribeTagOptionInput: DescribeTagOptionInput
    DescribeTagOptionOutput: DescribeTagOptionOutput
    DisableAWSOrganizationsAccessInput: DisableAWSOrganizationsAccessInput
    DisableAWSOrganizationsAccessOutput: DisableAWSOrganizationsAccessOutput
    DisassociateBudgetFromResourceInput: DisassociateBudgetFromResourceInput
    DisassociateBudgetFromResourceOutput: DisassociateBudgetFromResourceOutput
    DisassociatePrincipalFromPortfolioInput: DisassociatePrincipalFromPortfolioInput
    DisassociatePrincipalFromPortfolioOutput: DisassociatePrincipalFromPortfolioOutput
    DisassociateProductFromPortfolioInput: DisassociateProductFromPortfolioInput
    DisassociateProductFromPortfolioOutput: DisassociateProductFromPortfolioOutput
    DisassociateServiceActionFromProvisioningArtifactInput: DisassociateServiceActionFromProvisioningArtifactInput
    DisassociateServiceActionFromProvisioningArtifactOutput: DisassociateServiceActionFromProvisioningArtifactOutput
    DisassociateTagOptionFromResourceInput: DisassociateTagOptionFromResourceInput
    DisassociateTagOptionFromResourceOutput: DisassociateTagOptionFromResourceOutput
    EnableAWSOrganizationsAccessInput: EnableAWSOrganizationsAccessInput
    EnableAWSOrganizationsAccessOutput: EnableAWSOrganizationsAccessOutput
    ExecuteProvisionedProductPlanInput: ExecuteProvisionedProductPlanInput
    ExecuteProvisionedProductPlanOutput: ExecuteProvisionedProductPlanOutput
    ExecuteProvisionedProductServiceActionInput: ExecuteProvisionedProductServiceActionInput
    ExecuteProvisionedProductServiceActionOutput: ExecuteProvisionedProductServiceActionOutput
    GetAWSOrganizationsAccessStatusInput: GetAWSOrganizationsAccessStatusInput
    GetAWSOrganizationsAccessStatusOutput: GetAWSOrganizationsAccessStatusOutput
    GetProvisionedProductOutputsInput: GetProvisionedProductOutputsInput
    GetProvisionedProductOutputsOutput: GetProvisionedProductOutputsOutput
    ImportAsProvisionedProductInput: ImportAsProvisionedProductInput
    ImportAsProvisionedProductOutput: ImportAsProvisionedProductOutput
    ListAcceptedPortfolioSharesInput: ListAcceptedPortfolioSharesInput
    ListAcceptedPortfolioSharesOutput: ListAcceptedPortfolioSharesOutput
    ListBudgetsForResourceInput: ListBudgetsForResourceInput
    ListBudgetsForResourceOutput: ListBudgetsForResourceOutput
    ListConstraintsForPortfolioInput: ListConstraintsForPortfolioInput
    ListConstraintsForPortfolioOutput: ListConstraintsForPortfolioOutput
    ListLaunchPathsInput: ListLaunchPathsInput
    ListLaunchPathsOutput: ListLaunchPathsOutput
    ListOrganizationPortfolioAccessInput: ListOrganizationPortfolioAccessInput
    ListOrganizationPortfolioAccessOutput: ListOrganizationPortfolioAccessOutput
    ListPortfolioAccessInput: ListPortfolioAccessInput
    ListPortfolioAccessOutput: ListPortfolioAccessOutput
    ListPortfoliosInput: ListPortfoliosInput
    ListPortfoliosOutput: ListPortfoliosOutput
    ListPortfoliosForProductInput: ListPortfoliosForProductInput
    ListPortfoliosForProductOutput: ListPortfoliosForProductOutput
    ListPrincipalsForPortfolioInput: ListPrincipalsForPortfolioInput
    ListPrincipalsForPortfolioOutput: ListPrincipalsForPortfolioOutput
    ListProvisionedProductPlansInput: ListProvisionedProductPlansInput
    ListProvisionedProductPlansOutput: ListProvisionedProductPlansOutput
    ListProvisioningArtifactsInput: ListProvisioningArtifactsInput
    ListProvisioningArtifactsOutput: ListProvisioningArtifactsOutput
    ListProvisioningArtifactsForServiceActionInput: ListProvisioningArtifactsForServiceActionInput
    ListProvisioningArtifactsForServiceActionOutput: ListProvisioningArtifactsForServiceActionOutput
    ListRecordHistoryInput: ListRecordHistoryInput
    ListRecordHistoryOutput: ListRecordHistoryOutput
    ListResourcesForTagOptionInput: ListResourcesForTagOptionInput
    ListResourcesForTagOptionOutput: ListResourcesForTagOptionOutput
    ListServiceActionsInput: ListServiceActionsInput
    ListServiceActionsOutput: ListServiceActionsOutput
    ListServiceActionsForProvisioningArtifactInput: ListServiceActionsForProvisioningArtifactInput
    ListServiceActionsForProvisioningArtifactOutput: ListServiceActionsForProvisioningArtifactOutput
    ListStackInstancesForProvisionedProductInput: ListStackInstancesForProvisionedProductInput
    ListStackInstancesForProvisionedProductOutput: ListStackInstancesForProvisionedProductOutput
    ListTagOptionsInput: ListTagOptionsInput
    ListTagOptionsOutput: ListTagOptionsOutput
    NotifyProvisionProductEngineWorkflowResultInput: NotifyProvisionProductEngineWorkflowResultInput
    NotifyProvisionProductEngineWorkflowResultOutput: NotifyProvisionProductEngineWorkflowResultOutput
    NotifyTerminateProvisionedProductEngineWorkflowResultInput: NotifyTerminateProvisionedProductEngineWorkflowResultInput
    NotifyTerminateProvisionedProductEngineWorkflowResultOutput: NotifyTerminateProvisionedProductEngineWorkflowResultOutput
    NotifyUpdateProvisionedProductEngineWorkflowResultInput: NotifyUpdateProvisionedProductEngineWorkflowResultInput
    NotifyUpdateProvisionedProductEngineWorkflowResultOutput: NotifyUpdateProvisionedProductEngineWorkflowResultOutput
    ProvisionProductInput: ProvisionProductInput
    ProvisionProductOutput: ProvisionProductOutput
    RejectPortfolioShareInput: RejectPortfolioShareInput
    RejectPortfolioShareOutput: RejectPortfolioShareOutput
    ScanProvisionedProductsInput: ScanProvisionedProductsInput
    ScanProvisionedProductsOutput: ScanProvisionedProductsOutput
    SearchProductsInput: SearchProductsInput
    SearchProductsOutput: SearchProductsOutput
    SearchProductsAsAdminInput: SearchProductsAsAdminInput
    SearchProductsAsAdminOutput: SearchProductsAsAdminOutput
    SearchProvisionedProductsInput: SearchProvisionedProductsInput
    SearchProvisionedProductsOutput: SearchProvisionedProductsOutput
    TerminateProvisionedProductInput: TerminateProvisionedProductInput
    TerminateProvisionedProductOutput: TerminateProvisionedProductOutput
    UpdateConstraintInput: UpdateConstraintInput
    UpdateConstraintOutput: UpdateConstraintOutput
    UpdatePortfolioInput: UpdatePortfolioInput
    UpdatePortfolioOutput: UpdatePortfolioOutput
    UpdatePortfolioShareInput: UpdatePortfolioShareInput
    UpdatePortfolioShareOutput: UpdatePortfolioShareOutput
    UpdateProductInput: UpdateProductInput
    UpdateProductOutput: UpdateProductOutput
    UpdateProvisionedProductInput: UpdateProvisionedProductInput
    UpdateProvisionedProductOutput: UpdateProvisionedProductOutput
    UpdateProvisionedProductPropertiesInput: UpdateProvisionedProductPropertiesInput
    UpdateProvisionedProductPropertiesOutput: UpdateProvisionedProductPropertiesOutput
    UpdateProvisioningArtifactInput: UpdateProvisioningArtifactInput
    UpdateProvisioningArtifactOutput: UpdateProvisioningArtifactOutput
    UpdateServiceActionInput: UpdateServiceActionInput
    UpdateServiceActionOutput: UpdateServiceActionOutput
    UpdateTagOptionInput: UpdateTagOptionInput
    UpdateTagOptionOutput: UpdateTagOptionOutput
end

return M
