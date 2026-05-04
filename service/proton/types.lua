local M = {}

M.AcceptEnvironmentAccountConnectionInput = {
    type = "structure",
    id = "AcceptEnvironmentAccountConnectionInput",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EnvironmentAccountConnectionStatus = {
    PENDING = "PENDING",
    CONNECTED = "CONNECTED",
    REJECTED = "REJECTED",
}

M.EnvironmentAccountConnection = {
    type = "structure",
    id = "EnvironmentAccountConnection",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        managementAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        environmentAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        environmentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        requestedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastModifiedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        componentRoleArn = {
            type = "string",
        },
        codebuildRoleArn = {
            type = "string",
        },
    },
}

M.AcceptEnvironmentAccountConnectionOutput = {
    type = "structure",
    id = "AcceptEnvironmentAccountConnectionOutput",
    members = {
        environmentAccountConnection = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EnvironmentAccountConnection }),
    },
}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ConflictException = {
    type = "structure",
    id = "ConflictException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InternalServerException = {
    type = "structure",
    id = "InternalServerException",
    error = "server",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    id = "ThrottlingException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RepositoryProvider = {
    GITHUB = "GITHUB",
    GITHUB_ENTERPRISE = "GITHUB_ENTERPRISE",
    BITBUCKET = "BITBUCKET",
}

M.RepositoryBranch = {
    type = "structure",
    id = "RepositoryBranch",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        provider = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        branch = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AccountSettings = {
    type = "structure",
    id = "AccountSettings",
    members = {
        pipelineServiceRoleArn = {
            type = "string",
        },
        pipelineProvisioningRepository = M.RepositoryBranch,
        pipelineCodebuildRoleArn = {
            type = "string",
        },
    },
}

M.GetAccountSettingsInput = {
    type = "structure",
    id = "GetAccountSettingsInput",
}

M.GetAccountSettingsOutput = {
    type = "structure",
    id = "GetAccountSettingsOutput",
    members = {
        accountSettings = M.AccountSettings,
    },
}

M.RepositoryBranchInput = {
    type = "structure",
    id = "RepositoryBranchInput",
    members = {
        provider = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        branch = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateAccountSettingsInput = {
    type = "structure",
    id = "UpdateAccountSettingsInput",
    members = {
        pipelineServiceRoleArn = {
            type = "string",
        },
        pipelineProvisioningRepository = M.RepositoryBranchInput,
        deletePipelineProvisioningRepository = {
            type = "boolean",
        },
        pipelineCodebuildRoleArn = {
            type = "string",
        },
    },
}

M.UpdateAccountSettingsOutput = {
    type = "structure",
    id = "UpdateAccountSettingsOutput",
    members = {
        accountSettings = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AccountSettings }),
    },
}

M.CancelComponentDeploymentInput = {
    type = "structure",
    id = "CancelComponentDeploymentInput",
    members = {
        componentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeploymentStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    FAILED = "FAILED",
    SUCCEEDED = "SUCCEEDED",
    DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS",
    DELETE_FAILED = "DELETE_FAILED",
    DELETE_COMPLETE = "DELETE_COMPLETE",
    CANCELLING = "CANCELLING",
    CANCELLED = "CANCELLED",
}

M.Component = {
    type = "structure",
    id = "Component",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        environmentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        serviceName = {
            type = "string",
        },
        serviceInstanceName = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastModifiedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastDeploymentAttemptedAt = {
            type = "timestamp",
        },
        lastDeploymentSucceededAt = {
            type = "timestamp",
        },
        deploymentStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        deploymentStatusMessage = {
            type = "string",
        },
        serviceSpec = {
            type = "string",
            traits = {
                media_type = "application/yaml",
            },
        },
        lastClientRequestToken = {
            type = "string",
        },
        lastAttemptedDeploymentId = {
            type = "string",
        },
        lastSucceededDeploymentId = {
            type = "string",
        },
    },
}

M.CancelComponentDeploymentOutput = {
    type = "structure",
    id = "CancelComponentDeploymentOutput",
    members = {
        component = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Component }),
    },
}

M.CancelEnvironmentDeploymentInput = {
    type = "structure",
    id = "CancelEnvironmentDeploymentInput",
    members = {
        environmentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Provisioning = {
    CUSTOMER_MANAGED = "CUSTOMER_MANAGED",
}

M.Environment = {
    type = "structure",
    id = "Environment",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastDeploymentAttemptedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastDeploymentSucceededAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        templateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        templateMajorVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        templateMinorVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        deploymentStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        deploymentStatusMessage = {
            type = "string",
        },
        protonServiceRoleArn = {
            type = "string",
        },
        environmentAccountConnectionId = {
            type = "string",
        },
        environmentAccountId = {
            type = "string",
        },
        spec = {
            type = "string",
            traits = {
                media_type = "application/yaml",
            },
        },
        provisioning = {
            type = "string",
        },
        provisioningRepository = M.RepositoryBranch,
        componentRoleArn = {
            type = "string",
        },
        codebuildRoleArn = {
            type = "string",
        },
        lastAttemptedDeploymentId = {
            type = "string",
        },
        lastSucceededDeploymentId = {
            type = "string",
        },
    },
}

M.CancelEnvironmentDeploymentOutput = {
    type = "structure",
    id = "CancelEnvironmentDeploymentOutput",
    members = {
        environment = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Environment }),
    },
}

M.CancelServiceInstanceDeploymentInput = {
    type = "structure",
    id = "CancelServiceInstanceDeploymentInput",
    members = {
        serviceInstanceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        serviceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ServiceInstance = {
    type = "structure",
    id = "ServiceInstance",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastDeploymentAttemptedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastDeploymentSucceededAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        serviceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        environmentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        templateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        templateMajorVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        templateMinorVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        deploymentStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        deploymentStatusMessage = {
            type = "string",
        },
        spec = {
            type = "string",
            traits = {
                media_type = "application/yaml",
            },
        },
        lastClientRequestToken = {
            type = "string",
        },
        lastAttemptedDeploymentId = {
            type = "string",
        },
        lastSucceededDeploymentId = {
            type = "string",
        },
    },
}

M.CancelServiceInstanceDeploymentOutput = {
    type = "structure",
    id = "CancelServiceInstanceDeploymentOutput",
    members = {
        serviceInstance = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ServiceInstance }),
    },
}

M.CancelServicePipelineDeploymentInput = {
    type = "structure",
    id = "CancelServicePipelineDeploymentInput",
    members = {
        serviceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ServicePipeline = {
    type = "structure",
    id = "ServicePipeline",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastDeploymentAttemptedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastDeploymentSucceededAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        templateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        templateMajorVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        templateMinorVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        deploymentStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        deploymentStatusMessage = {
            type = "string",
        },
        spec = {
            type = "string",
            traits = {
                media_type = "application/yaml",
            },
        },
        lastAttemptedDeploymentId = {
            type = "string",
        },
        lastSucceededDeploymentId = {
            type = "string",
        },
    },
}

M.CancelServicePipelineDeploymentOutput = {
    type = "structure",
    id = "CancelServicePipelineDeploymentOutput",
    members = {
        pipeline = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ServicePipeline }),
    },
}

M.ListComponentOutputsInput = {
    type = "structure",
    id = "ListComponentOutputsInput",
    members = {
        componentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
        deploymentId = {
            type = "string",
        },
    },
}

