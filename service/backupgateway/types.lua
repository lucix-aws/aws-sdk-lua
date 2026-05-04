local M = {}

M.AccessDeniedException = {
    type = "structure",
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
    members = {
        GatewayArn = {
            type = "string",
        },
    },
}

M.ConflictException = {
    type = "structure",
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
    members = {
        AverageUploadRateLimitInBitsPerSec = {
            type = "number",
        },
        StartHourOfDay = {
            type = "number",
            traits = {
                required = true,
            },
        },
        EndHourOfDay = {
            type = "number",
            traits = {
                required = true,
            },
        },
        StartMinuteOfHour = {
            type = "number",
            traits = {
                required = true,
            },
        },
        EndMinuteOfHour = {
            type = "number",
            traits = {
                required = true,
            },
        },
        DaysOfWeek = {
            type = "list",
            member_type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.GetBandwidthRateLimitScheduleOutput = {
    type = "structure",
    members = {
        GatewayArn = {
            type = "string",
        },
        BandwidthRateLimitIntervals = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
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
    members = {
        GatewayArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BandwidthRateLimitIntervals = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PutBandwidthRateLimitScheduleOutput = {
    type = "structure",
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
            member_type = "structure",
        },
    },
}

M.CreateGatewayOutput = {
    type = "structure",
    members = {
        GatewayArn = {
            type = "string",
        },
    },
}

M.DeleteGatewayInput = {
    type = "structure",
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
    members = {
        GatewayArn = {
            type = "string",
        },
    },
}

M.DisassociateGatewayFromServerInput = {
    type = "structure",
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
    members = {
        GatewayArn = {
            type = "string",
        },
    },
}

M.GetGatewayInput = {
    type = "structure",
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
    members = {
        DayOfMonth = {
            type = "number",
        },
        DayOfWeek = {
            type = "number",
        },
        HourOfDay = {
            type = "number",
            traits = {
                required = true,
            },
        },
        MinuteOfHour = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.GatewayDetails = {
    type = "structure",
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
        MaintenanceStartTime = {
            type = "structure",
        },
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
    members = {
        Gateway = {
            type = "structure",
        },
    },
}

M.ListGatewaysInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.Gateway = {
    type = "structure",
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
    members = {
        Gateways = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.PutMaintenanceStartTimeInput = {
    type = "structure",
    members = {
        GatewayArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HourOfDay = {
            type = "number",
            traits = {
                required = true,
            },
        },
        MinuteOfHour = {
            type = "number",
            traits = {
                required = true,
            },
        },
        DayOfWeek = {
            type = "number",
        },
        DayOfMonth = {
            type = "number",
        },
    },
}

M.PutMaintenanceStartTimeOutput = {
    type = "structure",
    members = {
        GatewayArn = {
            type = "string",
        },
    },
}

M.TestHypervisorConfigurationInput = {
    type = "structure",
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
}

M.UpdateGatewayInformationInput = {
    type = "structure",
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
    members = {
        GatewayArn = {
            type = "string",
        },
    },
}

M.UpdateGatewaySoftwareNowInput = {
    type = "structure",
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
    members = {
        GatewayArn = {
            type = "string",
        },
    },
}

M.DeleteHypervisorInput = {
    type = "structure",
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
    members = {
        HypervisorArn = {
            type = "string",
        },
    },
}

M.GetHypervisorInput = {
    type = "structure",
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
    members = {
        Hypervisor = {
            type = "structure",
        },
    },
}

M.GetHypervisorPropertyMappingsInput = {
    type = "structure",
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
    members = {
        HypervisorArn = {
            type = "string",
        },
        VmwareToAwsTagMappings = {
            type = "list",
            member_type = "structure",
        },
        IamRoleArn = {
            type = "string",
        },
    },
}

M.PutHypervisorPropertyMappingsInput = {
    type = "structure",
    members = {
        HypervisorArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VmwareToAwsTagMappings = {
            type = "list",
            member_type = "structure",
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
    members = {
        HypervisorArn = {
            type = "string",
        },
    },
}

M.ImportHypervisorConfigurationInput = {
    type = "structure",
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
            member_type = "structure",
        },
    },
}

M.ImportHypervisorConfigurationOutput = {
    type = "structure",
    members = {
        HypervisorArn = {
            type = "string",
        },
    },
}

M.ListHypervisorsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.Hypervisor = {
    type = "structure",
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
    members = {
        Hypervisors = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.StartVirtualMachinesMetadataSyncInput = {
    type = "structure",
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
    members = {
        HypervisorArn = {
            type = "string",
        },
    },
}

M.UpdateHypervisorInput = {
    type = "structure",
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
    members = {
        HypervisorArn = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
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
    members = {
        ResourceArn = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    members = {
        ResourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceOutput = {
    type = "structure",
    members = {
        ResourceARN = {
            type = "string",
        },
    },
}

M.UntagResourceInput = {
    type = "structure",
    members = {
        ResourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagKeys = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
    members = {
        ResourceARN = {
            type = "string",
        },
    },
}

M.GetVirtualMachineInput = {
    type = "structure",
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
            member_type = "structure",
        },
    },
}

M.GetVirtualMachineOutput = {
    type = "structure",
    members = {
        VirtualMachine = {
            type = "structure",
        },
    },
}

M.ListVirtualMachinesInput = {
    type = "structure",
    members = {
        HypervisorArn = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.VirtualMachine = {
    type = "structure",
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
    members = {
        VirtualMachines = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

return M
