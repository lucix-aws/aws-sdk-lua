local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        ErrorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
        },
    },
}

M.AssociateGatewayToServerInput = {
    type = "structure",
    id = "AssociateGatewayToServerInput",
    members = {
        GatewayArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ServerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateGatewayToServerOutput = {
    type = "structure",
    id = "AssociateGatewayToServerOutput",
    members = {
        GatewayArn = {
            type = "string",
        },
    },
}

M.ConflictException = {
    type = "structure",
    id = "ConflictException",
    error = "client",
    members = {
        ErrorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
        },
    },
}

M.InternalServerException = {
    type = "structure",
    id = "InternalServerException",
    error = "server",
    members = {
        ErrorCode = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    id = "ThrottlingException",
    error = "client",
    members = {
        ErrorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
        },
    },
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
    error = "client",
    members = {
        ErrorCode = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.GetBandwidthRateLimitScheduleInput = {
    type = "structure",
    id = "GetBandwidthRateLimitScheduleInput",
    members = {
        GatewayArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BandwidthRateLimitInterval = {
    type = "structure",
    id = "BandwidthRateLimitInterval",
    members = {
        AverageUploadRateLimitInBitsPerSec = {
            type = "long",
        },
        StartHourOfDay = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        EndHourOfDay = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        StartMinuteOfHour = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        EndMinuteOfHour = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        DaysOfWeek = {
            type = "list",
            member = { type = "integer" },
            traits = {
                required = true,
            },
        },
    },
}

M.GetBandwidthRateLimitScheduleOutput = {
    type = "structure",
    id = "GetBandwidthRateLimitScheduleOutput",
    members = {
        GatewayArn = {
            type = "string",
        },
        BandwidthRateLimitIntervals = {
            type = "list",
            member = M.BandwidthRateLimitInterval,
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        ErrorCode = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.PutBandwidthRateLimitScheduleInput = {
    type = "structure",
    id = "PutBandwidthRateLimitScheduleInput",
    members = {
        GatewayArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BandwidthRateLimitIntervals = {
            type = "list",
            member = M.BandwidthRateLimitInterval,
            traits = {
                required = true,
            },
        },
    },
}

M.PutBandwidthRateLimitScheduleOutput = {
    type = "structure",
    id = "PutBandwidthRateLimitScheduleOutput",
    members = {
        GatewayArn = {
            type = "string",
        },
    },
}

M.GatewayType = {
    BACKUP_VM = "BACKUP_VM",
}

M.Tag = {
    type = "structure",
    id = "Tag",
    members = {
        Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateGatewayInput = {
    type = "structure",
    id = "CreateGatewayInput",
    members = {
        ActivationKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GatewayDisplayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GatewayType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateGatewayOutput = {
    type = "structure",
    id = "CreateGatewayOutput",
    members = {
        GatewayArn = {
            type = "string",
        },
    },
}

M.DeleteGatewayInput = {
    type = "structure",
    id = "DeleteGatewayInput",
    members = {
        GatewayArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteGatewayOutput = {
    type = "structure",
    id = "DeleteGatewayOutput",
    members = {
        GatewayArn = {
            type = "string",
        },
    },
}

M.DisassociateGatewayFromServerInput = {
    type = "structure",
    id = "DisassociateGatewayFromServerInput",
    members = {
        GatewayArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateGatewayFromServerOutput = {
    type = "structure",
    id = "DisassociateGatewayFromServerOutput",
    members = {
        GatewayArn = {
            type = "string",
        },
    },
}

M.GetGatewayInput = {
    type = "structure",
    id = "GetGatewayInput",
    members = {
        GatewayArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MaintenanceStartTime = {
    type = "structure",
    id = "MaintenanceStartTime",
    members = {
        DayOfMonth = {
            type = "integer",
        },
        DayOfWeek = {
            type = "integer",
        },
        HourOfDay = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        MinuteOfHour = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.GatewayDetails = {
    type = "structure",
    id = "GatewayDetails",
    members = {
        GatewayArn = {
            type = "string",
        },
        GatewayDisplayName = {
            type = "string",
        },
        GatewayType = {
            type = "string",
        },
        HypervisorId = {
            type = "string",
        },
        LastSeenTime = {
            type = "timestamp",
        },
        MaintenanceStartTime = M.MaintenanceStartTime,
        NextUpdateAvailabilityTime = {
            type = "timestamp",
        },
        VpcEndpoint = {
            type = "string",
        },
        DeprecationDate = {
            type = "timestamp",
        },
        SoftwareVersion = {
            type = "string",
        },
    },
}

M.GetGatewayOutput = {
    type = "structure",
    id = "GetGatewayOutput",
    members = {
        Gateway = M.GatewayDetails,
    },
}

M.ListGatewaysInput = {
    type = "structure",
    id = "ListGatewaysInput",
    members = {
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.Gateway = {
    type = "structure",
    id = "Gateway",
    members = {
        GatewayArn = {
            type = "string",
        },
        GatewayDisplayName = {
            type = "string",
        },
        GatewayType = {
            type = "string",
        },
        HypervisorId = {
            type = "string",
        },
        LastSeenTime = {
            type = "timestamp",
        },
    },
}

M.ListGatewaysOutput = {
    type = "structure",
    id = "ListGatewaysOutput",
    members = {
        Gateways = {
            type = "list",
            member = M.Gateway,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.PutMaintenanceStartTimeInput = {
    type = "structure",
    id = "PutMaintenanceStartTimeInput",
    members = {
        GatewayArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HourOfDay = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        MinuteOfHour = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        DayOfWeek = {
            type = "integer",
        },
        DayOfMonth = {
            type = "integer",
        },
    },
}

M.PutMaintenanceStartTimeOutput = {
    type = "structure",
    id = "PutMaintenanceStartTimeOutput",
    members = {
        GatewayArn = {
            type = "string",
        },
    },
}

M.TestHypervisorConfigurationInput = {
    type = "structure",
    id = "TestHypervisorConfigurationInput",
    members = {
        GatewayArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Host = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Username = {
            type = "string",
        },
        Password = {
            type = "string",
        },
    },
}

M.TestHypervisorConfigurationOutput = {
    type = "structure",
    id = "TestHypervisorConfigurationOutput",
}

M.UpdateGatewayInformationInput = {
    type = "structure",
    id = "UpdateGatewayInformationInput",
    members = {
        GatewayArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GatewayDisplayName = {
            type = "string",
        },
    },
}

M.UpdateGatewayInformationOutput = {
    type = "structure",
    id = "UpdateGatewayInformationOutput",
    members = {
        GatewayArn = {
            type = "string",
        },
    },
}

M.UpdateGatewaySoftwareNowInput = {
    type = "structure",
    id = "UpdateGatewaySoftwareNowInput",
    members = {
        GatewayArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateGatewaySoftwareNowOutput = {
    type = "structure",
    id = "UpdateGatewaySoftwareNowOutput",
    members = {
        GatewayArn = {
            type = "string",
        },
    },
}

M.DeleteHypervisorInput = {
    type = "structure",
    id = "DeleteHypervisorInput",
    members = {
        HypervisorArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteHypervisorOutput = {
    type = "structure",
    id = "DeleteHypervisorOutput",
    members = {
        HypervisorArn = {
            type = "string",
        },
    },
}

M.GetHypervisorInput = {
    type = "structure",
    id = "GetHypervisorInput",
    members = {
        HypervisorArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SyncMetadataStatus = {
    CREATED = "CREATED",
    RUNNING = "RUNNING",
    FAILED = "FAILED",
    PARTIALLY_FAILED = "PARTIALLY_FAILED",
    SUCCEEDED = "SUCCEEDED",
}

M.HypervisorState = {
    PENDING = "PENDING",
    ONLINE = "ONLINE",
    OFFLINE = "OFFLINE",
    ERROR = "ERROR",
}

M.HypervisorDetails = {
    type = "structure",
    id = "HypervisorDetails",
    members = {
        Host = {
            type = "string",
        },
        HypervisorArn = {
            type = "string",
        },
        KmsKeyArn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        LogGroupArn = {
            type = "string",
        },
        State = {
            type = "string",
        },
        LastSuccessfulMetadataSyncTime = {
            type = "timestamp",
        },
        LatestMetadataSyncStatusMessage = {
            type = "string",
        },
        LatestMetadataSyncStatus = {
            type = "string",
        },
    },
}

M.GetHypervisorOutput = {
    type = "structure",
    id = "GetHypervisorOutput",
    members = {
        Hypervisor = M.HypervisorDetails,
    },
}

M.GetHypervisorPropertyMappingsInput = {
    type = "structure",
    id = "GetHypervisorPropertyMappingsInput",
    members = {
        HypervisorArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.VmwareToAwsTagMapping = {
    type = "structure",
    id = "VmwareToAwsTagMapping",
    members = {
        VmwareCategory = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VmwareTagName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AwsTagKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AwsTagValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetHypervisorPropertyMappingsOutput = {
    type = "structure",
    id = "GetHypervisorPropertyMappingsOutput",
    members = {
        HypervisorArn = {
            type = "string",
        },
        VmwareToAwsTagMappings = {
            type = "list",
            member = M.VmwareToAwsTagMapping,
        },
        IamRoleArn = {
            type = "string",
        },
    },
}

M.PutHypervisorPropertyMappingsInput = {
    type = "structure",
    id = "PutHypervisorPropertyMappingsInput",
    members = {
        HypervisorArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VmwareToAwsTagMappings = {
            type = "list",
            member = M.VmwareToAwsTagMapping,
            traits = {
                required = true,
            },
        },
        IamRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutHypervisorPropertyMappingsOutput = {
    type = "structure",
    id = "PutHypervisorPropertyMappingsOutput",
    members = {
        HypervisorArn = {
            type = "string",
        },
    },
}

M.ImportHypervisorConfigurationInput = {
    type = "structure",
    id = "ImportHypervisorConfigurationInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Host = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Username = {
            type = "string",
        },
        Password = {
            type = "string",
        },
        KmsKeyArn = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.ImportHypervisorConfigurationOutput = {
    type = "structure",
    id = "ImportHypervisorConfigurationOutput",
    members = {
        HypervisorArn = {
            type = "string",
        },
    },
}

M.ListHypervisorsInput = {
    type = "structure",
    id = "ListHypervisorsInput",
    members = {
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.Hypervisor = {
    type = "structure",
    id = "Hypervisor",
    members = {
        Host = {
            type = "string",
        },
        HypervisorArn = {
            type = "string",
        },
        KmsKeyArn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        State = {
            type = "string",
        },
    },
}

M.ListHypervisorsOutput = {
    type = "structure",
    id = "ListHypervisorsOutput",
    members = {
        Hypervisors = {
            type = "list",
            member = M.Hypervisor,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.StartVirtualMachinesMetadataSyncInput = {
    type = "structure",
    id = "StartVirtualMachinesMetadataSyncInput",
    members = {
        HypervisorArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartVirtualMachinesMetadataSyncOutput = {
    type = "structure",
    id = "StartVirtualMachinesMetadataSyncOutput",
    members = {
        HypervisorArn = {
            type = "string",
        },
    },
}

M.UpdateHypervisorInput = {
    type = "structure",
    id = "UpdateHypervisorInput",
    members = {
        HypervisorArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Host = {
            type = "string",
        },
        Username = {
            type = "string",
        },
        Password = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        LogGroupArn = {
            type = "string",
        },
    },
}

M.UpdateHypervisorOutput = {
    type = "structure",
    id = "UpdateHypervisorOutput",
    members = {
        HypervisorArn = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    id = "ListTagsForResourceInput",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    id = "ListTagsForResourceOutput",
    members = {
        ResourceArn = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        ResourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
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
    members = {
        ResourceARN = {
            type = "string",
        },
    },
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
    members = {
        ResourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagKeys = {
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
    members = {
        ResourceARN = {
            type = "string",
        },
    },
}

M.GetVirtualMachineInput = {
    type = "structure",
    id = "GetVirtualMachineInput",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.VmwareTag = {
    type = "structure",
    id = "VmwareTag",
    members = {
        VmwareCategory = {
            type = "string",
        },
        VmwareTagName = {
            type = "string",
        },
        VmwareTagDescription = {
            type = "string",
        },
    },
}

M.VirtualMachineDetails = {
    type = "structure",
    id = "VirtualMachineDetails",
    members = {
        HostName = {
            type = "string",
        },
        HypervisorId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Path = {
            type = "string",
        },
        ResourceArn = {
            type = "string",
        },
        LastBackupDate = {
            type = "timestamp",
        },
        VmwareTags = {
            type = "list",
            member = M.VmwareTag,
        },
    },
}

M.GetVirtualMachineOutput = {
    type = "structure",
    id = "GetVirtualMachineOutput",
    members = {
        VirtualMachine = M.VirtualMachineDetails,
    },
}

M.ListVirtualMachinesInput = {
    type = "structure",
    id = "ListVirtualMachinesInput",
    members = {
        HypervisorArn = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.VirtualMachine = {
    type = "structure",
    id = "VirtualMachine",
    members = {
        HostName = {
            type = "string",
        },
        HypervisorId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Path = {
            type = "string",
        },
        ResourceArn = {
            type = "string",
        },
        LastBackupDate = {
            type = "timestamp",
        },
    },
}

M.ListVirtualMachinesOutput = {
    type = "structure",
    id = "ListVirtualMachinesOutput",
    members = {
        VirtualMachines = {
            type = "list",
            member = M.VirtualMachine,
        },
        NextToken = {
            type = "string",
        },
    },
}

return M
