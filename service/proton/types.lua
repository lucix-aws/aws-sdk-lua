local M = {}

M.AcceptEnvironmentAccountConnectionInput = {
    type = "structure",
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
    members = {
        environmentAccountConnection = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EnvironmentAccountConnection }),
    },
}

M.AccessDeniedException = {
    type = "structure",
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
}

M.GetAccountSettingsOutput = {
    type = "structure",
    members = {
        accountSettings = M.AccountSettings,
    },
}

M.RepositoryBranchInput = {
    type = "structure",
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
    members = {
        accountSettings = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AccountSettings }),
    },
}

M.CancelComponentDeploymentInput = {
    type = "structure",
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
    members = {
        component = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Component }),
    },
}

M.CancelEnvironmentDeploymentInput = {
    type = "structure",
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
    members = {
        environment = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Environment }),
    },
}

M.CancelServiceInstanceDeploymentInput = {
    type = "structure",
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
    members = {
        serviceInstance = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ServiceInstance }),
    },
}

M.CancelServicePipelineDeploymentInput = {
    type = "structure",
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
    members = {
        pipeline = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ServicePipeline }),
    },
}

M.ListComponentOutputsInput = {
    type = "structure",
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
    members = {
        component = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Component }),
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
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
    members = {
        component = M.Component,
    },
}

M.GetComponentInput = {
    type = "structure",
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
    members = {
        component = M.Component,
    },
}

M.ListComponentsInput = {
    type = "structure",
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
    members = {
        component = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Component }),
    },
}

M.DeleteDeploymentInput = {
    type = "structure",
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
    members = {
        deployment = M.Deployment,
    },
}

M.GetDeploymentInput = {
    type = "structure",
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
    members = {
        deployment = M.Deployment,
    },
}

M.ListDeploymentsInput = {
    type = "structure",
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
    members = {
        environmentAccountConnection = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EnvironmentAccountConnection }),
    },
}

M.DeleteEnvironmentAccountConnectionInput = {
    type = "structure",
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
    members = {
        environmentAccountConnection = M.EnvironmentAccountConnection,
    },
}

M.GetEnvironmentAccountConnectionInput = {
    type = "structure",
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
    members = {
        environmentAccountConnection = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EnvironmentAccountConnection }),
    },
}

M.UpdateEnvironmentAccountConnectionInput = {
    type = "structure",
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
    members = {
        environmentAccountConnection = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EnvironmentAccountConnection }),
    },
}

M.ListEnvironmentOutputsInput = {
    type = "structure",
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
    members = {
        environment = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Environment }),
    },
}

M.DeleteEnvironmentInput = {
    type = "structure",
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
    members = {
        environment = M.Environment,
    },
}

M.GetEnvironmentInput = {
    type = "structure",
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
    members = {
        environment = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Environment }),
    },
}

M.EnvironmentTemplateFilter = {
    type = "structure",
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
    members = {
        environment = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Environment }),
    },
}

M.CreateEnvironmentTemplateInput = {
    type = "structure",
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
    members = {
        environmentTemplate = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EnvironmentTemplate }),
    },
}

M.DeleteEnvironmentTemplateInput = {
    type = "structure",
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
    members = {
        environmentTemplate = M.EnvironmentTemplate,
    },
}

M.GetEnvironmentTemplateInput = {
    type = "structure",
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
    members = {
        environmentTemplate = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EnvironmentTemplate }),
    },
}

M.ListEnvironmentTemplatesInput = {
    type = "structure",
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
    members = {
        environmentTemplate = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EnvironmentTemplate }),
    },
}

M.S3ObjectSource = {
    type = "structure",
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
    members = {
        s3 = M.S3ObjectSource,
    },
}

M.CreateEnvironmentTemplateVersionInput = {
    type = "structure",
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
    members = {
        environmentTemplateVersion = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EnvironmentTemplateVersion }),
    },
}

M.DeleteEnvironmentTemplateVersionInput = {
    type = "structure",
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
    members = {
        environmentTemplateVersion = M.EnvironmentTemplateVersion,
    },
}

M.GetEnvironmentTemplateVersionInput = {
    type = "structure",
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
    members = {
        environmentTemplateVersion = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EnvironmentTemplateVersion }),
    },
}

M.ListEnvironmentTemplateVersionsInput = {
    type = "structure",
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
    members = {
        latestSync = M.RepositorySyncAttempt,
    },
}

M.GetResourcesSummaryInput = {
    type = "structure",
}

