local M = {}

M.GetDeploymentsInput = {
    type = "structure",
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
    members = {
        ModelHandle = {
            type = "string",
        },
        S3Url = {
            type = "string",
        },
        Checksum = {
            type = "structure",
        },
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
            member_type = "structure",
        },
    },
}

M.GetDeploymentsOutput = {
    type = "structure",
    members = {
        Deployments = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.InternalServiceException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.GetDeviceRegistrationInput = {
    type = "structure",
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
    members = {
        Dimension = {
            type = "string",
        },
        MetricName = {
            type = "string",
        },
        Value = {
            type = "number",
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
            member_type = "structure",
        },
    },
}

M.Model = {
    type = "structure",
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
            member_type = "structure",
        },
    },
}

M.SendHeartbeatInput = {
    type = "structure",
    members = {
        AgentMetrics = {
            type = "list",
            member_type = "structure",
        },
        Models = {
            type = "list",
            member_type = "structure",
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
        DeploymentResult = {
            type = "structure",
        },
    },
}

M.SendHeartbeatOutput = {
    type = "structure",
}

return M