M.Output = {
    type = "structure",
    id = "Output",
    members = {
        key = {
            type = "string",
        },
        valueString = {
            type = "string",
        },
    },
}

M.ListComponentOutputsOutput = {
    type = "structure",
    id = "ListComponentOutputsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        outputs = {
            type = "list",
            member = M.Output,
            traits = {
                required = true,
            },
        },
    },
}

M.ListComponentProvisionedResourcesInput = {
    type = "structure",
    id = "ListComponentProvisionedResourcesInput",
    members = {
        componentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ProvisionedResourceEngine = {
    CLOUDFORMATION = "CLOUDFORMATION",
    TERRAFORM = "TERRAFORM",
}

M.ProvisionedResource = {
    type = "structure",
    id = "ProvisionedResource",
    members = {
        name = {
            type = "string",
        },
        identifier = {
            type = "string",
        },
        provisioningEngine = {
            type = "string",
        },
    },
}

M.ListComponentProvisionedResourcesOutput = {
    type = "structure",
    id = "ListComponentProvisionedResourcesOutput",
    members = {
        nextToken = {
            type = "string",
        },
        provisionedResources = {
            type = "list",
            member = M.ProvisionedResource,
            traits = {
                required = true,
            },
        },
    },
}

M.Tag = {
    type = "structure",
    id = "Tag",
    members = {
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateComponentInput = {
    type = "structure",
    id = "CreateComponentInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        serviceName = {
            type = "string",
        },
        serviceInstanceName = {
            type = "string",
        },
        environmentName = {
            type = "string",
        },
        templateFile = {
            type = "string",
            traits = {
                media_type = "application/yaml",
                required = true,
            },
        },
        manifest = {
            type = "string",
            traits = {
                media_type = "application/yaml",
                required = true,
            },
        },
        serviceSpec = {
            type = "string",
            traits = {
                media_type = "application/yaml",
            },
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.CreateComponentOutput = {
    type = "structure",
    id = "CreateComponentOutput",
    members = {
        component = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Component }),
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    id = "ServiceQuotaExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteComponentInput = {
    type = "structure",
    id = "DeleteComponentInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteComponentOutput = {
    type = "structure",
    id = "DeleteComponentOutput",
    members = {
        component = M.Component,
    },
}

M.GetComponentInput = {
    type = "structure",
    id = "GetComponentInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetComponentOutput = {
    type = "structure",
    id = "GetComponentOutput",
    members = {
        component = M.Component,
    },
}

M.ListComponentsInput = {
    type = "structure",
    id = "ListComponentsInput",
    members = {
        nextToken = {
            type = "string",
        },
        environmentName = {
            type = "string",
        },
        serviceName = {
            type = "string",
        },
        serviceInstanceName = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.ComponentSummary = {
    type = "structure",
    id = "ComponentSummary",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        environmentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        serviceName = {
            type = "string",
        },
        serviceInstanceName = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastModifiedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastDeploymentAttemptedAt = {
            type = "timestamp",
        },
        lastDeploymentSucceededAt = {
            type = "timestamp",
        },
        deploymentStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        deploymentStatusMessage = {
            type = "string",
        },
        lastAttemptedDeploymentId = {
            type = "string",
        },
        lastSucceededDeploymentId = {
            type = "string",
        },
    },
}

M.ListComponentsOutput = {
    type = "structure",
    id = "ListComponentsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        components = {
            type = "list",
            member = M.ComponentSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.ComponentDeploymentUpdateType = {
    NONE = "NONE",
    CURRENT_VERSION = "CURRENT_VERSION",
}

M.UpdateComponentInput = {
    type = "structure",
    id = "UpdateComponentInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        deploymentType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        serviceName = {
            type = "string",
        },
        serviceInstanceName = {
            type = "string",
        },
        serviceSpec = {
            type = "string",
            traits = {
                media_type = "application/yaml",
            },
        },
        templateFile = {
            type = "string",
            traits = {
                media_type = "application/yaml",
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.UpdateComponentOutput = {
    type = "structure",
    id = "UpdateComponentOutput",
    members = {
        component = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Component }),
    },
}

M.DeleteDeploymentInput = {
    type = "structure",
    id = "DeleteDeploymentInput",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ComponentState = {
    type = "structure",
    id = "ComponentState",
    members = {
        serviceName = {
            type = "string",
        },
        serviceInstanceName = {
            type = "string",
        },
        serviceSpec = {
            type = "string",
            traits = {
                media_type = "application/yaml",
            },
        },
        templateFile = {
            type = "string",
            traits = {
                media_type = "application/yaml",
            },
        },
    },
}

M.EnvironmentState = {
    type = "structure",
    id = "EnvironmentState",
    members = {
        spec = {
            type = "string",
            traits = {
                media_type = "application/yaml",
            },
        },
        templateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        templateMajorVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        templateMinorVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ServiceInstanceState = {
    type = "structure",
    id = "ServiceInstanceState",
    members = {
        spec = {
            type = "string",
            traits = {
                media_type = "application/yaml",
                required = true,
            },
        },
        templateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        templateMajorVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        templateMinorVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        lastSuccessfulComponentDeploymentIds = {
            type = "list",
            member = { type = "string" },
        },
        lastSuccessfulEnvironmentDeploymentId = {
            type = "string",
        },
        lastSuccessfulServicePipelineDeploymentId = {
            type = "string",
        },
    },
}

M.ServicePipelineState = {
    type = "structure",
    id = "ServicePipelineState",
    members = {
        spec = {
            type = "string",
            traits = {
                media_type = "application/yaml",
            },
        },
        templateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        templateMajorVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        templateMinorVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeploymentState = {
    type = "union",
    id = "DeploymentState",
    members = {
        serviceInstance = M.ServiceInstanceState,
        environment = M.EnvironmentState,
        servicePipeline = M.ServicePipelineState,
        component = M.ComponentState,
    },
}

M.DeploymentTargetResourceType = {
    ENVIRONMENT = "ENVIRONMENT",
    SERVICE_PIPELINE = "SERVICE_PIPELINE",
    SERVICE_INSTANCE = "SERVICE_INSTANCE",
    COMPONENT = "COMPONENT",
}

M.Deployment = {
    type = "structure",
    id = "Deployment",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        targetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        targetResourceCreatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        targetResourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        environmentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        serviceName = {
            type = "string",
        },
        serviceInstanceName = {
            type = "string",
        },
        componentName = {
            type = "string",
        },
        deploymentStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        deploymentStatusMessage = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastModifiedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        completedAt = {
            type = "timestamp",
        },
        lastAttemptedDeploymentId = {
            type = "string",
        },
        lastSucceededDeploymentId = {
            type = "string",
        },
        initialState = M.DeploymentState,
        targetState = M.DeploymentState,
    },
}

M.DeleteDeploymentOutput = {
    type = "structure",
    id = "DeleteDeploymentOutput",
    members = {
        deployment = M.Deployment,
    },
}

M.GetDeploymentInput = {
    type = "structure",
    id = "GetDeploymentInput",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        environmentName = {
            type = "string",
        },
        serviceName = {
            type = "string",
        },
        serviceInstanceName = {
            type = "string",
        },
        componentName = {
            type = "string",
        },
    },
}

M.GetDeploymentOutput = {
    type = "structure",
    id = "GetDeploymentOutput",
    members = {
        deployment = M.Deployment,
    },
}

M.ListDeploymentsInput = {
    type = "structure",
    id = "ListDeploymentsInput",
    members = {
        nextToken = {
            type = "string",
        },
        environmentName = {
            type = "string",
        },
        serviceName = {
            type = "string",
        },
        serviceInstanceName = {
            type = "string",
        },
        componentName = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.DeploymentSummary = {
    type = "structure",
    id = "DeploymentSummary",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        targetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        targetResourceCreatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        targetResourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastModifiedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        completedAt = {
            type = "timestamp",
        },
        environmentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        serviceName = {
            type = "string",
        },
        serviceInstanceName = {
            type = "string",
        },
        componentName = {
            type = "string",
        },
        lastAttemptedDeploymentId = {
            type = "string",
        },
        lastSucceededDeploymentId = {
            type = "string",
        },
        deploymentStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListDeploymentsOutput = {
    type = "structure",
    id = "ListDeploymentsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        deployments = {
            type = "list",
            member = M.DeploymentSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.CreateEnvironmentAccountConnectionInput = {
    type = "structure",
    id = "CreateEnvironmentAccountConnectionInput",
    members = {
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        managementAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        roleArn = {
            type = "string",
        },
        environmentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        componentRoleArn = {
            type = "string",
        },
        codebuildRoleArn = {
            type = "string",
        },
    },
}

M.CreateEnvironmentAccountConnectionOutput = {
    type = "structure",
    id = "CreateEnvironmentAccountConnectionOutput",
    members = {
        environmentAccountConnection = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EnvironmentAccountConnection }),
    },
}

M.DeleteEnvironmentAccountConnectionInput = {
    type = "structure",
    id = "DeleteEnvironmentAccountConnectionInput",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteEnvironmentAccountConnectionOutput = {
    type = "structure",
    id = "DeleteEnvironmentAccountConnectionOutput",
    members = {
        environmentAccountConnection = M.EnvironmentAccountConnection,
    },
}

M.GetEnvironmentAccountConnectionInput = {
    type = "structure",
    id = "GetEnvironmentAccountConnectionInput",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetEnvironmentAccountConnectionOutput = {
    type = "structure",
    id = "GetEnvironmentAccountConnectionOutput",
    members = {
        environmentAccountConnection = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EnvironmentAccountConnection }),
    },
}

M.EnvironmentAccountConnectionRequesterAccountType = {
    MANAGEMENT_ACCOUNT = "MANAGEMENT_ACCOUNT",
    ENVIRONMENT_ACCOUNT = "ENVIRONMENT_ACCOUNT",
}

M.ListEnvironmentAccountConnectionsInput = {
    type = "structure",
    id = "ListEnvironmentAccountConnectionsInput",
    members = {
        requestedBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        environmentName = {
            type = "string",
        },
        statuses = {
            type = "list",
            member = { type = "string" },
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.EnvironmentAccountConnectionSummary = {
    type = "structure",
    id = "EnvironmentAccountConnectionSummary",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        managementAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        environmentAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        environmentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        requestedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastModifiedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        componentRoleArn = {
            type = "string",
        },
    },
}

M.ListEnvironmentAccountConnectionsOutput = {
    type = "structure",
    id = "ListEnvironmentAccountConnectionsOutput",
    members = {
        environmentAccountConnections = {
            type = "list",
            member = M.EnvironmentAccountConnectionSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.RejectEnvironmentAccountConnectionInput = {
    type = "structure",
    id = "RejectEnvironmentAccountConnectionInput",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RejectEnvironmentAccountConnectionOutput = {
    type = "structure",
    id = "RejectEnvironmentAccountConnectionOutput",
    members = {
        environmentAccountConnection = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EnvironmentAccountConnection }),
    },
}

M.UpdateEnvironmentAccountConnectionInput = {
    type = "structure",
    id = "UpdateEnvironmentAccountConnectionInput",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        roleArn = {
            type = "string",
        },
        componentRoleArn = {
            type = "string",
        },
        codebuildRoleArn = {
            type = "string",
        },
    },
}

M.UpdateEnvironmentAccountConnectionOutput = {
    type = "structure",
    id = "UpdateEnvironmentAccountConnectionOutput",
    members = {
        environmentAccountConnection = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EnvironmentAccountConnection }),
    },
}

M.ListEnvironmentOutputsInput = {
    type = "structure",
    id = "ListEnvironmentOutputsInput",
    members = {
        environmentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
        deploymentId = {
            type = "string",
        },
    },
}

M.ListEnvironmentOutputsOutput = {
    type = "structure",
    id = "ListEnvironmentOutputsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        outputs = {
            type = "list",
            member = M.Output,
            traits = {
                required = true,
            },
        },
    },
}

M.ListEnvironmentProvisionedResourcesInput = {
    type = "structure",
    id = "ListEnvironmentProvisionedResourcesInput",
    members = {
        environmentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListEnvironmentProvisionedResourcesOutput = {
    type = "structure",
    id = "ListEnvironmentProvisionedResourcesOutput",
    members = {
        nextToken = {
            type = "string",
        },
        provisionedResources = {
            type = "list",
            member = M.ProvisionedResource,
            traits = {
                required = true,
            },
        },
    },
}

M.CreateEnvironmentInput = {
    type = "structure",
    id = "CreateEnvironmentInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        templateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        templateMajorVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        templateMinorVersion = {
            type = "string",
        },
        description = {
            type = "string",
        },
        spec = {
            type = "string",
            traits = {
                media_type = "application/yaml",
                required = true,
            },
        },
        protonServiceRoleArn = {
            type = "string",
        },
        environmentAccountConnectionId = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        provisioningRepository = M.RepositoryBranchInput,
        componentRoleArn = {
            type = "string",
        },
        codebuildRoleArn = {
            type = "string",
        },
    },
}

M.CreateEnvironmentOutput = {
    type = "structure",
    id = "CreateEnvironmentOutput",
    members = {
        environment = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Environment }),
    },
}

M.DeleteEnvironmentInput = {
    type = "structure",
    id = "DeleteEnvironmentInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteEnvironmentOutput = {
    type = "structure",
    id = "DeleteEnvironmentOutput",
    members = {
        environment = M.Environment,
    },
}

M.GetEnvironmentInput = {
    type = "structure",
    id = "GetEnvironmentInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetEnvironmentOutput = {
    type = "structure",
    id = "GetEnvironmentOutput",
    members = {
        environment = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Environment }),
    },
}

M.EnvironmentTemplateFilter = {
    type = "structure",
    id = "EnvironmentTemplateFilter",
    members = {
        templateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        majorVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListEnvironmentsInput = {
    type = "structure",
    id = "ListEnvironmentsInput",
    members = {
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
        environmentTemplates = {
            type = "list",
            member = M.EnvironmentTemplateFilter,
        },
    },
}

M.EnvironmentSummary = {
    type = "structure",
    id = "EnvironmentSummary",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastDeploymentAttemptedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastDeploymentSucceededAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        templateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        templateMajorVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        templateMinorVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        deploymentStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        deploymentStatusMessage = {
            type = "string",
        },
        protonServiceRoleArn = {
            type = "string",
        },
        environmentAccountConnectionId = {
            type = "string",
        },
        environmentAccountId = {
            type = "string",
        },
        provisioning = {
            type = "string",
        },
        componentRoleArn = {
            type = "string",
        },
        lastAttemptedDeploymentId = {
            type = "string",
        },
        lastSucceededDeploymentId = {
            type = "string",
        },
    },
}

M.ListEnvironmentsOutput = {
    type = "structure",
    id = "ListEnvironmentsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        environments = {
            type = "list",
            member = M.EnvironmentSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.DeploymentUpdateType = {
    NONE = "NONE",
    CURRENT_VERSION = "CURRENT_VERSION",
    MINOR_VERSION = "MINOR_VERSION",
    MAJOR_VERSION = "MAJOR_VERSION",
}

M.UpdateEnvironmentInput = {
    type = "structure",
    id = "UpdateEnvironmentInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        spec = {
            type = "string",
            traits = {
                media_type = "application/yaml",
            },
        },
        templateMajorVersion = {
            type = "string",
        },
        templateMinorVersion = {
            type = "string",
        },
        protonServiceRoleArn = {
            type = "string",
        },
        deploymentType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        environmentAccountConnectionId = {
            type = "string",
        },
        provisioningRepository = M.RepositoryBranchInput,
        componentRoleArn = {
            type = "string",
        },
        codebuildRoleArn = {
            type = "string",
        },
    },
}

M.UpdateEnvironmentOutput = {
    type = "structure",
    id = "UpdateEnvironmentOutput",
    members = {
        environment = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Environment }),
    },
}

M.CreateEnvironmentTemplateInput = {
    type = "structure",
    id = "CreateEnvironmentTemplateInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        displayName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        encryptionKey = {
            type = "string",
        },
        provisioning = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.EnvironmentTemplate = {
    type = "structure",
    id = "EnvironmentTemplate",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastModifiedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        displayName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        recommendedVersion = {
            type = "string",
        },
        encryptionKey = {
            type = "string",
        },
        provisioning = {
            type = "string",
        },
    },
}

M.CreateEnvironmentTemplateOutput = {
    type = "structure",
    id = "CreateEnvironmentTemplateOutput",
    members = {
        environmentTemplate = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EnvironmentTemplate }),
    },
}

M.DeleteEnvironmentTemplateInput = {
    type = "structure",
    id = "DeleteEnvironmentTemplateInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteEnvironmentTemplateOutput = {
    type = "structure",
    id = "DeleteEnvironmentTemplateOutput",
    members = {
        environmentTemplate = M.EnvironmentTemplate,
    },
}

M.GetEnvironmentTemplateInput = {
    type = "structure",
    id = "GetEnvironmentTemplateInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetEnvironmentTemplateOutput = {
    type = "structure",
    id = "GetEnvironmentTemplateOutput",
    members = {
        environmentTemplate = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EnvironmentTemplate }),
    },
}

