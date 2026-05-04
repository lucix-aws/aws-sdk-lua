local M = {}

M.GetDeploymentsInput = {
    type = "structure",
    id = "GetDeploymentsInput",
    members = {
        DeviceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeviceFleetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ChecksumType = {
    Sha1 = "SHA1",
}

M.Checksum = {
    type = "structure",
    id = "Checksum",
    members = {
        Type = {
            type = "string",
        },
        Sum = {
            type = "string",
        },
    },
}

M.ModelState = {
    Deploy = "DEPLOY",
    Undeploy = "UNDEPLOY",
}

M.Definition = {
    type = "structure",
    id = "Definition",
    members = {
        ModelHandle = {
            type = "string",
        },
        S3Url = {
            type = "string",
        },
        Checksum = M.Checksum,
        State = {
            type = "string",
        },
    },
}

M.FailureHandlingPolicy = {
    RollbackOnFailure = "ROLLBACK_ON_FAILURE",
    DoNothing = "DO_NOTHING",
}

M.DeploymentType = {
    Model = "Model",
}

M.EdgeDeployment = {
    type = "structure",
    id = "EdgeDeployment",
    members = {
        DeploymentName = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        FailureHandlingPolicy = {
            type = "string",
        },
        Definitions = {
            type = "list",
            member = M.Definition,
        },
    },
}

M.GetDeploymentsOutput = {
    type = "structure",
    id = "GetDeploymentsOutput",
    members = {
        Deployments = {
            type = "list",
            member = M.EdgeDeployment,
        },
    },
}

M.InternalServiceException = {
    type = "structure",
    id = "InternalServiceException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.GetDeviceRegistrationInput = {
    type = "structure",
    id = "GetDeviceRegistrationInput",
    members = {
        DeviceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeviceFleetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetDeviceRegistrationOutput = {
    type = "structure",
    id = "GetDeviceRegistrationOutput",
    members = {
        DeviceRegistration = {
            type = "string",
        },
        CacheTTL = {
            type = "string",
        },
    },
}

M.EdgeMetric = {
    type = "structure",
    id = "EdgeMetric",
    members = {
        Dimension = {
            type = "string",
        },
        MetricName = {
            type = "string",
        },
        Value = {
            type = "double",
        },
        Timestamp = {
            type = "timestamp",
        },
    },
}

M.DeploymentStatus = {
    Success = "SUCCESS",
    Fail = "FAIL",
}

M.DeploymentModel = {
    type = "structure",
    id = "DeploymentModel",
    members = {
        ModelHandle = {
            type = "string",
        },
        ModelName = {
            type = "string",
        },
        ModelVersion = {
            type = "string",
        },
        DesiredState = {
            type = "string",
        },
        State = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusReason = {
            type = "string",
        },
        RollbackFailureReason = {
            type = "string",
        },
    },
}

M.DeploymentResult = {
    type = "structure",
    id = "DeploymentResult",
    members = {
        DeploymentName = {
            type = "string",
        },
        DeploymentStatus = {
            type = "string",
        },
        DeploymentStatusMessage = {
            type = "string",
        },
        DeploymentStartTime = {
            type = "timestamp",
        },
        DeploymentEndTime = {
            type = "timestamp",
        },
        DeploymentModels = {
            type = "list",
            member = M.DeploymentModel,
        },
    },
}

M.Model = {
    type = "structure",
    id = "Model",
    members = {
        ModelName = {
            type = "string",
        },
        ModelVersion = {
            type = "string",
        },
        LatestSampleTime = {
            type = "timestamp",
        },
        LatestInference = {
            type = "timestamp",
        },
        ModelMetrics = {
            type = "list",
            member = M.EdgeMetric,
        },
    },
}

M.SendHeartbeatInput = {
    type = "structure",
    id = "SendHeartbeatInput",
    members = {
        AgentMetrics = {
            type = "list",
            member = M.EdgeMetric,
        },
        Models = {
            type = "list",
            member = M.Model,
        },
        AgentVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeviceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeviceFleetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeploymentResult = M.DeploymentResult,
    },
}

M.SendHeartbeatOutput = {
    type = "structure",
    id = "SendHeartbeatOutput",
}

return M