M.ResourceCountsSummary = {
    type = "structure",
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
    members = {
        counts = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CountsSummary }),
    },
}

M.GetServiceInstanceSyncStatusInput = {
    type = "structure",
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
    members = {
        latestSync = M.ResourceSyncAttempt,
        latestSuccessfulSync = M.ResourceSyncAttempt,
        desiredState = M.Revision,
    },
}

M.ListRepositorySyncDefinitionsInput = {
    type = "structure",
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
}

M.CreateRepositoryInput = {
    type = "structure",
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
    members = {
        repository = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Repository }),
    },
}

M.DeleteRepositoryInput = {
    type = "structure",
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
    members = {
        repository = M.Repository,
    },
}

M.GetRepositoryInput = {
    type = "structure",
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
    members = {
        repository = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Repository }),
    },
}

M.ListRepositoriesInput = {
    type = "structure",
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
    members = {
        serviceInstance = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ServiceInstance }),
    },
}

M.GetServiceInstanceInput = {
    type = "structure",
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
    members = {
        serviceInstance = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ServiceInstance }),
    },
}

M.ListServicePipelineOutputsInput = {
    type = "structure",
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
    members = {
        pipeline = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ServicePipeline }),
    },
}

M.CreateServiceInput = {
    type = "structure",
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
    members = {
        service = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Service }),
    },
}

M.DeleteServiceInput = {
    type = "structure",
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
    members = {
        service = M.Service,
    },
}

M.GetServiceInput = {
    type = "structure",
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
    members = {
        service = M.Service,
    },
}

M.ListServicesInput = {
    type = "structure",
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
    members = {
        service = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Service }),
    },
}

M.GetServiceSyncBlockerSummaryInput = {
    type = "structure",
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
    members = {
        serviceSyncBlockerSummary = M.ServiceSyncBlockerSummary,
    },
}

M.UpdateServiceSyncBlockerInput = {
    type = "structure",
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
    members = {
        serviceSyncConfig = M.ServiceSyncConfig,
    },
}

M.DeleteServiceSyncConfigInput = {
    type = "structure",
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
    members = {
        serviceSyncConfig = M.ServiceSyncConfig,
    },
}

M.GetServiceSyncConfigInput = {
    type = "structure",
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
    members = {
        serviceSyncConfig = M.ServiceSyncConfig,
    },
}

M.UpdateServiceSyncConfigInput = {
    type = "structure",
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
    members = {
        serviceSyncConfig = M.ServiceSyncConfig,
    },
}

M.CreateServiceTemplateInput = {
    type = "structure",
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
    members = {
        serviceTemplate = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ServiceTemplate }),
    },
}

M.DeleteServiceTemplateInput = {
    type = "structure",
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
    members = {
        serviceTemplate = M.ServiceTemplate,
    },
}

M.GetServiceTemplateInput = {
    type = "structure",
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
    members = {
        serviceTemplate = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ServiceTemplate }),
    },
}

M.ListServiceTemplatesInput = {
    type = "structure",
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
    members = {
        serviceTemplate = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ServiceTemplate }),
    },
}

M.CompatibleEnvironmentTemplateInput = {
    type = "structure",
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
    members = {
        serviceTemplateVersion = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ServiceTemplateVersion }),
    },
}

M.DeleteServiceTemplateVersionInput = {
    type = "structure",
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
    members = {
        serviceTemplateVersion = M.ServiceTemplateVersion,
    },
}

M.GetServiceTemplateVersionInput = {
    type = "structure",
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
    members = {
        serviceTemplateVersion = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ServiceTemplateVersion }),
    },
}

M.ListServiceTemplateVersionsInput = {
    type = "structure",
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
    members = {
        serviceTemplateVersion = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ServiceTemplateVersion }),
    },
}

M.TagResourceInput = {
    type = "structure",
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
}

M.CreateTemplateSyncConfigInput = {
    type = "structure",
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
    members = {
        templateSyncConfig = M.TemplateSyncConfig,
    },
}

M.DeleteTemplateSyncConfigInput = {
    type = "structure",
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
    members = {
        templateSyncConfig = M.TemplateSyncConfig,
    },
}

M.GetTemplateSyncConfigInput = {
    type = "structure",
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
    members = {
        templateSyncConfig = M.TemplateSyncConfig,
    },
}

M.UpdateTemplateSyncConfigInput = {
    type = "structure",
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
    members = {
        templateSyncConfig = M.TemplateSyncConfig,
    },
}

M.UntagResourceInput = {
    type = "structure",
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
}

return M