M.ListEnvironmentTemplatesInput = {
    type = "structure",
    id = "ListEnvironmentTemplatesInput",
    members = {
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.EnvironmentTemplateSummary = {
    type = "structure",
    id = "EnvironmentTemplateSummary",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastModifiedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        displayName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        recommendedVersion = {
            type = "string",
        },
        provisioning = {
            type = "string",
        },
    },
}

M.ListEnvironmentTemplatesOutput = {
    type = "structure",
    id = "ListEnvironmentTemplatesOutput",
    members = {
        nextToken = {
            type = "string",
        },
        templates = {
            type = "list",
            member = M.EnvironmentTemplateSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateEnvironmentTemplateInput = {
    type = "structure",
    id = "UpdateEnvironmentTemplateInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        displayName = {
            type = "string",
        },
        description = {
            type = "string",
        },
    },
}

M.UpdateEnvironmentTemplateOutput = {
    type = "structure",
    id = "UpdateEnvironmentTemplateOutput",
    members = {
        environmentTemplate = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EnvironmentTemplate }),
    },
}

M.S3ObjectSource = {
    type = "structure",
    id = "S3ObjectSource",
    members = {
        bucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TemplateVersionSourceInput = {
    type = "union",
    id = "TemplateVersionSourceInput",
    members = {
        s3 = M.S3ObjectSource,
    },
}

M.CreateEnvironmentTemplateVersionInput = {
    type = "structure",
    id = "CreateEnvironmentTemplateVersionInput",
    members = {
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        templateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        majorVersion = {
            type = "string",
        },
        source = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TemplateVersionSourceInput }),
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.TemplateVersionStatus = {
    REGISTRATION_IN_PROGRESS = "REGISTRATION_IN_PROGRESS",
    REGISTRATION_FAILED = "REGISTRATION_FAILED",
    DRAFT = "DRAFT",
    PUBLISHED = "PUBLISHED",
}

M.EnvironmentTemplateVersion = {
    type = "structure",
    id = "EnvironmentTemplateVersion",
    members = {
        templateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        majorVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        minorVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        recommendedMinorVersion = {
            type = "string",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusMessage = {
            type = "string",
        },
        description = {
            type = "string",
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastModifiedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        schema = {
            type = "string",
            traits = {
                media_type = "application/yaml",
            },
        },
    },
}

M.CreateEnvironmentTemplateVersionOutput = {
    type = "structure",
    id = "CreateEnvironmentTemplateVersionOutput",
    members = {
        environmentTemplateVersion = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EnvironmentTemplateVersion }),
    },
}

M.DeleteEnvironmentTemplateVersionInput = {
    type = "structure",
    id = "DeleteEnvironmentTemplateVersionInput",
    members = {
        templateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        majorVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        minorVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteEnvironmentTemplateVersionOutput = {
    type = "structure",
    id = "DeleteEnvironmentTemplateVersionOutput",
    members = {
        environmentTemplateVersion = M.EnvironmentTemplateVersion,
    },
}

M.GetEnvironmentTemplateVersionInput = {
    type = "structure",
    id = "GetEnvironmentTemplateVersionInput",
    members = {
        templateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        majorVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        minorVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetEnvironmentTemplateVersionOutput = {
    type = "structure",
    id = "GetEnvironmentTemplateVersionOutput",
    members = {
        environmentTemplateVersion = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EnvironmentTemplateVersion }),
    },
}

M.ListEnvironmentTemplateVersionsInput = {
    type = "structure",
    id = "ListEnvironmentTemplateVersionsInput",
    members = {
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
        templateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        majorVersion = {
            type = "string",
        },
    },
}

M.EnvironmentTemplateVersionSummary = {
    type = "structure",
    id = "EnvironmentTemplateVersionSummary",
    members = {
        templateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        majorVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        minorVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        recommendedMinorVersion = {
            type = "string",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusMessage = {
            type = "string",
        },
        description = {
            type = "string",
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastModifiedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListEnvironmentTemplateVersionsOutput = {
    type = "structure",
    id = "ListEnvironmentTemplateVersionsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        templateVersions = {
            type = "list",
            member = M.EnvironmentTemplateVersionSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateEnvironmentTemplateVersionInput = {
    type = "structure",
    id = "UpdateEnvironmentTemplateVersionInput",
    members = {
        templateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        majorVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        minorVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        status = {
            type = "string",
        },
    },
}

M.UpdateEnvironmentTemplateVersionOutput = {
    type = "structure",
    id = "UpdateEnvironmentTemplateVersionOutput",
    members = {
        environmentTemplateVersion = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EnvironmentTemplateVersion }),
    },
}

M.SyncType = {
    TEMPLATE_SYNC = "TEMPLATE_SYNC",
    SERVICE_SYNC = "SERVICE_SYNC",
}

M.GetRepositorySyncStatusInput = {
    type = "structure",
    id = "GetRepositorySyncStatusInput",
    members = {
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        repositoryProvider = {
            type = "string",
            traits = {
                required = true,
            },
        },
        branch = {
            type = "string",
            traits = {
                required = true,
            },
        },
        syncType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RepositorySyncEvent = {
    type = "structure",
    id = "RepositorySyncEvent",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        externalId = {
            type = "string",
        },
        time = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        event = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RepositorySyncStatus = {
    INITIATED = "INITIATED",
    IN_PROGRESS = "IN_PROGRESS",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
    QUEUED = "QUEUED",
}

M.RepositorySyncAttempt = {
    type = "structure",
    id = "RepositorySyncAttempt",
    members = {
        startedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        events = {
            type = "list",
            member = M.RepositorySyncEvent,
            traits = {
                required = true,
            },
        },
    },
}

M.GetRepositorySyncStatusOutput = {
    type = "structure",
    id = "GetRepositorySyncStatusOutput",
    members = {
        latestSync = M.RepositorySyncAttempt,
    },
}

M.GetResourcesSummaryInput = {
    type = "structure",
    id = "GetResourcesSummaryInput",
}

M.ResourceCountsSummary = {
    type = "structure",
    id = "ResourceCountsSummary",
    members = {
        total = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        failed = {
            type = "integer",
        },
        upToDate = {
            type = "integer",
        },
        behindMajor = {
            type = "integer",
        },
        behindMinor = {
            type = "integer",
        },
    },
}

M.CountsSummary = {
    type = "structure",
    id = "CountsSummary",
    members = {
        components = M.ResourceCountsSummary,
        environments = M.ResourceCountsSummary,
        environmentTemplates = M.ResourceCountsSummary,
        serviceInstances = M.ResourceCountsSummary,
        services = M.ResourceCountsSummary,
        serviceTemplates = M.ResourceCountsSummary,
        pipelines = M.ResourceCountsSummary,
    },
}

M.GetResourcesSummaryOutput = {
    type = "structure",
    id = "GetResourcesSummaryOutput",
    members = {
        counts = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CountsSummary }),
    },
}

M.GetServiceInstanceSyncStatusInput = {
    type = "structure",
    id = "GetServiceInstanceSyncStatusInput",
    members = {
        serviceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        serviceInstanceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Revision = {
    type = "structure",
    id = "Revision",
    members = {
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        repositoryProvider = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sha = {
            type = "string",
            traits = {
                required = true,
            },
        },
        directory = {
            type = "string",
            traits = {
                required = true,
            },
        },
        branch = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceSyncEvent = {
    type = "structure",
    id = "ResourceSyncEvent",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        externalId = {
            type = "string",
        },
        time = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        event = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceSyncStatus = {
    INITIATED = "INITIATED",
    IN_PROGRESS = "IN_PROGRESS",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
}

M.ResourceSyncAttempt = {
    type = "structure",
    id = "ResourceSyncAttempt",
    members = {
        initialRevision = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Revision }),
        targetRevision = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Revision }),
        target = {
            type = "string",
            traits = {
                required = true,
            },
        },
        startedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        events = {
            type = "list",
            member = M.ResourceSyncEvent,
            traits = {
                required = true,
            },
        },
    },
}

M.GetServiceInstanceSyncStatusOutput = {
    type = "structure",
    id = "GetServiceInstanceSyncStatusOutput",
    members = {
        latestSync = M.ResourceSyncAttempt,
        latestSuccessfulSync = M.ResourceSyncAttempt,
        desiredState = M.Revision,
    },
}

M.TemplateType = {
    ENVIRONMENT = "ENVIRONMENT",
    SERVICE = "SERVICE",
}

M.GetTemplateSyncStatusInput = {
    type = "structure",
    id = "GetTemplateSyncStatusInput",
    members = {
        templateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        templateType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        templateVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetTemplateSyncStatusOutput = {
    type = "structure",
    id = "GetTemplateSyncStatusOutput",
    members = {
        latestSync = M.ResourceSyncAttempt,
        latestSuccessfulSync = M.ResourceSyncAttempt,
        desiredState = M.Revision,
    },
}

M.ListRepositorySyncDefinitionsInput = {
    type = "structure",
    id = "ListRepositorySyncDefinitionsInput",
    members = {
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        repositoryProvider = {
            type = "string",
            traits = {
                required = true,
            },
        },
        syncType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.RepositorySyncDefinition = {
    type = "structure",
    id = "RepositorySyncDefinition",
    members = {
        target = {
            type = "string",
            traits = {
                required = true,
            },
        },
        parent = {
            type = "string",
            traits = {
                required = true,
            },
        },
        branch = {
            type = "string",
            traits = {
                required = true,
            },
        },
        directory = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListRepositorySyncDefinitionsOutput = {
    type = "structure",
    id = "ListRepositorySyncDefinitionsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        syncDefinitions = {
            type = "list",
            member = M.RepositorySyncDefinition,
            traits = {
                required = true,
            },
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    id = "ListTagsForResourceInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_query = "resourceArn",
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    id = "ListTagsForResourceOutput",
    members = {
        tags = {
            type = "list",
            member = M.Tag,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ResourceDeploymentStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    FAILED = "FAILED",
    SUCCEEDED = "SUCCEEDED",
}

M.NotifyResourceDeploymentStatusChangeInput = {
    type = "structure",
    id = "NotifyResourceDeploymentStatusChangeInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
        },
        outputs = {
            type = "list",
            member = M.Output,
        },
        deploymentId = {
            type = "string",
        },
        statusMessage = {
            type = "string",
        },
    },
}

M.NotifyResourceDeploymentStatusChangeOutput = {
    type = "structure",
    id = "NotifyResourceDeploymentStatusChangeOutput",
}

M.CreateRepositoryInput = {
    type = "structure",
    id = "CreateRepositoryInput",
    members = {
        provider = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        connectionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        encryptionKey = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.Repository = {
    type = "structure",
    id = "Repository",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        provider = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        connectionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        encryptionKey = {
            type = "string",
        },
    },
}

M.CreateRepositoryOutput = {
    type = "structure",
    id = "CreateRepositoryOutput",
    members = {
        repository = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Repository }),
    },
}

M.DeleteRepositoryInput = {
    type = "structure",
    id = "DeleteRepositoryInput",
    members = {
        provider = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteRepositoryOutput = {
    type = "structure",
    id = "DeleteRepositoryOutput",
    members = {
        repository = M.Repository,
    },
}

M.GetRepositoryInput = {
    type = "structure",
    id = "GetRepositoryInput",
    members = {
        provider = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetRepositoryOutput = {
    type = "structure",
    id = "GetRepositoryOutput",
    members = {
        repository = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Repository }),
    },
}

M.ListRepositoriesInput = {
    type = "structure",
    id = "ListRepositoriesInput",
    members = {
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.RepositorySummary = {
    type = "structure",
    id = "RepositorySummary",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        provider = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        connectionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListRepositoriesOutput = {
    type = "structure",
    id = "ListRepositoriesOutput",
    members = {
        nextToken = {
            type = "string",
        },
        repositories = {
            type = "list",
            member = M.RepositorySummary,
            traits = {
                required = true,
            },
        },
    },
}

M.ListServiceInstanceOutputsInput = {
    type = "structure",
    id = "ListServiceInstanceOutputsInput",
    members = {
        serviceInstanceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        serviceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
        deploymentId = {
            type = "string",
        },
    },
}

M.ListServiceInstanceOutputsOutput = {
    type = "structure",
    id = "ListServiceInstanceOutputsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        outputs = {
            type = "list",
            member = M.Output,
            traits = {
                required = true,
            },
        },
    },
}

M.ListServiceInstanceProvisionedResourcesInput = {
    type = "structure",
    id = "ListServiceInstanceProvisionedResourcesInput",
    members = {
        serviceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        serviceInstanceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListServiceInstanceProvisionedResourcesOutput = {
    type = "structure",
    id = "ListServiceInstanceProvisionedResourcesOutput",
    members = {
        nextToken = {
            type = "string",
        },
        provisionedResources = {
            type = "list",
            member = M.ProvisionedResource,
            traits = {
                required = true,
            },
        },
    },
}

M.CreateServiceInstanceInput = {
    type = "structure",
    id = "CreateServiceInstanceInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        serviceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        spec = {
            type = "string",
            traits = {
                media_type = "application/yaml",
                required = true,
            },
        },
        templateMajorVersion = {
            type = "string",
        },
        templateMinorVersion = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.CreateServiceInstanceOutput = {
    type = "structure",
    id = "CreateServiceInstanceOutput",
    members = {
        serviceInstance = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ServiceInstance }),
    },
}

M.GetServiceInstanceInput = {
    type = "structure",
    id = "GetServiceInstanceInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        serviceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetServiceInstanceOutput = {
    type = "structure",
    id = "GetServiceInstanceOutput",
    members = {
        serviceInstance = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ServiceInstance }),
    },
}

M.ListServiceInstancesFilterBy = {
    NAME = "name",
    DEPLOYMENT_STATUS = "deploymentStatus",
    TEMPLATE_NAME = "templateName",
    SERVICE_NAME = "serviceName",
    DEPLOYED_TEMPLATE_VERSION_STATUS = "deployedTemplateVersionStatus",
    ENVIRONMENT_NAME = "environmentName",
    LAST_DEPLOYMENT_ATTEMPTED_AT_BEFORE = "lastDeploymentAttemptedAtBefore",
    LAST_DEPLOYMENT_ATTEMPTED_AT_AFTER = "lastDeploymentAttemptedAtAfter",
    CREATED_AT_BEFORE = "createdAtBefore",
    CREATED_AT_AFTER = "createdAtAfter",
}

M.ListServiceInstancesFilter = {
    type = "structure",
    id = "ListServiceInstancesFilter",
    members = {
        key = {
            type = "string",
        },
        value = {
            type = "string",
        },
    },
}

M.ListServiceInstancesSortBy = {
    NAME = "name",
    DEPLOYMENT_STATUS = "deploymentStatus",
    TEMPLATE_NAME = "templateName",
    SERVICE_NAME = "serviceName",
    ENVIRONMENT_NAME = "environmentName",
    LAST_DEPLOYMENT_ATTEMPTED_AT = "lastDeploymentAttemptedAt",
    CREATED_AT = "createdAt",
}

M.SortOrder = {
    ASCENDING = "ASCENDING",
    DESCENDING = "DESCENDING",
}

M.ListServiceInstancesInput = {
    type = "structure",
    id = "ListServiceInstancesInput",
    members = {
        serviceName = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
        filters = {
            type = "list",
            member = M.ListServiceInstancesFilter,
        },
        sortBy = {
            type = "string",
        },
        sortOrder = {
            type = "string",
        },
    },
}

M.ServiceInstanceSummary = {
    type = "structure",
    id = "ServiceInstanceSummary",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastDeploymentAttemptedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastDeploymentSucceededAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        serviceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        environmentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        templateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        templateMajorVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        templateMinorVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        deploymentStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        deploymentStatusMessage = {
            type = "string",
        },
        lastAttemptedDeploymentId = {
            type = "string",
        },
        lastSucceededDeploymentId = {
            type = "string",
        },
    },
}

M.ListServiceInstancesOutput = {
    type = "structure",
    id = "ListServiceInstancesOutput",
    members = {
        nextToken = {
            type = "string",
        },
        serviceInstances = {
            type = "list",
            member = M.ServiceInstanceSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateServiceInstanceInput = {
    type = "structure",
    id = "UpdateServiceInstanceInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        serviceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        deploymentType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        spec = {
            type = "string",
            traits = {
                media_type = "application/yaml",
            },
        },
        templateMajorVersion = {
            type = "string",
        },
        templateMinorVersion = {
            type = "string",
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.UpdateServiceInstanceOutput = {
    type = "structure",
    id = "UpdateServiceInstanceOutput",
    members = {
        serviceInstance = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ServiceInstance }),
    },
}

M.ListServicePipelineOutputsInput = {
    type = "structure",
    id = "ListServicePipelineOutputsInput",
    members = {
        serviceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
        deploymentId = {
            type = "string",
        },
    },
}

M.ListServicePipelineOutputsOutput = {
    type = "structure",
    id = "ListServicePipelineOutputsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        outputs = {
            type = "list",
            member = M.Output,
            traits = {
                required = true,
            },
        },
    },
}

M.ListServicePipelineProvisionedResourcesInput = {
    type = "structure",
    id = "ListServicePipelineProvisionedResourcesInput",
    members = {
        serviceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListServicePipelineProvisionedResourcesOutput = {
    type = "structure",
    id = "ListServicePipelineProvisionedResourcesOutput",
    members = {
        nextToken = {
            type = "string",
        },
        provisionedResources = {
            type = "list",
            member = M.ProvisionedResource,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateServicePipelineInput = {
    type = "structure",
    id = "UpdateServicePipelineInput",
    members = {
        serviceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        spec = {
            type = "string",
            traits = {
                media_type = "application/yaml",
                required = true,
            },
        },
        deploymentType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        templateMajorVersion = {
            type = "string",
        },
        templateMinorVersion = {
            type = "string",
        },
    },
}

M.UpdateServicePipelineOutput = {
    type = "structure",
    id = "UpdateServicePipelineOutput",
    members = {
        pipeline = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ServicePipeline }),
    },
}

M.CreateServiceInput = {
    type = "structure",
    id = "CreateServiceInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        templateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        templateMajorVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        templateMinorVersion = {
            type = "string",
        },
        spec = {
            type = "string",
            traits = {
                media_type = "application/yaml",
                required = true,
            },
        },
        repositoryConnectionArn = {
            type = "string",
        },
        repositoryId = {
            type = "string",
        },
        branchName = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.ServiceStatus = {
    CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS",
    CREATE_FAILED_CLEANUP_IN_PROGRESS = "CREATE_FAILED_CLEANUP_IN_PROGRESS",
    CREATE_FAILED_CLEANUP_COMPLETE = "CREATE_FAILED_CLEANUP_COMPLETE",
    CREATE_FAILED_CLEANUP_FAILED = "CREATE_FAILED_CLEANUP_FAILED",
    CREATE_FAILED = "CREATE_FAILED",
    ACTIVE = "ACTIVE",
    DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS",
    DELETE_FAILED = "DELETE_FAILED",
    UPDATE_IN_PROGRESS = "UPDATE_IN_PROGRESS",
    UPDATE_FAILED_CLEANUP_IN_PROGRESS = "UPDATE_FAILED_CLEANUP_IN_PROGRESS",
    UPDATE_FAILED_CLEANUP_COMPLETE = "UPDATE_FAILED_CLEANUP_COMPLETE",
    UPDATE_FAILED_CLEANUP_FAILED = "UPDATE_FAILED_CLEANUP_FAILED",
    UPDATE_FAILED = "UPDATE_FAILED",
    UPDATE_COMPLETE_CLEANUP_FAILED = "UPDATE_COMPLETE_CLEANUP_FAILED",
}

M.Service = {
    type = "structure",
    id = "Service",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        templateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastModifiedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusMessage = {
            type = "string",
        },
        spec = {
            type = "string",
            traits = {
                media_type = "application/yaml",
                required = true,
            },
        },
        pipeline = M.ServicePipeline,
        repositoryConnectionArn = {
            type = "string",
        },
        repositoryId = {
            type = "string",
        },
        branchName = {
            type = "string",
        },
    },
}

M.CreateServiceOutput = {
    type = "structure",
    id = "CreateServiceOutput",
    members = {
        service = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Service }),
    },
}

M.DeleteServiceInput = {
    type = "structure",
    id = "DeleteServiceInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteServiceOutput = {
    type = "structure",
    id = "DeleteServiceOutput",
    members = {
        service = M.Service,
    },
}

M.GetServiceInput = {
    type = "structure",
    id = "GetServiceInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetServiceOutput = {
    type = "structure",
    id = "GetServiceOutput",
    members = {
        service = M.Service,
    },
}

M.ListServicesInput = {
    type = "structure",
    id = "ListServicesInput",
    members = {
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.ServiceSummary = {
    type = "structure",
    id = "ServiceSummary",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        templateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastModifiedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusMessage = {
            type = "string",
        },
    },
}

M.ListServicesOutput = {
    type = "structure",
    id = "ListServicesOutput",
    members = {
        nextToken = {
            type = "string",
        },
        services = {
            type = "list",
            member = M.ServiceSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateServiceInput = {
    type = "structure",
    id = "UpdateServiceInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        spec = {
            type = "string",
            traits = {
                media_type = "application/yaml",
            },
        },
    },
}

M.UpdateServiceOutput = {
    type = "structure",
    id = "UpdateServiceOutput",
    members = {
        service = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Service }),
    },
}

M.GetServiceSyncBlockerSummaryInput = {
    type = "structure",
    id = "GetServiceSyncBlockerSummaryInput",
    members = {
        serviceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        serviceInstanceName = {
            type = "string",
        },
    },
}

M.SyncBlockerContext = {
    type = "structure",
    id = "SyncBlockerContext",
    members = {
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BlockerStatus = {
    ACTIVE = "ACTIVE",
    RESOLVED = "RESOLVED",
}

M.BlockerType = {
    AUTOMATED = "AUTOMATED",
}

M.SyncBlocker = {
    type = "structure",
    id = "SyncBlocker",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdReason = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        contexts = {
            type = "list",
            member = M.SyncBlockerContext,
        },
        resolvedReason = {
            type = "string",
        },
        resolvedAt = {
            type = "timestamp",
        },
    },
}

M.ServiceSyncBlockerSummary = {
    type = "structure",
    id = "ServiceSyncBlockerSummary",
    members = {
        serviceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        serviceInstanceName = {
            type = "string",
        },
        latestBlockers = {
            type = "list",
            member = M.SyncBlocker,
        },
    },
}

M.GetServiceSyncBlockerSummaryOutput = {
    type = "structure",
    id = "GetServiceSyncBlockerSummaryOutput",
    members = {
        serviceSyncBlockerSummary = M.ServiceSyncBlockerSummary,
    },
}

M.UpdateServiceSyncBlockerInput = {
    type = "structure",
    id = "UpdateServiceSyncBlockerInput",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resolvedReason = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateServiceSyncBlockerOutput = {
    type = "structure",
    id = "UpdateServiceSyncBlockerOutput",
    members = {
        serviceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        serviceInstanceName = {
            type = "string",
        },
        serviceSyncBlocker = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SyncBlocker }),
    },
}

M.CreateServiceSyncConfigInput = {
    type = "structure",
    id = "CreateServiceSyncConfigInput",
    members = {
        serviceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        repositoryProvider = {
            type = "string",
            traits = {
                required = true,
            },
        },
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        branch = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filePath = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ServiceSyncConfig = {
    type = "structure",
    id = "ServiceSyncConfig",
    members = {
        serviceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        repositoryProvider = {
            type = "string",
            traits = {
                required = true,
            },
        },
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        branch = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filePath = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateServiceSyncConfigOutput = {
    type = "structure",
    id = "CreateServiceSyncConfigOutput",
    members = {
        serviceSyncConfig = M.ServiceSyncConfig,
    },
}

M.DeleteServiceSyncConfigInput = {
    type = "structure",
    id = "DeleteServiceSyncConfigInput",
    members = {
        serviceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteServiceSyncConfigOutput = {
    type = "structure",
    id = "DeleteServiceSyncConfigOutput",
    members = {
        serviceSyncConfig = M.ServiceSyncConfig,
    },
}

M.GetServiceSyncConfigInput = {
    type = "structure",
    id = "GetServiceSyncConfigInput",
    members = {
        serviceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetServiceSyncConfigOutput = {
    type = "structure",
    id = "GetServiceSyncConfigOutput",
    members = {
        serviceSyncConfig = M.ServiceSyncConfig,
    },
}

M.UpdateServiceSyncConfigInput = {
    type = "structure",
    id = "UpdateServiceSyncConfigInput",
    members = {
        serviceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        repositoryProvider = {
            type = "string",
            traits = {
                required = true,
            },
        },
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        branch = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filePath = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateServiceSyncConfigOutput = {
    type = "structure",
    id = "UpdateServiceSyncConfigOutput",
    members = {
        serviceSyncConfig = M.ServiceSyncConfig,
    },
}

M.CreateServiceTemplateInput = {
    type = "structure",
    id = "CreateServiceTemplateInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        displayName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        encryptionKey = {
            type = "string",
        },
        pipelineProvisioning = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.ServiceTemplate = {
    type = "structure",
    id = "ServiceTemplate",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastModifiedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        displayName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        recommendedVersion = {
            type = "string",
        },
        encryptionKey = {
            type = "string",
        },
        pipelineProvisioning = {
            type = "string",
        },
    },
}

M.CreateServiceTemplateOutput = {
    type = "structure",
    id = "CreateServiceTemplateOutput",
    members = {
        serviceTemplate = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ServiceTemplate }),
    },
}

M.DeleteServiceTemplateInput = {
    type = "structure",
    id = "DeleteServiceTemplateInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteServiceTemplateOutput = {
    type = "structure",
    id = "DeleteServiceTemplateOutput",
    members = {
        serviceTemplate = M.ServiceTemplate,
    },
}

M.GetServiceTemplateInput = {
    type = "structure",
    id = "GetServiceTemplateInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetServiceTemplateOutput = {
    type = "structure",
    id = "GetServiceTemplateOutput",
    members = {
        serviceTemplate = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ServiceTemplate }),
    },
}

M.ListServiceTemplatesInput = {
    type = "structure",
    id = "ListServiceTemplatesInput",
    members = {
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.ServiceTemplateSummary = {
    type = "structure",
    id = "ServiceTemplateSummary",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastModifiedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        displayName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        recommendedVersion = {
            type = "string",
        },
        pipelineProvisioning = {
            type = "string",
        },
    },
}

M.ListServiceTemplatesOutput = {
    type = "structure",
    id = "ListServiceTemplatesOutput",
    members = {
        nextToken = {
            type = "string",
        },
        templates = {
            type = "list",
            member = M.ServiceTemplateSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateServiceTemplateInput = {
    type = "structure",
    id = "UpdateServiceTemplateInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        displayName = {
            type = "string",
        },
        description = {
            type = "string",
        },
    },
}

M.UpdateServiceTemplateOutput = {
    type = "structure",
    id = "UpdateServiceTemplateOutput",
    members = {
        serviceTemplate = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ServiceTemplate }),
    },
}

M.CompatibleEnvironmentTemplateInput = {
    type = "structure",
    id = "CompatibleEnvironmentTemplateInput",
    members = {
        templateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        majorVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ServiceTemplateSupportedComponentSourceType = {
    DIRECTLY_DEFINED = "DIRECTLY_DEFINED",
}

M.CreateServiceTemplateVersionInput = {
    type = "structure",
    id = "CreateServiceTemplateVersionInput",
    members = {
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        templateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        majorVersion = {
            type = "string",
        },
        source = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TemplateVersionSourceInput }),
        compatibleEnvironmentTemplates = {
            type = "list",
            member = M.CompatibleEnvironmentTemplateInput,
            traits = {
                required = true,
            },
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        supportedComponentSources = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CompatibleEnvironmentTemplate = {
    type = "structure",
    id = "CompatibleEnvironmentTemplate",
    members = {
        templateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        majorVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ServiceTemplateVersion = {
    type = "structure",
    id = "ServiceTemplateVersion",
    members = {
        templateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        majorVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        minorVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        recommendedMinorVersion = {
            type = "string",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusMessage = {
            type = "string",
        },
        description = {
            type = "string",
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastModifiedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        compatibleEnvironmentTemplates = {
            type = "list",
            member = M.CompatibleEnvironmentTemplate,
            traits = {
                required = true,
            },
        },
        schema = {
            type = "string",
            traits = {
                media_type = "application/yaml",
            },
        },
        supportedComponentSources = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CreateServiceTemplateVersionOutput = {
    type = "structure",
    id = "CreateServiceTemplateVersionOutput",
    members = {
        serviceTemplateVersion = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ServiceTemplateVersion }),
    },
}

M.DeleteServiceTemplateVersionInput = {
    type = "structure",
    id = "DeleteServiceTemplateVersionInput",
    members = {
        templateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        majorVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        minorVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteServiceTemplateVersionOutput = {
    type = "structure",
    id = "DeleteServiceTemplateVersionOutput",
    members = {
        serviceTemplateVersion = M.ServiceTemplateVersion,
    },
}

M.GetServiceTemplateVersionInput = {
    type = "structure",
    id = "GetServiceTemplateVersionInput",
    members = {
        templateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        majorVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        minorVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetServiceTemplateVersionOutput = {
    type = "structure",
    id = "GetServiceTemplateVersionOutput",
    members = {
        serviceTemplateVersion = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ServiceTemplateVersion }),
    },
}

M.ListServiceTemplateVersionsInput = {
    type = "structure",
    id = "ListServiceTemplateVersionsInput",
    members = {
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
        templateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        majorVersion = {
            type = "string",
        },
    },
}

M.ServiceTemplateVersionSummary = {
    type = "structure",
    id = "ServiceTemplateVersionSummary",
    members = {
        templateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        majorVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        minorVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        recommendedMinorVersion = {
            type = "string",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusMessage = {
            type = "string",
        },
        description = {
            type = "string",
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastModifiedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListServiceTemplateVersionsOutput = {
    type = "structure",
    id = "ListServiceTemplateVersionsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        templateVersions = {
            type = "list",
            member = M.ServiceTemplateVersionSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateServiceTemplateVersionInput = {
    type = "structure",
    id = "UpdateServiceTemplateVersionInput",
    members = {
        templateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        majorVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        minorVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        status = {
            type = "string",
        },
        compatibleEnvironmentTemplates = {
            type = "list",
            member = M.CompatibleEnvironmentTemplateInput,
        },
        supportedComponentSources = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UpdateServiceTemplateVersionOutput = {
    type = "structure",
    id = "UpdateServiceTemplateVersionOutput",
    members = {
        serviceTemplateVersion = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ServiceTemplateVersion }),
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_query = "resourceArn",
                required = true,
            },
        },
        tags = {
            type = "list",
            member = M.Tag,
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceOutput = {
    type = "structure",
    id = "TagResourceOutput",
}

M.CreateTemplateSyncConfigInput = {
    type = "structure",
    id = "CreateTemplateSyncConfigInput",
    members = {
        templateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        templateType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        repositoryProvider = {
            type = "string",
            traits = {
                required = true,
            },
        },
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        branch = {
            type = "string",
            traits = {
                required = true,
            },
        },
        subdirectory = {
            type = "string",
        },
    },
}

M.TemplateSyncConfig = {
    type = "structure",
    id = "TemplateSyncConfig",
    members = {
        templateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        templateType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        repositoryProvider = {
            type = "string",
            traits = {
                required = true,
            },
        },
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        branch = {
            type = "string",
            traits = {
                required = true,
            },
        },
        subdirectory = {
            type = "string",
        },
    },
}

M.CreateTemplateSyncConfigOutput = {
    type = "structure",
    id = "CreateTemplateSyncConfigOutput",
    members = {
        templateSyncConfig = M.TemplateSyncConfig,
    },
}

M.DeleteTemplateSyncConfigInput = {
    type = "structure",
    id = "DeleteTemplateSyncConfigInput",
    members = {
        templateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        templateType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteTemplateSyncConfigOutput = {
    type = "structure",
    id = "DeleteTemplateSyncConfigOutput",
    members = {
        templateSyncConfig = M.TemplateSyncConfig,
    },
}

M.GetTemplateSyncConfigInput = {
    type = "structure",
    id = "GetTemplateSyncConfigInput",
    members = {
        templateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        templateType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetTemplateSyncConfigOutput = {
    type = "structure",
    id = "GetTemplateSyncConfigOutput",
    members = {
        templateSyncConfig = M.TemplateSyncConfig,
    },
}

M.UpdateTemplateSyncConfigInput = {
    type = "structure",
    id = "UpdateTemplateSyncConfigInput",
    members = {
        templateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        templateType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        repositoryProvider = {
            type = "string",
            traits = {
                required = true,
            },
        },
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        branch = {
            type = "string",
            traits = {
                required = true,
            },
        },
        subdirectory = {
            type = "string",
        },
    },
}

M.UpdateTemplateSyncConfigOutput = {
    type = "structure",
    id = "UpdateTemplateSyncConfigOutput",
    members = {
        templateSyncConfig = M.TemplateSyncConfig,
    },
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_query = "resourceArn",
                required = true,
            },
        },
        tagKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
    id = "UntagResourceOutput",
}

return M
