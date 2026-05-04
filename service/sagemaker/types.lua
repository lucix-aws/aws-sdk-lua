local M = {}

M.MIGProfileType = {
    MIG_1G_5GB = "mig-1g.5gb",
    MIG_1G_10GB = "mig-1g.10gb",
    MIG_1G_18GB = "mig-1g.18gb",
    MIG_1G_20GB = "mig-1g.20gb",
    MIG_1G_23GB = "mig-1g.23gb",
    MIG_1G_35GB = "mig-1g.35gb",
    MIG_1G_45GB = "mig-1g.45gb",
    MIG_1G_47GB = "mig-1g.47gb",
    MIG_2G_10GB = "mig-2g.10gb",
    MIG_2G_20GB = "mig-2g.20gb",
    MIG_2G_35GB = "mig-2g.35gb",
    MIG_2G_45GB = "mig-2g.45gb",
    MIG_2G_47GB = "mig-2g.47gb",
    MIG_3G_20GB = "mig-3g.20gb",
    MIG_3G_40GB = "mig-3g.40gb",
    MIG_3G_71GB = "mig-3g.71gb",
    MIG_3G_90GB = "mig-3g.90gb",
    MIG_3G_93GB = "mig-3g.93gb",
    MIG_4G_20GB = "mig-4g.20gb",
    MIG_4G_40GB = "mig-4g.40gb",
    MIG_4G_71GB = "mig-4g.71gb",
    MIG_4G_90GB = "mig-4g.90gb",
    MIG_4G_93GB = "mig-4g.93gb",
    MIG_7G_40GB = "mig-7g.40gb",
    MIG_7G_80GB = "mig-7g.80gb",
    MIG_7G_141GB = "mig-7g.141gb",
    MIG_7G_180GB = "mig-7g.180gb",
    MIG_7G_186GB = "mig-7g.186gb",
}

M.AcceleratorPartitionConfig = {
    type = "structure",
    id = "AcceleratorPartitionConfig",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Count = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.ClusterInstanceType = {
    ML_P4D_24XLARGE = "ml.p4d.24xlarge",
    ML_P4DE_24XLARGE = "ml.p4de.24xlarge",
    ML_P5_48XLARGE = "ml.p5.48xlarge",
    ML_P5_4XLARGE = "ml.p5.4xlarge",
    ML_P6E_GB200_36XLARGE = "ml.p6e-gb200.36xlarge",
    ML_TRN1_32XLARGE = "ml.trn1.32xlarge",
    ML_TRN1N_32XLARGE = "ml.trn1n.32xlarge",
    ML_G5_XLARGE = "ml.g5.xlarge",
    ML_G5_2XLARGE = "ml.g5.2xlarge",
    ML_G5_4XLARGE = "ml.g5.4xlarge",
    ML_G5_8XLARGE = "ml.g5.8xlarge",
    ML_G5_12XLARGE = "ml.g5.12xlarge",
    ML_G5_16XLARGE = "ml.g5.16xlarge",
    ML_G5_24XLARGE = "ml.g5.24xlarge",
    ML_G5_48XLARGE = "ml.g5.48xlarge",
    ML_C5_LARGE = "ml.c5.large",
    ML_C5_XLARGE = "ml.c5.xlarge",
    ML_C5_2XLARGE = "ml.c5.2xlarge",
    ML_C5_4XLARGE = "ml.c5.4xlarge",
    ML_C5_9XLARGE = "ml.c5.9xlarge",
    ML_C5_12XLARGE = "ml.c5.12xlarge",
    ML_C5_18XLARGE = "ml.c5.18xlarge",
    ML_C5_24XLARGE = "ml.c5.24xlarge",
    ML_C5N_LARGE = "ml.c5n.large",
    ML_C5N_2XLARGE = "ml.c5n.2xlarge",
    ML_C5N_4XLARGE = "ml.c5n.4xlarge",
    ML_C5N_9XLARGE = "ml.c5n.9xlarge",
    ML_C5N_18XLARGE = "ml.c5n.18xlarge",
    ML_M5_LARGE = "ml.m5.large",
    ML_M5_XLARGE = "ml.m5.xlarge",
    ML_M5_2XLARGE = "ml.m5.2xlarge",
    ML_M5_4XLARGE = "ml.m5.4xlarge",
    ML_M5_8XLARGE = "ml.m5.8xlarge",
    ML_M5_12XLARGE = "ml.m5.12xlarge",
    ML_M5_16XLARGE = "ml.m5.16xlarge",
    ML_M5_24XLARGE = "ml.m5.24xlarge",
    ML_T3_MEDIUM = "ml.t3.medium",
    ML_T3_LARGE = "ml.t3.large",
    ML_T3_XLARGE = "ml.t3.xlarge",
    ML_T3_2XLARGE = "ml.t3.2xlarge",
    ML_G6_XLARGE = "ml.g6.xlarge",
    ML_G6_2XLARGE = "ml.g6.2xlarge",
    ML_G6_4XLARGE = "ml.g6.4xlarge",
    ML_G6_8XLARGE = "ml.g6.8xlarge",
    ML_G6_16XLARGE = "ml.g6.16xlarge",
    ML_G6_12XLARGE = "ml.g6.12xlarge",
    ML_G6_24XLARGE = "ml.g6.24xlarge",
    ML_G6_48XLARGE = "ml.g6.48xlarge",
    ML_GR6_4XLARGE = "ml.gr6.4xlarge",
    ML_GR6_8XLARGE = "ml.gr6.8xlarge",
    ML_G6E_XLARGE = "ml.g6e.xlarge",
    ML_G6E_2XLARGE = "ml.g6e.2xlarge",
    ML_G6E_4XLARGE = "ml.g6e.4xlarge",
    ML_G6E_8XLARGE = "ml.g6e.8xlarge",
    ML_G6E_16XLARGE = "ml.g6e.16xlarge",
    ML_G6E_12XLARGE = "ml.g6e.12xlarge",
    ML_G6E_24XLARGE = "ml.g6e.24xlarge",
    ML_G6E_48XLARGE = "ml.g6e.48xlarge",
    ML_P5E_48XLARGE = "ml.p5e.48xlarge",
    ML_P5EN_48XLARGE = "ml.p5en.48xlarge",
    ML_P6_B200_48XLARGE = "ml.p6-b200.48xlarge",
    ML_TRN2_3XLARGE = "ml.trn2.3xlarge",
    ML_TRN2_48XLARGE = "ml.trn2.48xlarge",
    ML_C6I_LARGE = "ml.c6i.large",
    ML_C6I_XLARGE = "ml.c6i.xlarge",
    ML_C6I_2XLARGE = "ml.c6i.2xlarge",
    ML_C6I_4XLARGE = "ml.c6i.4xlarge",
    ML_C6I_8XLARGE = "ml.c6i.8xlarge",
    ML_C6I_12XLARGE = "ml.c6i.12xlarge",
    ML_C6I_16XLARGE = "ml.c6i.16xlarge",
    ML_C6I_24XLARGE = "ml.c6i.24xlarge",
    ML_C6I_32XLARGE = "ml.c6i.32xlarge",
    ML_M6I_LARGE = "ml.m6i.large",
    ML_M6I_XLARGE = "ml.m6i.xlarge",
    ML_M6I_2XLARGE = "ml.m6i.2xlarge",
    ML_M6I_4XLARGE = "ml.m6i.4xlarge",
    ML_M6I_8XLARGE = "ml.m6i.8xlarge",
    ML_M6I_12XLARGE = "ml.m6i.12xlarge",
    ML_M6I_16XLARGE = "ml.m6i.16xlarge",
    ML_M6I_24XLARGE = "ml.m6i.24xlarge",
    ML_M6I_32XLARGE = "ml.m6i.32xlarge",
    ML_R6I_LARGE = "ml.r6i.large",
    ML_R6I_XLARGE = "ml.r6i.xlarge",
    ML_R6I_2XLARGE = "ml.r6i.2xlarge",
    ML_R6I_4XLARGE = "ml.r6i.4xlarge",
    ML_R6I_8XLARGE = "ml.r6i.8xlarge",
    ML_R6I_12XLARGE = "ml.r6i.12xlarge",
    ML_R6I_16XLARGE = "ml.r6i.16xlarge",
    ML_R6I_24XLARGE = "ml.r6i.24xlarge",
    ML_R6I_32XLARGE = "ml.r6i.32xlarge",
    ML_I3EN_LARGE = "ml.i3en.large",
    ML_I3EN_XLARGE = "ml.i3en.xlarge",
    ML_I3EN_2XLARGE = "ml.i3en.2xlarge",
    ML_I3EN_3XLARGE = "ml.i3en.3xlarge",
    ML_I3EN_6XLARGE = "ml.i3en.6xlarge",
    ML_I3EN_12XLARGE = "ml.i3en.12xlarge",
    ML_I3EN_24XLARGE = "ml.i3en.24xlarge",
    ML_M7I_LARGE = "ml.m7i.large",
    ML_M7I_XLARGE = "ml.m7i.xlarge",
    ML_M7I_2XLARGE = "ml.m7i.2xlarge",
    ML_M7I_4XLARGE = "ml.m7i.4xlarge",
    ML_M7I_8XLARGE = "ml.m7i.8xlarge",
    ML_M7I_12XLARGE = "ml.m7i.12xlarge",
    ML_M7I_16XLARGE = "ml.m7i.16xlarge",
    ML_M7I_24XLARGE = "ml.m7i.24xlarge",
    ML_M7I_48XLARGE = "ml.m7i.48xlarge",
    ML_R7I_LARGE = "ml.r7i.large",
    ML_R7I_XLARGE = "ml.r7i.xlarge",
    ML_R7I_2XLARGE = "ml.r7i.2xlarge",
    ML_R7I_4XLARGE = "ml.r7i.4xlarge",
    ML_R7I_8XLARGE = "ml.r7i.8xlarge",
    ML_R7I_12XLARGE = "ml.r7i.12xlarge",
    ML_R7I_16XLARGE = "ml.r7i.16xlarge",
    ML_R7I_24XLARGE = "ml.r7i.24xlarge",
    ML_R7I_48XLARGE = "ml.r7i.48xlarge",
    ML_R5D_16XLARGE = "ml.r5d.16xlarge",
    ML_G7E_2XLARGE = "ml.g7e.2xlarge",
    ML_G7E_4XLARGE = "ml.g7e.4xlarge",
    ML_G7E_8XLARGE = "ml.g7e.8xlarge",
    ML_G7E_12XLARGE = "ml.g7e.12xlarge",
    ML_G7E_24XLARGE = "ml.g7e.24xlarge",
    ML_G7E_48XLARGE = "ml.g7e.48xlarge",
    ML_P6_B300_48XLARGE = "ml.p6-b300.48xlarge",
}

M.ComputeQuotaResourceConfig = {
    type = "structure",
    id = "ComputeQuotaResourceConfig",
    members = {
        InstanceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Count = {
            type = "integer",
        },
        Accelerators = {
            type = "integer",
        },
        VCpu = {
            type = "float",
        },
        MemoryInGiB = {
            type = "float",
        },
        AcceleratorPartition = M.AcceleratorPartitionConfig,
    },
}

M.AccountDefaultStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.ActionSource = {
    type = "structure",
    id = "ActionSource",
    members = {
        SourceUri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceType = {
            type = "string",
        },
        SourceId = {
            type = "string",
        },
    },
}

M.ActionStatus = {
    UNKNOWN = "Unknown",
    IN_PROGRESS = "InProgress",
    COMPLETED = "Completed",
    FAILED = "Failed",
    STOPPING = "Stopping",
    STOPPED = "Stopped",
}

M.ActionSummary = {
    type = "structure",
    id = "ActionSummary",
    members = {
        ActionArn = {
            type = "string",
        },
        ActionName = {
            type = "string",
        },
        Source = M.ActionSource,
        ActionType = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
    },
}

M.ActivationState = {
    ENABLED = "Enabled",
    DISABLED = "Disabled",
}

M.ActiveClusterOperationName = {
    SCALING = "Scaling",
}

M.AssociationEdgeType = {
    CONTRIBUTED_TO = "ContributedTo",
    ASSOCIATED_WITH = "AssociatedWith",
    DERIVED_FROM = "DerivedFrom",
    PRODUCED = "Produced",
    SAME_AS = "SameAs",
}

M.AddAssociationInput = {
    type = "structure",
    id = "AddAssociationInput",
    members = {
        SourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DestinationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AssociationType = {
            type = "string",
        },
    },
}

M.AddAssociationOutput = {
    type = "structure",
    id = "AddAssociationOutput",
    members = {
        SourceArn = {
            type = "string",
        },
        DestinationArn = {
            type = "string",
        },
    },
}

M.ResourceLimitExceeded = {
    type = "structure",
    id = "ResourceLimitExceeded",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceNotFound = {
    type = "structure",
    id = "ResourceNotFound",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AddClusterNodeSpecification = {
    type = "structure",
    id = "AddClusterNodeSpecification",
    members = {
        InstanceGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IncrementTargetCountBy = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        AvailabilityZones = {
            type = "list",
            member = { type = "string" },
        },
        InstanceTypes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.AdditionalEnis = {
    type = "structure",
    id = "AdditionalEnis",
    members = {
        EfaEnis = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ModelCompressionType = {
    None = "None",
    Gzip = "Gzip",
}

M.InferenceHubAccessConfig = {
    type = "structure",
    id = "InferenceHubAccessConfig",
    members = {
        HubContentArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ModelAccessConfig = {
    type = "structure",
    id = "ModelAccessConfig",
    members = {
        AcceptEula = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.S3ModelDataType = {
    S3Prefix = "S3Prefix",
    S3Object = "S3Object",
}

M.S3ModelDataSource = {
    type = "structure",
    id = "S3ModelDataSource",
    members = {
        S3Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        S3DataType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CompressionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ModelAccessConfig = M.ModelAccessConfig,
        HubAccessConfig = M.InferenceHubAccessConfig,
        ManifestS3Uri = {
            type = "string",
        },
        ETag = {
            type = "string",
        },
        ManifestEtag = {
            type = "string",
        },
    },
}

M.AdditionalModelDataSource = {
    type = "structure",
    id = "AdditionalModelDataSource",
    members = {
        ChannelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        S3DataSource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3ModelDataSource }),
    },
}

M.CompressionType = {
    NONE = "None",
    GZIP = "Gzip",
}

M.AdditionalS3DataSourceDataType = {
    S3OBJECT = "S3Object",
    S3PREFIX = "S3Prefix",
}

M.AdditionalS3DataSource = {
    type = "structure",
    id = "AdditionalS3DataSource",
    members = {
        S3DataType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        S3Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CompressionType = {
            type = "string",
        },
        ETag = {
            type = "string",
        },
    },
}

M.BaseModel = {
    type = "structure",
    id = "BaseModel",
    members = {
        HubContentName = {
            type = "string",
        },
        HubContentVersion = {
            type = "string",
        },
        RecipeName = {
            type = "string",
        },
    },
}

M.ModelDataSource = {
    type = "structure",
    id = "ModelDataSource",
    members = {
        S3DataSource = M.S3ModelDataSource,
    },
}

M.ModelInput = {
    type = "structure",
    id = "ModelInput",
    members = {
        DataInputConfig = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ModelPackageContainerDefinition = {
    type = "structure",
    id = "ModelPackageContainerDefinition",
    members = {
        ContainerHostname = {
            type = "string",
        },
        Image = {
            type = "string",
        },
        ImageDigest = {
            type = "string",
        },
        ModelDataUrl = {
            type = "string",
        },
        ModelDataSource = M.ModelDataSource,
        ProductId = {
            type = "string",
        },
        Environment = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        ModelInput = M.ModelInput,
        Framework = {
            type = "string",
        },
        FrameworkVersion = {
            type = "string",
        },
        NearestModelName = {
            type = "string",
        },
        AdditionalModelDataSources = {
            type = "list",
            member = M.AdditionalModelDataSource,
        },
        AdditionalS3DataSource = M.AdditionalS3DataSource,
        ModelDataETag = {
            type = "string",
        },
        IsCheckpoint = {
            type = "boolean",
        },
        BaseModel = M.BaseModel,
    },
}

M.ProductionVariantInstanceType = {
    ML_T2_MEDIUM = "ml.t2.medium",
    ML_T2_LARGE = "ml.t2.large",
    ML_T2_XLARGE = "ml.t2.xlarge",
    ML_T2_2XLARGE = "ml.t2.2xlarge",
    ML_M4_XLARGE = "ml.m4.xlarge",
    ML_M4_2XLARGE = "ml.m4.2xlarge",
    ML_M4_4XLARGE = "ml.m4.4xlarge",
    ML_M4_10XLARGE = "ml.m4.10xlarge",
    ML_M4_16XLARGE = "ml.m4.16xlarge",
    ML_M5_LARGE = "ml.m5.large",
    ML_M5_XLARGE = "ml.m5.xlarge",
    ML_M5_2XLARGE = "ml.m5.2xlarge",
    ML_M5_4XLARGE = "ml.m5.4xlarge",
    ML_M5_12XLARGE = "ml.m5.12xlarge",
    ML_M5_24XLARGE = "ml.m5.24xlarge",
    ML_M5D_LARGE = "ml.m5d.large",
    ML_M5D_XLARGE = "ml.m5d.xlarge",
    ML_M5D_2XLARGE = "ml.m5d.2xlarge",
    ML_M5D_4XLARGE = "ml.m5d.4xlarge",
    ML_M5D_12XLARGE = "ml.m5d.12xlarge",
    ML_M5D_24XLARGE = "ml.m5d.24xlarge",
    ML_C4_LARGE = "ml.c4.large",
    ML_C4_XLARGE = "ml.c4.xlarge",
    ML_C4_2XLARGE = "ml.c4.2xlarge",
    ML_C4_4XLARGE = "ml.c4.4xlarge",
    ML_C4_8XLARGE = "ml.c4.8xlarge",
    ML_P2_XLARGE = "ml.p2.xlarge",
    ML_P2_8XLARGE = "ml.p2.8xlarge",
    ML_P2_16XLARGE = "ml.p2.16xlarge",
    ML_P3_2XLARGE = "ml.p3.2xlarge",
    ML_P3_8XLARGE = "ml.p3.8xlarge",
    ML_P3_16XLARGE = "ml.p3.16xlarge",
    ML_C5_LARGE = "ml.c5.large",
    ML_C5_XLARGE = "ml.c5.xlarge",
    ML_C5_2XLARGE = "ml.c5.2xlarge",
    ML_C5_4XLARGE = "ml.c5.4xlarge",
    ML_C5_9XLARGE = "ml.c5.9xlarge",
    ML_C5_18XLARGE = "ml.c5.18xlarge",
    ML_C5D_LARGE = "ml.c5d.large",
    ML_C5D_XLARGE = "ml.c5d.xlarge",
    ML_C5D_2XLARGE = "ml.c5d.2xlarge",
    ML_C5D_4XLARGE = "ml.c5d.4xlarge",
    ML_C5D_9XLARGE = "ml.c5d.9xlarge",
    ML_C5D_18XLARGE = "ml.c5d.18xlarge",
    ML_G4DN_XLARGE = "ml.g4dn.xlarge",
    ML_G4DN_2XLARGE = "ml.g4dn.2xlarge",
    ML_G4DN_4XLARGE = "ml.g4dn.4xlarge",
    ML_G4DN_8XLARGE = "ml.g4dn.8xlarge",
    ML_G4DN_12XLARGE = "ml.g4dn.12xlarge",
    ML_G4DN_16XLARGE = "ml.g4dn.16xlarge",
    ML_R5_LARGE = "ml.r5.large",
    ML_R5_XLARGE = "ml.r5.xlarge",
    ML_R5_2XLARGE = "ml.r5.2xlarge",
    ML_R5_4XLARGE = "ml.r5.4xlarge",
    ML_R5_12XLARGE = "ml.r5.12xlarge",
    ML_R5_24XLARGE = "ml.r5.24xlarge",
    ML_R5D_LARGE = "ml.r5d.large",
    ML_R5D_XLARGE = "ml.r5d.xlarge",
    ML_R5D_2XLARGE = "ml.r5d.2xlarge",
    ML_R5D_4XLARGE = "ml.r5d.4xlarge",
    ML_R5D_12XLARGE = "ml.r5d.12xlarge",
    ML_R5D_24XLARGE = "ml.r5d.24xlarge",
    ML_INF1_XLARGE = "ml.inf1.xlarge",
    ML_INF1_2XLARGE = "ml.inf1.2xlarge",
    ML_INF1_6XLARGE = "ml.inf1.6xlarge",
    ML_INF1_24XLARGE = "ml.inf1.24xlarge",
    ML_DL1_24XLARGE = "ml.dl1.24xlarge",
    ML_C6I_LARGE = "ml.c6i.large",
    ML_C6I_XLARGE = "ml.c6i.xlarge",
    ML_C6I_2XLARGE = "ml.c6i.2xlarge",
    ML_C6I_4XLARGE = "ml.c6i.4xlarge",
    ML_C6I_8XLARGE = "ml.c6i.8xlarge",
    ML_C6I_12XLARGE = "ml.c6i.12xlarge",
    ML_C6I_16XLARGE = "ml.c6i.16xlarge",
    ML_C6I_24XLARGE = "ml.c6i.24xlarge",
    ML_C6I_32XLARGE = "ml.c6i.32xlarge",
    ML_M6I_LARGE = "ml.m6i.large",
    ML_M6I_XLARGE = "ml.m6i.xlarge",
    ML_M6I_2XLARGE = "ml.m6i.2xlarge",
    ML_M6I_4XLARGE = "ml.m6i.4xlarge",
    ML_M6I_8XLARGE = "ml.m6i.8xlarge",
    ML_M6I_12XLARGE = "ml.m6i.12xlarge",
    ML_M6I_16XLARGE = "ml.m6i.16xlarge",
    ML_M6I_24XLARGE = "ml.m6i.24xlarge",
    ML_M6I_32XLARGE = "ml.m6i.32xlarge",
    ML_R6I_LARGE = "ml.r6i.large",
    ML_R6I_XLARGE = "ml.r6i.xlarge",
    ML_R6I_2XLARGE = "ml.r6i.2xlarge",
    ML_R6I_4XLARGE = "ml.r6i.4xlarge",
    ML_R6I_8XLARGE = "ml.r6i.8xlarge",
    ML_R6I_12XLARGE = "ml.r6i.12xlarge",
    ML_R6I_16XLARGE = "ml.r6i.16xlarge",
    ML_R6I_24XLARGE = "ml.r6i.24xlarge",
    ML_R6I_32XLARGE = "ml.r6i.32xlarge",
    ML_G5_XLARGE = "ml.g5.xlarge",
    ML_G5_2XLARGE = "ml.g5.2xlarge",
    ML_G5_4XLARGE = "ml.g5.4xlarge",
    ML_G5_8XLARGE = "ml.g5.8xlarge",
    ML_G5_12XLARGE = "ml.g5.12xlarge",
    ML_G5_16XLARGE = "ml.g5.16xlarge",
    ML_G5_24XLARGE = "ml.g5.24xlarge",
    ML_G5_48XLARGE = "ml.g5.48xlarge",
    ML_G6_XLARGE = "ml.g6.xlarge",
    ML_G6_2XLARGE = "ml.g6.2xlarge",
    ML_G6_4XLARGE = "ml.g6.4xlarge",
    ML_G6_8XLARGE = "ml.g6.8xlarge",
    ML_G6_12XLARGE = "ml.g6.12xlarge",
    ML_G6_16XLARGE = "ml.g6.16xlarge",
    ML_G6_24XLARGE = "ml.g6.24xlarge",
    ML_G6_48XLARGE = "ml.g6.48xlarge",
    ML_R8G_MEDIUM = "ml.r8g.medium",
    ML_R8G_LARGE = "ml.r8g.large",
    ML_R8G_XLARGE = "ml.r8g.xlarge",
    ML_R8G_2XLARGE = "ml.r8g.2xlarge",
    ML_R8G_4XLARGE = "ml.r8g.4xlarge",
    ML_R8G_8XLARGE = "ml.r8g.8xlarge",
    ML_R8G_12XLARGE = "ml.r8g.12xlarge",
    ML_R8G_16XLARGE = "ml.r8g.16xlarge",
    ML_R8G_24XLARGE = "ml.r8g.24xlarge",
    ML_R8G_48XLARGE = "ml.r8g.48xlarge",
    ML_G6E_XLARGE = "ml.g6e.xlarge",
    ML_G6E_2XLARGE = "ml.g6e.2xlarge",
    ML_G6E_4XLARGE = "ml.g6e.4xlarge",
    ML_G6E_8XLARGE = "ml.g6e.8xlarge",
    ML_G6E_12XLARGE = "ml.g6e.12xlarge",
    ML_G6E_16XLARGE = "ml.g6e.16xlarge",
    ML_G6E_24XLARGE = "ml.g6e.24xlarge",
    ML_G6E_48XLARGE = "ml.g6e.48xlarge",
    ML_G7E_2XLARGE = "ml.g7e.2xlarge",
    ML_G7E_4XLARGE = "ml.g7e.4xlarge",
    ML_G7E_8XLARGE = "ml.g7e.8xlarge",
    ML_G7E_12XLARGE = "ml.g7e.12xlarge",
    ML_G7E_24XLARGE = "ml.g7e.24xlarge",
    ML_G7E_48XLARGE = "ml.g7e.48xlarge",
    ML_P4D_24XLARGE = "ml.p4d.24xlarge",
    ML_C7G_LARGE = "ml.c7g.large",
    ML_C7G_XLARGE = "ml.c7g.xlarge",
    ML_C7G_2XLARGE = "ml.c7g.2xlarge",
    ML_C7G_4XLARGE = "ml.c7g.4xlarge",
    ML_C7G_8XLARGE = "ml.c7g.8xlarge",
    ML_C7G_12XLARGE = "ml.c7g.12xlarge",
    ML_C7G_16XLARGE = "ml.c7g.16xlarge",
    ML_M6G_LARGE = "ml.m6g.large",
    ML_M6G_XLARGE = "ml.m6g.xlarge",
    ML_M6G_2XLARGE = "ml.m6g.2xlarge",
    ML_M6G_4XLARGE = "ml.m6g.4xlarge",
    ML_M6G_8XLARGE = "ml.m6g.8xlarge",
    ML_M6G_12XLARGE = "ml.m6g.12xlarge",
    ML_M6G_16XLARGE = "ml.m6g.16xlarge",
    ML_M6GD_LARGE = "ml.m6gd.large",
    ML_M6GD_XLARGE = "ml.m6gd.xlarge",
    ML_M6GD_2XLARGE = "ml.m6gd.2xlarge",
    ML_M6GD_4XLARGE = "ml.m6gd.4xlarge",
    ML_M6GD_8XLARGE = "ml.m6gd.8xlarge",
    ML_M6GD_12XLARGE = "ml.m6gd.12xlarge",
    ML_M6GD_16XLARGE = "ml.m6gd.16xlarge",
    ML_C6G_LARGE = "ml.c6g.large",
    ML_C6G_XLARGE = "ml.c6g.xlarge",
    ML_C6G_2XLARGE = "ml.c6g.2xlarge",
    ML_C6G_4XLARGE = "ml.c6g.4xlarge",
    ML_C6G_8XLARGE = "ml.c6g.8xlarge",
    ML_C6G_12XLARGE = "ml.c6g.12xlarge",
    ML_C6G_16XLARGE = "ml.c6g.16xlarge",
    ML_C6GD_LARGE = "ml.c6gd.large",
    ML_C6GD_XLARGE = "ml.c6gd.xlarge",
    ML_C6GD_2XLARGE = "ml.c6gd.2xlarge",
    ML_C6GD_4XLARGE = "ml.c6gd.4xlarge",
    ML_C6GD_8XLARGE = "ml.c6gd.8xlarge",
    ML_C6GD_12XLARGE = "ml.c6gd.12xlarge",
    ML_C6GD_16XLARGE = "ml.c6gd.16xlarge",
    ML_C6GN_LARGE = "ml.c6gn.large",
    ML_C6GN_XLARGE = "ml.c6gn.xlarge",
    ML_C6GN_2XLARGE = "ml.c6gn.2xlarge",
    ML_C6GN_4XLARGE = "ml.c6gn.4xlarge",
    ML_C6GN_8XLARGE = "ml.c6gn.8xlarge",
    ML_C6GN_12XLARGE = "ml.c6gn.12xlarge",
    ML_C6GN_16XLARGE = "ml.c6gn.16xlarge",
    ML_R6G_LARGE = "ml.r6g.large",
    ML_R6G_XLARGE = "ml.r6g.xlarge",
    ML_R6G_2XLARGE = "ml.r6g.2xlarge",
    ML_R6G_4XLARGE = "ml.r6g.4xlarge",
    ML_R6G_8XLARGE = "ml.r6g.8xlarge",
    ML_R6G_12XLARGE = "ml.r6g.12xlarge",
    ML_R6G_16XLARGE = "ml.r6g.16xlarge",
    ML_R6GD_LARGE = "ml.r6gd.large",
    ML_R6GD_XLARGE = "ml.r6gd.xlarge",
    ML_R6GD_2XLARGE = "ml.r6gd.2xlarge",
    ML_R6GD_4XLARGE = "ml.r6gd.4xlarge",
    ML_R6GD_8XLARGE = "ml.r6gd.8xlarge",
    ML_R6GD_12XLARGE = "ml.r6gd.12xlarge",
    ML_R6GD_16XLARGE = "ml.r6gd.16xlarge",
    ML_P4DE_24XLARGE = "ml.p4de.24xlarge",
    ML_TRN1_2XLARGE = "ml.trn1.2xlarge",
    ML_TRN1_32XLARGE = "ml.trn1.32xlarge",
    ML_TRN1N_32XLARGE = "ml.trn1n.32xlarge",
    ML_TRN2_48XLARGE = "ml.trn2.48xlarge",
    ML_INF2_XLARGE = "ml.inf2.xlarge",
    ML_INF2_8XLARGE = "ml.inf2.8xlarge",
    ML_INF2_24XLARGE = "ml.inf2.24xlarge",
    ML_INF2_48XLARGE = "ml.inf2.48xlarge",
    ML_P5_48XLARGE = "ml.p5.48xlarge",
    ML_P5E_48XLARGE = "ml.p5e.48xlarge",
    ML_P5EN_48XLARGE = "ml.p5en.48xlarge",
    ML_M7I_LARGE = "ml.m7i.large",
    ML_M7I_XLARGE = "ml.m7i.xlarge",
    ML_M7I_2XLARGE = "ml.m7i.2xlarge",
    ML_M7I_4XLARGE = "ml.m7i.4xlarge",
    ML_M7I_8XLARGE = "ml.m7i.8xlarge",
    ML_M7I_12XLARGE = "ml.m7i.12xlarge",
    ML_M7I_16XLARGE = "ml.m7i.16xlarge",
    ML_M7I_24XLARGE = "ml.m7i.24xlarge",
    ML_M7I_48XLARGE = "ml.m7i.48xlarge",
    ML_C7I_LARGE = "ml.c7i.large",
    ML_C7I_XLARGE = "ml.c7i.xlarge",
    ML_C7I_2XLARGE = "ml.c7i.2xlarge",
    ML_C7I_4XLARGE = "ml.c7i.4xlarge",
    ML_C7I_8XLARGE = "ml.c7i.8xlarge",
    ML_C7I_12XLARGE = "ml.c7i.12xlarge",
    ML_C7I_16XLARGE = "ml.c7i.16xlarge",
    ML_C7I_24XLARGE = "ml.c7i.24xlarge",
    ML_C7I_48XLARGE = "ml.c7i.48xlarge",
    ML_R7I_LARGE = "ml.r7i.large",
    ML_R7I_XLARGE = "ml.r7i.xlarge",
    ML_R7I_2XLARGE = "ml.r7i.2xlarge",
    ML_R7I_4XLARGE = "ml.r7i.4xlarge",
    ML_R7I_8XLARGE = "ml.r7i.8xlarge",
    ML_R7I_12XLARGE = "ml.r7i.12xlarge",
    ML_R7I_16XLARGE = "ml.r7i.16xlarge",
    ML_R7I_24XLARGE = "ml.r7i.24xlarge",
    ML_R7I_48XLARGE = "ml.r7i.48xlarge",
    ML_C8G_MEDIUM = "ml.c8g.medium",
    ML_C8G_LARGE = "ml.c8g.large",
    ML_C8G_XLARGE = "ml.c8g.xlarge",
    ML_C8G_2XLARGE = "ml.c8g.2xlarge",
    ML_C8G_4XLARGE = "ml.c8g.4xlarge",
    ML_C8G_8XLARGE = "ml.c8g.8xlarge",
    ML_C8G_12XLARGE = "ml.c8g.12xlarge",
    ML_C8G_16XLARGE = "ml.c8g.16xlarge",
    ML_C8G_24XLARGE = "ml.c8g.24xlarge",
    ML_C8G_48XLARGE = "ml.c8g.48xlarge",
    ML_R7GD_MEDIUM = "ml.r7gd.medium",
    ML_R7GD_LARGE = "ml.r7gd.large",
    ML_R7GD_XLARGE = "ml.r7gd.xlarge",
    ML_R7GD_2XLARGE = "ml.r7gd.2xlarge",
    ML_R7GD_4XLARGE = "ml.r7gd.4xlarge",
    ML_R7GD_8XLARGE = "ml.r7gd.8xlarge",
    ML_R7GD_12XLARGE = "ml.r7gd.12xlarge",
    ML_R7GD_16XLARGE = "ml.r7gd.16xlarge",
    ML_M8G_MEDIUM = "ml.m8g.medium",
    ML_M8G_LARGE = "ml.m8g.large",
    ML_M8G_XLARGE = "ml.m8g.xlarge",
    ML_M8G_2XLARGE = "ml.m8g.2xlarge",
    ML_M8G_4XLARGE = "ml.m8g.4xlarge",
    ML_M8G_8XLARGE = "ml.m8g.8xlarge",
    ML_M8G_12XLARGE = "ml.m8g.12xlarge",
    ML_M8G_16XLARGE = "ml.m8g.16xlarge",
    ML_M8G_24XLARGE = "ml.m8g.24xlarge",
    ML_M8G_48XLARGE = "ml.m8g.48xlarge",
    ML_C6IN_LARGE = "ml.c6in.large",
    ML_C6IN_XLARGE = "ml.c6in.xlarge",
    ML_C6IN_2XLARGE = "ml.c6in.2xlarge",
    ML_C6IN_4XLARGE = "ml.c6in.4xlarge",
    ML_C6IN_8XLARGE = "ml.c6in.8xlarge",
    ML_C6IN_12XLARGE = "ml.c6in.12xlarge",
    ML_C6IN_16XLARGE = "ml.c6in.16xlarge",
    ML_C6IN_24XLARGE = "ml.c6in.24xlarge",
    ML_C6IN_32XLARGE = "ml.c6in.32xlarge",
    ML_P6_B200_48XLARGE = "ml.p6-b200.48xlarge",
    ML_P6_B300_48XLARGE = "ml.p6-b300.48xlarge",
    ML_P6E_GB200_36XLARGE = "ml.p6e-gb200.36xlarge",
    ML_P5_4XLARGE = "ml.p5.4xlarge",
}

M.TransformInstanceType = {
    ML_M4_XLARGE = "ml.m4.xlarge",
    ML_M4_2XLARGE = "ml.m4.2xlarge",
    ML_M4_4XLARGE = "ml.m4.4xlarge",
    ML_M4_10XLARGE = "ml.m4.10xlarge",
    ML_M4_16XLARGE = "ml.m4.16xlarge",
    ML_C4_XLARGE = "ml.c4.xlarge",
    ML_C4_2XLARGE = "ml.c4.2xlarge",
    ML_C4_4XLARGE = "ml.c4.4xlarge",
    ML_C4_8XLARGE = "ml.c4.8xlarge",
    ML_P2_XLARGE = "ml.p2.xlarge",
    ML_P2_8XLARGE = "ml.p2.8xlarge",
    ML_P2_16XLARGE = "ml.p2.16xlarge",
    ML_P3_2XLARGE = "ml.p3.2xlarge",
    ML_P3_8XLARGE = "ml.p3.8xlarge",
    ML_P3_16XLARGE = "ml.p3.16xlarge",
    ML_C5_XLARGE = "ml.c5.xlarge",
    ML_C5_2XLARGE = "ml.c5.2xlarge",
    ML_C5_4XLARGE = "ml.c5.4xlarge",
    ML_C5_9XLARGE = "ml.c5.9xlarge",
    ML_C5_18XLARGE = "ml.c5.18xlarge",
    ML_M5_LARGE = "ml.m5.large",
    ML_M5_XLARGE = "ml.m5.xlarge",
    ML_M5_2XLARGE = "ml.m5.2xlarge",
    ML_M5_4XLARGE = "ml.m5.4xlarge",
    ML_M5_12XLARGE = "ml.m5.12xlarge",
    ML_M5_24XLARGE = "ml.m5.24xlarge",
    ML_M6I_LARGE = "ml.m6i.large",
    ML_M6I_XLARGE = "ml.m6i.xlarge",
    ML_M6I_2XLARGE = "ml.m6i.2xlarge",
    ML_M6I_4XLARGE = "ml.m6i.4xlarge",
    ML_M6I_8XLARGE = "ml.m6i.8xlarge",
    ML_M6I_12XLARGE = "ml.m6i.12xlarge",
    ML_M6I_16XLARGE = "ml.m6i.16xlarge",
    ML_M6I_24XLARGE = "ml.m6i.24xlarge",
    ML_M6I_32XLARGE = "ml.m6i.32xlarge",
    ML_C6I_LARGE = "ml.c6i.large",
    ML_C6I_XLARGE = "ml.c6i.xlarge",
    ML_C6I_2XLARGE = "ml.c6i.2xlarge",
    ML_C6I_4XLARGE = "ml.c6i.4xlarge",
    ML_C6I_8XLARGE = "ml.c6i.8xlarge",
    ML_C6I_12XLARGE = "ml.c6i.12xlarge",
    ML_C6I_16XLARGE = "ml.c6i.16xlarge",
    ML_C6I_24XLARGE = "ml.c6i.24xlarge",
    ML_C6I_32XLARGE = "ml.c6i.32xlarge",
    ML_R6I_LARGE = "ml.r6i.large",
    ML_R6I_XLARGE = "ml.r6i.xlarge",
    ML_R6I_2XLARGE = "ml.r6i.2xlarge",
    ML_R6I_4XLARGE = "ml.r6i.4xlarge",
    ML_R6I_8XLARGE = "ml.r6i.8xlarge",
    ML_R6I_12XLARGE = "ml.r6i.12xlarge",
    ML_R6I_16XLARGE = "ml.r6i.16xlarge",
    ML_R6I_24XLARGE = "ml.r6i.24xlarge",
    ML_R6I_32XLARGE = "ml.r6i.32xlarge",
    ML_M7I_LARGE = "ml.m7i.large",
    ML_M7I_XLARGE = "ml.m7i.xlarge",
    ML_M7I_2XLARGE = "ml.m7i.2xlarge",
    ML_M7I_4XLARGE = "ml.m7i.4xlarge",
    ML_M7I_8XLARGE = "ml.m7i.8xlarge",
    ML_M7I_12XLARGE = "ml.m7i.12xlarge",
    ML_M7I_16XLARGE = "ml.m7i.16xlarge",
    ML_M7I_24XLARGE = "ml.m7i.24xlarge",
    ML_M7I_48XLARGE = "ml.m7i.48xlarge",
    ML_C7I_LARGE = "ml.c7i.large",
    ML_C7I_XLARGE = "ml.c7i.xlarge",
    ML_C7I_2XLARGE = "ml.c7i.2xlarge",
    ML_C7I_4XLARGE = "ml.c7i.4xlarge",
    ML_C7I_8XLARGE = "ml.c7i.8xlarge",
    ML_C7I_12XLARGE = "ml.c7i.12xlarge",
    ML_C7I_16XLARGE = "ml.c7i.16xlarge",
    ML_C7I_24XLARGE = "ml.c7i.24xlarge",
    ML_C7I_48XLARGE = "ml.c7i.48xlarge",
    ML_R7I_LARGE = "ml.r7i.large",
    ML_R7I_XLARGE = "ml.r7i.xlarge",
    ML_R7I_2XLARGE = "ml.r7i.2xlarge",
    ML_R7I_4XLARGE = "ml.r7i.4xlarge",
    ML_R7I_8XLARGE = "ml.r7i.8xlarge",
    ML_R7I_12XLARGE = "ml.r7i.12xlarge",
    ML_R7I_16XLARGE = "ml.r7i.16xlarge",
    ML_R7I_24XLARGE = "ml.r7i.24xlarge",
    ML_R7I_48XLARGE = "ml.r7i.48xlarge",
    ML_G4DN_XLARGE = "ml.g4dn.xlarge",
    ML_G4DN_2XLARGE = "ml.g4dn.2xlarge",
    ML_G4DN_4XLARGE = "ml.g4dn.4xlarge",
    ML_G4DN_8XLARGE = "ml.g4dn.8xlarge",
    ML_G4DN_12XLARGE = "ml.g4dn.12xlarge",
    ML_G4DN_16XLARGE = "ml.g4dn.16xlarge",
    ML_G5_XLARGE = "ml.g5.xlarge",
    ML_G5_2XLARGE = "ml.g5.2xlarge",
    ML_G5_4XLARGE = "ml.g5.4xlarge",
    ML_G5_8XLARGE = "ml.g5.8xlarge",
    ML_G5_12XLARGE = "ml.g5.12xlarge",
    ML_G5_16XLARGE = "ml.g5.16xlarge",
    ML_G5_24XLARGE = "ml.g5.24xlarge",
    ML_G5_48XLARGE = "ml.g5.48xlarge",
    ML_TRN1_2XLARGE = "ml.trn1.2xlarge",
    ML_TRN1_32XLARGE = "ml.trn1.32xlarge",
    ML_INF2_XLARGE = "ml.inf2.xlarge",
    ML_INF2_8XLARGE = "ml.inf2.8xlarge",
    ML_INF2_24XLARGE = "ml.inf2.24xlarge",
    ML_INF2_48XLARGE = "ml.inf2.48xlarge",
    ML_G6_XLARGE = "ml.g6.xlarge",
    ML_G6_2XLARGE = "ml.g6.2xlarge",
    ML_G6_4XLARGE = "ml.g6.4xlarge",
    ML_G6_8XLARGE = "ml.g6.8xlarge",
    ML_G6_12XLARGE = "ml.g6.12xlarge",
    ML_G6_16XLARGE = "ml.g6.16xlarge",
    ML_G6_24XLARGE = "ml.g6.24xlarge",
    ML_G6_48XLARGE = "ml.g6.48xlarge",
}

M.AdditionalInferenceSpecificationDefinition = {
    type = "structure",
    id = "AdditionalInferenceSpecificationDefinition",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Containers = {
            type = "list",
            member = M.ModelPackageContainerDefinition,
            traits = {
                required = true,
            },
        },
        SupportedTransformInstanceTypes = {
            type = "list",
            member = { type = "string" },
        },
        SupportedRealtimeInferenceInstanceTypes = {
            type = "list",
            member = { type = "string" },
        },
        SupportedContentTypes = {
            type = "list",
            member = { type = "string" },
        },
        SupportedResponseMIMETypes = {
            type = "list",
            member = { type = "string" },
        },
    },
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

M.AddTagsInput = {
    type = "structure",
    id = "AddTagsInput",
    members = {
        ResourceArn = {
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

M.AddTagsOutput = {
    type = "structure",
    id = "AddTagsOutput",
    members = {
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.AgentVersion = {
    type = "structure",
    id = "AgentVersion",
    members = {
        Version = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AgentCount = {
            type = "long",
            traits = {
                required = true,
            },
        },
    },
}

M.AggregationTransformationValue = {
    Sum = "sum",
    Avg = "avg",
    First = "first",
    Min = "min",
    Max = "max",
}

M.AIBenchmarkInferenceComponent = {
    type = "structure",
    id = "AIBenchmarkInferenceComponent",
    members = {
        Identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AIBenchmarkEndpoint = {
    type = "structure",
    id = "AIBenchmarkEndpoint",
    members = {
        Identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetContainerHostname = {
            type = "string",
        },
        InferenceComponents = {
            type = "list",
            member = M.AIBenchmarkInferenceComponent,
        },
    },
}

M.AIBenchmarkJobStatus = {
    IN_PROGRESS = "InProgress",
    COMPLETED = "Completed",
    FAILED = "Failed",
    STOPPING = "Stopping",
    STOPPED = "Stopped",
}

M.AIBenchmarkJobSummary = {
    type = "structure",
    id = "AIBenchmarkJobSummary",
    members = {
        AIBenchmarkJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AIBenchmarkJobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AIBenchmarkJobStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        EndTime = {
            type = "timestamp",
        },
        AIWorkloadConfigName = {
            type = "string",
        },
    },
}

M.VpcConfig = {
    type = "structure",
    id = "VpcConfig",
    members = {
        SecurityGroupIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Subnets = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.AIBenchmarkNetworkConfig = {
    type = "structure",
    id = "AIBenchmarkNetworkConfig",
    members = {
        VpcConfig = M.VpcConfig,
    },
}

M.AIBenchmarkOutputConfig = {
    type = "structure",
    id = "AIBenchmarkOutputConfig",
    members = {
        S3OutputLocation = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AICloudWatchLogs = {
    type = "structure",
    id = "AICloudWatchLogs",
    members = {
        LogGroupArn = {
            type = "string",
        },
        LogStreamName = {
            type = "string",
        },
    },
}

M.AIBenchmarkOutputResult = {
    type = "structure",
    id = "AIBenchmarkOutputResult",
    members = {
        S3OutputLocation = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CloudWatchLogs = {
            type = "list",
            member = M.AICloudWatchLogs,
        },
    },
}

M.AIBenchmarkTarget = {
    type = "union",
    id = "AIBenchmarkTarget",
    members = {
        Endpoint = M.AIBenchmarkEndpoint,
    },
}

M.AICapacityReservationPreference = {
    CAPACITY_RESERVATIONS_ONLY = "capacity-reservations-only",
}

M.AICapacityReservationConfig = {
    type = "structure",
    id = "AICapacityReservationConfig",
    members = {
        CapacityReservationPreference = {
            type = "string",
        },
        MlReservationArns = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.AIWorkloadS3DataSource = {
    type = "structure",
    id = "AIWorkloadS3DataSource",
    members = {
        S3Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AIWorkloadDataSource = {
    type = "structure",
    id = "AIWorkloadDataSource",
    members = {
        S3DataSource = M.AIWorkloadS3DataSource,
    },
}

M.AIWorkloadInputDataConfig = {
    type = "structure",
    id = "AIWorkloadInputDataConfig",
    members = {
        ChannelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataSource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AIWorkloadDataSource }),
    },
}

M.AIDatasetConfig = {
    type = "union",
    id = "AIDatasetConfig",
    members = {
        InputDataConfig = {
            type = "list",
            member = M.AIWorkloadInputDataConfig,
        },
    },
}

M.AIModelSourceS3 = {
    type = "structure",
    id = "AIModelSourceS3",
    members = {
        S3Uri = {
            type = "string",
        },
    },
}

M.AIModelSource = {
    type = "union",
    id = "AIModelSource",
    members = {
        S3 = M.AIModelSourceS3,
    },
}

M.AIRecommendationInstanceType = {
    ML_G5_XLARGE = "ml.g5.xlarge",
    ML_G5_2XLARGE = "ml.g5.2xlarge",
    ML_G5_4XLARGE = "ml.g5.4xlarge",
    ML_G5_8XLARGE = "ml.g5.8xlarge",
    ML_G5_12XLARGE = "ml.g5.12xlarge",
    ML_G5_16XLARGE = "ml.g5.16xlarge",
    ML_G5_24XLARGE = "ml.g5.24xlarge",
    ML_G5_48XLARGE = "ml.g5.48xlarge",
    ML_G6_XLARGE = "ml.g6.xlarge",
    ML_G6_2XLARGE = "ml.g6.2xlarge",
    ML_G6_4XLARGE = "ml.g6.4xlarge",
    ML_G6_8XLARGE = "ml.g6.8xlarge",
    ML_G6_12XLARGE = "ml.g6.12xlarge",
    ML_G6_16XLARGE = "ml.g6.16xlarge",
    ML_G6_24XLARGE = "ml.g6.24xlarge",
    ML_G6_48XLARGE = "ml.g6.48xlarge",
    ML_G6E_XLARGE = "ml.g6e.xlarge",
    ML_G6E_2XLARGE = "ml.g6e.2xlarge",
    ML_G6E_4XLARGE = "ml.g6e.4xlarge",
    ML_G6E_8XLARGE = "ml.g6e.8xlarge",
    ML_G6E_12XLARGE = "ml.g6e.12xlarge",
    ML_G6E_16XLARGE = "ml.g6e.16xlarge",
    ML_G6E_24XLARGE = "ml.g6e.24xlarge",
    ML_G6E_48XLARGE = "ml.g6e.48xlarge",
    ML_G7E_2XLARGE = "ml.g7e.2xlarge",
    ML_G7E_4XLARGE = "ml.g7e.4xlarge",
    ML_G7E_8XLARGE = "ml.g7e.8xlarge",
    ML_G7E_12XLARGE = "ml.g7e.12xlarge",
    ML_G7E_24XLARGE = "ml.g7e.24xlarge",
    ML_G7E_48XLARGE = "ml.g7e.48xlarge",
    ML_P3_2XLARGE = "ml.p3.2xlarge",
    ML_P3_8XLARGE = "ml.p3.8xlarge",
    ML_P3_16XLARGE = "ml.p3.16xlarge",
    ML_P4D_24XLARGE = "ml.p4d.24xlarge",
    ML_P4DE_24XLARGE = "ml.p4de.24xlarge",
    ML_P5_4XLARGE = "ml.p5.4xlarge",
    ML_P5_48XLARGE = "ml.p5.48xlarge",
    ML_P5E_48XLARGE = "ml.p5e.48xlarge",
    ML_P5EN_48XLARGE = "ml.p5en.48xlarge",
}

M.AIRecommendationDeploymentS3Channel = {
    type = "structure",
    id = "AIRecommendationDeploymentS3Channel",
    members = {
        ChannelName = {
            type = "string",
        },
        Uri = {
            type = "string",
        },
    },
}

M.AIRecommendationDeploymentConfiguration = {
    type = "structure",
    id = "AIRecommendationDeploymentConfiguration",
    members = {
        S3 = {
            type = "list",
            member = M.AIRecommendationDeploymentS3Channel,
        },
        ImageUri = {
            type = "string",
        },
        InstanceType = {
            type = "string",
        },
        InstanceCount = {
            type = "integer",
        },
        CopyCountPerInstance = {
            type = "integer",
        },
        EnvironmentVariables = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.AIRecommendationPerformanceMetric = {
    type = "structure",
    id = "AIRecommendationPerformanceMetric",
    members = {
        Metric = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Stat = {
            type = "string",
        },
        Value = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Unit = {
            type = "string",
        },
    },
}

M.AIRecommendationInstanceDetail = {
    type = "structure",
    id = "AIRecommendationInstanceDetail",
    members = {
        InstanceType = {
            type = "string",
        },
        InstanceCount = {
            type = "integer",
        },
        CopyCountPerInstance = {
            type = "integer",
        },
    },
}

M.AIRecommendationModelDetails = {
    type = "structure",
    id = "AIRecommendationModelDetails",
    members = {
        ModelPackageArn = {
            type = "string",
        },
        InferenceSpecificationName = {
            type = "string",
        },
        InstanceDetails = {
            type = "list",
            member = M.AIRecommendationInstanceDetail,
        },
    },
}

M.AIRecommendationOptimizationType = {
    SPECULATIVE_DECODING = "SpeculativeDecoding",
    KERNEL_TUNING = "KernelTuning",
}

M.AIRecommendationOptimizationDetail = {
    type = "structure",
    id = "AIRecommendationOptimizationDetail",
    members = {
        OptimizationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OptimizationConfig = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.AIRecommendation = {
    type = "structure",
    id = "AIRecommendation",
    members = {
        RecommendationDescription = {
            type = "string",
        },
        OptimizationDetails = {
            type = "list",
            member = M.AIRecommendationOptimizationDetail,
        },
        ModelDetails = M.AIRecommendationModelDetails,
        DeploymentConfiguration = M.AIRecommendationDeploymentConfiguration,
        AIBenchmarkJobArn = {
            type = "string",
        },
        ExpectedPerformance = {
            type = "list",
            member = M.AIRecommendationPerformanceMetric,
        },
    },
}

M.AIRecommendationComputeSpec = {
    type = "structure",
    id = "AIRecommendationComputeSpec",
    members = {
        InstanceTypes = {
            type = "list",
            member = { type = "string" },
        },
        CapacityReservationConfig = M.AICapacityReservationConfig,
    },
}

M.AIRecommendationMetric = {
    TTFT_MS = "ttft-ms",
    THROUGHPUT = "throughput",
    COST = "cost",
}

M.AIRecommendationConstraint = {
    type = "structure",
    id = "AIRecommendationConstraint",
    members = {
        Metric = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AIRecommendationInferenceFramework = {
    LMI = "LMI",
    VLLM = "VLLM",
}

M.AIRecommendationInferenceSpecification = {
    type = "structure",
    id = "AIRecommendationInferenceSpecification",
    members = {
        Framework = {
            type = "string",
        },
    },
}

M.AIRecommendationJobStatus = {
    IN_PROGRESS = "InProgress",
    COMPLETED = "Completed",
    FAILED = "Failed",
    STOPPING = "Stopping",
    STOPPED = "Stopped",
}

M.AIRecommendationJobSummary = {
    type = "structure",
    id = "AIRecommendationJobSummary",
    members = {
        AIRecommendationJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AIRecommendationJobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AIRecommendationJobStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        EndTime = {
            type = "timestamp",
        },
    },
}

M.AIRecommendationOutputConfig = {
    type = "structure",
    id = "AIRecommendationOutputConfig",
    members = {
        S3OutputLocation = {
            type = "string",
        },
        ModelPackageGroupIdentifier = {
            type = "string",
        },
    },
}

M.AIRecommendationOutputResult = {
    type = "structure",
    id = "AIRecommendationOutputResult",
    members = {
        S3OutputLocation = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ModelPackageGroupIdentifier = {
            type = "string",
        },
    },
}

M.AIRecommendationPerformanceTarget = {
    type = "structure",
    id = "AIRecommendationPerformanceTarget",
    members = {
        Constraints = {
            type = "list",
            member = M.AIRecommendationConstraint,
            traits = {
                required = true,
            },
        },
    },
}

M.WorkloadSpec = {
    type = "union",
    id = "WorkloadSpec",
    members = {
        Inline = {
            type = "string",
        },
    },
}

M.AIWorkloadConfigs = {
    type = "structure",
    id = "AIWorkloadConfigs",
    members = {
        WorkloadSpec = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WorkloadSpec }),
    },
}

M.AIWorkloadConfigSummary = {
    type = "structure",
    id = "AIWorkloadConfigSummary",
    members = {
        AIWorkloadConfigName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AIWorkloadConfigArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.Alarm = {
    type = "structure",
    id = "Alarm",
    members = {
        AlarmName = {
            type = "string",
        },
    },
}

M.AlarmDetails = {
    type = "structure",
    id = "AlarmDetails",
    members = {
        AlarmName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AlgorithmSortBy = {
    NAME = "Name",
    CREATION_TIME = "CreationTime",
}

M.MetricDefinition = {
    type = "structure",
    id = "MetricDefinition",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Regex = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TrainingRepositoryAccessMode = {
    PLATFORM = "Platform",
    VPC = "Vpc",
}

M.TrainingRepositoryAuthConfig = {
    type = "structure",
    id = "TrainingRepositoryAuthConfig",
    members = {
        TrainingRepositoryCredentialsProviderArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TrainingImageConfig = {
    type = "structure",
    id = "TrainingImageConfig",
    members = {
        TrainingRepositoryAccessMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TrainingRepositoryAuthConfig = M.TrainingRepositoryAuthConfig,
    },
}

M.TrainingInputMode = {
    PIPE = "Pipe",
    FILE = "File",
    FASTFILE = "FastFile",
}

M.AlgorithmSpecification = {
    type = "structure",
    id = "AlgorithmSpecification",
    members = {
        TrainingImage = {
            type = "string",
        },
        AlgorithmName = {
            type = "string",
        },
        TrainingInputMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MetricDefinitions = {
            type = "list",
            member = M.MetricDefinition,
        },
        EnableSageMakerMetricsTimeSeries = {
            type = "boolean",
        },
        ContainerEntrypoint = {
            type = "list",
            member = { type = "string" },
        },
        ContainerArguments = {
            type = "list",
            member = { type = "string" },
        },
        TrainingImageConfig = M.TrainingImageConfig,
    },
}

M.AlgorithmStatus = {
    PENDING = "Pending",
    IN_PROGRESS = "InProgress",
    COMPLETED = "Completed",
    FAILED = "Failed",
    DELETING = "Deleting",
}

M.DetailedAlgorithmStatus = {
    NOT_STARTED = "NotStarted",
    IN_PROGRESS = "InProgress",
    COMPLETED = "Completed",
    FAILED = "Failed",
}

M.AlgorithmStatusItem = {
    type = "structure",
    id = "AlgorithmStatusItem",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FailureReason = {
            type = "string",
        },
    },
}

M.AlgorithmStatusDetails = {
    type = "structure",
    id = "AlgorithmStatusDetails",
    members = {
        ValidationStatuses = {
            type = "list",
            member = M.AlgorithmStatusItem,
        },
        ImageScanStatuses = {
            type = "list",
            member = M.AlgorithmStatusItem,
        },
    },
}

M.AlgorithmSummary = {
    type = "structure",
    id = "AlgorithmSummary",
    members = {
        AlgorithmName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AlgorithmArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AlgorithmDescription = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        AlgorithmStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DatasetSource = {
    type = "structure",
    id = "DatasetSource",
    members = {
        DatasetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.FileSystemAccessMode = {
    RW = "rw",
    RO = "ro",
}

M.FileSystemType = {
    EFS = "EFS",
    FSXLUSTRE = "FSxLustre",
}

M.FileSystemDataSource = {
    type = "structure",
    id = "FileSystemDataSource",
    members = {
        FileSystemId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FileSystemAccessMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FileSystemType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DirectoryPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.HubAccessConfig = {
    type = "structure",
    id = "HubAccessConfig",
    members = {
        HubContentArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.S3DataDistribution = {
    FULLY_REPLICATED = "FullyReplicated",
    SHARDED_BY_S3_KEY = "ShardedByS3Key",
}

M.S3DataType = {
    MANIFEST_FILE = "ManifestFile",
    S3_PREFIX = "S3Prefix",
    AUGMENTED_MANIFEST_FILE = "AugmentedManifestFile",
    CONVERSE = "Converse",
}

M.S3DataSource = {
    type = "structure",
    id = "S3DataSource",
    members = {
        S3DataType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        S3Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        S3DataDistributionType = {
            type = "string",
        },
        AttributeNames = {
            type = "list",
            member = { type = "string" },
        },
        InstanceGroupNames = {
            type = "list",
            member = { type = "string" },
        },
        ModelAccessConfig = M.ModelAccessConfig,
        HubAccessConfig = M.HubAccessConfig,
    },
}

M.DataSource = {
    type = "structure",
    id = "DataSource",
    members = {
        S3DataSource = M.S3DataSource,
        FileSystemDataSource = M.FileSystemDataSource,
        DatasetSource = M.DatasetSource,
    },
}

M.RecordWrapper = {
    NONE = "None",
    RECORDIO = "RecordIO",
}

M.ShuffleConfig = {
    type = "structure",
    id = "ShuffleConfig",
    members = {
        Seed = {
            type = "long",
            traits = {
                required = true,
            },
        },
    },
}

M.Channel = {
    type = "structure",
    id = "Channel",
    members = {
        ChannelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataSource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataSource }),
        ContentType = {
            type = "string",
        },
        CompressionType = {
            type = "string",
        },
        RecordWrapperType = {
            type = "string",
        },
        InputMode = {
            type = "string",
        },
        ShuffleConfig = M.ShuffleConfig,
    },
}

M.OutputCompressionType = {
    GZIP = "GZIP",
    NONE = "NONE",
}

M.OutputDataConfig = {
    type = "structure",
    id = "OutputDataConfig",
    members = {
        KmsKeyId = {
            type = "string",
        },
        S3OutputPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CompressionType = {
            type = "string",
        },
    },
}

M.TrainingInstanceType = {
    ML_M4_XLARGE = "ml.m4.xlarge",
    ML_M4_2XLARGE = "ml.m4.2xlarge",
    ML_M4_4XLARGE = "ml.m4.4xlarge",
    ML_M4_10XLARGE = "ml.m4.10xlarge",
    ML_M4_16XLARGE = "ml.m4.16xlarge",
    ML_G4DN_XLARGE = "ml.g4dn.xlarge",
    ML_G4DN_2XLARGE = "ml.g4dn.2xlarge",
    ML_G4DN_4XLARGE = "ml.g4dn.4xlarge",
    ML_G4DN_8XLARGE = "ml.g4dn.8xlarge",
    ML_G4DN_12XLARGE = "ml.g4dn.12xlarge",
    ML_G4DN_16XLARGE = "ml.g4dn.16xlarge",
    ML_M5_LARGE = "ml.m5.large",
    ML_M5_XLARGE = "ml.m5.xlarge",
    ML_M5_2XLARGE = "ml.m5.2xlarge",
    ML_M5_4XLARGE = "ml.m5.4xlarge",
    ML_M5_12XLARGE = "ml.m5.12xlarge",
    ML_M5_24XLARGE = "ml.m5.24xlarge",
    ML_C4_XLARGE = "ml.c4.xlarge",
    ML_C4_2XLARGE = "ml.c4.2xlarge",
    ML_C4_4XLARGE = "ml.c4.4xlarge",
    ML_C4_8XLARGE = "ml.c4.8xlarge",
    ML_P2_XLARGE = "ml.p2.xlarge",
    ML_P2_8XLARGE = "ml.p2.8xlarge",
    ML_P2_16XLARGE = "ml.p2.16xlarge",
    ML_P3_2XLARGE = "ml.p3.2xlarge",
    ML_P3_8XLARGE = "ml.p3.8xlarge",
    ML_P3_16XLARGE = "ml.p3.16xlarge",
    ML_P3DN_24XLARGE = "ml.p3dn.24xlarge",
    ML_P4D_24XLARGE = "ml.p4d.24xlarge",
    ML_P4DE_24XLARGE = "ml.p4de.24xlarge",
    ML_P5_48XLARGE = "ml.p5.48xlarge",
    ML_P5E_48XLARGE = "ml.p5e.48xlarge",
    ML_P5EN_48XLARGE = "ml.p5en.48xlarge",
    ML_C5_XLARGE = "ml.c5.xlarge",
    ML_C5_2XLARGE = "ml.c5.2xlarge",
    ML_C5_4XLARGE = "ml.c5.4xlarge",
    ML_C5_9XLARGE = "ml.c5.9xlarge",
    ML_C5_18XLARGE = "ml.c5.18xlarge",
    ML_C5N_XLARGE = "ml.c5n.xlarge",
    ML_C5N_2XLARGE = "ml.c5n.2xlarge",
    ML_C5N_4XLARGE = "ml.c5n.4xlarge",
    ML_C5N_9XLARGE = "ml.c5n.9xlarge",
    ML_C5N_18XLARGE = "ml.c5n.18xlarge",
    ML_G5_XLARGE = "ml.g5.xlarge",
    ML_G5_2XLARGE = "ml.g5.2xlarge",
    ML_G5_4XLARGE = "ml.g5.4xlarge",
    ML_G5_8XLARGE = "ml.g5.8xlarge",
    ML_G5_16XLARGE = "ml.g5.16xlarge",
    ML_G5_12XLARGE = "ml.g5.12xlarge",
    ML_G5_24XLARGE = "ml.g5.24xlarge",
    ML_G5_48XLARGE = "ml.g5.48xlarge",
    ML_G6_XLARGE = "ml.g6.xlarge",
    ML_G6_2XLARGE = "ml.g6.2xlarge",
    ML_G6_4XLARGE = "ml.g6.4xlarge",
    ML_G6_8XLARGE = "ml.g6.8xlarge",
    ML_G6_16XLARGE = "ml.g6.16xlarge",
    ML_G6_12XLARGE = "ml.g6.12xlarge",
    ML_G6_24XLARGE = "ml.g6.24xlarge",
    ML_G6_48XLARGE = "ml.g6.48xlarge",
    ML_G6E_XLARGE = "ml.g6e.xlarge",
    ML_G6E_2XLARGE = "ml.g6e.2xlarge",
    ML_G6E_4XLARGE = "ml.g6e.4xlarge",
    ML_G6E_8XLARGE = "ml.g6e.8xlarge",
    ML_G6E_16XLARGE = "ml.g6e.16xlarge",
    ML_G6E_12XLARGE = "ml.g6e.12xlarge",
    ML_G6E_24XLARGE = "ml.g6e.24xlarge",
    ML_G6E_48XLARGE = "ml.g6e.48xlarge",
    ML_TRN1_2XLARGE = "ml.trn1.2xlarge",
    ML_TRN1_32XLARGE = "ml.trn1.32xlarge",
    ML_TRN1N_32XLARGE = "ml.trn1n.32xlarge",
    ML_TRN2_48XLARGE = "ml.trn2.48xlarge",
    ML_M6I_LARGE = "ml.m6i.large",
    ML_M6I_XLARGE = "ml.m6i.xlarge",
    ML_M6I_2XLARGE = "ml.m6i.2xlarge",
    ML_M6I_4XLARGE = "ml.m6i.4xlarge",
    ML_M6I_8XLARGE = "ml.m6i.8xlarge",
    ML_M6I_12XLARGE = "ml.m6i.12xlarge",
    ML_M6I_16XLARGE = "ml.m6i.16xlarge",
    ML_M6I_24XLARGE = "ml.m6i.24xlarge",
    ML_M6I_32XLARGE = "ml.m6i.32xlarge",
    ML_C6I_XLARGE = "ml.c6i.xlarge",
    ML_C6I_2XLARGE = "ml.c6i.2xlarge",
    ML_C6I_8XLARGE = "ml.c6i.8xlarge",
    ML_C6I_4XLARGE = "ml.c6i.4xlarge",
    ML_C6I_12XLARGE = "ml.c6i.12xlarge",
    ML_C6I_16XLARGE = "ml.c6i.16xlarge",
    ML_C6I_24XLARGE = "ml.c6i.24xlarge",
    ML_C6I_32XLARGE = "ml.c6i.32xlarge",
    ML_R5D_LARGE = "ml.r5d.large",
    ML_R5D_XLARGE = "ml.r5d.xlarge",
    ML_R5D_2XLARGE = "ml.r5d.2xlarge",
    ML_R5D_4XLARGE = "ml.r5d.4xlarge",
    ML_R5D_8XLARGE = "ml.r5d.8xlarge",
    ML_R5D_12XLARGE = "ml.r5d.12xlarge",
    ML_R5D_16XLARGE = "ml.r5d.16xlarge",
    ML_R5D_24XLARGE = "ml.r5d.24xlarge",
    ML_T3_MEDIUM = "ml.t3.medium",
    ML_T3_LARGE = "ml.t3.large",
    ML_T3_XLARGE = "ml.t3.xlarge",
    ML_T3_2XLARGE = "ml.t3.2xlarge",
    ML_R5_LARGE = "ml.r5.large",
    ML_R5_XLARGE = "ml.r5.xlarge",
    ML_R5_2XLARGE = "ml.r5.2xlarge",
    ML_R5_4XLARGE = "ml.r5.4xlarge",
    ML_R5_8XLARGE = "ml.r5.8xlarge",
    ML_R5_12XLARGE = "ml.r5.12xlarge",
    ML_R5_16XLARGE = "ml.r5.16xlarge",
    ML_R5_24XLARGE = "ml.r5.24xlarge",
    ML_P6_B200_48XLARGE = "ml.p6-b200.48xlarge",
    ML_M7I_LARGE = "ml.m7i.large",
    ML_M7I_XLARGE = "ml.m7i.xlarge",
    ML_M7I_2XLARGE = "ml.m7i.2xlarge",
    ML_M7I_4XLARGE = "ml.m7i.4xlarge",
    ML_M7I_8XLARGE = "ml.m7i.8xlarge",
    ML_M7I_12XLARGE = "ml.m7i.12xlarge",
    ML_M7I_16XLARGE = "ml.m7i.16xlarge",
    ML_M7I_24XLARGE = "ml.m7i.24xlarge",
    ML_M7I_48XLARGE = "ml.m7i.48xlarge",
    ML_C7I_LARGE = "ml.c7i.large",
    ML_C7I_XLARGE = "ml.c7i.xlarge",
    ML_C7I_2XLARGE = "ml.c7i.2xlarge",
    ML_C7I_4XLARGE = "ml.c7i.4xlarge",
    ML_C7I_8XLARGE = "ml.c7i.8xlarge",
    ML_C7I_12XLARGE = "ml.c7i.12xlarge",
    ML_C7I_16XLARGE = "ml.c7i.16xlarge",
    ML_C7I_24XLARGE = "ml.c7i.24xlarge",
    ML_C7I_48XLARGE = "ml.c7i.48xlarge",
    ML_R7I_LARGE = "ml.r7i.large",
    ML_R7I_XLARGE = "ml.r7i.xlarge",
    ML_R7I_2XLARGE = "ml.r7i.2xlarge",
    ML_R7I_4XLARGE = "ml.r7i.4xlarge",
    ML_R7I_8XLARGE = "ml.r7i.8xlarge",
    ML_R7I_12XLARGE = "ml.r7i.12xlarge",
    ML_R7I_16XLARGE = "ml.r7i.16xlarge",
    ML_R7I_24XLARGE = "ml.r7i.24xlarge",
    ML_R7I_48XLARGE = "ml.r7i.48xlarge",
    ML_P6E_GB200_36XLARGE = "ml.p6e-gb200.36xlarge",
    ML_P5_4XLARGE = "ml.p5.4xlarge",
    ML_P6_B300_48XLARGE = "ml.p6-b300.48xlarge",
    ML_G7E_2XLARGE = "ml.g7e.2xlarge",
    ML_G7E_4XLARGE = "ml.g7e.4xlarge",
    ML_G7E_8XLARGE = "ml.g7e.8xlarge",
    ML_G7E_12XLARGE = "ml.g7e.12xlarge",
    ML_G7E_24XLARGE = "ml.g7e.24xlarge",
    ML_G7E_48XLARGE = "ml.g7e.48xlarge",
}

M.InstanceGroup = {
    type = "structure",
    id = "InstanceGroup",
    members = {
        InstanceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstanceCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        InstanceGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PlacementSpecification = {
    type = "structure",
    id = "PlacementSpecification",
    members = {
        UltraServerId = {
            type = "string",
        },
        InstanceCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.InstancePlacementConfig = {
    type = "structure",
    id = "InstancePlacementConfig",
    members = {
        EnableMultipleJobs = {
            type = "boolean",
        },
        PlacementSpecifications = {
            type = "list",
            member = M.PlacementSpecification,
        },
    },
}

M.ResourceConfig = {
    type = "structure",
    id = "ResourceConfig",
    members = {
        InstanceType = {
            type = "string",
        },
        InstanceCount = {
            type = "integer",
        },
        VolumeSizeInGB = {
            type = "integer",
        },
        VolumeKmsKeyId = {
            type = "string",
        },
        KeepAlivePeriodInSeconds = {
            type = "integer",
        },
        InstanceGroups = {
            type = "list",
            member = M.InstanceGroup,
        },
        TrainingPlanArn = {
            type = "string",
        },
        InstancePlacementConfig = M.InstancePlacementConfig,
    },
}

M.StoppingCondition = {
    type = "structure",
    id = "StoppingCondition",
    members = {
        MaxRuntimeInSeconds = {
            type = "integer",
        },
        MaxWaitTimeInSeconds = {
            type = "integer",
        },
        MaxPendingTimeInSeconds = {
            type = "integer",
        },
    },
}

M.TrainingJobDefinition = {
    type = "structure",
    id = "TrainingJobDefinition",
    members = {
        TrainingInputMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HyperParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        InputDataConfig = {
            type = "list",
            member = M.Channel,
            traits = {
                required = true,
            },
        },
        OutputDataConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OutputDataConfig }),
        ResourceConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ResourceConfig }),
        StoppingCondition = setmetatable({ traits = {
            required = true,
        } }, { __index = M.StoppingCondition }),
    },
}

M.BatchStrategy = {
    MULTI_RECORD = "MultiRecord",
    SINGLE_RECORD = "SingleRecord",
}

M.TransformS3DataSource = {
    type = "structure",
    id = "TransformS3DataSource",
    members = {
        S3DataType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        S3Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TransformDataSource = {
    type = "structure",
    id = "TransformDataSource",
    members = {
        S3DataSource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TransformS3DataSource }),
    },
}

M.SplitType = {
    NONE = "None",
    LINE = "Line",
    RECORDIO = "RecordIO",
    TFRECORD = "TFRecord",
}

M.TransformInput = {
    type = "structure",
    id = "TransformInput",
    members = {
        DataSource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TransformDataSource }),
        ContentType = {
            type = "string",
        },
        CompressionType = {
            type = "string",
        },
        SplitType = {
            type = "string",
        },
    },
}

M.AssemblyType = {
    NONE = "None",
    LINE = "Line",
}

M.TransformOutput = {
    type = "structure",
    id = "TransformOutput",
    members = {
        S3OutputPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Accept = {
            type = "string",
        },
        AssembleWith = {
            type = "string",
        },
        KmsKeyId = {
            type = "string",
        },
    },
}

M.TransformResources = {
    type = "structure",
    id = "TransformResources",
    members = {
        InstanceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstanceCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        VolumeKmsKeyId = {
            type = "string",
        },
        TransformAmiVersion = {
            type = "string",
        },
    },
}

M.TransformJobDefinition = {
    type = "structure",
    id = "TransformJobDefinition",
    members = {
        MaxConcurrentTransforms = {
            type = "integer",
        },
        MaxPayloadInMB = {
            type = "integer",
        },
        BatchStrategy = {
            type = "string",
        },
        Environment = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        TransformInput = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TransformInput }),
        TransformOutput = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TransformOutput }),
        TransformResources = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TransformResources }),
    },
}

M.AlgorithmValidationProfile = {
    type = "structure",
    id = "AlgorithmValidationProfile",
    members = {
        ProfileName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TrainingJobDefinition = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TrainingJobDefinition }),
        TransformJobDefinition = M.TransformJobDefinition,
    },
}

M.AlgorithmValidationSpecification = {
    type = "structure",
    id = "AlgorithmValidationSpecification",
    members = {
        ValidationRole = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ValidationProfiles = {
            type = "list",
            member = M.AlgorithmValidationProfile,
            traits = {
                required = true,
            },
        },
    },
}

M.FeatureStatus = {
    Enabled = "ENABLED",
    Disabled = "DISABLED",
}

M.AmazonQSettings = {
    type = "structure",
    id = "AmazonQSettings",
    members = {
        Status = {
            type = "string",
        },
        QProfileArn = {
            type = "string",
        },
    },
}

M.AnnotationConsolidationConfig = {
    type = "structure",
    id = "AnnotationConsolidationConfig",
    members = {
        AnnotationConsolidationLambdaArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AppType = {
    JupyterServer = "JupyterServer",
    KernelGateway = "KernelGateway",
    DetailedProfiler = "DetailedProfiler",
    TensorBoard = "TensorBoard",
    CodeEditor = "CodeEditor",
    JupyterLab = "JupyterLab",
    RStudioServerPro = "RStudioServerPro",
    RSessionGateway = "RSessionGateway",
    Canvas = "Canvas",
}

M.AppInstanceType = {
    SYSTEM = "system",
    ML_T3_MICRO = "ml.t3.micro",
    ML_T3_SMALL = "ml.t3.small",
    ML_T3_MEDIUM = "ml.t3.medium",
    ML_T3_LARGE = "ml.t3.large",
    ML_T3_XLARGE = "ml.t3.xlarge",
    ML_T3_2XLARGE = "ml.t3.2xlarge",
    ML_M5_LARGE = "ml.m5.large",
    ML_M5_XLARGE = "ml.m5.xlarge",
    ML_M5_2XLARGE = "ml.m5.2xlarge",
    ML_M5_4XLARGE = "ml.m5.4xlarge",
    ML_M5_8XLARGE = "ml.m5.8xlarge",
    ML_M5_12XLARGE = "ml.m5.12xlarge",
    ML_M5_16XLARGE = "ml.m5.16xlarge",
    ML_M5_24XLARGE = "ml.m5.24xlarge",
    ML_M5D_LARGE = "ml.m5d.large",
    ML_M5D_XLARGE = "ml.m5d.xlarge",
    ML_M5D_2XLARGE = "ml.m5d.2xlarge",
    ML_M5D_4XLARGE = "ml.m5d.4xlarge",
    ML_M5D_8XLARGE = "ml.m5d.8xlarge",
    ML_M5D_12XLARGE = "ml.m5d.12xlarge",
    ML_M5D_16XLARGE = "ml.m5d.16xlarge",
    ML_M5D_24XLARGE = "ml.m5d.24xlarge",
    ML_C5_LARGE = "ml.c5.large",
    ML_C5_XLARGE = "ml.c5.xlarge",
    ML_C5_2XLARGE = "ml.c5.2xlarge",
    ML_C5_4XLARGE = "ml.c5.4xlarge",
    ML_C5_9XLARGE = "ml.c5.9xlarge",
    ML_C5_12XLARGE = "ml.c5.12xlarge",
    ML_C5_18XLARGE = "ml.c5.18xlarge",
    ML_C5_24XLARGE = "ml.c5.24xlarge",
    ML_P3_2XLARGE = "ml.p3.2xlarge",
    ML_P3_8XLARGE = "ml.p3.8xlarge",
    ML_P3_16XLARGE = "ml.p3.16xlarge",
    ML_P3DN_24XLARGE = "ml.p3dn.24xlarge",
    ML_G4DN_XLARGE = "ml.g4dn.xlarge",
    ML_G4DN_2XLARGE = "ml.g4dn.2xlarge",
    ML_G4DN_4XLARGE = "ml.g4dn.4xlarge",
    ML_G4DN_8XLARGE = "ml.g4dn.8xlarge",
    ML_G4DN_12XLARGE = "ml.g4dn.12xlarge",
    ML_G4DN_16XLARGE = "ml.g4dn.16xlarge",
    ML_R5_LARGE = "ml.r5.large",
    ML_R5_XLARGE = "ml.r5.xlarge",
    ML_R5_2XLARGE = "ml.r5.2xlarge",
    ML_R5_4XLARGE = "ml.r5.4xlarge",
    ML_R5_8XLARGE = "ml.r5.8xlarge",
    ML_R5_12XLARGE = "ml.r5.12xlarge",
    ML_R5_16XLARGE = "ml.r5.16xlarge",
    ML_R5_24XLARGE = "ml.r5.24xlarge",
    ML_G5_XLARGE = "ml.g5.xlarge",
    ML_G5_2XLARGE = "ml.g5.2xlarge",
    ML_G5_4XLARGE = "ml.g5.4xlarge",
    ML_G5_8XLARGE = "ml.g5.8xlarge",
    ML_G5_16XLARGE = "ml.g5.16xlarge",
    ML_G5_12XLARGE = "ml.g5.12xlarge",
    ML_G5_24XLARGE = "ml.g5.24xlarge",
    ML_G5_48XLARGE = "ml.g5.48xlarge",
    ML_G6_XLARGE = "ml.g6.xlarge",
    ML_G6_2XLARGE = "ml.g6.2xlarge",
    ML_G6_4XLARGE = "ml.g6.4xlarge",
    ML_G6_8XLARGE = "ml.g6.8xlarge",
    ML_G6_12XLARGE = "ml.g6.12xlarge",
    ML_G6_16XLARGE = "ml.g6.16xlarge",
    ML_G6_24XLARGE = "ml.g6.24xlarge",
    ML_G6_48XLARGE = "ml.g6.48xlarge",
    ML_G6E_XLARGE = "ml.g6e.xlarge",
    ML_G6E_2XLARGE = "ml.g6e.2xlarge",
    ML_G6E_4XLARGE = "ml.g6e.4xlarge",
    ML_G6E_8XLARGE = "ml.g6e.8xlarge",
    ML_G6E_12XLARGE = "ml.g6e.12xlarge",
    ML_G6E_16XLARGE = "ml.g6e.16xlarge",
    ML_G6E_24XLARGE = "ml.g6e.24xlarge",
    ML_G6E_48XLARGE = "ml.g6e.48xlarge",
    ML_GEOSPATIAL_INTERACTIVE = "ml.geospatial.interactive",
    ML_P4D_24XLARGE = "ml.p4d.24xlarge",
    ML_P4DE_24XLARGE = "ml.p4de.24xlarge",
    ML_TRN1_2XLARGE = "ml.trn1.2xlarge",
    ML_TRN1_32XLARGE = "ml.trn1.32xlarge",
    ML_TRN1N_32XLARGE = "ml.trn1n.32xlarge",
    ML_P5_48XLARGE = "ml.p5.48xlarge",
    ML_P5EN_48XLARGE = "ml.p5en.48xlarge",
    ML_P6_B200_48XLARGE = "ml.p6-b200.48xlarge",
    ML_M6I_LARGE = "ml.m6i.large",
    ML_M6I_XLARGE = "ml.m6i.xlarge",
    ML_M6I_2XLARGE = "ml.m6i.2xlarge",
    ML_M6I_4XLARGE = "ml.m6i.4xlarge",
    ML_M6I_8XLARGE = "ml.m6i.8xlarge",
    ML_M6I_12XLARGE = "ml.m6i.12xlarge",
    ML_M6I_16XLARGE = "ml.m6i.16xlarge",
    ML_M6I_24XLARGE = "ml.m6i.24xlarge",
    ML_M6I_32XLARGE = "ml.m6i.32xlarge",
    ML_M7I_LARGE = "ml.m7i.large",
    ML_M7I_XLARGE = "ml.m7i.xlarge",
    ML_M7I_2XLARGE = "ml.m7i.2xlarge",
    ML_M7I_4XLARGE = "ml.m7i.4xlarge",
    ML_M7I_8XLARGE = "ml.m7i.8xlarge",
    ML_M7I_12XLARGE = "ml.m7i.12xlarge",
    ML_M7I_16XLARGE = "ml.m7i.16xlarge",
    ML_M7I_24XLARGE = "ml.m7i.24xlarge",
    ML_M7I_48XLARGE = "ml.m7i.48xlarge",
    ML_C6I_LARGE = "ml.c6i.large",
    ML_C6I_XLARGE = "ml.c6i.xlarge",
    ML_C6I_2XLARGE = "ml.c6i.2xlarge",
    ML_C6I_4XLARGE = "ml.c6i.4xlarge",
    ML_C6I_8XLARGE = "ml.c6i.8xlarge",
    ML_C6I_12XLARGE = "ml.c6i.12xlarge",
    ML_C6I_16XLARGE = "ml.c6i.16xlarge",
    ML_C6I_24XLARGE = "ml.c6i.24xlarge",
    ML_C6I_32XLARGE = "ml.c6i.32xlarge",
    ML_C7I_LARGE = "ml.c7i.large",
    ML_C7I_XLARGE = "ml.c7i.xlarge",
    ML_C7I_2XLARGE = "ml.c7i.2xlarge",
    ML_C7I_4XLARGE = "ml.c7i.4xlarge",
    ML_C7I_8XLARGE = "ml.c7i.8xlarge",
    ML_C7I_12XLARGE = "ml.c7i.12xlarge",
    ML_C7I_16XLARGE = "ml.c7i.16xlarge",
    ML_C7I_24XLARGE = "ml.c7i.24xlarge",
    ML_C7I_48XLARGE = "ml.c7i.48xlarge",
    ML_R6I_LARGE = "ml.r6i.large",
    ML_R6I_XLARGE = "ml.r6i.xlarge",
    ML_R6I_2XLARGE = "ml.r6i.2xlarge",
    ML_R6I_4XLARGE = "ml.r6i.4xlarge",
    ML_R6I_8XLARGE = "ml.r6i.8xlarge",
    ML_R6I_12XLARGE = "ml.r6i.12xlarge",
    ML_R6I_16XLARGE = "ml.r6i.16xlarge",
    ML_R6I_24XLARGE = "ml.r6i.24xlarge",
    ML_R6I_32XLARGE = "ml.r6i.32xlarge",
    ML_R7I_LARGE = "ml.r7i.large",
    ML_R7I_XLARGE = "ml.r7i.xlarge",
    ML_R7I_2XLARGE = "ml.r7i.2xlarge",
    ML_R7I_4XLARGE = "ml.r7i.4xlarge",
    ML_R7I_8XLARGE = "ml.r7i.8xlarge",
    ML_R7I_12XLARGE = "ml.r7i.12xlarge",
    ML_R7I_16XLARGE = "ml.r7i.16xlarge",
    ML_R7I_24XLARGE = "ml.r7i.24xlarge",
    ML_R7I_48XLARGE = "ml.r7i.48xlarge",
    ML_M6ID_LARGE = "ml.m6id.large",
    ML_M6ID_XLARGE = "ml.m6id.xlarge",
    ML_M6ID_2XLARGE = "ml.m6id.2xlarge",
    ML_M6ID_4XLARGE = "ml.m6id.4xlarge",
    ML_M6ID_8XLARGE = "ml.m6id.8xlarge",
    ML_M6ID_12XLARGE = "ml.m6id.12xlarge",
    ML_M6ID_16XLARGE = "ml.m6id.16xlarge",
    ML_M6ID_24XLARGE = "ml.m6id.24xlarge",
    ML_M6ID_32XLARGE = "ml.m6id.32xlarge",
    ML_C6ID_LARGE = "ml.c6id.large",
    ML_C6ID_XLARGE = "ml.c6id.xlarge",
    ML_C6ID_2XLARGE = "ml.c6id.2xlarge",
    ML_C6ID_4XLARGE = "ml.c6id.4xlarge",
    ML_C6ID_8XLARGE = "ml.c6id.8xlarge",
    ML_C6ID_12XLARGE = "ml.c6id.12xlarge",
    ML_C6ID_16XLARGE = "ml.c6id.16xlarge",
    ML_C6ID_24XLARGE = "ml.c6id.24xlarge",
    ML_C6ID_32XLARGE = "ml.c6id.32xlarge",
    ML_R6ID_LARGE = "ml.r6id.large",
    ML_R6ID_XLARGE = "ml.r6id.xlarge",
    ML_R6ID_2XLARGE = "ml.r6id.2xlarge",
    ML_R6ID_4XLARGE = "ml.r6id.4xlarge",
    ML_R6ID_8XLARGE = "ml.r6id.8xlarge",
    ML_R6ID_12XLARGE = "ml.r6id.12xlarge",
    ML_R6ID_16XLARGE = "ml.r6id.16xlarge",
    ML_R6ID_24XLARGE = "ml.r6id.24xlarge",
    ML_R6ID_32XLARGE = "ml.r6id.32xlarge",
}

M.ResourceSpec = {
    type = "structure",
    id = "ResourceSpec",
    members = {
        SageMakerImageArn = {
            type = "string",
        },
        SageMakerImageVersionArn = {
            type = "string",
        },
        SageMakerImageVersionAlias = {
            type = "string",
        },
        InstanceType = {
            type = "string",
        },
        LifecycleConfigArn = {
            type = "string",
        },
    },
}

M.AppStatus = {
    Deleted = "Deleted",
    Deleting = "Deleting",
    Failed = "Failed",
    InService = "InService",
    Pending = "Pending",
}

M.AppDetails = {
    type = "structure",
    id = "AppDetails",
    members = {
        DomainId = {
            type = "string",
        },
        UserProfileName = {
            type = "string",
        },
        SpaceName = {
            type = "string",
        },
        AppType = {
            type = "string",
        },
        AppName = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        ResourceSpec = M.ResourceSpec,
    },
}

M.ContainerConfig = {
    type = "structure",
    id = "ContainerConfig",
    members = {
        ContainerArguments = {
            type = "list",
            member = { type = "string" },
        },
        ContainerEntrypoint = {
            type = "list",
            member = { type = "string" },
        },
        ContainerEnvironmentVariables = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.FileSystemConfig = {
    type = "structure",
    id = "FileSystemConfig",
    members = {
        MountPath = {
            type = "string",
        },
        DefaultUid = {
            type = "integer",
        },
        DefaultGid = {
            type = "integer",
        },
    },
}

M.CodeEditorAppImageConfig = {
    type = "structure",
    id = "CodeEditorAppImageConfig",
    members = {
        FileSystemConfig = M.FileSystemConfig,
        ContainerConfig = M.ContainerConfig,
    },
}

M.JupyterLabAppImageConfig = {
    type = "structure",
    id = "JupyterLabAppImageConfig",
    members = {
        FileSystemConfig = M.FileSystemConfig,
        ContainerConfig = M.ContainerConfig,
    },
}

M.KernelSpec = {
    type = "structure",
    id = "KernelSpec",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DisplayName = {
            type = "string",
        },
    },
}

M.KernelGatewayImageConfig = {
    type = "structure",
    id = "KernelGatewayImageConfig",
    members = {
        KernelSpecs = {
            type = "list",
            member = M.KernelSpec,
            traits = {
                required = true,
            },
        },
        FileSystemConfig = M.FileSystemConfig,
    },
}

M.AppImageConfigDetails = {
    type = "structure",
    id = "AppImageConfigDetails",
    members = {
        AppImageConfigArn = {
            type = "string",
        },
        AppImageConfigName = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        KernelGatewayImageConfig = M.KernelGatewayImageConfig,
        JupyterLabAppImageConfig = M.JupyterLabAppImageConfig,
        CodeEditorAppImageConfig = M.CodeEditorAppImageConfig,
    },
}

M.AppImageConfigSortKey = {
    CreationTime = "CreationTime",
    LastModifiedTime = "LastModifiedTime",
    Name = "Name",
}

M.LifecycleManagement = {
    Enabled = "ENABLED",
    Disabled = "DISABLED",
}

M.IdleSettings = {
    type = "structure",
    id = "IdleSettings",
    members = {
        LifecycleManagement = {
            type = "string",
        },
        IdleTimeoutInMinutes = {
            type = "integer",
        },
        MinIdleTimeoutInMinutes = {
            type = "integer",
        },
        MaxIdleTimeoutInMinutes = {
            type = "integer",
        },
    },
}

M.AppLifecycleManagement = {
    type = "structure",
    id = "AppLifecycleManagement",
    members = {
        IdleSettings = M.IdleSettings,
    },
}

M.AppNetworkAccessType = {
    PublicInternetOnly = "PublicInternetOnly",
    VpcOnly = "VpcOnly",
}

M.AppSecurityGroupManagement = {
    Service = "Service",
    Customer = "Customer",
}

M.AppSortKey = {
    CreationTime = "CreationTime",
}

M.AppSpecification = {
    type = "structure",
    id = "AppSpecification",
    members = {
        ImageUri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ContainerEntrypoint = {
            type = "list",
            member = { type = "string" },
        },
        ContainerArguments = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ArtifactSourceIdType = {
    MD5_HASH = "MD5Hash",
    S3_ETAG = "S3ETag",
    S3_VERSION = "S3Version",
    CUSTOM = "Custom",
}

M.ArtifactSourceType = {
    type = "structure",
    id = "ArtifactSourceType",
    members = {
        SourceIdType = {
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

M.ArtifactSource = {
    type = "structure",
    id = "ArtifactSource",
    members = {
        SourceUri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceTypes = {
            type = "list",
            member = M.ArtifactSourceType,
        },
    },
}

M.ArtifactSummary = {
    type = "structure",
    id = "ArtifactSummary",
    members = {
        ArtifactArn = {
            type = "string",
        },
        ArtifactName = {
            type = "string",
        },
        Source = M.ArtifactSource,
        ArtifactType = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
    },
}

M.AssociateTrialComponentInput = {
    type = "structure",
    id = "AssociateTrialComponentInput",
    members = {
        TrialComponentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TrialName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateTrialComponentOutput = {
    type = "structure",
    id = "AssociateTrialComponentOutput",
    members = {
        TrialComponentArn = {
            type = "string",
        },
        TrialArn = {
            type = "string",
        },
    },
}

M.AssociationInfo = {
    type = "structure",
    id = "AssociationInfo",
    members = {
        SourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DestinationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.IamIdentity = {
    type = "structure",
    id = "IamIdentity",
    members = {
        Arn = {
            type = "string",
        },
        PrincipalId = {
            type = "string",
        },
        SourceIdentity = {
            type = "string",
        },
    },
}

M.UserContext = {
    type = "structure",
    id = "UserContext",
    members = {
        UserProfileArn = {
            type = "string",
        },
        UserProfileName = {
            type = "string",
        },
        DomainId = {
            type = "string",
        },
        IamIdentity = M.IamIdentity,
    },
}

M.AssociationSummary = {
    type = "structure",
    id = "AssociationSummary",
    members = {
        SourceArn = {
            type = "string",
        },
        DestinationArn = {
            type = "string",
        },
        SourceType = {
            type = "string",
        },
        DestinationType = {
            type = "string",
        },
        AssociationType = {
            type = "string",
        },
        SourceName = {
            type = "string",
        },
        DestinationName = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        CreatedBy = M.UserContext,
    },
}

M.AsyncInferenceClientConfig = {
    type = "structure",
    id = "AsyncInferenceClientConfig",
    members = {
        MaxConcurrentInvocationsPerInstance = {
            type = "integer",
        },
    },
}

M.AsyncNotificationTopicTypes = {
    SUCCESS_NOTIFICATION_TOPIC = "SUCCESS_NOTIFICATION_TOPIC",
    ERROR_NOTIFICATION_TOPIC = "ERROR_NOTIFICATION_TOPIC",
}

M.AsyncInferenceNotificationConfig = {
    type = "structure",
    id = "AsyncInferenceNotificationConfig",
    members = {
        SuccessTopic = {
            type = "string",
        },
        ErrorTopic = {
            type = "string",
        },
        IncludeInferenceResponseIn = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.AsyncInferenceOutputConfig = {
    type = "structure",
    id = "AsyncInferenceOutputConfig",
    members = {
        KmsKeyId = {
            type = "string",
        },
        S3OutputPath = {
            type = "string",
        },
        NotificationConfig = M.AsyncInferenceNotificationConfig,
        S3FailurePath = {
            type = "string",
        },
    },
}

M.AsyncInferenceConfig = {
    type = "structure",
    id = "AsyncInferenceConfig",
    members = {
        ClientConfig = M.AsyncInferenceClientConfig,
        OutputConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AsyncInferenceOutputConfig }),
    },
}

M.AthenaResultCompressionType = {
    GZIP = "GZIP",
    SNAPPY = "SNAPPY",
    ZLIB = "ZLIB",
}

M.AthenaResultFormat = {
    PARQUET = "PARQUET",
    ORC = "ORC",
    AVRO = "AVRO",
    JSON = "JSON",
    TEXTFILE = "TEXTFILE",
}

M.AthenaDatasetDefinition = {
    type = "structure",
    id = "AthenaDatasetDefinition",
    members = {
        Catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Database = {
            type = "string",
            traits = {
                required = true,
            },
        },
        QueryString = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WorkGroup = {
            type = "string",
        },
        OutputS3Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KmsKeyId = {
            type = "string",
        },
        OutputFormat = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OutputCompression = {
            type = "string",
        },
    },
}

M.AttachClusterNodeVolumeInput = {
    type = "structure",
    id = "AttachClusterNodeVolumeInput",
    members = {
        ClusterArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NodeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VolumeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.VolumeAttachmentStatus = {
    ATTACHING = "attaching",
    ATTACHED = "attached",
    DETACHING = "detaching",
    DETACHED = "detached",
    BUSY = "busy",
}

M.AttachClusterNodeVolumeOutput = {
    type = "structure",
    id = "AttachClusterNodeVolumeOutput",
    members = {
        ClusterArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NodeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VolumeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AttachTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        Status = {
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
    },
}

M.AuthMode = {
    SSO = "SSO",
    IAM = "IAM",
}

M.AuthorizedUrl = {
    type = "structure",
    id = "AuthorizedUrl",
    members = {
        Url = {
            type = "string",
        },
        LocalPath = {
            type = "string",
        },
    },
}

M.AutoMLAlgorithm = {
    XGBOOST = "xgboost",
    LINEAR_LEARNER = "linear-learner",
    MLP = "mlp",
    LIGHTGBM = "lightgbm",
    CATBOOST = "catboost",
    RANDOMFOREST = "randomforest",
    EXTRA_TREES = "extra-trees",
    NN_TORCH = "nn-torch",
    FASTAI = "fastai",
    CNN_QR = "cnn-qr",
    DEEPAR = "deepar",
    PROPHET = "prophet",
    NPTS = "npts",
    ARIMA = "arima",
    ETS = "ets",
}

M.AutoMLAlgorithmConfig = {
    type = "structure",
    id = "AutoMLAlgorithmConfig",
    members = {
        AutoMLAlgorithms = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.CandidateArtifactLocations = {
    type = "structure",
    id = "CandidateArtifactLocations",
    members = {
        Explainability = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ModelInsights = {
            type = "string",
        },
        BacktestResults = {
            type = "string",
        },
    },
}

M.AutoMLMetricEnum = {
    ACCURACY = "Accuracy",
    MSE = "MSE",
    F1 = "F1",
    F1_MACRO = "F1macro",
    AUC = "AUC",
    RMSE = "RMSE",
    BALANCED_ACCURACY = "BalancedAccuracy",
    R2 = "R2",
    RECALL = "Recall",
    RECALL_MACRO = "RecallMacro",
    PRECISION = "Precision",
    PRECISION_MACRO = "PrecisionMacro",
    MAE = "MAE",
    MAPE = "MAPE",
    MASE = "MASE",
    WAPE = "WAPE",
    AVERAGE_WEIGHTED_QUANTILE_LOSS = "AverageWeightedQuantileLoss",
}

M.MetricSetSource = {
    TRAIN = "Train",
    VALIDATION = "Validation",
    TEST = "Test",
}

M.AutoMLMetricExtendedEnum = {
    ACCURACY = "Accuracy",
    MSE = "MSE",
    F1 = "F1",
    F1_MACRO = "F1macro",
    AUC = "AUC",
    RMSE = "RMSE",
    MAE = "MAE",
    R2 = "R2",
    BALANCED_ACCURACY = "BalancedAccuracy",
    PRECISION = "Precision",
    PRECISION_MACRO = "PrecisionMacro",
    RECALL = "Recall",
    RECALL_MACRO = "RecallMacro",
    LogLoss = "LogLoss",
    INFERENCE_LATENCY = "InferenceLatency",
    MAPE = "MAPE",
    MASE = "MASE",
    WAPE = "WAPE",
    AVERAGE_WEIGHTED_QUANTILE_LOSS = "AverageWeightedQuantileLoss",
    ROUGE1 = "Rouge1",
    ROUGE2 = "Rouge2",
    ROUGEL = "RougeL",
    ROUGEL_SUM = "RougeLSum",
    PERPLEXITY = "Perplexity",
    VALIDATION_LOSS = "ValidationLoss",
    TRAINING_LOSS = "TrainingLoss",
}

M.MetricDatum = {
    type = "structure",
    id = "MetricDatum",
    members = {
        MetricName = {
            type = "string",
        },
        StandardMetricName = {
            type = "string",
        },
        Value = {
            type = "float",
        },
        Set = {
            type = "string",
        },
    },
}

M.CandidateProperties = {
    type = "structure",
    id = "CandidateProperties",
    members = {
        CandidateArtifactLocations = M.CandidateArtifactLocations,
        CandidateMetrics = {
            type = "list",
            member = M.MetricDatum,
        },
    },
}

M.CandidateStatus = {
    COMPLETED = "Completed",
    IN_PROGRESS = "InProgress",
    FAILED = "Failed",
    STOPPED = "Stopped",
    STOPPING = "Stopping",
}

M.CandidateStepType = {
    TRAINING = "AWS::SageMaker::TrainingJob",
    TRANSFORM = "AWS::SageMaker::TransformJob",
    PROCESSING = "AWS::SageMaker::ProcessingJob",
}

M.AutoMLCandidateStep = {
    type = "structure",
    id = "AutoMLCandidateStep",
    members = {
        CandidateStepType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CandidateStepArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CandidateStepName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AutoMLJobObjectiveType = {
    MAXIMIZE = "Maximize",
    MINIMIZE = "Minimize",
}

M.FinalAutoMLJobObjectiveMetric = {
    type = "structure",
    id = "FinalAutoMLJobObjectiveMetric",
    members = {
        Type = {
            type = "string",
        },
        MetricName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "float",
            traits = {
                required = true,
            },
        },
        StandardMetricName = {
            type = "string",
        },
    },
}

M.AutoMLProcessingUnit = {
    CPU = "CPU",
    GPU = "GPU",
}

M.AutoMLContainerDefinition = {
    type = "structure",
    id = "AutoMLContainerDefinition",
    members = {
        Image = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ModelDataUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Environment = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ObjectiveStatus = {
    Succeeded = "Succeeded",
    Pending = "Pending",
    Failed = "Failed",
}

M.AutoMLCandidate = {
    type = "structure",
    id = "AutoMLCandidate",
    members = {
        CandidateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FinalAutoMLJobObjectiveMetric = M.FinalAutoMLJobObjectiveMetric,
        ObjectiveStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CandidateSteps = {
            type = "list",
            member = M.AutoMLCandidateStep,
            traits = {
                required = true,
            },
        },
        CandidateStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InferenceContainers = {
            type = "list",
            member = M.AutoMLContainerDefinition,
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        EndTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        FailureReason = {
            type = "string",
        },
        CandidateProperties = M.CandidateProperties,
        InferenceContainerDefinitions = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
    },
}

M.AutoMLCandidateGenerationConfig = {
    type = "structure",
    id = "AutoMLCandidateGenerationConfig",
    members = {
        FeatureSpecificationS3Uri = {
            type = "string",
        },
        AlgorithmsConfig = {
            type = "list",
            member = M.AutoMLAlgorithmConfig,
        },
    },
}

M.AutoMLChannelType = {
    TRAINING = "training",
    VALIDATION = "validation",
}

M.AutoMLS3DataType = {
    MANIFEST_FILE = "ManifestFile",
    S3_PREFIX = "S3Prefix",
    AUGMENTED_MANIFEST_FILE = "AugmentedManifestFile",
}

M.AutoMLS3DataSource = {
    type = "structure",
    id = "AutoMLS3DataSource",
    members = {
        S3DataType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        S3Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AutoMLDataSource = {
    type = "structure",
    id = "AutoMLDataSource",
    members = {
        S3DataSource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AutoMLS3DataSource }),
    },
}

M.AutoMLChannel = {
    type = "structure",
    id = "AutoMLChannel",
    members = {
        DataSource = M.AutoMLDataSource,
        CompressionType = {
            type = "string",
        },
        TargetAttributeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ContentType = {
            type = "string",
        },
        ChannelType = {
            type = "string",
        },
        SampleWeightAttributeName = {
            type = "string",
        },
    },
}

M.EmrServerlessComputeConfig = {
    type = "structure",
    id = "EmrServerlessComputeConfig",
    members = {
        ExecutionRoleARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AutoMLComputeConfig = {
    type = "structure",
    id = "AutoMLComputeConfig",
    members = {
        EmrServerlessComputeConfig = M.EmrServerlessComputeConfig,
    },
}

M.AutoMLDataSplitConfig = {
    type = "structure",
    id = "AutoMLDataSplitConfig",
    members = {
        ValidationFraction = {
            type = "float",
        },
    },
}

M.AutoMLJobArtifacts = {
    type = "structure",
    id = "AutoMLJobArtifacts",
    members = {
        CandidateDefinitionNotebookLocation = {
            type = "string",
        },
        DataExplorationNotebookLocation = {
            type = "string",
        },
    },
}

M.AutoMLJobChannel = {
    type = "structure",
    id = "AutoMLJobChannel",
    members = {
        ChannelType = {
            type = "string",
        },
        ContentType = {
            type = "string",
        },
        CompressionType = {
            type = "string",
        },
        DataSource = M.AutoMLDataSource,
    },
}

M.AutoMLJobCompletionCriteria = {
    type = "structure",
    id = "AutoMLJobCompletionCriteria",
    members = {
        MaxCandidates = {
            type = "integer",
        },
        MaxRuntimePerTrainingJobInSeconds = {
            type = "integer",
        },
        MaxAutoMLJobRuntimeInSeconds = {
            type = "integer",
        },
    },
}

M.AutoMLMode = {
    AUTO = "AUTO",
    ENSEMBLING = "ENSEMBLING",
    HYPERPARAMETER_TUNING = "HYPERPARAMETER_TUNING",
}

M.AutoMLSecurityConfig = {
    type = "structure",
    id = "AutoMLSecurityConfig",
    members = {
        VolumeKmsKeyId = {
            type = "string",
        },
        EnableInterContainerTrafficEncryption = {
            type = "boolean",
        },
        VpcConfig = M.VpcConfig,
    },
}

M.AutoMLJobConfig = {
    type = "structure",
    id = "AutoMLJobConfig",
    members = {
        CompletionCriteria = M.AutoMLJobCompletionCriteria,
        SecurityConfig = M.AutoMLSecurityConfig,
        CandidateGenerationConfig = M.AutoMLCandidateGenerationConfig,
        DataSplitConfig = M.AutoMLDataSplitConfig,
        Mode = {
            type = "string",
        },
    },
}

M.AutoMLJobObjective = {
    type = "structure",
    id = "AutoMLJobObjective",
    members = {
        MetricName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AutoMLJobSecondaryStatus = {
    STARTING = "Starting",
    MAX_CANDIDATES_REACHED = "MaxCandidatesReached",
    FAILED = "Failed",
    STOPPED = "Stopped",
    MAX_AUTO_ML_JOB_RUNTIME_REACHED = "MaxAutoMLJobRuntimeReached",
    STOPPING = "Stopping",
    CANDIDATE_DEFINITIONS_GENERATED = "CandidateDefinitionsGenerated",
    COMPLETED = "Completed",
    EXPLAINABILITY_ERROR = "ExplainabilityError",
    DEPLOYING_MODEL = "DeployingModel",
    MODEL_DEPLOYMENT_ERROR = "ModelDeploymentError",
    GENERATING_MODEL_INSIGHTS_REPORT = "GeneratingModelInsightsReport",
    MODEL_INSIGHTS_ERROR = "ModelInsightsError",
    ANALYZING_DATA = "AnalyzingData",
    FEATURE_ENGINEERING = "FeatureEngineering",
    MODEL_TUNING = "ModelTuning",
    GENERATING_EXPLAINABILITY_REPORT = "GeneratingExplainabilityReport",
    TRAINING_MODELS = "TrainingModels",
    PRE_TRAINING = "PreTraining",
}

M.AutoMLJobStatus = {
    COMPLETED = "Completed",
    IN_PROGRESS = "InProgress",
    FAILED = "Failed",
    STOPPED = "Stopped",
    STOPPING = "Stopping",
}

M.AutoMLJobStepMetadata = {
    type = "structure",
    id = "AutoMLJobStepMetadata",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.AutoMLPartialFailureReason = {
    type = "structure",
    id = "AutoMLPartialFailureReason",
    members = {
        PartialFailureMessage = {
            type = "string",
        },
    },
}

M.AutoMLJobSummary = {
    type = "structure",
    id = "AutoMLJobSummary",
    members = {
        AutoMLJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AutoMLJobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AutoMLJobStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AutoMLJobSecondaryStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        EndTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        FailureReason = {
            type = "string",
        },
        PartialFailureReasons = {
            type = "list",
            member = M.AutoMLPartialFailureReason,
        },
    },
}

M.AutoMLOutputDataConfig = {
    type = "structure",
    id = "AutoMLOutputDataConfig",
    members = {
        KmsKeyId = {
            type = "string",
        },
        S3OutputPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ImageClassificationJobConfig = {
    type = "structure",
    id = "ImageClassificationJobConfig",
    members = {
        CompletionCriteria = M.AutoMLJobCompletionCriteria,
    },
}

M.CandidateGenerationConfig = {
    type = "structure",
    id = "CandidateGenerationConfig",
    members = {
        AlgorithmsConfig = {
            type = "list",
            member = M.AutoMLAlgorithmConfig,
        },
    },
}

M.ProblemType = {
    BINARY_CLASSIFICATION = "BinaryClassification",
    MULTICLASS_CLASSIFICATION = "MulticlassClassification",
    REGRESSION = "Regression",
}

M.TabularJobConfig = {
    type = "structure",
    id = "TabularJobConfig",
    members = {
        CandidateGenerationConfig = M.CandidateGenerationConfig,
        CompletionCriteria = M.AutoMLJobCompletionCriteria,
        FeatureSpecificationS3Uri = {
            type = "string",
        },
        Mode = {
            type = "string",
        },
        GenerateCandidateDefinitionsOnly = {
            type = "boolean",
        },
        ProblemType = {
            type = "string",
        },
        TargetAttributeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SampleWeightAttributeName = {
            type = "string",
        },
    },
}

M.TextClassificationJobConfig = {
    type = "structure",
    id = "TextClassificationJobConfig",
    members = {
        CompletionCriteria = M.AutoMLJobCompletionCriteria,
        ContentColumn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetLabelColumn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TextGenerationJobConfig = {
    type = "structure",
    id = "TextGenerationJobConfig",
    members = {
        CompletionCriteria = M.AutoMLJobCompletionCriteria,
        BaseModelName = {
            type = "string",
        },
        TextGenerationHyperParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        ModelAccessConfig = M.ModelAccessConfig,
    },
}

M.HolidayConfigAttributes = {
    type = "structure",
    id = "HolidayConfigAttributes",
    members = {
        CountryCode = {
            type = "string",
        },
    },
}

M.TimeSeriesConfig = {
    type = "structure",
    id = "TimeSeriesConfig",
    members = {
        TargetAttributeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TimestampAttributeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ItemIdentifierAttributeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GroupingAttributeNames = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.FillingType = {
    Frontfill = "frontfill",
    Middlefill = "middlefill",
    Backfill = "backfill",
    Futurefill = "futurefill",
    FrontfillValue = "frontfill_value",
    MiddlefillValue = "middlefill_value",
    BackfillValue = "backfill_value",
    FuturefillValue = "futurefill_value",
}

M.TimeSeriesTransformations = {
    type = "structure",
    id = "TimeSeriesTransformations",
    members = {
        Filling = {
            type = "map",
            key = { type = "string" },
            value = { type = "map" },
        },
        Aggregation = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.TimeSeriesForecastingJobConfig = {
    type = "structure",
    id = "TimeSeriesForecastingJobConfig",
    members = {
        FeatureSpecificationS3Uri = {
            type = "string",
        },
        CompletionCriteria = M.AutoMLJobCompletionCriteria,
        ForecastFrequency = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ForecastHorizon = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        ForecastQuantiles = {
            type = "list",
            member = { type = "string" },
        },
        Transformations = M.TimeSeriesTransformations,
        TimeSeriesConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TimeSeriesConfig }),
        HolidayConfig = {
            type = "list",
            member = M.HolidayConfigAttributes,
        },
        CandidateGenerationConfig = M.CandidateGenerationConfig,
    },
}

M.AutoMLProblemTypeConfig = {
    type = "union",
    id = "AutoMLProblemTypeConfig",
    members = {
        ImageClassificationJobConfig = M.ImageClassificationJobConfig,
        TextClassificationJobConfig = M.TextClassificationJobConfig,
        TimeSeriesForecastingJobConfig = M.TimeSeriesForecastingJobConfig,
        TabularJobConfig = M.TabularJobConfig,
        TextGenerationJobConfig = M.TextGenerationJobConfig,
    },
}

M.AutoMLProblemTypeConfigName = {
    IMAGE_CLASSIFICATION = "ImageClassification",
    TEXT_CLASSIFICATION = "TextClassification",
    TIMESERIES_FORECASTING = "TimeSeriesForecasting",
    TABULAR = "Tabular",
    TEXT_GENERATION = "TextGeneration",
}

M.TabularResolvedAttributes = {
    type = "structure",
    id = "TabularResolvedAttributes",
    members = {
        ProblemType = {
            type = "string",
        },
    },
}

M.TextGenerationResolvedAttributes = {
    type = "structure",
    id = "TextGenerationResolvedAttributes",
    members = {
        BaseModelName = {
            type = "string",
        },
    },
}

M.AutoMLProblemTypeResolvedAttributes = {
    type = "union",
    id = "AutoMLProblemTypeResolvedAttributes",
    members = {
        TabularResolvedAttributes = M.TabularResolvedAttributes,
        TextGenerationResolvedAttributes = M.TextGenerationResolvedAttributes,
    },
}

M.AutoMLResolvedAttributes = {
    type = "structure",
    id = "AutoMLResolvedAttributes",
    members = {
        AutoMLJobObjective = M.AutoMLJobObjective,
        CompletionCriteria = M.AutoMLJobCompletionCriteria,
        AutoMLProblemTypeResolvedAttributes = M.AutoMLProblemTypeResolvedAttributes,
    },
}

M.AutoMLSortBy = {
    NAME = "Name",
    CREATION_TIME = "CreationTime",
    STATUS = "Status",
}

M.AutoMLSortOrder = {
    ASCENDING = "Ascending",
    DESCENDING = "Descending",
}

M.AutoMountHomeEFS = {
    ENABLED = "Enabled",
    DISABLED = "Disabled",
    DEFAULT_AS_DOMAIN = "DefaultAsDomain",
}

M.AutoParameter = {
    type = "structure",
    id = "AutoParameter",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ValueHint = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AutoRollbackConfig = {
    type = "structure",
    id = "AutoRollbackConfig",
    members = {
        Alarms = {
            type = "list",
            member = M.Alarm,
        },
    },
}

M.AutotuneMode = {
    ENABLED = "Enabled",
}

M.Autotune = {
    type = "structure",
    id = "Autotune",
    members = {
        Mode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AvailabilityZoneBalanceEnforcementMode = {
    PERMISSIVE = "PERMISSIVE",
}

M.AvailableUpgrade = {
    type = "structure",
    id = "AvailableUpgrade",
    members = {
        Version = {
            type = "string",
        },
        ReleaseNotes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.AwsManagedHumanLoopRequestSource = {
    REKOGNITION_DETECT_MODERATION_LABELS_IMAGE_V3 = "AWS/Rekognition/DetectModerationLabels/Image/V3",
    TEXTRACT_ANALYZE_DOCUMENT_FORMS_V1 = "AWS/Textract/AnalyzeDocument/Forms/V1",
}

M.BatchAddClusterNodesInput = {
    type = "structure",
    id = "BatchAddClusterNodesInput",
    members = {
        ClusterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        NodesToAdd = {
            type = "list",
            member = M.AddClusterNodeSpecification,
            traits = {
                required = true,
            },
        },
    },
}

M.BatchAddClusterNodesErrorCode = {
    INSTANCE_GROUP_NOT_FOUND = "InstanceGroupNotFound",
    INVALID_INSTANCE_GROUP_STATUS = "InvalidInstanceGroupStatus",
    INCOMPATIBLE_AVAILABILITY_ZONES = "IncompatibleAvailabilityZones",
    INCOMPATIBLE_INSTANCE_TYPES = "IncompatibleInstanceTypes",
}

M.BatchAddClusterNodesError = {
    type = "structure",
    id = "BatchAddClusterNodesError",
    members = {
        InstanceGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ErrorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FailedCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        AvailabilityZones = {
            type = "list",
            member = { type = "string" },
        },
        InstanceTypes = {
            type = "list",
            member = { type = "string" },
        },
        Message = {
            type = "string",
        },
    },
}

M.ClusterInstanceStatus = {
    RUNNING = "Running",
    FAILURE = "Failure",
    PENDING = "Pending",
    SHUTTING_DOWN = "ShuttingDown",
    SYSTEM_UPDATING = "SystemUpdating",
    DEEP_HEALTH_CHECK_IN_PROGRESS = "DeepHealthCheckInProgress",
    NOT_FOUND = "NotFound",
}

M.NodeAdditionResult = {
    type = "structure",
    id = "NodeAdditionResult",
    members = {
        NodeLogicalId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstanceGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AvailabilityZones = {
            type = "list",
            member = { type = "string" },
        },
        InstanceTypes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.BatchAddClusterNodesOutput = {
    type = "structure",
    id = "BatchAddClusterNodesOutput",
    members = {
        Successful = {
            type = "list",
            member = M.NodeAdditionResult,
            traits = {
                required = true,
            },
        },
        Failed = {
            type = "list",
            member = M.BatchAddClusterNodesError,
            traits = {
                required = true,
            },
        },
    },
}

M.BatchDataCaptureConfig = {
    type = "structure",
    id = "BatchDataCaptureConfig",
    members = {
        DestinationS3Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KmsKeyId = {
            type = "string",
        },
        GenerateInferenceId = {
            type = "boolean",
        },
    },
}

M.BatchDeleteClusterNodesErrorCode = {
    NODE_ID_NOT_FOUND = "NodeIdNotFound",
    INVALID_NODE_STATUS = "InvalidNodeStatus",
    NODE_ID_IN_USE = "NodeIdInUse",
}

M.BatchDeleteClusterNodeLogicalIdsError = {
    type = "structure",
    id = "BatchDeleteClusterNodeLogicalIdsError",
    members = {
        Code = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NodeLogicalId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchDeleteClusterNodesInput = {
    type = "structure",
    id = "BatchDeleteClusterNodesInput",
    members = {
        ClusterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NodeIds = {
            type = "list",
            member = { type = "string" },
        },
        NodeLogicalIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.BatchDeleteClusterNodesError = {
    type = "structure",
    id = "BatchDeleteClusterNodesError",
    members = {
        Code = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NodeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchDeleteClusterNodesOutput = {
    type = "structure",
    id = "BatchDeleteClusterNodesOutput",
    members = {
        Failed = {
            type = "list",
            member = M.BatchDeleteClusterNodesError,
        },
        Successful = {
            type = "list",
            member = { type = "string" },
        },
        FailedNodeLogicalIds = {
            type = "list",
            member = M.BatchDeleteClusterNodeLogicalIdsError,
        },
        SuccessfulNodeLogicalIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.BatchDescribeModelPackageInput = {
    type = "structure",
    id = "BatchDescribeModelPackageInput",
    members = {
        ModelPackageArnList = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.BatchDescribeModelPackageError = {
    type = "structure",
    id = "BatchDescribeModelPackageError",
    members = {
        ErrorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ErrorResponse = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InferenceSpecification = {
    type = "structure",
    id = "InferenceSpecification",
    members = {
        Containers = {
            type = "list",
            member = M.ModelPackageContainerDefinition,
            traits = {
                required = true,
            },
        },
        SupportedTransformInstanceTypes = {
            type = "list",
            member = { type = "string" },
        },
        SupportedRealtimeInferenceInstanceTypes = {
            type = "list",
            member = { type = "string" },
        },
        SupportedContentTypes = {
            type = "list",
            member = { type = "string" },
        },
        SupportedResponseMIMETypes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ModelApprovalStatus = {
    APPROVED = "Approved",
    REJECTED = "Rejected",
    PENDING_MANUAL_APPROVAL = "PendingManualApproval",
}

M.ModelPackageRegistrationType = {
    LOGGED = "Logged",
    REGISTERED = "Registered",
}

M.ModelPackageStatus = {
    PENDING = "Pending",
    IN_PROGRESS = "InProgress",
    COMPLETED = "Completed",
    FAILED = "Failed",
    DELETING = "Deleting",
}

M.BatchDescribeModelPackageSummary = {
    type = "structure",
    id = "BatchDescribeModelPackageSummary",
    members = {
        ModelPackageGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ModelPackageVersion = {
            type = "integer",
        },
        ModelPackageArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ModelPackageDescription = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        InferenceSpecification = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InferenceSpecification }),
        ModelPackageStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ModelApprovalStatus = {
            type = "string",
        },
        ModelPackageRegistrationType = {
            type = "string",
        },
    },
}

M.BatchDescribeModelPackageOutput = {
    type = "structure",
    id = "BatchDescribeModelPackageOutput",
    members = {
        ModelPackageSummaries = {
            type = "map",
            key = { type = "string" },
            value = M.BatchDescribeModelPackageSummary,
        },
        BatchDescribeModelPackageErrorMap = {
            type = "map",
            key = { type = "string" },
            value = M.BatchDescribeModelPackageError,
        },
    },
}

M.BatchRebootClusterNodesErrorCode = {
    INSTANCE_ID_NOT_FOUND = "InstanceIdNotFound",
    INVALID_INSTANCE_STATUS = "InvalidInstanceStatus",
    INSTANCE_ID_IN_USE = "InstanceIdInUse",
    INTERNAL_SERVER_ERROR = "InternalServerError",
}

M.BatchRebootClusterNodeLogicalIdsError = {
    type = "structure",
    id = "BatchRebootClusterNodeLogicalIdsError",
    members = {
        NodeLogicalId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ErrorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchRebootClusterNodesInput = {
    type = "structure",
    id = "BatchRebootClusterNodesInput",
    members = {
        ClusterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NodeIds = {
            type = "list",
            member = { type = "string" },
        },
        NodeLogicalIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.BatchRebootClusterNodesError = {
    type = "structure",
    id = "BatchRebootClusterNodesError",
    members = {
        NodeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ErrorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchRebootClusterNodesOutput = {
    type = "structure",
    id = "BatchRebootClusterNodesOutput",
    members = {
        Successful = {
            type = "list",
            member = { type = "string" },
        },
        Failed = {
            type = "list",
            member = M.BatchRebootClusterNodesError,
        },
        FailedNodeLogicalIds = {
            type = "list",
            member = M.BatchRebootClusterNodeLogicalIdsError,
        },
        SuccessfulNodeLogicalIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.BatchReplaceClusterNodesErrorCode = {
    INSTANCE_ID_NOT_FOUND = "InstanceIdNotFound",
    INVALID_INSTANCE_STATUS = "InvalidInstanceStatus",
    INSTANCE_ID_IN_USE = "InstanceIdInUse",
    INTERNAL_SERVER_ERROR = "InternalServerError",
}

M.BatchReplaceClusterNodeLogicalIdsError = {
    type = "structure",
    id = "BatchReplaceClusterNodeLogicalIdsError",
    members = {
        NodeLogicalId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ErrorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchReplaceClusterNodesInput = {
    type = "structure",
    id = "BatchReplaceClusterNodesInput",
    members = {
        ClusterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NodeIds = {
            type = "list",
            member = { type = "string" },
        },
        NodeLogicalIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.BatchReplaceClusterNodesError = {
    type = "structure",
    id = "BatchReplaceClusterNodesError",
    members = {
        NodeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ErrorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchReplaceClusterNodesOutput = {
    type = "structure",
    id = "BatchReplaceClusterNodesOutput",
    members = {
        Successful = {
            type = "list",
            member = { type = "string" },
        },
        Failed = {
            type = "list",
            member = M.BatchReplaceClusterNodesError,
        },
        FailedNodeLogicalIds = {
            type = "list",
            member = M.BatchReplaceClusterNodeLogicalIdsError,
        },
        SuccessfulNodeLogicalIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.MonitoringCsvDatasetFormat = {
    type = "structure",
    id = "MonitoringCsvDatasetFormat",
    members = {
        Header = {
            type = "boolean",
        },
    },
}

M.MonitoringJsonDatasetFormat = {
    type = "structure",
    id = "MonitoringJsonDatasetFormat",
    members = {
        Line = {
            type = "boolean",
        },
    },
}

M.MonitoringParquetDatasetFormat = {
    type = "structure",
    id = "MonitoringParquetDatasetFormat",
}

M.MonitoringDatasetFormat = {
    type = "structure",
    id = "MonitoringDatasetFormat",
    members = {
        Csv = M.MonitoringCsvDatasetFormat,
        Json = M.MonitoringJsonDatasetFormat,
        Parquet = M.MonitoringParquetDatasetFormat,
    },
}

M.ProcessingS3DataDistributionType = {
    FULLYREPLICATED = "FullyReplicated",
    SHARDEDBYS3KEY = "ShardedByS3Key",
}

M.ProcessingS3InputMode = {
    PIPE = "Pipe",
    FILE = "File",
}

M.BatchTransformInput = {
    type = "structure",
    id = "BatchTransformInput",
    members = {
        DataCapturedDestinationS3Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DatasetFormat = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MonitoringDatasetFormat }),
        LocalPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        S3InputMode = {
            type = "string",
        },
        S3DataDistributionType = {
            type = "string",
        },
        FeaturesAttribute = {
            type = "string",
        },
        InferenceAttribute = {
            type = "string",
        },
        ProbabilityAttribute = {
            type = "string",
        },
        ProbabilityThresholdAttribute = {
            type = "double",
        },
        StartTimeOffset = {
            type = "string",
        },
        EndTimeOffset = {
            type = "string",
        },
        ExcludeFeaturesAttribute = {
            type = "string",
        },
    },
}

M.BedrockCustomModelDeploymentMetadata = {
    type = "structure",
    id = "BedrockCustomModelDeploymentMetadata",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.BedrockCustomModelMetadata = {
    type = "structure",
    id = "BedrockCustomModelMetadata",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.BedrockModelImportMetadata = {
    type = "structure",
    id = "BedrockModelImportMetadata",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.BedrockProvisionedModelThroughputMetadata = {
    type = "structure",
    id = "BedrockProvisionedModelThroughputMetadata",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.BestObjectiveNotImproving = {
    type = "structure",
    id = "BestObjectiveNotImproving",
    members = {
        MaxNumberOfTrainingJobsNotImproving = {
            type = "integer",
        },
    },
}

M.MetricsSource = {
    type = "structure",
    id = "MetricsSource",
    members = {
        ContentType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ContentDigest = {
            type = "string",
        },
        S3Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Bias = {
    type = "structure",
    id = "Bias",
    members = {
        Report = M.MetricsSource,
        PreTrainingReport = M.MetricsSource,
        PostTrainingReport = M.MetricsSource,
    },
}

M.CapacitySizeType = {
    INSTANCE_COUNT = "INSTANCE_COUNT",
    CAPACITY_PERCENT = "CAPACITY_PERCENT",
}

M.CapacitySize = {
    type = "structure",
    id = "CapacitySize",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.TrafficRoutingConfigType = {
    ALL_AT_ONCE = "ALL_AT_ONCE",
    CANARY = "CANARY",
    LINEAR = "LINEAR",
}

M.TrafficRoutingConfig = {
    type = "structure",
    id = "TrafficRoutingConfig",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WaitIntervalInSeconds = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        CanarySize = M.CapacitySize,
        LinearStepSize = M.CapacitySize,
    },
}

M.BlueGreenUpdatePolicy = {
    type = "structure",
    id = "BlueGreenUpdatePolicy",
    members = {
        TrafficRoutingConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TrafficRoutingConfig }),
        TerminationWaitInSeconds = {
            type = "integer",
        },
        MaximumExecutionTimeoutInSeconds = {
            type = "integer",
        },
    },
}

M.BooleanOperator = {
    AND = "And",
    OR = "Or",
}

M.CacheHitResult = {
    type = "structure",
    id = "CacheHitResult",
    members = {
        SourcePipelineExecutionArn = {
            type = "string",
        },
    },
}

M.OutputParameter = {
    type = "structure",
    id = "OutputParameter",
    members = {
        Name = {
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

M.CallbackStepMetadata = {
    type = "structure",
    id = "CallbackStepMetadata",
    members = {
        CallbackToken = {
            type = "string",
        },
        SqsQueueUrl = {
            type = "string",
        },
        OutputParameters = {
            type = "list",
            member = M.OutputParameter,
        },
    },
}

M.CandidateSortBy = {
    CreationTime = "CreationTime",
    Status = "Status",
    FinalObjectiveMetricValue = "FinalObjectiveMetricValue",
}

M.DirectDeploySettings = {
    type = "structure",
    id = "DirectDeploySettings",
    members = {
        Status = {
            type = "string",
        },
    },
}

M.EmrServerlessSettings = {
    type = "structure",
    id = "EmrServerlessSettings",
    members = {
        ExecutionRoleArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.GenerativeAiSettings = {
    type = "structure",
    id = "GenerativeAiSettings",
    members = {
        AmazonBedrockRoleArn = {
            type = "string",
        },
    },
}

M.DataSourceName = {
    SalesforceGenie = "SalesforceGenie",
    Snowflake = "Snowflake",
}

M.IdentityProviderOAuthSetting = {
    type = "structure",
    id = "IdentityProviderOAuthSetting",
    members = {
        DataSourceName = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        SecretArn = {
            type = "string",
        },
    },
}

M.KendraSettings = {
    type = "structure",
    id = "KendraSettings",
    members = {
        Status = {
            type = "string",
        },
    },
}

M.ModelRegisterSettings = {
    type = "structure",
    id = "ModelRegisterSettings",
    members = {
        Status = {
            type = "string",
        },
        CrossAccountModelRegisterRoleArn = {
            type = "string",
        },
    },
}

M.TimeSeriesForecastingSettings = {
    type = "structure",
    id = "TimeSeriesForecastingSettings",
    members = {
        Status = {
            type = "string",
        },
        AmazonForecastRoleArn = {
            type = "string",
        },
    },
}

M.WorkspaceSettings = {
    type = "structure",
    id = "WorkspaceSettings",
    members = {
        S3ArtifactPath = {
            type = "string",
        },
        S3KmsKeyId = {
            type = "string",
        },
    },
}

M.CanvasAppSettings = {
    type = "structure",
    id = "CanvasAppSettings",
    members = {
        TimeSeriesForecastingSettings = M.TimeSeriesForecastingSettings,
        ModelRegisterSettings = M.ModelRegisterSettings,
        WorkspaceSettings = M.WorkspaceSettings,
        IdentityProviderOAuthSettings = {
            type = "list",
            member = M.IdentityProviderOAuthSetting,
        },
        DirectDeploySettings = M.DirectDeploySettings,
        KendraSettings = M.KendraSettings,
        GenerativeAiSettings = M.GenerativeAiSettings,
        EmrServerlessSettings = M.EmrServerlessSettings,
    },
}

M.CapacityReservationType = {
    ODCR = "ODCR",
    CRG = "CRG",
}

M.CapacityReservation = {
    type = "structure",
    id = "CapacityReservation",
    members = {
        Arn = {
            type = "string",
        },
        Type = {
            type = "string",
        },
    },
}

M.CapacityReservationPreference = {
    CAPACITY_RESERVATIONS_ONLY = "capacity-reservations-only",
}

M.NodeUnavailabilityType = {
    INSTANCE_COUNT = "INSTANCE_COUNT",
    CAPACITY_PERCENTAGE = "CAPACITY_PERCENTAGE",
}

M.CapacitySizeConfig = {
    type = "structure",
    id = "CapacitySizeConfig",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.CaptureContentTypeHeader = {
    type = "structure",
    id = "CaptureContentTypeHeader",
    members = {
        CsvContentTypes = {
            type = "list",
            member = { type = "string" },
        },
        JsonContentTypes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CaptureMode = {
    INPUT = "Input",
    OUTPUT = "Output",
    INPUT_AND_OUTPUT = "InputAndOutput",
}

M.CaptureOption = {
    type = "structure",
    id = "CaptureOption",
    members = {
        CaptureMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CaptureStatus = {
    STARTED = "Started",
    STOPPED = "Stopped",
}

M.CategoricalParameter = {
    type = "structure",
    id = "CategoricalParameter",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.CategoricalParameterRange = {
    type = "structure",
    id = "CategoricalParameterRange",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Values = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.CategoricalParameterRangeSpecification = {
    type = "structure",
    id = "CategoricalParameterRangeSpecification",
    members = {
        Values = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.CfnStackCreateParameter = {
    type = "structure",
    id = "CfnStackCreateParameter",
    members = {
        Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "string",
        },
    },
}

M.CfnCreateTemplateProvider = {
    type = "structure",
    id = "CfnCreateTemplateProvider",
    members = {
        TemplateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TemplateURL = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RoleARN = {
            type = "string",
        },
        Parameters = {
            type = "list",
            member = M.CfnStackCreateParameter,
        },
    },
}

M.CfnStackDetail = {
    type = "structure",
    id = "CfnStackDetail",
    members = {
        Name = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CfnStackParameter = {
    type = "structure",
    id = "CfnStackParameter",
    members = {
        Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "string",
        },
    },
}

M.CfnStackUpdateParameter = {
    type = "structure",
    id = "CfnStackUpdateParameter",
    members = {
        Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "string",
        },
    },
}

M.CfnTemplateProviderDetail = {
    type = "structure",
    id = "CfnTemplateProviderDetail",
    members = {
        TemplateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TemplateURL = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RoleARN = {
            type = "string",
        },
        Parameters = {
            type = "list",
            member = M.CfnStackParameter,
        },
        StackDetail = M.CfnStackDetail,
    },
}

M.CfnUpdateTemplateProvider = {
    type = "structure",
    id = "CfnUpdateTemplateProvider",
    members = {
        TemplateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TemplateURL = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Parameters = {
            type = "list",
            member = M.CfnStackUpdateParameter,
        },
    },
}

M.ChannelSpecification = {
    type = "structure",
    id = "ChannelSpecification",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        IsRequired = {
            type = "boolean",
        },
        SupportedContentTypes = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        SupportedCompressionTypes = {
            type = "list",
            member = { type = "string" },
        },
        SupportedInputModes = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.CheckpointConfig = {
    type = "structure",
    id = "CheckpointConfig",
    members = {
        S3Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LocalPath = {
            type = "string",
        },
    },
}

M.ClarifyCheckStepMetadata = {
    type = "structure",
    id = "ClarifyCheckStepMetadata",
    members = {
        CheckType = {
            type = "string",
        },
        BaselineUsedForDriftCheckConstraints = {
            type = "string",
        },
        CalculatedBaselineConstraints = {
            type = "string",
        },
        ModelPackageGroupName = {
            type = "string",
        },
        ViolationReport = {
            type = "string",
        },
        CheckJobArn = {
            type = "string",
        },
        SkipCheck = {
            type = "boolean",
        },
        RegisterNewBaseline = {
            type = "boolean",
        },
    },
}

M.ClarifyFeatureType = {
    NUMERICAL = "numerical",
    CATEGORICAL = "categorical",
    TEXT = "text",
}

M.ClarifyInferenceConfig = {
    type = "structure",
    id = "ClarifyInferenceConfig",
    members = {
        FeaturesAttribute = {
            type = "string",
        },
        ContentTemplate = {
            type = "string",
        },
        MaxRecordCount = {
            type = "integer",
        },
        MaxPayloadInMB = {
            type = "integer",
        },
        ProbabilityIndex = {
            type = "integer",
        },
        LabelIndex = {
            type = "integer",
        },
        ProbabilityAttribute = {
            type = "string",
        },
        LabelAttribute = {
            type = "string",
        },
        LabelHeaders = {
            type = "list",
            member = { type = "string" },
        },
        FeatureHeaders = {
            type = "list",
            member = { type = "string" },
        },
        FeatureTypes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ClarifyShapBaselineConfig = {
    type = "structure",
    id = "ClarifyShapBaselineConfig",
    members = {
        MimeType = {
            type = "string",
        },
        ShapBaseline = {
            type = "string",
        },
        ShapBaselineUri = {
            type = "string",
        },
    },
}

M.ClarifyTextGranularity = {
    TOKEN = "token",
    SENTENCE = "sentence",
    PARAGRAPH = "paragraph",
}

M.ClarifyTextLanguage = {
    AFRIKAANS = "af",
    ALBANIAN = "sq",
    ARABIC = "ar",
    ARMENIAN = "hy",
    BASQUE = "eu",
    BENGALI = "bn",
    BULGARIAN = "bg",
    CATALAN = "ca",
    CHINESE = "zh",
    CROATIAN = "hr",
    CZECH = "cs",
    DANISH = "da",
    DUTCH = "nl",
    ENGLISH = "en",
    ESTONIAN = "et",
    FINNISH = "fi",
    FRENCH = "fr",
    GERMAN = "de",
    GREEK = "el",
    GUJARATI = "gu",
    HEBREW = "he",
    HINDI = "hi",
    HUNGARIAN = "hu",
    ICELANDIC = "is",
    INDONESIAN = "id",
    IRISH = "ga",
    ITALIAN = "it",
    KANNADA = "kn",
    KYRGYZ = "ky",
    LATVIAN = "lv",
    LITHUANIAN = "lt",
    LUXEMBOURGISH = "lb",
    MACEDONIAN = "mk",
    MALAYALAM = "ml",
    MARATHI = "mr",
    NEPALI = "ne",
    NORWEGIAN_BOKMAL = "nb",
    PERSIAN = "fa",
    POLISH = "pl",
    PORTUGUESE = "pt",
    ROMANIAN = "ro",
    RUSSIAN = "ru",
    SANSKRIT = "sa",
    SERBIAN = "sr",
    SETSWANA = "tn",
    SINHALA = "si",
    SLOVAK = "sk",
    SLOVENIAN = "sl",
    SPANISH = "es",
    SWEDISH = "sv",
    TAGALOG = "tl",
    TAMIL = "ta",
    TATAR = "tt",
    TELUGU = "te",
    TURKISH = "tr",
    UKRAINIAN = "uk",
    URDU = "ur",
    YORUBA = "yo",
    LIGURIAN = "lij",
    MULTI_LANGUAGE = "xx",
}

M.ClarifyTextConfig = {
    type = "structure",
    id = "ClarifyTextConfig",
    members = {
        Language = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Granularity = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ClarifyShapConfig = {
    type = "structure",
    id = "ClarifyShapConfig",
    members = {
        ShapBaselineConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ClarifyShapBaselineConfig }),
        NumberOfSamples = {
            type = "integer",
        },
        UseLogit = {
            type = "boolean",
        },
        Seed = {
            type = "integer",
        },
        TextConfig = M.ClarifyTextConfig,
    },
}

M.ClarifyExplainerConfig = {
    type = "structure",
    id = "ClarifyExplainerConfig",
    members = {
        EnableExplanations = {
            type = "string",
        },
        InferenceConfig = M.ClarifyInferenceConfig,
        ShapConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ClarifyShapConfig }),
    },
}

M.ClusterAutoScalerType = {
    KARPENTER = "Karpenter",
}

M.ClusterAutoScalingMode = {
    ENABLE = "Enable",
    DISABLE = "Disable",
}

M.ClusterAutoScalingConfig = {
    type = "structure",
    id = "ClusterAutoScalingConfig",
    members = {
        Mode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AutoScalerType = {
            type = "string",
        },
    },
}

M.ClusterAutoScalingStatus = {
    INSERVICE = "InService",
    FAILED = "Failed",
    CREATING = "Creating",
    DELETING = "Deleting",
}

M.ClusterAutoScalingConfigOutput = {
    type = "structure",
    id = "ClusterAutoScalingConfigOutput",
    members = {
        Mode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AutoScalerType = {
            type = "string",
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FailureMessage = {
            type = "string",
        },
    },
}

M.ClusterOnDemandOptions = {
    type = "structure",
    id = "ClusterOnDemandOptions",
}

M.ClusterSpotOptions = {
    type = "structure",
    id = "ClusterSpotOptions",
}

M.ClusterCapacityRequirements = {
    type = "structure",
    id = "ClusterCapacityRequirements",
    members = {
        Spot = M.ClusterSpotOptions,
        OnDemand = M.ClusterOnDemandOptions,
    },
}

M.ClusterCapacityType = {
    SPOT = "Spot",
    ON_DEMAND = "OnDemand",
}

M.ClusterConfigMode = {
    ENABLE = "Enable",
    DISABLE = "Disable",
}

M.ClusterEbsVolumeConfig = {
    type = "structure",
    id = "ClusterEbsVolumeConfig",
    members = {
        VolumeSizeInGB = {
            type = "integer",
        },
        VolumeKmsKeyId = {
            type = "string",
        },
        RootVolume = {
            type = "boolean",
        },
    },
}

M.ClusterMetadata = {
    type = "structure",
    id = "ClusterMetadata",
    members = {
        FailureMessage = {
            type = "string",
        },
        EksRoleAccessEntries = {
            type = "list",
            member = { type = "string" },
        },
        SlrAccessEntry = {
            type = "string",
        },
    },
}

M.InstanceMetadata = {
    type = "structure",
    id = "InstanceMetadata",
    members = {
        CustomerEni = {
            type = "string",
        },
        AdditionalEnis = M.AdditionalEnis,
        CapacityReservation = M.CapacityReservation,
        FailureMessage = {
            type = "string",
        },
        LcsExecutionState = {
            type = "string",
        },
        NodeLogicalId = {
            type = "string",
        },
    },
}

M.InstanceGroupMetadata = {
    type = "structure",
    id = "InstanceGroupMetadata",
    members = {
        FailureMessage = {
            type = "string",
        },
        AvailabilityZoneId = {
            type = "string",
        },
        CapacityReservation = M.CapacityReservation,
        SubnetId = {
            type = "string",
        },
        SecurityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        AmiOverride = {
            type = "string",
        },
    },
}

M.InstanceGroupScalingMetadata = {
    type = "structure",
    id = "InstanceGroupScalingMetadata",
    members = {
        InstanceCount = {
            type = "integer",
        },
        TargetCount = {
            type = "integer",
        },
        MinCount = {
            type = "integer",
        },
        FailureMessage = {
            type = "string",
        },
    },
}

M.EventMetadata = {
    type = "union",
    id = "EventMetadata",
    members = {
        Cluster = M.ClusterMetadata,
        InstanceGroup = M.InstanceGroupMetadata,
        InstanceGroupScaling = M.InstanceGroupScalingMetadata,
        Instance = M.InstanceMetadata,
    },
}

M.EventDetails = {
    type = "structure",
    id = "EventDetails",
    members = {
        EventMetadata = M.EventMetadata,
    },
}

M.ClusterEventResourceType = {
    CLUSTER = "Cluster",
    INSTANCE_GROUP = "InstanceGroup",
    INSTANCE = "Instance",
}

M.ClusterEventDetail = {
    type = "structure",
    id = "ClusterEventDetail",
    members = {
        EventId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClusterArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClusterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstanceGroupName = {
            type = "string",
        },
        InstanceId = {
            type = "string",
        },
        ResourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EventTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        EventDetails = M.EventDetails,
        Description = {
            type = "string",
        },
    },
}

M.ClusterEventSummary = {
    type = "structure",
    id = "ClusterEventSummary",
    members = {
        EventId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClusterArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClusterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstanceGroupName = {
            type = "string",
        },
        InstanceId = {
            type = "string",
        },
        ResourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EventTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
    },
}

M.ClusterFsxLustreConfig = {
    type = "structure",
    id = "ClusterFsxLustreConfig",
    members = {
        DnsName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MountName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MountPath = {
            type = "string",
        },
    },
}

M.ClusterFsxOpenZfsConfig = {
    type = "structure",
    id = "ClusterFsxOpenZfsConfig",
    members = {
        DnsName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MountPath = {
            type = "string",
        },
    },
}

M.RollingDeploymentPolicy = {
    type = "structure",
    id = "RollingDeploymentPolicy",
    members = {
        MaximumBatchSize = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CapacitySizeConfig }),
        RollbackMaximumBatchSize = M.CapacitySizeConfig,
    },
}

M.DeploymentConfiguration = {
    type = "structure",
    id = "DeploymentConfiguration",
    members = {
        RollingUpdatePolicy = M.RollingDeploymentPolicy,
        WaitIntervalInSeconds = {
            type = "integer",
        },
        AutoRollbackConfiguration = {
            type = "list",
            member = M.AlarmDetails,
        },
    },
}

M.ClusterInstanceRequirementDetails = {
    type = "structure",
    id = "ClusterInstanceRequirementDetails",
    members = {
        CurrentInstanceTypes = {
            type = "list",
            member = { type = "string" },
        },
        DesiredInstanceTypes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ClusterInstanceStorageConfig = {
    type = "union",
    id = "ClusterInstanceStorageConfig",
    members = {
        EbsVolumeConfig = M.ClusterEbsVolumeConfig,
        FsxLustreConfig = M.ClusterFsxLustreConfig,
        FsxOpenZfsConfig = M.ClusterFsxOpenZfsConfig,
    },
}

M.ClusterInstanceTypeDetail = {
    type = "structure",
    id = "ClusterInstanceTypeDetail",
    members = {
        InstanceType = {
            type = "string",
        },
        CurrentCount = {
            type = "integer",
        },
        ThreadsPerCore = {
            type = "integer",
        },
    },
}

M.ClusterKubernetesTaintEffect = {
    NO_SCHEDULE = "NoSchedule",
    PREFER_NO_SCHEDULE = "PreferNoSchedule",
    NO_EXECUTE = "NoExecute",
}

M.ClusterKubernetesTaint = {
    type = "structure",
    id = "ClusterKubernetesTaint",
    members = {
        Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "string",
        },
        Effect = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ClusterKubernetesConfigDetails = {
    type = "structure",
    id = "ClusterKubernetesConfigDetails",
    members = {
        CurrentLabels = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        DesiredLabels = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        CurrentTaints = {
            type = "list",
            member = M.ClusterKubernetesTaint,
        },
        DesiredTaints = {
            type = "list",
            member = M.ClusterKubernetesTaint,
        },
    },
}

M.ClusterLifeCycleConfig = {
    type = "structure",
    id = "ClusterLifeCycleConfig",
    members = {
        SourceS3Uri = {
            type = "string",
        },
        OnCreate = {
            type = "string",
        },
        OnInitComplete = {
            type = "string",
        },
    },
}

M.ClusterInterfaceType = {
    EFA = "efa",
    EFA_ONLY = "efa-only",
}

M.ClusterNetworkInterfaceDetails = {
    type = "structure",
    id = "ClusterNetworkInterfaceDetails",
    members = {
        InterfaceType = {
            type = "string",
        },
    },
}

M.DeepHealthCheckType = {
    INSTANCE_STRESS = "InstanceStress",
    INSTANCE_CONNECTIVITY = "InstanceConnectivity",
}

M.ScheduledUpdateConfig = {
    type = "structure",
    id = "ScheduledUpdateConfig",
    members = {
        ScheduleExpression = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeploymentConfig = M.DeploymentConfiguration,
    },
}

M.ClusterSlurmNodeType = {
    CONTROLLER = "Controller",
    LOGIN = "Login",
    COMPUTE = "Compute",
}

M.ClusterSlurmConfigDetails = {
    type = "structure",
    id = "ClusterSlurmConfigDetails",
    members = {
        NodeType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PartitionNames = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.SoftwareUpdateStatus = {
    PENDING = "Pending",
    IN_PROGRESS = "InProgress",
    SUCCEEDED = "Succeeded",
    FAILED = "Failed",
    ROLLBACK_IN_PROGRESS = "RollbackInProgress",
    ROLLBACK_COMPLETE = "RollbackComplete",
}

M.InstanceGroupStatus = {
    INSERVICE = "InService",
    CREATING = "Creating",
    UPDATING = "Updating",
    FAILED = "Failed",
    DEGRADED = "Degraded",
    SYSTEMUPDATING = "SystemUpdating",
    DELETING = "Deleting",
}

M.ClusterInstanceGroupDetails = {
    type = "structure",
    id = "ClusterInstanceGroupDetails",
    members = {
        CurrentCount = {
            type = "integer",
        },
        TargetCount = {
            type = "integer",
        },
        MinCount = {
            type = "integer",
        },
        InstanceGroupName = {
            type = "string",
        },
        InstanceType = {
            type = "string",
        },
        InstanceRequirements = M.ClusterInstanceRequirementDetails,
        InstanceTypeDetails = {
            type = "list",
            member = M.ClusterInstanceTypeDetail,
        },
        LifeCycleConfig = M.ClusterLifeCycleConfig,
        ExecutionRole = {
            type = "string",
        },
        ThreadsPerCore = {
            type = "integer",
        },
        InstanceStorageConfigs = {
            type = "list",
            member = M.ClusterInstanceStorageConfig,
        },
        OnStartDeepHealthChecks = {
            type = "list",
            member = { type = "string" },
        },
        Status = {
            type = "string",
        },
        TrainingPlanArn = {
            type = "string",
        },
        TrainingPlanStatus = {
            type = "string",
        },
        OverrideVpcConfig = M.VpcConfig,
        ScheduledUpdateConfig = M.ScheduledUpdateConfig,
        CurrentImageId = {
            type = "string",
        },
        DesiredImageId = {
            type = "string",
        },
        ActiveOperations = {
            type = "map",
            key = { type = "string" },
            value = { type = "integer" },
        },
        KubernetesConfig = M.ClusterKubernetesConfigDetails,
        CapacityRequirements = M.ClusterCapacityRequirements,
        TargetStateCount = {
            type = "integer",
        },
        SoftwareUpdateStatus = {
            type = "string",
        },
        ActiveSoftwareUpdateConfig = M.DeploymentConfiguration,
        SlurmConfig = M.ClusterSlurmConfigDetails,
        NetworkInterface = M.ClusterNetworkInterfaceDetails,
    },
}

M.ClusterInstanceRequirements = {
    type = "structure",
    id = "ClusterInstanceRequirements",
    members = {
        InstanceTypes = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.ClusterKubernetesConfig = {
    type = "structure",
    id = "ClusterKubernetesConfig",
    members = {
        Labels = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Taints = {
            type = "list",
            member = M.ClusterKubernetesTaint,
        },
    },
}

M.ClusterNetworkInterface = {
    type = "structure",
    id = "ClusterNetworkInterface",
    members = {
        InterfaceType = {
            type = "string",
        },
    },
}

M.ClusterSlurmConfig = {
    type = "structure",
    id = "ClusterSlurmConfig",
    members = {
        NodeType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PartitionNames = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ClusterInstanceGroupSpecification = {
    type = "structure",
    id = "ClusterInstanceGroupSpecification",
    members = {
        InstanceCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        MinInstanceCount = {
            type = "integer",
        },
        InstanceGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstanceType = {
            type = "string",
        },
        InstanceRequirements = M.ClusterInstanceRequirements,
        LifeCycleConfig = M.ClusterLifeCycleConfig,
        ExecutionRole = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ThreadsPerCore = {
            type = "integer",
        },
        InstanceStorageConfigs = {
            type = "list",
            member = M.ClusterInstanceStorageConfig,
        },
        OnStartDeepHealthChecks = {
            type = "list",
            member = { type = "string" },
        },
        TrainingPlanArn = {
            type = "string",
        },
        OverrideVpcConfig = M.VpcConfig,
        ScheduledUpdateConfig = M.ScheduledUpdateConfig,
        ImageId = {
            type = "string",
        },
        KubernetesConfig = M.ClusterKubernetesConfig,
        SlurmConfig = M.ClusterSlurmConfig,
        CapacityRequirements = M.ClusterCapacityRequirements,
        NetworkInterface = M.ClusterNetworkInterface,
    },
}

M.ClusterInstancePlacement = {
    type = "structure",
    id = "ClusterInstancePlacement",
    members = {
        AvailabilityZone = {
            type = "string",
        },
        AvailabilityZoneId = {
            type = "string",
        },
    },
}

M.ClusterInstanceStatusDetails = {
    type = "structure",
    id = "ClusterInstanceStatusDetails",
    members = {
        Status = {
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

M.ClusterKubernetesConfigNodeDetails = {
    type = "structure",
    id = "ClusterKubernetesConfigNodeDetails",
    members = {
        CurrentLabels = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        DesiredLabels = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        CurrentTaints = {
            type = "list",
            member = M.ClusterKubernetesTaint,
        },
        DesiredTaints = {
            type = "list",
            member = M.ClusterKubernetesTaint,
        },
    },
}

M.UltraServerInfo = {
    type = "structure",
    id = "UltraServerInfo",
    members = {
        Id = {
            type = "string",
        },
        Type = {
            type = "string",
        },
    },
}

M.ClusterNodeDetails = {
    type = "structure",
    id = "ClusterNodeDetails",
    members = {
        InstanceGroupName = {
            type = "string",
        },
        InstanceId = {
            type = "string",
        },
        NodeLogicalId = {
            type = "string",
        },
        InstanceStatus = M.ClusterInstanceStatusDetails,
        InstanceType = {
            type = "string",
        },
        LaunchTime = {
            type = "timestamp",
        },
        LastSoftwareUpdateTime = {
            type = "timestamp",
        },
        LifeCycleConfig = M.ClusterLifeCycleConfig,
        OverrideVpcConfig = M.VpcConfig,
        ThreadsPerCore = {
            type = "integer",
        },
        InstanceStorageConfigs = {
            type = "list",
            member = M.ClusterInstanceStorageConfig,
        },
        PrivatePrimaryIp = {
            type = "string",
        },
        PrivatePrimaryIpv6 = {
            type = "string",
        },
        PrivateDnsHostname = {
            type = "string",
        },
        Placement = M.ClusterInstancePlacement,
        CurrentImageId = {
            type = "string",
        },
        DesiredImageId = {
            type = "string",
        },
        UltraServerInfo = M.UltraServerInfo,
        KubernetesConfig = M.ClusterKubernetesConfigNodeDetails,
        CapacityType = {
            type = "string",
        },
        NetworkInterface = M.ClusterNetworkInterfaceDetails,
    },
}

M.ClusterNodeProvisioningMode = {
    CONTINUOUS = "Continuous",
}

M.ClusterNodeRecovery = {
    AUTOMATIC = "Automatic",
    NONE = "None",
}

M.ClusterNodeSummary = {
    type = "structure",
    id = "ClusterNodeSummary",
    members = {
        InstanceGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NodeLogicalId = {
            type = "string",
        },
        InstanceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LaunchTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastSoftwareUpdateTime = {
            type = "timestamp",
        },
        InstanceStatus = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ClusterInstanceStatusDetails }),
        UltraServerInfo = M.UltraServerInfo,
        PrivateDnsHostname = {
            type = "string",
        },
    },
}

M.ClusterOrchestratorEksConfig = {
    type = "structure",
    id = "ClusterOrchestratorEksConfig",
    members = {
        ClusterArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ClusterSlurmConfigStrategy = {
    OVERWRITE = "Overwrite",
    MANAGED = "Managed",
    MERGE = "Merge",
}

M.ClusterOrchestratorSlurmConfig = {
    type = "structure",
    id = "ClusterOrchestratorSlurmConfig",
    members = {
        SlurmConfigStrategy = {
            type = "string",
        },
    },
}

M.ClusterOrchestrator = {
    type = "structure",
    id = "ClusterOrchestrator",
    members = {
        Eks = M.ClusterOrchestratorEksConfig,
        Slurm = M.ClusterOrchestratorSlurmConfig,
    },
}

M.FSxLustreConfig = {
    type = "structure",
    id = "FSxLustreConfig",
    members = {
        SizeInGiB = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        PerUnitStorageThroughput = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.EnvironmentConfigDetails = {
    type = "structure",
    id = "EnvironmentConfigDetails",
    members = {
        FSxLustreConfig = M.FSxLustreConfig,
        S3OutputPath = {
            type = "string",
        },
    },
}

M.ClusterRestrictedInstanceGroupDetails = {
    type = "structure",
    id = "ClusterRestrictedInstanceGroupDetails",
    members = {
        CurrentCount = {
            type = "integer",
        },
        TargetCount = {
            type = "integer",
        },
        InstanceGroupName = {
            type = "string",
        },
        InstanceType = {
            type = "string",
        },
        ExecutionRole = {
            type = "string",
        },
        ThreadsPerCore = {
            type = "integer",
        },
        InstanceStorageConfigs = {
            type = "list",
            member = M.ClusterInstanceStorageConfig,
        },
        OnStartDeepHealthChecks = {
            type = "list",
            member = { type = "string" },
        },
        Status = {
            type = "string",
        },
        TrainingPlanArn = {
            type = "string",
        },
        TrainingPlanStatus = {
            type = "string",
        },
        OverrideVpcConfig = M.VpcConfig,
        ScheduledUpdateConfig = M.ScheduledUpdateConfig,
        EnvironmentConfig = M.EnvironmentConfigDetails,
    },
}

M.EnvironmentConfig = {
    type = "structure",
    id = "EnvironmentConfig",
    members = {
        FSxLustreConfig = M.FSxLustreConfig,
    },
}

M.ClusterRestrictedInstanceGroupSpecification = {
    type = "structure",
    id = "ClusterRestrictedInstanceGroupSpecification",
    members = {
        InstanceCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        InstanceGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstanceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExecutionRole = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ThreadsPerCore = {
            type = "integer",
        },
        InstanceStorageConfigs = {
            type = "list",
            member = M.ClusterInstanceStorageConfig,
        },
        OnStartDeepHealthChecks = {
            type = "list",
            member = { type = "string" },
        },
        TrainingPlanArn = {
            type = "string",
        },
        OverrideVpcConfig = M.VpcConfig,
        ScheduledUpdateConfig = M.ScheduledUpdateConfig,
        EnvironmentConfig = M.EnvironmentConfig,
    },
}

M.SchedulerResourceStatus = {
    CREATING = "Creating",
    CREATE_FAILED = "CreateFailed",
    CREATE_ROLLBACK_FAILED = "CreateRollbackFailed",
    CREATED = "Created",
    UPDATING = "Updating",
    UPDATE_FAILED = "UpdateFailed",
    UPDATE_ROLLBACK_FAILED = "UpdateRollbackFailed",
    UPDATED = "Updated",
    DELETING = "Deleting",
    DELETE_FAILED = "DeleteFailed",
    DELETE_ROLLBACK_FAILED = "DeleteRollbackFailed",
    DELETED = "Deleted",
}

M.ClusterSchedulerConfigSummary = {
    type = "structure",
    id = "ClusterSchedulerConfigSummary",
    members = {
        ClusterSchedulerConfigArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClusterSchedulerConfigId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClusterSchedulerConfigVersion = {
            type = "integer",
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClusterArn = {
            type = "string",
        },
    },
}

M.ClusterSortBy = {
    CREATION_TIME = "CREATION_TIME",
    NAME = "NAME",
}

M.ClusterStatus = {
    CREATING = "Creating",
    DELETING = "Deleting",
    FAILED = "Failed",
    INSERVICE = "InService",
    ROLLINGBACK = "RollingBack",
    SYSTEMUPDATING = "SystemUpdating",
    UPDATING = "Updating",
}

M.ClusterSummary = {
    type = "structure",
    id = "ClusterSummary",
    members = {
        ClusterArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClusterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        ClusterStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TrainingPlanArns = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ClusterTieredStorageConfig = {
    type = "structure",
    id = "ClusterTieredStorageConfig",
    members = {
        Mode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstanceMemoryAllocationPercentage = {
            type = "integer",
        },
    },
}

M.CustomImage = {
    type = "structure",
    id = "CustomImage",
    members = {
        ImageName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ImageVersionNumber = {
            type = "integer",
        },
        AppImageConfigName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CodeEditorAppSettings = {
    type = "structure",
    id = "CodeEditorAppSettings",
    members = {
        DefaultResourceSpec = M.ResourceSpec,
        CustomImages = {
            type = "list",
            member = M.CustomImage,
        },
        LifecycleConfigArns = {
            type = "list",
            member = { type = "string" },
        },
        AppLifecycleManagement = M.AppLifecycleManagement,
        BuiltInLifecycleConfigArn = {
            type = "string",
        },
    },
}

M.CodeRepository = {
    type = "structure",
    id = "CodeRepository",
    members = {
        RepositoryUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CodeRepositorySortBy = {
    NAME = "Name",
    CREATION_TIME = "CreationTime",
    LAST_MODIFIED_TIME = "LastModifiedTime",
}

M.CodeRepositorySortOrder = {
    ASCENDING = "Ascending",
    DESCENDING = "Descending",
}

M.GitConfig = {
    type = "structure",
    id = "GitConfig",
    members = {
        RepositoryUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Branch = {
            type = "string",
        },
        SecretArn = {
            type = "string",
        },
    },
}

M.CodeRepositorySummary = {
    type = "structure",
    id = "CodeRepositorySummary",
    members = {
        CodeRepositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CodeRepositoryArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        GitConfig = M.GitConfig,
    },
}

M.CognitoConfig = {
    type = "structure",
    id = "CognitoConfig",
    members = {
        UserPool = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CognitoMemberDefinition = {
    type = "structure",
    id = "CognitoMemberDefinition",
    members = {
        UserPool = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserGroup = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.VectorConfig = {
    type = "structure",
    id = "VectorConfig",
    members = {
        Dimension = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.CollectionConfig = {
    type = "union",
    id = "CollectionConfig",
    members = {
        VectorConfig = M.VectorConfig,
    },
}

M.CollectionConfiguration = {
    type = "structure",
    id = "CollectionConfiguration",
    members = {
        CollectionName = {
            type = "string",
        },
        CollectionParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CollectionType = {
    LIST = "List",
    SET = "Set",
    VECTOR = "Vector",
}

M.CompilationJobStatus = {
    INPROGRESS = "INPROGRESS",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
    STARTING = "STARTING",
    STOPPING = "STOPPING",
    STOPPED = "STOPPED",
}

M.TargetDevice = {
    LAMBDA = "lambda",
    ML_M4 = "ml_m4",
    ML_M5 = "ml_m5",
    ML_M6G = "ml_m6g",
    ML_C4 = "ml_c4",
    ML_C5 = "ml_c5",
    ML_C6G = "ml_c6g",
    ML_P2 = "ml_p2",
    ML_P3 = "ml_p3",
    ML_G4DN = "ml_g4dn",
    ML_INF1 = "ml_inf1",
    ML_INF2 = "ml_inf2",
    ML_TRN1 = "ml_trn1",
    ML_EIA2 = "ml_eia2",
    JETSON_TX1 = "jetson_tx1",
    JETSON_TX2 = "jetson_tx2",
    JETSON_NANO = "jetson_nano",
    JETSON_XAVIER = "jetson_xavier",
    RASP3B = "rasp3b",
    RASP4B = "rasp4b",
    IMX8QM = "imx8qm",
    DEEPLENS = "deeplens",
    RK3399 = "rk3399",
    RK3288 = "rk3288",
    AISAGE = "aisage",
    SBE_C = "sbe_c",
    QCS605 = "qcs605",
    QCS603 = "qcs603",
    SITARA_AM57X = "sitara_am57x",
    AMBA_CV2 = "amba_cv2",
    AMBA_CV22 = "amba_cv22",
    AMBA_CV25 = "amba_cv25",
    X86_WIN32 = "x86_win32",
    X86_WIN64 = "x86_win64",
    COREML = "coreml",
    JACINTO_TDA4VM = "jacinto_tda4vm",
    IMX8MPLUS = "imx8mplus",
}

M.TargetPlatformAccelerator = {
    INTEL_GRAPHICS = "INTEL_GRAPHICS",
    MALI = "MALI",
    NVIDIA = "NVIDIA",
    NNA = "NNA",
}

M.TargetPlatformArch = {
    X86_64 = "X86_64",
    X86 = "X86",
    ARM64 = "ARM64",
    ARM_EABI = "ARM_EABI",
    ARM_EABIHF = "ARM_EABIHF",
}

M.TargetPlatformOs = {
    ANDROID = "ANDROID",
    LINUX = "LINUX",
}

M.CompilationJobSummary = {
    type = "structure",
    id = "CompilationJobSummary",
    members = {
        CompilationJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CompilationJobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        CompilationStartTime = {
            type = "timestamp",
        },
        CompilationEndTime = {
            type = "timestamp",
        },
        CompilationTargetDevice = {
            type = "string",
        },
        CompilationTargetPlatformOs = {
            type = "string",
        },
        CompilationTargetPlatformArch = {
            type = "string",
        },
        CompilationTargetPlatformAccelerator = {
            type = "string",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        CompilationJobStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CompleteOnConvergence = {
    DISABLED = "Disabled",
    ENABLED = "Enabled",
}

M.PreemptTeamTasks = {
    NEVER = "Never",
    LOWERPRIORITY = "LowerPriority",
}

M.ResourceSharingStrategy = {
    LEND = "Lend",
    DONTLEND = "DontLend",
    LENDANDBORROW = "LendAndBorrow",
}

M.ResourceSharingConfig = {
    type = "structure",
    id = "ResourceSharingConfig",
    members = {
        Strategy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BorrowLimit = {
            type = "integer",
        },
        AbsoluteBorrowLimits = {
            type = "list",
            member = M.ComputeQuotaResourceConfig,
        },
    },
}

M.ComputeQuotaConfig = {
    type = "structure",
    id = "ComputeQuotaConfig",
    members = {
        ComputeQuotaResources = {
            type = "list",
            member = M.ComputeQuotaResourceConfig,
        },
        ResourceSharingConfig = M.ResourceSharingConfig,
        PreemptTeamTasks = {
            type = "string",
        },
    },
}

M.ComputeQuotaTarget = {
    type = "structure",
    id = "ComputeQuotaTarget",
    members = {
        TeamName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FairShareWeight = {
            type = "integer",
        },
    },
}

M.ComputeQuotaSummary = {
    type = "structure",
    id = "ComputeQuotaSummary",
    members = {
        ComputeQuotaArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ComputeQuotaId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ComputeQuotaVersion = {
            type = "integer",
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClusterArn = {
            type = "string",
        },
        ComputeQuotaConfig = M.ComputeQuotaConfig,
        ComputeQuotaTarget = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ComputeQuotaTarget }),
        ActivationState = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastModifiedTime = {
            type = "timestamp",
        },
    },
}

M.ConditionOutcome = {
    TRUE = "True",
    FALSE = "False",
}

M.ConditionStepMetadata = {
    type = "structure",
    id = "ConditionStepMetadata",
    members = {
        Outcome = {
            type = "string",
        },
    },
}

M.ConflictException = {
    type = "structure",
    id = "ConflictException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.RepositoryAccessMode = {
    PLATFORM = "Platform",
    VPC = "Vpc",
}

M.RepositoryAuthConfig = {
    type = "structure",
    id = "RepositoryAuthConfig",
    members = {
        RepositoryCredentialsProviderArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ImageConfig = {
    type = "structure",
    id = "ImageConfig",
    members = {
        RepositoryAccessMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RepositoryAuthConfig = M.RepositoryAuthConfig,
    },
}

M.ContainerMode = {
    SINGLE_MODEL = "SingleModel",
    MULTI_MODEL = "MultiModel",
}

M.ModelCacheSetting = {
    ENABLED = "Enabled",
    DISABLED = "Disabled",
}

M.MultiModelConfig = {
    type = "structure",
    id = "MultiModelConfig",
    members = {
        ModelCacheSetting = {
            type = "string",
        },
    },
}

M.ContainerDefinition = {
    type = "structure",
    id = "ContainerDefinition",
    members = {
        ContainerHostname = {
            type = "string",
        },
        Image = {
            type = "string",
        },
        ImageConfig = M.ImageConfig,
        Mode = {
            type = "string",
        },
        ModelDataUrl = {
            type = "string",
        },
        ModelDataSource = M.ModelDataSource,
        AdditionalModelDataSources = {
            type = "list",
            member = M.AdditionalModelDataSource,
        },
        Environment = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        ModelPackageName = {
            type = "string",
        },
        InferenceSpecificationName = {
            type = "string",
        },
        MultiModelConfig = M.MultiModelConfig,
    },
}

M.ContentClassifier = {
    FREE_OF_PERSONALLY_IDENTIFIABLE_INFORMATION = "FreeOfPersonallyIdentifiableInformation",
    FREE_OF_ADULT_CONTENT = "FreeOfAdultContent",
}

M.ContextSource = {
    type = "structure",
    id = "ContextSource",
    members = {
        SourceUri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceType = {
            type = "string",
        },
        SourceId = {
            type = "string",
        },
    },
}

M.ContextSummary = {
    type = "structure",
    id = "ContextSummary",
    members = {
        ContextArn = {
            type = "string",
        },
        ContextName = {
            type = "string",
        },
        Source = M.ContextSource,
        ContextType = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
    },
}

M.HyperParameterScalingType = {
    AUTO = "Auto",
    LINEAR = "Linear",
    LOGARITHMIC = "Logarithmic",
    REVERSE_LOGARITHMIC = "ReverseLogarithmic",
}

M.ContinuousParameterRange = {
    type = "structure",
    id = "ContinuousParameterRange",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MinValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ScalingType = {
            type = "string",
        },
    },
}

M.ContinuousParameterRangeSpecification = {
    type = "structure",
    id = "ContinuousParameterRangeSpecification",
    members = {
        MinValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ConvergenceDetected = {
    type = "structure",
    id = "ConvergenceDetected",
    members = {
        CompleteOnConvergence = {
            type = "string",
        },
    },
}

M.MetadataProperties = {
    type = "structure",
    id = "MetadataProperties",
    members = {
        CommitId = {
            type = "string",
        },
        Repository = {
            type = "string",
        },
        GeneratedBy = {
            type = "string",
        },
        ProjectId = {
            type = "string",
        },
    },
}

M.CreateActionInput = {
    type = "structure",
    id = "CreateActionInput",
    members = {
        ActionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Source = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ActionSource }),
        ActionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Properties = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        MetadataProperties = M.MetadataProperties,
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateActionOutput = {
    type = "structure",
    id = "CreateActionOutput",
    members = {
        ActionArn = {
            type = "string",
        },
    },
}

M.CreateAIBenchmarkJobInput = {
    type = "structure",
    id = "CreateAIBenchmarkJobInput",
    members = {
        AIBenchmarkJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BenchmarkTarget = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AIBenchmarkTarget }),
        OutputConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AIBenchmarkOutputConfig }),
        AIWorkloadConfigIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NetworkConfig = M.AIBenchmarkNetworkConfig,
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateAIBenchmarkJobOutput = {
    type = "structure",
    id = "CreateAIBenchmarkJobOutput",
    members = {
        AIBenchmarkJobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceInUse = {
    type = "structure",
    id = "ResourceInUse",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateAIRecommendationJobInput = {
    type = "structure",
    id = "CreateAIRecommendationJobInput",
    members = {
        AIRecommendationJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ModelSource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AIModelSource }),
        OutputConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AIRecommendationOutputConfig }),
        AIWorkloadConfigIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PerformanceTarget = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AIRecommendationPerformanceTarget }),
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InferenceSpecification = M.AIRecommendationInferenceSpecification,
        OptimizeModel = {
            type = "boolean",
        },
        ComputeSpec = M.AIRecommendationComputeSpec,
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateAIRecommendationJobOutput = {
    type = "structure",
    id = "CreateAIRecommendationJobOutput",
    members = {
        AIRecommendationJobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateAIWorkloadConfigInput = {
    type = "structure",
    id = "CreateAIWorkloadConfigInput",
    members = {
        AIWorkloadConfigName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DatasetConfig = M.AIDatasetConfig,
        AIWorkloadConfigs = M.AIWorkloadConfigs,
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateAIWorkloadConfigOutput = {
    type = "structure",
    id = "CreateAIWorkloadConfigOutput",
    members = {
        AIWorkloadConfigArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.IntegerParameterRangeSpecification = {
    type = "structure",
    id = "IntegerParameterRangeSpecification",
    members = {
        MinValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ParameterRange = {
    type = "structure",
    id = "ParameterRange",
    members = {
        IntegerParameterRangeSpecification = M.IntegerParameterRangeSpecification,
        ContinuousParameterRangeSpecification = M.ContinuousParameterRangeSpecification,
        CategoricalParameterRangeSpecification = M.CategoricalParameterRangeSpecification,
    },
}

M.ParameterType = {
    INTEGER = "Integer",
    CONTINUOUS = "Continuous",
    CATEGORICAL = "Categorical",
    FREE_TEXT = "FreeText",
}

M.HyperParameterSpecification = {
    type = "structure",
    id = "HyperParameterSpecification",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Range = M.ParameterRange,
        IsTunable = {
            type = "boolean",
        },
        IsRequired = {
            type = "boolean",
        },
        DefaultValue = {
            type = "string",
        },
    },
}

M.HyperParameterTuningJobObjectiveType = {
    MAXIMIZE = "Maximize",
    MINIMIZE = "Minimize",
}

M.HyperParameterTuningJobObjective = {
    type = "structure",
    id = "HyperParameterTuningJobObjective",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MetricName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TrainingSpecification = {
    type = "structure",
    id = "TrainingSpecification",
    members = {
        TrainingImage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TrainingImageDigest = {
            type = "string",
        },
        SupportedHyperParameters = {
            type = "list",
            member = M.HyperParameterSpecification,
        },
        SupportedTrainingInstanceTypes = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        SupportsDistributedTraining = {
            type = "boolean",
        },
        MetricDefinitions = {
            type = "list",
            member = M.MetricDefinition,
        },
        TrainingChannels = {
            type = "list",
            member = M.ChannelSpecification,
            traits = {
                required = true,
            },
        },
        SupportedTuningJobObjectiveMetrics = {
            type = "list",
            member = M.HyperParameterTuningJobObjective,
        },
        AdditionalS3DataSource = M.AdditionalS3DataSource,
    },
}

M.CreateAlgorithmInput = {
    type = "structure",
    id = "CreateAlgorithmInput",
    members = {
        AlgorithmName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AlgorithmDescription = {
            type = "string",
        },
        TrainingSpecification = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TrainingSpecification }),
        InferenceSpecification = M.InferenceSpecification,
        ValidationSpecification = M.AlgorithmValidationSpecification,
        CertifyForMarketplace = {
            type = "boolean",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateAlgorithmOutput = {
    type = "structure",
    id = "CreateAlgorithmOutput",
    members = {
        AlgorithmArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateAppInput = {
    type = "structure",
    id = "CreateAppInput",
    members = {
        DomainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserProfileName = {
            type = "string",
        },
        SpaceName = {
            type = "string",
        },
        AppType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AppName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        ResourceSpec = M.ResourceSpec,
        RecoveryMode = {
            type = "boolean",
        },
    },
}

M.CreateAppOutput = {
    type = "structure",
    id = "CreateAppOutput",
    members = {
        AppArn = {
            type = "string",
        },
    },
}

M.CreateAppImageConfigInput = {
    type = "structure",
    id = "CreateAppImageConfigInput",
    members = {
        AppImageConfigName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        KernelGatewayImageConfig = M.KernelGatewayImageConfig,
        JupyterLabAppImageConfig = M.JupyterLabAppImageConfig,
        CodeEditorAppImageConfig = M.CodeEditorAppImageConfig,
    },
}

M.CreateAppImageConfigOutput = {
    type = "structure",
    id = "CreateAppImageConfigOutput",
    members = {
        AppImageConfigArn = {
            type = "string",
        },
    },
}

M.CreateArtifactInput = {
    type = "structure",
    id = "CreateArtifactInput",
    members = {
        ArtifactName = {
            type = "string",
        },
        Source = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ArtifactSource }),
        ArtifactType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Properties = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        MetadataProperties = M.MetadataProperties,
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateArtifactOutput = {
    type = "structure",
    id = "CreateArtifactOutput",
    members = {
        ArtifactArn = {
            type = "string",
        },
    },
}

M.ModelDeployConfig = {
    type = "structure",
    id = "ModelDeployConfig",
    members = {
        AutoGenerateEndpointName = {
            type = "boolean",
        },
        EndpointName = {
            type = "string",
        },
    },
}

M.CreateAutoMLJobInput = {
    type = "structure",
    id = "CreateAutoMLJobInput",
    members = {
        AutoMLJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InputDataConfig = {
            type = "list",
            member = M.AutoMLChannel,
            traits = {
                required = true,
            },
        },
        OutputDataConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AutoMLOutputDataConfig }),
        ProblemType = {
            type = "string",
        },
        AutoMLJobObjective = M.AutoMLJobObjective,
        AutoMLJobConfig = M.AutoMLJobConfig,
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GenerateCandidateDefinitionsOnly = {
            type = "boolean",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        ModelDeployConfig = M.ModelDeployConfig,
    },
}

M.CreateAutoMLJobOutput = {
    type = "structure",
    id = "CreateAutoMLJobOutput",
    members = {
        AutoMLJobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateAutoMLJobV2Input = {
    type = "structure",
    id = "CreateAutoMLJobV2Input",
    members = {
        AutoMLJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AutoMLJobInputDataConfig = {
            type = "list",
            member = M.AutoMLJobChannel,
            traits = {
                required = true,
            },
        },
        OutputDataConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AutoMLOutputDataConfig }),
        AutoMLProblemTypeConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AutoMLProblemTypeConfig }),
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        SecurityConfig = M.AutoMLSecurityConfig,
        AutoMLJobObjective = M.AutoMLJobObjective,
        ModelDeployConfig = M.ModelDeployConfig,
        DataSplitConfig = M.AutoMLDataSplitConfig,
        AutoMLComputeConfig = M.AutoMLComputeConfig,
    },
}

M.CreateAutoMLJobV2Output = {
    type = "structure",
    id = "CreateAutoMLJobV2Output",
    members = {
        AutoMLJobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateClusterInput = {
    type = "structure",
    id = "CreateClusterInput",
    members = {
        ClusterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstanceGroups = {
            type = "list",
            member = M.ClusterInstanceGroupSpecification,
        },
        RestrictedInstanceGroups = {
            type = "list",
            member = M.ClusterRestrictedInstanceGroupSpecification,
        },
        VpcConfig = M.VpcConfig,
        Tags = {
            type = "list",
            member = M.Tag,
        },
        Orchestrator = M.ClusterOrchestrator,
        NodeRecovery = {
            type = "string",
        },
        TieredStorageConfig = M.ClusterTieredStorageConfig,
        NodeProvisioningMode = {
            type = "string",
        },
        ClusterRole = {
            type = "string",
        },
        AutoScaling = M.ClusterAutoScalingConfig,
    },
}

M.CreateClusterOutput = {
    type = "structure",
    id = "CreateClusterOutput",
    members = {
        ClusterArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.FairShare = {
    ENABLED = "Enabled",
    DISABLED = "Disabled",
}

M.IdleResourceSharing = {
    ENABLED = "Enabled",
    DISABLED = "Disabled",
}

M.PriorityClass = {
    type = "structure",
    id = "PriorityClass",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Weight = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.SchedulerConfig = {
    type = "structure",
    id = "SchedulerConfig",
    members = {
        PriorityClasses = {
            type = "list",
            member = M.PriorityClass,
        },
        FairShare = {
            type = "string",
        },
        IdleResourceSharing = {
            type = "string",
        },
    },
}

M.CreateClusterSchedulerConfigInput = {
    type = "structure",
    id = "CreateClusterSchedulerConfigInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClusterArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SchedulerConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SchedulerConfig }),
        Description = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateClusterSchedulerConfigOutput = {
    type = "structure",
    id = "CreateClusterSchedulerConfigOutput",
    members = {
        ClusterSchedulerConfigArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClusterSchedulerConfigId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateCodeRepositoryInput = {
    type = "structure",
    id = "CreateCodeRepositoryInput",
    members = {
        CodeRepositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GitConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.GitConfig }),
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateCodeRepositoryOutput = {
    type = "structure",
    id = "CreateCodeRepositoryOutput",
    members = {
        CodeRepositoryArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Framework = {
    TENSORFLOW = "TENSORFLOW",
    KERAS = "KERAS",
    MXNET = "MXNET",
    ONNX = "ONNX",
    PYTORCH = "PYTORCH",
    XGBOOST = "XGBOOST",
    TFLITE = "TFLITE",
    DARKNET = "DARKNET",
    SKLEARN = "SKLEARN",
}

M.InputConfig = {
    type = "structure",
    id = "InputConfig",
    members = {
        S3Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataInputConfig = {
            type = "string",
        },
        Framework = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FrameworkVersion = {
            type = "string",
        },
    },
}

M.TargetPlatform = {
    type = "structure",
    id = "TargetPlatform",
    members = {
        Os = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Arch = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Accelerator = {
            type = "string",
        },
    },
}

M.OutputConfig = {
    type = "structure",
    id = "OutputConfig",
    members = {
        S3OutputLocation = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetDevice = {
            type = "string",
        },
        TargetPlatform = M.TargetPlatform,
        CompilerOptions = {
            type = "string",
        },
        KmsKeyId = {
            type = "string",
        },
    },
}

M.NeoVpcConfig = {
    type = "structure",
    id = "NeoVpcConfig",
    members = {
        SecurityGroupIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Subnets = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.CreateCompilationJobInput = {
    type = "structure",
    id = "CreateCompilationJobInput",
    members = {
        CompilationJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ModelPackageVersionArn = {
            type = "string",
        },
        InputConfig = M.InputConfig,
        OutputConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OutputConfig }),
        VpcConfig = M.NeoVpcConfig,
        StoppingCondition = setmetatable({ traits = {
            required = true,
        } }, { __index = M.StoppingCondition }),
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateCompilationJobOutput = {
    type = "structure",
    id = "CreateCompilationJobOutput",
    members = {
        CompilationJobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateComputeQuotaInput = {
    type = "structure",
    id = "CreateComputeQuotaInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        ClusterArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ComputeQuotaConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ComputeQuotaConfig }),
        ComputeQuotaTarget = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ComputeQuotaTarget }),
        ActivationState = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateComputeQuotaOutput = {
    type = "structure",
    id = "CreateComputeQuotaOutput",
    members = {
        ComputeQuotaArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ComputeQuotaId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateContextInput = {
    type = "structure",
    id = "CreateContextInput",
    members = {
        ContextName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Source = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ContextSource }),
        ContextType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Properties = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateContextOutput = {
    type = "structure",
    id = "CreateContextOutput",
    members = {
        ContextArn = {
            type = "string",
        },
    },
}

M.DataQualityAppSpecification = {
    type = "structure",
    id = "DataQualityAppSpecification",
    members = {
        ImageUri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ContainerEntrypoint = {
            type = "list",
            member = { type = "string" },
        },
        ContainerArguments = {
            type = "list",
            member = { type = "string" },
        },
        RecordPreprocessorSourceUri = {
            type = "string",
        },
        PostAnalyticsProcessorSourceUri = {
            type = "string",
        },
        Environment = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.MonitoringConstraintsResource = {
    type = "structure",
    id = "MonitoringConstraintsResource",
    members = {
        S3Uri = {
            type = "string",
        },
    },
}

M.MonitoringStatisticsResource = {
    type = "structure",
    id = "MonitoringStatisticsResource",
    members = {
        S3Uri = {
            type = "string",
        },
    },
}

M.DataQualityBaselineConfig = {
    type = "structure",
    id = "DataQualityBaselineConfig",
    members = {
        BaseliningJobName = {
            type = "string",
        },
        ConstraintsResource = M.MonitoringConstraintsResource,
        StatisticsResource = M.MonitoringStatisticsResource,
    },
}

M.EndpointInput = {
    type = "structure",
    id = "EndpointInput",
    members = {
        EndpointName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LocalPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        S3InputMode = {
            type = "string",
        },
        S3DataDistributionType = {
            type = "string",
        },
        FeaturesAttribute = {
            type = "string",
        },
        InferenceAttribute = {
            type = "string",
        },
        ProbabilityAttribute = {
            type = "string",
        },
        ProbabilityThresholdAttribute = {
            type = "double",
        },
        StartTimeOffset = {
            type = "string",
        },
        EndTimeOffset = {
            type = "string",
        },
        ExcludeFeaturesAttribute = {
            type = "string",
        },
    },
}

M.DataQualityJobInput = {
    type = "structure",
    id = "DataQualityJobInput",
    members = {
        EndpointInput = M.EndpointInput,
        BatchTransformInput = M.BatchTransformInput,
    },
}

M.ProcessingS3UploadMode = {
    CONTINUOUS = "Continuous",
    END_OF_JOB = "EndOfJob",
}

M.MonitoringS3Output = {
    type = "structure",
    id = "MonitoringS3Output",
    members = {
        S3Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LocalPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        S3UploadMode = {
            type = "string",
        },
    },
}

M.MonitoringOutput = {
    type = "structure",
    id = "MonitoringOutput",
    members = {
        S3Output = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MonitoringS3Output }),
    },
}

M.MonitoringOutputConfig = {
    type = "structure",
    id = "MonitoringOutputConfig",
    members = {
        MonitoringOutputs = {
            type = "list",
            member = M.MonitoringOutput,
            traits = {
                required = true,
            },
        },
        KmsKeyId = {
            type = "string",
        },
    },
}

M.ProcessingInstanceType = {
    ML_T3_MEDIUM = "ml.t3.medium",
    ML_T3_LARGE = "ml.t3.large",
    ML_T3_XLARGE = "ml.t3.xlarge",
    ML_T3_2XLARGE = "ml.t3.2xlarge",
    ML_M4_XLARGE = "ml.m4.xlarge",
    ML_M4_2XLARGE = "ml.m4.2xlarge",
    ML_M4_4XLARGE = "ml.m4.4xlarge",
    ML_M4_10XLARGE = "ml.m4.10xlarge",
    ML_M4_16XLARGE = "ml.m4.16xlarge",
    ML_C4_XLARGE = "ml.c4.xlarge",
    ML_C4_2XLARGE = "ml.c4.2xlarge",
    ML_C4_4XLARGE = "ml.c4.4xlarge",
    ML_C4_8XLARGE = "ml.c4.8xlarge",
    ML_P2_XLARGE = "ml.p2.xlarge",
    ML_P2_8XLARGE = "ml.p2.8xlarge",
    ML_P2_16XLARGE = "ml.p2.16xlarge",
    ML_P3_2XLARGE = "ml.p3.2xlarge",
    ML_P3_8XLARGE = "ml.p3.8xlarge",
    ML_P3_16XLARGE = "ml.p3.16xlarge",
    ML_C5_XLARGE = "ml.c5.xlarge",
    ML_C5_2XLARGE = "ml.c5.2xlarge",
    ML_C5_4XLARGE = "ml.c5.4xlarge",
    ML_C5_9XLARGE = "ml.c5.9xlarge",
    ML_C5_18XLARGE = "ml.c5.18xlarge",
    ML_M5_LARGE = "ml.m5.large",
    ML_M5_XLARGE = "ml.m5.xlarge",
    ML_M5_2XLARGE = "ml.m5.2xlarge",
    ML_M5_4XLARGE = "ml.m5.4xlarge",
    ML_M5_12XLARGE = "ml.m5.12xlarge",
    ML_M5_24XLARGE = "ml.m5.24xlarge",
    ML_R5_LARGE = "ml.r5.large",
    ML_R5_XLARGE = "ml.r5.xlarge",
    ML_R5_2XLARGE = "ml.r5.2xlarge",
    ML_R5_4XLARGE = "ml.r5.4xlarge",
    ML_R5_8XLARGE = "ml.r5.8xlarge",
    ML_R5_12XLARGE = "ml.r5.12xlarge",
    ML_R5_16XLARGE = "ml.r5.16xlarge",
    ML_R5_24XLARGE = "ml.r5.24xlarge",
    ML_G4DN_XLARGE = "ml.g4dn.xlarge",
    ML_G4DN_2XLARGE = "ml.g4dn.2xlarge",
    ML_G4DN_4XLARGE = "ml.g4dn.4xlarge",
    ML_G4DN_8XLARGE = "ml.g4dn.8xlarge",
    ML_G4DN_12XLARGE = "ml.g4dn.12xlarge",
    ML_G4DN_16XLARGE = "ml.g4dn.16xlarge",
    ML_G5_XLARGE = "ml.g5.xlarge",
    ML_G5_2XLARGE = "ml.g5.2xlarge",
    ML_G5_4XLARGE = "ml.g5.4xlarge",
    ML_G5_8XLARGE = "ml.g5.8xlarge",
    ML_G5_16XLARGE = "ml.g5.16xlarge",
    ML_G5_12XLARGE = "ml.g5.12xlarge",
    ML_G5_24XLARGE = "ml.g5.24xlarge",
    ML_G5_48XLARGE = "ml.g5.48xlarge",
    ML_R5D_LARGE = "ml.r5d.large",
    ML_R5D_XLARGE = "ml.r5d.xlarge",
    ML_R5D_2XLARGE = "ml.r5d.2xlarge",
    ML_R5D_4XLARGE = "ml.r5d.4xlarge",
    ML_R5D_8XLARGE = "ml.r5d.8xlarge",
    ML_R5D_12XLARGE = "ml.r5d.12xlarge",
    ML_R5D_16XLARGE = "ml.r5d.16xlarge",
    ML_R5D_24XLARGE = "ml.r5d.24xlarge",
    ML_G6_XLARGE = "ml.g6.xlarge",
    ML_G6_2XLARGE = "ml.g6.2xlarge",
    ML_G6_4XLARGE = "ml.g6.4xlarge",
    ML_G6_8XLARGE = "ml.g6.8xlarge",
    ML_G6_12XLARGE = "ml.g6.12xlarge",
    ML_G6_16XLARGE = "ml.g6.16xlarge",
    ML_G6_24XLARGE = "ml.g6.24xlarge",
    ML_G6_48XLARGE = "ml.g6.48xlarge",
    ML_G6E_XLARGE = "ml.g6e.xlarge",
    ML_G6E_2XLARGE = "ml.g6e.2xlarge",
    ML_G6E_4XLARGE = "ml.g6e.4xlarge",
    ML_G6E_8XLARGE = "ml.g6e.8xlarge",
    ML_G6E_12XLARGE = "ml.g6e.12xlarge",
    ML_G6E_16XLARGE = "ml.g6e.16xlarge",
    ML_G6E_24XLARGE = "ml.g6e.24xlarge",
    ML_G6E_48XLARGE = "ml.g6e.48xlarge",
    ML_M6I_LARGE = "ml.m6i.large",
    ML_M6I_XLARGE = "ml.m6i.xlarge",
    ML_M6I_2XLARGE = "ml.m6i.2xlarge",
    ML_M6I_4XLARGE = "ml.m6i.4xlarge",
    ML_M6I_8XLARGE = "ml.m6i.8xlarge",
    ML_M6I_12XLARGE = "ml.m6i.12xlarge",
    ML_M6I_16XLARGE = "ml.m6i.16xlarge",
    ML_M6I_24XLARGE = "ml.m6i.24xlarge",
    ML_M6I_32XLARGE = "ml.m6i.32xlarge",
    ML_C6I_XLARGE = "ml.c6i.xlarge",
    ML_C6I_2XLARGE = "ml.c6i.2xlarge",
    ML_C6I_4XLARGE = "ml.c6i.4xlarge",
    ML_C6I_8XLARGE = "ml.c6i.8xlarge",
    ML_C6I_12XLARGE = "ml.c6i.12xlarge",
    ML_C6I_16XLARGE = "ml.c6i.16xlarge",
    ML_C6I_24XLARGE = "ml.c6i.24xlarge",
    ML_C6I_32XLARGE = "ml.c6i.32xlarge",
    ML_M7I_LARGE = "ml.m7i.large",
    ML_M7I_XLARGE = "ml.m7i.xlarge",
    ML_M7I_2XLARGE = "ml.m7i.2xlarge",
    ML_M7I_4XLARGE = "ml.m7i.4xlarge",
    ML_M7I_8XLARGE = "ml.m7i.8xlarge",
    ML_M7I_12XLARGE = "ml.m7i.12xlarge",
    ML_M7I_16XLARGE = "ml.m7i.16xlarge",
    ML_M7I_24XLARGE = "ml.m7i.24xlarge",
    ML_M7I_48XLARGE = "ml.m7i.48xlarge",
    ML_C7I_LARGE = "ml.c7i.large",
    ML_C7I_XLARGE = "ml.c7i.xlarge",
    ML_C7I_2XLARGE = "ml.c7i.2xlarge",
    ML_C7I_4XLARGE = "ml.c7i.4xlarge",
    ML_C7I_8XLARGE = "ml.c7i.8xlarge",
    ML_C7I_12XLARGE = "ml.c7i.12xlarge",
    ML_C7I_16XLARGE = "ml.c7i.16xlarge",
    ML_C7I_24XLARGE = "ml.c7i.24xlarge",
    ML_C7I_48XLARGE = "ml.c7i.48xlarge",
    ML_R7I_LARGE = "ml.r7i.large",
    ML_R7I_XLARGE = "ml.r7i.xlarge",
    ML_R7I_2XLARGE = "ml.r7i.2xlarge",
    ML_R7I_4XLARGE = "ml.r7i.4xlarge",
    ML_R7I_8XLARGE = "ml.r7i.8xlarge",
    ML_R7I_12XLARGE = "ml.r7i.12xlarge",
    ML_R7I_16XLARGE = "ml.r7i.16xlarge",
    ML_R7I_24XLARGE = "ml.r7i.24xlarge",
    ML_R7I_48XLARGE = "ml.r7i.48xlarge",
    ML_P5_4XLARGE = "ml.p5.4xlarge",
    ML_G7E_2XLARGE = "ml.g7e.2xlarge",
    ML_G7E_4XLARGE = "ml.g7e.4xlarge",
    ML_G7E_8XLARGE = "ml.g7e.8xlarge",
    ML_G7E_12XLARGE = "ml.g7e.12xlarge",
    ML_G7E_24XLARGE = "ml.g7e.24xlarge",
    ML_G7E_48XLARGE = "ml.g7e.48xlarge",
}

M.MonitoringClusterConfig = {
    type = "structure",
    id = "MonitoringClusterConfig",
    members = {
        InstanceCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        InstanceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VolumeSizeInGB = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        VolumeKmsKeyId = {
            type = "string",
        },
    },
}

M.MonitoringResources = {
    type = "structure",
    id = "MonitoringResources",
    members = {
        ClusterConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MonitoringClusterConfig }),
    },
}

M.MonitoringNetworkConfig = {
    type = "structure",
    id = "MonitoringNetworkConfig",
    members = {
        EnableInterContainerTrafficEncryption = {
            type = "boolean",
        },
        EnableNetworkIsolation = {
            type = "boolean",
        },
        VpcConfig = M.VpcConfig,
    },
}

M.MonitoringStoppingCondition = {
    type = "structure",
    id = "MonitoringStoppingCondition",
    members = {
        MaxRuntimeInSeconds = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateDataQualityJobDefinitionInput = {
    type = "structure",
    id = "CreateDataQualityJobDefinitionInput",
    members = {
        JobDefinitionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataQualityBaselineConfig = M.DataQualityBaselineConfig,
        DataQualityAppSpecification = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataQualityAppSpecification }),
        DataQualityJobInput = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataQualityJobInput }),
        DataQualityJobOutputConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MonitoringOutputConfig }),
        JobResources = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MonitoringResources }),
        NetworkConfig = M.MonitoringNetworkConfig,
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StoppingCondition = M.MonitoringStoppingCondition,
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateDataQualityJobDefinitionOutput = {
    type = "structure",
    id = "CreateDataQualityJobDefinitionOutput",
    members = {
        JobDefinitionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EdgePresetDeploymentType = {
    GreengrassV2Component = "GreengrassV2Component",
}

M.EdgeOutputConfig = {
    type = "structure",
    id = "EdgeOutputConfig",
    members = {
        S3OutputLocation = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KmsKeyId = {
            type = "string",
        },
        PresetDeploymentType = {
            type = "string",
        },
        PresetDeploymentConfig = {
            type = "string",
        },
    },
}

M.CreateDeviceFleetInput = {
    type = "structure",
    id = "CreateDeviceFleetInput",
    members = {
        DeviceFleetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RoleArn = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        OutputConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EdgeOutputConfig }),
        Tags = {
            type = "list",
            member = M.Tag,
        },
        EnableIotRoleAlias = {
            type = "boolean",
        },
    },
}

M.CreateDeviceFleetOutput = {
    type = "structure",
    id = "CreateDeviceFleetOutput",
}

M.EFSFileSystemConfig = {
    type = "structure",
    id = "EFSFileSystemConfig",
    members = {
        FileSystemId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FileSystemPath = {
            type = "string",
        },
    },
}

M.FSxLustreFileSystemConfig = {
    type = "structure",
    id = "FSxLustreFileSystemConfig",
    members = {
        FileSystemId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FileSystemPath = {
            type = "string",
        },
    },
}

M.S3FileSystemConfig = {
    type = "structure",
    id = "S3FileSystemConfig",
    members = {
        MountPath = {
            type = "string",
        },
        S3Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CustomFileSystemConfig = {
    type = "union",
    id = "CustomFileSystemConfig",
    members = {
        EFSFileSystemConfig = M.EFSFileSystemConfig,
        FSxLustreFileSystemConfig = M.FSxLustreFileSystemConfig,
        S3FileSystemConfig = M.S3FileSystemConfig,
    },
}

M.CustomPosixUserConfig = {
    type = "structure",
    id = "CustomPosixUserConfig",
    members = {
        Uid = {
            type = "long",
            traits = {
                required = true,
            },
        },
        Gid = {
            type = "long",
            traits = {
                required = true,
            },
        },
    },
}

M.EmrSettings = {
    type = "structure",
    id = "EmrSettings",
    members = {
        AssumableRoleArns = {
            type = "list",
            member = { type = "string" },
        },
        ExecutionRoleArns = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.JupyterLabAppSettings = {
    type = "structure",
    id = "JupyterLabAppSettings",
    members = {
        DefaultResourceSpec = M.ResourceSpec,
        CustomImages = {
            type = "list",
            member = M.CustomImage,
        },
        LifecycleConfigArns = {
            type = "list",
            member = { type = "string" },
        },
        CodeRepositories = {
            type = "list",
            member = M.CodeRepository,
        },
        AppLifecycleManagement = M.AppLifecycleManagement,
        EmrSettings = M.EmrSettings,
        BuiltInLifecycleConfigArn = {
            type = "string",
        },
    },
}

M.JupyterServerAppSettings = {
    type = "structure",
    id = "JupyterServerAppSettings",
    members = {
        DefaultResourceSpec = M.ResourceSpec,
        LifecycleConfigArns = {
            type = "list",
            member = { type = "string" },
        },
        CodeRepositories = {
            type = "list",
            member = M.CodeRepository,
        },
    },
}

M.KernelGatewayAppSettings = {
    type = "structure",
    id = "KernelGatewayAppSettings",
    members = {
        DefaultResourceSpec = M.ResourceSpec,
        CustomImages = {
            type = "list",
            member = M.CustomImage,
        },
        LifecycleConfigArns = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DefaultEbsStorageSettings = {
    type = "structure",
    id = "DefaultEbsStorageSettings",
    members = {
        DefaultEbsVolumeSizeInGb = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        MaximumEbsVolumeSizeInGb = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.DefaultSpaceStorageSettings = {
    type = "structure",
    id = "DefaultSpaceStorageSettings",
    members = {
        DefaultEbsStorageSettings = M.DefaultEbsStorageSettings,
    },
}

M.DefaultSpaceSettings = {
    type = "structure",
    id = "DefaultSpaceSettings",
    members = {
        ExecutionRole = {
            type = "string",
        },
        SecurityGroups = {
            type = "list",
            member = { type = "string" },
        },
        JupyterServerAppSettings = M.JupyterServerAppSettings,
        KernelGatewayAppSettings = M.KernelGatewayAppSettings,
        JupyterLabAppSettings = M.JupyterLabAppSettings,
        SpaceStorageSettings = M.DefaultSpaceStorageSettings,
        CustomPosixUserConfig = M.CustomPosixUserConfig,
        CustomFileSystemConfigs = {
            type = "list",
            member = M.CustomFileSystemConfig,
        },
    },
}

M.RSessionAppSettings = {
    type = "structure",
    id = "RSessionAppSettings",
    members = {
        DefaultResourceSpec = M.ResourceSpec,
        CustomImages = {
            type = "list",
            member = M.CustomImage,
        },
    },
}

M.RStudioServerProAccessStatus = {
    Enabled = "ENABLED",
    Disabled = "DISABLED",
}

M.RStudioServerProUserGroup = {
    Admin = "R_STUDIO_ADMIN",
    User = "R_STUDIO_USER",
}

M.RStudioServerProAppSettings = {
    type = "structure",
    id = "RStudioServerProAppSettings",
    members = {
        AccessStatus = {
            type = "string",
        },
        UserGroup = {
            type = "string",
        },
    },
}

M.NotebookOutputOption = {
    Allowed = "Allowed",
    Disabled = "Disabled",
}

M.SharingSettings = {
    type = "structure",
    id = "SharingSettings",
    members = {
        NotebookOutputOption = {
            type = "string",
        },
        S3OutputPath = {
            type = "string",
        },
        S3KmsKeyId = {
            type = "string",
        },
    },
}

M.StudioWebPortal = {
    Enabled = "ENABLED",
    Disabled = "DISABLED",
}

M.MlTools = {
    DATA_WRANGLER = "DataWrangler",
    FEATURE_STORE = "FeatureStore",
    EMR_CLUSTERS = "EmrClusters",
    AUTO_ML = "AutoMl",
    EXPERIMENTS = "Experiments",
    TRAINING = "Training",
    MODEL_EVALUATION = "ModelEvaluation",
    PIPELINES = "Pipelines",
    MODELS = "Models",
    JUMP_START = "JumpStart",
    INFERENCE_RECOMMENDER = "InferenceRecommender",
    ENDPOINTS = "Endpoints",
    PROJECTS = "Projects",
    INFERENCE_OPTIMIZATION = "InferenceOptimization",
    PERFORMANCE_EVALUATION = "PerformanceEvaluation",
    LAKERA_GUARD = "LakeraGuard",
    COMET = "Comet",
    DEEPCHECKS_LLM_EVALUATION = "DeepchecksLLMEvaluation",
    FIDDLER = "Fiddler",
    HYPER_POD_CLUSTERS = "HyperPodClusters",
    RUNNING_INSTANCES = "RunningInstances",
    DATASETS = "Datasets",
    EVALUATORS = "Evaluators",
}

M.SageMakerImageName = {
    sagemaker_distribution = "sagemaker_distribution",
}

M.HiddenSageMakerImage = {
    type = "structure",
    id = "HiddenSageMakerImage",
    members = {
        SageMakerImageName = {
            type = "string",
        },
        VersionAliases = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.StudioWebPortalSettings = {
    type = "structure",
    id = "StudioWebPortalSettings",
    members = {
        HiddenMlTools = {
            type = "list",
            member = { type = "string" },
        },
        HiddenAppTypes = {
            type = "list",
            member = { type = "string" },
        },
        HiddenInstanceTypes = {
            type = "list",
            member = { type = "string" },
        },
        HiddenSageMakerImageVersionAliases = {
            type = "list",
            member = M.HiddenSageMakerImage,
        },
    },
}

M.TensorBoardAppSettings = {
    type = "structure",
    id = "TensorBoardAppSettings",
    members = {
        DefaultResourceSpec = M.ResourceSpec,
    },
}

M.UserSettings = {
    type = "structure",
    id = "UserSettings",
    members = {
        ExecutionRole = {
            type = "string",
        },
        SecurityGroups = {
            type = "list",
            member = { type = "string" },
        },
        SharingSettings = M.SharingSettings,
        JupyterServerAppSettings = M.JupyterServerAppSettings,
        KernelGatewayAppSettings = M.KernelGatewayAppSettings,
        TensorBoardAppSettings = M.TensorBoardAppSettings,
        RStudioServerProAppSettings = M.RStudioServerProAppSettings,
        RSessionAppSettings = M.RSessionAppSettings,
        CanvasAppSettings = M.CanvasAppSettings,
        CodeEditorAppSettings = M.CodeEditorAppSettings,
        JupyterLabAppSettings = M.JupyterLabAppSettings,
        SpaceStorageSettings = M.DefaultSpaceStorageSettings,
        DefaultLandingUri = {
            type = "string",
        },
        StudioWebPortal = {
            type = "string",
        },
        CustomPosixUserConfig = M.CustomPosixUserConfig,
        CustomFileSystemConfigs = {
            type = "list",
            member = M.CustomFileSystemConfig,
        },
        StudioWebPortalSettings = M.StudioWebPortalSettings,
        AutoMountHomeEFS = {
            type = "string",
        },
    },
}

M.DockerSettings = {
    type = "structure",
    id = "DockerSettings",
    members = {
        EnableDockerAccess = {
            type = "string",
        },
        VpcOnlyTrustedAccounts = {
            type = "list",
            member = { type = "string" },
        },
        RootlessDocker = {
            type = "string",
        },
    },
}

M.ExecutionRoleIdentityConfig = {
    USER_PROFILE_NAME = "USER_PROFILE_NAME",
    DISABLED = "DISABLED",
}

M.IPAddressType = {
    IPV4 = "ipv4",
    DUALSTACK = "dualstack",
}

M.RStudioServerProDomainSettings = {
    type = "structure",
    id = "RStudioServerProDomainSettings",
    members = {
        DomainExecutionRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RStudioConnectUrl = {
            type = "string",
        },
        RStudioPackageManagerUrl = {
            type = "string",
        },
        DefaultResourceSpec = M.ResourceSpec,
    },
}

M.TrustedIdentityPropagationSettings = {
    type = "structure",
    id = "TrustedIdentityPropagationSettings",
    members = {
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UnifiedStudioSettings = {
    type = "structure",
    id = "UnifiedStudioSettings",
    members = {
        StudioWebPortalAccess = {
            type = "string",
        },
        DomainAccountId = {
            type = "string",
        },
        DomainRegion = {
            type = "string",
        },
        DomainId = {
            type = "string",
        },
        ProjectId = {
            type = "string",
        },
        EnvironmentId = {
            type = "string",
        },
        ProjectS3Path = {
            type = "string",
        },
        SingleSignOnApplicationArn = {
            type = "string",
        },
    },
}

M.DomainSettings = {
    type = "structure",
    id = "DomainSettings",
    members = {
        SecurityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        RStudioServerProDomainSettings = M.RStudioServerProDomainSettings,
        ExecutionRoleIdentityConfig = {
            type = "string",
        },
        TrustedIdentityPropagationSettings = M.TrustedIdentityPropagationSettings,
        DockerSettings = M.DockerSettings,
        AmazonQSettings = M.AmazonQSettings,
        UnifiedStudioSettings = M.UnifiedStudioSettings,
        IpAddressType = {
            type = "string",
        },
    },
}

M.TagPropagation = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.CreateDomainInput = {
    type = "structure",
    id = "CreateDomainInput",
    members = {
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AuthMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DefaultUserSettings = setmetatable({ traits = {
            required = true,
        } }, { __index = M.UserSettings }),
        DomainSettings = M.DomainSettings,
        SubnetIds = {
            type = "list",
            member = { type = "string" },
        },
        VpcId = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        AppNetworkAccessType = {
            type = "string",
        },
        HomeEfsFileSystemKmsKeyId = {
            type = "string",
        },
        KmsKeyId = {
            type = "string",
        },
        AppSecurityGroupManagement = {
            type = "string",
        },
        TagPropagation = {
            type = "string",
        },
        DefaultSpaceSettings = M.DefaultSpaceSettings,
    },
}

M.CreateDomainOutput = {
    type = "structure",
    id = "CreateDomainOutput",
    members = {
        DomainArn = {
            type = "string",
        },
        DomainId = {
            type = "string",
        },
        Url = {
            type = "string",
        },
    },
}

M.EdgeDeploymentModelConfig = {
    type = "structure",
    id = "EdgeDeploymentModelConfig",
    members = {
        ModelHandle = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EdgePackagingJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.FailureHandlingPolicy = {
    RollbackOnFailure = "ROLLBACK_ON_FAILURE",
    DoNothing = "DO_NOTHING",
}

M.EdgeDeploymentConfig = {
    type = "structure",
    id = "EdgeDeploymentConfig",
    members = {
        FailureHandlingPolicy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeviceSubsetType = {
    Percentage = "PERCENTAGE",
    Selection = "SELECTION",
    NameContains = "NAMECONTAINS",
}

M.DeviceSelectionConfig = {
    type = "structure",
    id = "DeviceSelectionConfig",
    members = {
        DeviceSubsetType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Percentage = {
            type = "integer",
        },
        DeviceNames = {
            type = "list",
            member = { type = "string" },
        },
        DeviceNameContains = {
            type = "string",
        },
    },
}

M.DeploymentStage = {
    type = "structure",
    id = "DeploymentStage",
    members = {
        StageName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeviceSelectionConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DeviceSelectionConfig }),
        DeploymentConfig = M.EdgeDeploymentConfig,
    },
}

M.CreateEdgeDeploymentPlanInput = {
    type = "structure",
    id = "CreateEdgeDeploymentPlanInput",
    members = {
        EdgeDeploymentPlanName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ModelConfigs = {
            type = "list",
            member = M.EdgeDeploymentModelConfig,
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
        Stages = {
            type = "list",
            member = M.DeploymentStage,
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateEdgeDeploymentPlanOutput = {
    type = "structure",
    id = "CreateEdgeDeploymentPlanOutput",
    members = {
        EdgeDeploymentPlanArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateEdgeDeploymentStageInput = {
    type = "structure",
    id = "CreateEdgeDeploymentStageInput",
    members = {
        EdgeDeploymentPlanName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Stages = {
            type = "list",
            member = M.DeploymentStage,
            traits = {
                required = true,
            },
        },
    },
}

M.CreateEdgeDeploymentStageOutput = {
    type = "structure",
    id = "CreateEdgeDeploymentStageOutput",
}

M.CreateEdgePackagingJobInput = {
    type = "structure",
    id = "CreateEdgePackagingJobInput",
    members = {
        EdgePackagingJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CompilationJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ModelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ModelVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OutputConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EdgeOutputConfig }),
        ResourceKey = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateEdgePackagingJobOutput = {
    type = "structure",
    id = "CreateEdgePackagingJobOutput",
}

M.RollingUpdatePolicy = {
    type = "structure",
    id = "RollingUpdatePolicy",
    members = {
        MaximumBatchSize = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CapacitySize }),
        WaitIntervalInSeconds = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        MaximumExecutionTimeoutInSeconds = {
            type = "integer",
        },
        RollbackMaximumBatchSize = M.CapacitySize,
    },
}

M.DeploymentConfig = {
    type = "structure",
    id = "DeploymentConfig",
    members = {
        BlueGreenUpdatePolicy = M.BlueGreenUpdatePolicy,
        RollingUpdatePolicy = M.RollingUpdatePolicy,
        AutoRollbackConfiguration = M.AutoRollbackConfig,
    },
}

M.CreateEndpointInput = {
    type = "structure",
    id = "CreateEndpointInput",
    members = {
        EndpointName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EndpointConfigName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeploymentConfig = M.DeploymentConfig,
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateEndpointOutput = {
    type = "structure",
    id = "CreateEndpointOutput",
    members = {
        EndpointArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DataCaptureConfig = {
    type = "structure",
    id = "DataCaptureConfig",
    members = {
        EnableCapture = {
            type = "boolean",
        },
        InitialSamplingPercentage = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        DestinationS3Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KmsKeyId = {
            type = "string",
        },
        CaptureOptions = {
            type = "list",
            member = M.CaptureOption,
            traits = {
                required = true,
            },
        },
        CaptureContentTypeHeader = M.CaptureContentTypeHeader,
    },
}

M.ExplainerConfig = {
    type = "structure",
    id = "ExplainerConfig",
    members = {
        ClarifyExplainerConfig = M.ClarifyExplainerConfig,
    },
}

M.MetricPublishFrequencyInSeconds = {
    FREQ_10_S = 10,
    FREQ_30_S = 30,
    FREQ_60_S = 60,
    FREQ_120_S = 120,
    FREQ_180_S = 180,
    FREQ_240_S = 240,
    FREQ_300_S = 300,
}

M.MetricsConfig = {
    type = "structure",
    id = "MetricsConfig",
    members = {
        EnableEnhancedMetrics = {
            type = "boolean",
        },
        MetricPublishFrequencyInSeconds = {
            type = "number",
        },
    },
}

M.ProductionVariantAcceleratorType = {
    ML_EIA1_MEDIUM = "ml.eia1.medium",
    ML_EIA1_LARGE = "ml.eia1.large",
    ML_EIA1_XLARGE = "ml.eia1.xlarge",
    ML_EIA2_MEDIUM = "ml.eia2.medium",
    ML_EIA2_LARGE = "ml.eia2.large",
    ML_EIA2_XLARGE = "ml.eia2.xlarge",
}

M.ProductionVariantCapacityReservationConfig = {
    type = "structure",
    id = "ProductionVariantCapacityReservationConfig",
    members = {
        CapacityReservationPreference = {
            type = "string",
        },
        MlReservationArn = {
            type = "string",
        },
    },
}

M.ProductionVariantCoreDumpConfig = {
    type = "structure",
    id = "ProductionVariantCoreDumpConfig",
    members = {
        DestinationS3Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KmsKeyId = {
            type = "string",
        },
    },
}

M.ProductionVariantInferenceAmiVersion = {
    AL2_GPU_2 = "al2-ami-sagemaker-inference-gpu-2",
    AL2_GPU_2_1 = "al2-ami-sagemaker-inference-gpu-2-1",
    AL2_GPU_3_1 = "al2-ami-sagemaker-inference-gpu-3-1",
    AL2_NEURON_2 = "al2-ami-sagemaker-inference-neuron-2",
    AL2023_GPU_4_1 = "al2023-ami-sagemaker-inference-gpu-4-1",
}

M.InstancePool = {
    type = "structure",
    id = "InstancePool",
    members = {
        InstanceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ModelNameOverride = {
            type = "string",
        },
        Priority = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.ManagedInstanceScalingScaleInStrategy = {
    IDLE_RELEASE = "IDLE_RELEASE",
    CONSOLIDATION = "CONSOLIDATION",
}

M.ProductionVariantManagedInstanceScalingScaleInPolicy = {
    type = "structure",
    id = "ProductionVariantManagedInstanceScalingScaleInPolicy",
    members = {
        Strategy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaximumStepSize = {
            type = "integer",
        },
        CooldownInMinutes = {
            type = "integer",
        },
    },
}

M.ManagedInstanceScalingStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.ProductionVariantManagedInstanceScaling = {
    type = "structure",
    id = "ProductionVariantManagedInstanceScaling",
    members = {
        Status = {
            type = "string",
        },
        MinInstanceCount = {
            type = "integer",
        },
        MaxInstanceCount = {
            type = "integer",
        },
        ScaleInPolicy = M.ProductionVariantManagedInstanceScalingScaleInPolicy,
    },
}

M.RoutingStrategy = {
    LEAST_OUTSTANDING_REQUESTS = "LEAST_OUTSTANDING_REQUESTS",
    RANDOM = "RANDOM",
}

M.ProductionVariantRoutingConfig = {
    type = "structure",
    id = "ProductionVariantRoutingConfig",
    members = {
        RoutingStrategy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ProductionVariantServerlessConfig = {
    type = "structure",
    id = "ProductionVariantServerlessConfig",
    members = {
        MemorySizeInMB = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        MaxConcurrency = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        ProvisionedConcurrency = {
            type = "integer",
        },
    },
}

M.ProductionVariant = {
    type = "structure",
    id = "ProductionVariant",
    members = {
        VariantName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ModelName = {
            type = "string",
        },
        InitialInstanceCount = {
            type = "integer",
        },
        InstanceType = {
            type = "string",
        },
        InstancePools = {
            type = "list",
            member = M.InstancePool,
        },
        VariantInstanceProvisionTimeoutInSeconds = {
            type = "integer",
        },
        InitialVariantWeight = {
            type = "float",
        },
        AcceleratorType = {
            type = "string",
        },
        CoreDumpConfig = M.ProductionVariantCoreDumpConfig,
        ServerlessConfig = M.ProductionVariantServerlessConfig,
        VolumeSizeInGB = {
            type = "integer",
        },
        ModelDataDownloadTimeoutInSeconds = {
            type = "integer",
        },
        ContainerStartupHealthCheckTimeoutInSeconds = {
            type = "integer",
        },
        EnableSSMAccess = {
            type = "boolean",
        },
        ManagedInstanceScaling = M.ProductionVariantManagedInstanceScaling,
        RoutingConfig = M.ProductionVariantRoutingConfig,
        InferenceAmiVersion = {
            type = "string",
        },
        CapacityReservationConfig = M.ProductionVariantCapacityReservationConfig,
    },
}

M.CreateEndpointConfigInput = {
    type = "structure",
    id = "CreateEndpointConfigInput",
    members = {
        EndpointConfigName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProductionVariants = {
            type = "list",
            member = M.ProductionVariant,
            traits = {
                required = true,
            },
        },
        DataCaptureConfig = M.DataCaptureConfig,
        Tags = {
            type = "list",
            member = M.Tag,
        },
        KmsKeyId = {
            type = "string",
        },
        AsyncInferenceConfig = M.AsyncInferenceConfig,
        ExplainerConfig = M.ExplainerConfig,
        ShadowProductionVariants = {
            type = "list",
            member = M.ProductionVariant,
        },
        ExecutionRoleArn = {
            type = "string",
        },
        VpcConfig = M.VpcConfig,
        EnableNetworkIsolation = {
            type = "boolean",
        },
        MetricsConfig = M.MetricsConfig,
    },
}

M.CreateEndpointConfigOutput = {
    type = "structure",
    id = "CreateEndpointConfigOutput",
    members = {
        EndpointConfigArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateExperimentInput = {
    type = "structure",
    id = "CreateExperimentInput",
    members = {
        ExperimentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DisplayName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateExperimentOutput = {
    type = "structure",
    id = "CreateExperimentOutput",
    members = {
        ExperimentArn = {
            type = "string",
        },
    },
}

M.FeatureType = {
    INTEGRAL = "Integral",
    FRACTIONAL = "Fractional",
    STRING = "String",
}

M.FeatureDefinition = {
    type = "structure",
    id = "FeatureDefinition",
    members = {
        FeatureName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FeatureType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CollectionType = {
            type = "string",
        },
        CollectionConfig = M.CollectionConfig,
    },
}

M.DataCatalogConfig = {
    type = "structure",
    id = "DataCatalogConfig",
    members = {
        TableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Database = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.S3StorageConfig = {
    type = "structure",
    id = "S3StorageConfig",
    members = {
        S3Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KmsKeyId = {
            type = "string",
        },
        ResolvedOutputS3Uri = {
            type = "string",
        },
    },
}

M.TableFormat = {
    DEFAULT = "Default",
    GLUE = "Glue",
    ICEBERG = "Iceberg",
}

M.OfflineStoreConfig = {
    type = "structure",
    id = "OfflineStoreConfig",
    members = {
        S3StorageConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3StorageConfig }),
        DisableGlueTableCreation = {
            type = "boolean",
        },
        DataCatalogConfig = M.DataCatalogConfig,
        TableFormat = {
            type = "string",
        },
    },
}

M.OnlineStoreSecurityConfig = {
    type = "structure",
    id = "OnlineStoreSecurityConfig",
    members = {
        KmsKeyId = {
            type = "string",
        },
    },
}

M.StorageType = {
    STANDARD = "Standard",
    IN_MEMORY = "InMemory",
}

M.TtlDurationUnit = {
    SECONDS = "Seconds",
    MINUTES = "Minutes",
    HOURS = "Hours",
    DAYS = "Days",
    WEEKS = "Weeks",
}

M.TtlDuration = {
    type = "structure",
    id = "TtlDuration",
    members = {
        Unit = {
            type = "string",
        },
        Value = {
            type = "integer",
        },
    },
}

M.OnlineStoreConfig = {
    type = "structure",
    id = "OnlineStoreConfig",
    members = {
        SecurityConfig = M.OnlineStoreSecurityConfig,
        EnableOnlineStore = {
            type = "boolean",
        },
        TtlDuration = M.TtlDuration,
        StorageType = {
            type = "string",
        },
    },
}

M.ThroughputMode = {
    ON_DEMAND = "OnDemand",
    PROVISIONED = "Provisioned",
}

M.ThroughputConfig = {
    type = "structure",
    id = "ThroughputConfig",
    members = {
        ThroughputMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProvisionedReadCapacityUnits = {
            type = "integer",
        },
        ProvisionedWriteCapacityUnits = {
            type = "integer",
        },
    },
}

M.CreateFeatureGroupInput = {
    type = "structure",
    id = "CreateFeatureGroupInput",
    members = {
        FeatureGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RecordIdentifierFeatureName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EventTimeFeatureName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FeatureDefinitions = {
            type = "list",
            member = M.FeatureDefinition,
            traits = {
                required = true,
            },
        },
        OnlineStoreConfig = M.OnlineStoreConfig,
        OfflineStoreConfig = M.OfflineStoreConfig,
        ThroughputConfig = M.ThroughputConfig,
        RoleArn = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateFeatureGroupOutput = {
    type = "structure",
    id = "CreateFeatureGroupOutput",
    members = {
        FeatureGroupArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.HumanLoopActivationConditionsConfig = {
    type = "structure",
    id = "HumanLoopActivationConditionsConfig",
    members = {
        HumanLoopActivationConditions = {
            type = "string",
            traits = {
                media_type = "application/json",
                required = true,
            },
        },
    },
}

M.HumanLoopActivationConfig = {
    type = "structure",
    id = "HumanLoopActivationConfig",
    members = {
        HumanLoopActivationConditionsConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.HumanLoopActivationConditionsConfig }),
    },
}

M.USD = {
    type = "structure",
    id = "USD",
    members = {
        Dollars = {
            type = "integer",
        },
        Cents = {
            type = "integer",
        },
        TenthFractionsOfACent = {
            type = "integer",
        },
    },
}

M.PublicWorkforceTaskPrice = {
    type = "structure",
    id = "PublicWorkforceTaskPrice",
    members = {
        AmountInUsd = M.USD,
    },
}

M.HumanLoopConfig = {
    type = "structure",
    id = "HumanLoopConfig",
    members = {
        WorkteamArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HumanTaskUiArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TaskTitle = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TaskDescription = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TaskCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        TaskAvailabilityLifetimeInSeconds = {
            type = "integer",
        },
        TaskTimeLimitInSeconds = {
            type = "integer",
        },
        TaskKeywords = {
            type = "list",
            member = { type = "string" },
        },
        PublicWorkforceTaskPrice = M.PublicWorkforceTaskPrice,
    },
}

M.HumanLoopRequestSource = {
    type = "structure",
    id = "HumanLoopRequestSource",
    members = {
        AwsManagedHumanLoopRequestSource = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.FlowDefinitionOutputConfig = {
    type = "structure",
    id = "FlowDefinitionOutputConfig",
    members = {
        S3OutputPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KmsKeyId = {
            type = "string",
        },
    },
}

M.CreateFlowDefinitionInput = {
    type = "structure",
    id = "CreateFlowDefinitionInput",
    members = {
        FlowDefinitionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HumanLoopRequestSource = M.HumanLoopRequestSource,
        HumanLoopActivationConfig = M.HumanLoopActivationConfig,
        HumanLoopConfig = M.HumanLoopConfig,
        OutputConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FlowDefinitionOutputConfig }),
        RoleArn = {
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

M.CreateFlowDefinitionOutput = {
    type = "structure",
    id = "CreateFlowDefinitionOutput",
    members = {
        FlowDefinitionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.HubS3StorageConfig = {
    type = "structure",
    id = "HubS3StorageConfig",
    members = {
        S3OutputPath = {
            type = "string",
        },
    },
}

M.CreateHubInput = {
    type = "structure",
    id = "CreateHubInput",
    members = {
        HubName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HubDescription = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HubDisplayName = {
            type = "string",
        },
        HubSearchKeywords = {
            type = "list",
            member = { type = "string" },
        },
        S3StorageConfig = M.HubS3StorageConfig,
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateHubOutput = {
    type = "structure",
    id = "CreateHubOutput",
    members = {
        HubArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PresignedUrlAccessConfig = {
    type = "structure",
    id = "PresignedUrlAccessConfig",
    members = {
        AcceptEula = {
            type = "boolean",
        },
        ExpectedS3Url = {
            type = "string",
        },
    },
}

M.HubContentType = {
    MODEL = "Model",
    NOTEBOOK = "Notebook",
    MODEL_REFERENCE = "ModelReference",
    DATA_SET = "DataSet",
    JSON_DOC = "JsonDoc",
}

M.CreateHubContentPresignedUrlsInput = {
    type = "structure",
    id = "CreateHubContentPresignedUrlsInput",
    members = {
        HubName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HubContentType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HubContentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HubContentVersion = {
            type = "string",
        },
        AccessConfig = M.PresignedUrlAccessConfig,
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.CreateHubContentPresignedUrlsOutput = {
    type = "structure",
    id = "CreateHubContentPresignedUrlsOutput",
    members = {
        AuthorizedUrlConfigs = {
            type = "list",
            member = M.AuthorizedUrl,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.CreateHubContentReferenceInput = {
    type = "structure",
    id = "CreateHubContentReferenceInput",
    members = {
        HubName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SageMakerPublicHubContentArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HubContentName = {
            type = "string",
        },
        MinVersion = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateHubContentReferenceOutput = {
    type = "structure",
    id = "CreateHubContentReferenceOutput",
    members = {
        HubArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HubContentArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UiTemplate = {
    type = "structure",
    id = "UiTemplate",
    members = {
        Content = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateHumanTaskUiInput = {
    type = "structure",
    id = "CreateHumanTaskUiInput",
    members = {
        HumanTaskUiName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UiTemplate = setmetatable({ traits = {
            required = true,
        } }, { __index = M.UiTemplate }),
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateHumanTaskUiOutput = {
    type = "structure",
    id = "CreateHumanTaskUiOutput",
    members = {
        HumanTaskUiArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.IntegerParameterRange = {
    type = "structure",
    id = "IntegerParameterRange",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MinValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ScalingType = {
            type = "string",
        },
    },
}

M.ParameterRanges = {
    type = "structure",
    id = "ParameterRanges",
    members = {
        IntegerParameterRanges = {
            type = "list",
            member = M.IntegerParameterRange,
        },
        ContinuousParameterRanges = {
            type = "list",
            member = M.ContinuousParameterRange,
        },
        CategoricalParameterRanges = {
            type = "list",
            member = M.CategoricalParameterRange,
        },
        AutoParameters = {
            type = "list",
            member = M.AutoParameter,
        },
    },
}

M.ResourceLimits = {
    type = "structure",
    id = "ResourceLimits",
    members = {
        MaxNumberOfTrainingJobs = {
            type = "integer",
        },
        MaxParallelTrainingJobs = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        MaxRuntimeInSeconds = {
            type = "integer",
        },
    },
}

M.HyperParameterTuningJobStrategyType = {
    BAYESIAN = "Bayesian",
    RANDOM = "Random",
    HYPERBAND = "Hyperband",
    GRID = "Grid",
}

M.HyperbandStrategyConfig = {
    type = "structure",
    id = "HyperbandStrategyConfig",
    members = {
        MinResource = {
            type = "integer",
        },
        MaxResource = {
            type = "integer",
        },
    },
}

M.HyperParameterTuningJobStrategyConfig = {
    type = "structure",
    id = "HyperParameterTuningJobStrategyConfig",
    members = {
        HyperbandStrategyConfig = M.HyperbandStrategyConfig,
    },
}

M.TrainingJobEarlyStoppingType = {
    OFF = "Off",
    AUTO = "Auto",
}

M.TuningJobCompletionCriteria = {
    type = "structure",
    id = "TuningJobCompletionCriteria",
    members = {
        TargetObjectiveMetricValue = {
            type = "float",
        },
        BestObjectiveNotImproving = M.BestObjectiveNotImproving,
        ConvergenceDetected = M.ConvergenceDetected,
    },
}

M.HyperParameterTuningJobConfig = {
    type = "structure",
    id = "HyperParameterTuningJobConfig",
    members = {
        Strategy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StrategyConfig = M.HyperParameterTuningJobStrategyConfig,
        HyperParameterTuningJobObjective = M.HyperParameterTuningJobObjective,
        ResourceLimits = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ResourceLimits }),
        ParameterRanges = M.ParameterRanges,
        TrainingJobEarlyStoppingType = {
            type = "string",
        },
        TuningJobCompletionCriteria = M.TuningJobCompletionCriteria,
        RandomSeed = {
            type = "integer",
        },
    },
}

M.HyperParameterAlgorithmSpecification = {
    type = "structure",
    id = "HyperParameterAlgorithmSpecification",
    members = {
        TrainingImage = {
            type = "string",
        },
        TrainingInputMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AlgorithmName = {
            type = "string",
        },
        MetricDefinitions = {
            type = "list",
            member = M.MetricDefinition,
        },
    },
}

M.HyperParameterTuningAllocationStrategy = {
    PRIORITIZED = "Prioritized",
}

M.HyperParameterTuningInstanceConfig = {
    type = "structure",
    id = "HyperParameterTuningInstanceConfig",
    members = {
        InstanceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstanceCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        VolumeSizeInGB = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.HyperParameterTuningResourceConfig = {
    type = "structure",
    id = "HyperParameterTuningResourceConfig",
    members = {
        InstanceType = {
            type = "string",
        },
        InstanceCount = {
            type = "integer",
        },
        VolumeSizeInGB = {
            type = "integer",
        },
        VolumeKmsKeyId = {
            type = "string",
        },
        AllocationStrategy = {
            type = "string",
        },
        InstanceConfigs = {
            type = "list",
            member = M.HyperParameterTuningInstanceConfig,
        },
    },
}

M.RetryStrategy = {
    type = "structure",
    id = "RetryStrategy",
    members = {
        MaximumRetryAttempts = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.HyperParameterTrainingJobDefinition = {
    type = "structure",
    id = "HyperParameterTrainingJobDefinition",
    members = {
        DefinitionName = {
            type = "string",
        },
        TuningObjective = M.HyperParameterTuningJobObjective,
        HyperParameterRanges = M.ParameterRanges,
        StaticHyperParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        AlgorithmSpecification = setmetatable({ traits = {
            required = true,
        } }, { __index = M.HyperParameterAlgorithmSpecification }),
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InputDataConfig = {
            type = "list",
            member = M.Channel,
        },
        VpcConfig = M.VpcConfig,
        OutputDataConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OutputDataConfig }),
        ResourceConfig = M.ResourceConfig,
        HyperParameterTuningResourceConfig = M.HyperParameterTuningResourceConfig,
        StoppingCondition = setmetatable({ traits = {
            required = true,
        } }, { __index = M.StoppingCondition }),
        EnableNetworkIsolation = {
            type = "boolean",
        },
        EnableInterContainerTrafficEncryption = {
            type = "boolean",
        },
        EnableManagedSpotTraining = {
            type = "boolean",
        },
        CheckpointConfig = M.CheckpointConfig,
        RetryStrategy = M.RetryStrategy,
        Environment = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ParentHyperParameterTuningJob = {
    type = "structure",
    id = "ParentHyperParameterTuningJob",
    members = {
        HyperParameterTuningJobName = {
            type = "string",
        },
    },
}

M.HyperParameterTuningJobWarmStartType = {
    IDENTICAL_DATA_AND_ALGORITHM = "IdenticalDataAndAlgorithm",
    TRANSFER_LEARNING = "TransferLearning",
}

M.HyperParameterTuningJobWarmStartConfig = {
    type = "structure",
    id = "HyperParameterTuningJobWarmStartConfig",
    members = {
        ParentHyperParameterTuningJobs = {
            type = "list",
            member = M.ParentHyperParameterTuningJob,
            traits = {
                required = true,
            },
        },
        WarmStartType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateHyperParameterTuningJobInput = {
    type = "structure",
    id = "CreateHyperParameterTuningJobInput",
    members = {
        HyperParameterTuningJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HyperParameterTuningJobConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.HyperParameterTuningJobConfig }),
        TrainingJobDefinition = M.HyperParameterTrainingJobDefinition,
        TrainingJobDefinitions = {
            type = "list",
            member = M.HyperParameterTrainingJobDefinition,
        },
        WarmStartConfig = M.HyperParameterTuningJobWarmStartConfig,
        Tags = {
            type = "list",
            member = M.Tag,
        },
        Autotune = M.Autotune,
    },
}

M.CreateHyperParameterTuningJobOutput = {
    type = "structure",
    id = "CreateHyperParameterTuningJobOutput",
    members = {
        HyperParameterTuningJobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateImageInput = {
    type = "structure",
    id = "CreateImageInput",
    members = {
        Description = {
            type = "string",
        },
        DisplayName = {
            type = "string",
        },
        ImageName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RoleArn = {
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

M.CreateImageOutput = {
    type = "structure",
    id = "CreateImageOutput",
    members = {
        ImageArn = {
            type = "string",
        },
    },
}

M.JobType = {
    TRAINING = "TRAINING",
    INFERENCE = "INFERENCE",
    NOTEBOOK_KERNEL = "NOTEBOOK_KERNEL",
}

M.Processor = {
    CPU = "CPU",
    GPU = "GPU",
}

M.VendorGuidance = {
    NOT_PROVIDED = "NOT_PROVIDED",
    STABLE = "STABLE",
    TO_BE_ARCHIVED = "TO_BE_ARCHIVED",
    ARCHIVED = "ARCHIVED",
}

M.CreateImageVersionInput = {
    type = "structure",
    id = "CreateImageVersionInput",
    members = {
        BaseImage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
        ImageName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Aliases = {
            type = "list",
            member = { type = "string" },
        },
        VendorGuidance = {
            type = "string",
        },
        JobType = {
            type = "string",
        },
        MLFramework = {
            type = "string",
        },
        ProgrammingLang = {
            type = "string",
        },
        Processor = {
            type = "string",
        },
        Horovod = {
            type = "boolean",
        },
        ReleaseNotes = {
            type = "string",
        },
    },
}

M.CreateImageVersionOutput = {
    type = "structure",
    id = "CreateImageVersionOutput",
    members = {
        ImageVersionArn = {
            type = "string",
        },
    },
}

M.InferenceComponentRuntimeConfig = {
    type = "structure",
    id = "InferenceComponentRuntimeConfig",
    members = {
        CopyCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.InferenceComponentComputeResourceRequirements = {
    type = "structure",
    id = "InferenceComponentComputeResourceRequirements",
    members = {
        NumberOfCpuCoresRequired = {
            type = "float",
        },
        NumberOfAcceleratorDevicesRequired = {
            type = "float",
        },
        MinMemoryRequiredInMb = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        MaxMemoryRequiredInMb = {
            type = "integer",
        },
    },
}

M.InferenceComponentContainerSpecification = {
    type = "structure",
    id = "InferenceComponentContainerSpecification",
    members = {
        Image = {
            type = "string",
        },
        ArtifactUrl = {
            type = "string",
        },
        Environment = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.InferenceComponentDataCacheConfig = {
    type = "structure",
    id = "InferenceComponentDataCacheConfig",
    members = {
        EnableCaching = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.InferenceComponentAvailabilityZoneBalance = {
    type = "structure",
    id = "InferenceComponentAvailabilityZoneBalance",
    members = {
        EnforcementMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxImbalance = {
            type = "integer",
        },
    },
}

M.InferenceComponentPlacementStrategy = {
    SPREAD = "SPREAD",
    BINPACK = "BINPACK",
}

M.InferenceComponentSchedulingConfig = {
    type = "structure",
    id = "InferenceComponentSchedulingConfig",
    members = {
        PlacementStrategy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AvailabilityZoneBalance = M.InferenceComponentAvailabilityZoneBalance,
    },
}

M.InferenceComponentStartupParameters = {
    type = "structure",
    id = "InferenceComponentStartupParameters",
    members = {
        ModelDataDownloadTimeoutInSeconds = {
            type = "integer",
        },
        ContainerStartupHealthCheckTimeoutInSeconds = {
            type = "integer",
        },
    },
}

M.InferenceComponentSpecification = {
    type = "structure",
    id = "InferenceComponentSpecification",
    members = {
        InstanceType = {
            type = "string",
        },
        ModelName = {
            type = "string",
        },
        Container = M.InferenceComponentContainerSpecification,
        StartupParameters = M.InferenceComponentStartupParameters,
        ComputeResourceRequirements = M.InferenceComponentComputeResourceRequirements,
        BaseInferenceComponentName = {
            type = "string",
        },
        DataCacheConfig = M.InferenceComponentDataCacheConfig,
        SchedulingConfig = M.InferenceComponentSchedulingConfig,
    },
}

M.CreateInferenceComponentInput = {
    type = "structure",
    id = "CreateInferenceComponentInput",
    members = {
        InferenceComponentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EndpointName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VariantName = {
            type = "string",
        },
        Specification = M.InferenceComponentSpecification,
        Specifications = {
            type = "list",
            member = M.InferenceComponentSpecification,
        },
        RuntimeConfig = M.InferenceComponentRuntimeConfig,
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateInferenceComponentOutput = {
    type = "structure",
    id = "CreateInferenceComponentOutput",
    members = {
        InferenceComponentArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InferenceExperimentDataStorageConfig = {
    type = "structure",
    id = "InferenceExperimentDataStorageConfig",
    members = {
        Destination = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KmsKey = {
            type = "string",
        },
        ContentType = M.CaptureContentTypeHeader,
    },
}

M.ModelInfrastructureType = {
    REAL_TIME_INFERENCE = "RealTimeInference",
}

M.InstanceType = {
    ML_T2_MEDIUM = "ml.t2.medium",
    ML_T2_LARGE = "ml.t2.large",
    ML_T2_XLARGE = "ml.t2.xlarge",
    ML_T2_2XLARGE = "ml.t2.2xlarge",
    ML_T3_MEDIUM = "ml.t3.medium",
    ML_T3_LARGE = "ml.t3.large",
    ML_T3_XLARGE = "ml.t3.xlarge",
    ML_T3_2XLARGE = "ml.t3.2xlarge",
    ML_M4_XLARGE = "ml.m4.xlarge",
    ML_M4_2XLARGE = "ml.m4.2xlarge",
    ML_M4_4XLARGE = "ml.m4.4xlarge",
    ML_M4_10XLARGE = "ml.m4.10xlarge",
    ML_M4_16XLARGE = "ml.m4.16xlarge",
    ML_M5_XLARGE = "ml.m5.xlarge",
    ML_M5_2XLARGE = "ml.m5.2xlarge",
    ML_M5_4XLARGE = "ml.m5.4xlarge",
    ML_M5_12XLARGE = "ml.m5.12xlarge",
    ML_M5_24XLARGE = "ml.m5.24xlarge",
    ML_M5D_LARGE = "ml.m5d.large",
    ML_M5D_XLARGE = "ml.m5d.xlarge",
    ML_M5D_2XLARGE = "ml.m5d.2xlarge",
    ML_M5D_4XLARGE = "ml.m5d.4xlarge",
    ML_M5D_8XLARGE = "ml.m5d.8xlarge",
    ML_M5D_12XLARGE = "ml.m5d.12xlarge",
    ML_M5D_16XLARGE = "ml.m5d.16xlarge",
    ML_M5D_24XLARGE = "ml.m5d.24xlarge",
    ML_C4_XLARGE = "ml.c4.xlarge",
    ML_C4_2XLARGE = "ml.c4.2xlarge",
    ML_C4_4XLARGE = "ml.c4.4xlarge",
    ML_C4_8XLARGE = "ml.c4.8xlarge",
    ML_C5_XLARGE = "ml.c5.xlarge",
    ML_C5_2XLARGE = "ml.c5.2xlarge",
    ML_C5_4XLARGE = "ml.c5.4xlarge",
    ML_C5_9XLARGE = "ml.c5.9xlarge",
    ML_C5_18XLARGE = "ml.c5.18xlarge",
    ML_C5D_XLARGE = "ml.c5d.xlarge",
    ML_C5D_2XLARGE = "ml.c5d.2xlarge",
    ML_C5D_4XLARGE = "ml.c5d.4xlarge",
    ML_C5D_9XLARGE = "ml.c5d.9xlarge",
    ML_C5D_18XLARGE = "ml.c5d.18xlarge",
    ML_P2_XLARGE = "ml.p2.xlarge",
    ML_P2_8XLARGE = "ml.p2.8xlarge",
    ML_P2_16XLARGE = "ml.p2.16xlarge",
    ML_P3_2XLARGE = "ml.p3.2xlarge",
    ML_P3_8XLARGE = "ml.p3.8xlarge",
    ML_P3_16XLARGE = "ml.p3.16xlarge",
    ML_P3DN_24XLARGE = "ml.p3dn.24xlarge",
    ML_G4DN_XLARGE = "ml.g4dn.xlarge",
    ML_G4DN_2XLARGE = "ml.g4dn.2xlarge",
    ML_G4DN_4XLARGE = "ml.g4dn.4xlarge",
    ML_G4DN_8XLARGE = "ml.g4dn.8xlarge",
    ML_G4DN_12XLARGE = "ml.g4dn.12xlarge",
    ML_G4DN_16XLARGE = "ml.g4dn.16xlarge",
    ML_R5_LARGE = "ml.r5.large",
    ML_R5_XLARGE = "ml.r5.xlarge",
    ML_R5_2XLARGE = "ml.r5.2xlarge",
    ML_R5_4XLARGE = "ml.r5.4xlarge",
    ML_R5_8XLARGE = "ml.r5.8xlarge",
    ML_R5_12XLARGE = "ml.r5.12xlarge",
    ML_R5_16XLARGE = "ml.r5.16xlarge",
    ML_R5_24XLARGE = "ml.r5.24xlarge",
    ML_G5_XLARGE = "ml.g5.xlarge",
    ML_G5_2XLARGE = "ml.g5.2xlarge",
    ML_G5_4XLARGE = "ml.g5.4xlarge",
    ML_G5_8XLARGE = "ml.g5.8xlarge",
    ML_G5_16XLARGE = "ml.g5.16xlarge",
    ML_G5_12XLARGE = "ml.g5.12xlarge",
    ML_G5_24XLARGE = "ml.g5.24xlarge",
    ML_G5_48XLARGE = "ml.g5.48xlarge",
    ML_INF1_XLARGE = "ml.inf1.xlarge",
    ML_INF1_2XLARGE = "ml.inf1.2xlarge",
    ML_INF1_6XLARGE = "ml.inf1.6xlarge",
    ML_INF1_24XLARGE = "ml.inf1.24xlarge",
    ML_TRN1_2XLARGE = "ml.trn1.2xlarge",
    ML_TRN1_32XLARGE = "ml.trn1.32xlarge",
    ML_TRN1N_32XLARGE = "ml.trn1n.32xlarge",
    ML_INF2_XLARGE = "ml.inf2.xlarge",
    ML_INF2_8XLARGE = "ml.inf2.8xlarge",
    ML_INF2_24XLARGE = "ml.inf2.24xlarge",
    ML_INF2_48XLARGE = "ml.inf2.48xlarge",
    ML_P4D_24XLARGE = "ml.p4d.24xlarge",
    ML_P4DE_24XLARGE = "ml.p4de.24xlarge",
    ML_P5_48XLARGE = "ml.p5.48xlarge",
    ML_P6_B200_48XLARGE = "ml.p6-b200.48xlarge",
    ML_M6I_LARGE = "ml.m6i.large",
    ML_M6I_XLARGE = "ml.m6i.xlarge",
    ML_M6I_2XLARGE = "ml.m6i.2xlarge",
    ML_M6I_4XLARGE = "ml.m6i.4xlarge",
    ML_M6I_8XLARGE = "ml.m6i.8xlarge",
    ML_M6I_12XLARGE = "ml.m6i.12xlarge",
    ML_M6I_16XLARGE = "ml.m6i.16xlarge",
    ML_M6I_24XLARGE = "ml.m6i.24xlarge",
    ML_M6I_32XLARGE = "ml.m6i.32xlarge",
    ML_M7I_LARGE = "ml.m7i.large",
    ML_M7I_XLARGE = "ml.m7i.xlarge",
    ML_M7I_2XLARGE = "ml.m7i.2xlarge",
    ML_M7I_4XLARGE = "ml.m7i.4xlarge",
    ML_M7I_8XLARGE = "ml.m7i.8xlarge",
    ML_M7I_12XLARGE = "ml.m7i.12xlarge",
    ML_M7I_16XLARGE = "ml.m7i.16xlarge",
    ML_M7I_24XLARGE = "ml.m7i.24xlarge",
    ML_M7I_48XLARGE = "ml.m7i.48xlarge",
    ML_C6I_LARGE = "ml.c6i.large",
    ML_C6I_XLARGE = "ml.c6i.xlarge",
    ML_C6I_2XLARGE = "ml.c6i.2xlarge",
    ML_C6I_4XLARGE = "ml.c6i.4xlarge",
    ML_C6I_8XLARGE = "ml.c6i.8xlarge",
    ML_C6I_12XLARGE = "ml.c6i.12xlarge",
    ML_C6I_16XLARGE = "ml.c6i.16xlarge",
    ML_C6I_24XLARGE = "ml.c6i.24xlarge",
    ML_C6I_32XLARGE = "ml.c6i.32xlarge",
    ML_C7I_LARGE = "ml.c7i.large",
    ML_C7I_XLARGE = "ml.c7i.xlarge",
    ML_C7I_2XLARGE = "ml.c7i.2xlarge",
    ML_C7I_4XLARGE = "ml.c7i.4xlarge",
    ML_C7I_8XLARGE = "ml.c7i.8xlarge",
    ML_C7I_12XLARGE = "ml.c7i.12xlarge",
    ML_C7I_16XLARGE = "ml.c7i.16xlarge",
    ML_C7I_24XLARGE = "ml.c7i.24xlarge",
    ML_C7I_48XLARGE = "ml.c7i.48xlarge",
    ML_R6I_LARGE = "ml.r6i.large",
    ML_R6I_XLARGE = "ml.r6i.xlarge",
    ML_R6I_2XLARGE = "ml.r6i.2xlarge",
    ML_R6I_4XLARGE = "ml.r6i.4xlarge",
    ML_R6I_8XLARGE = "ml.r6i.8xlarge",
    ML_R6I_12XLARGE = "ml.r6i.12xlarge",
    ML_R6I_16XLARGE = "ml.r6i.16xlarge",
    ML_R6I_24XLARGE = "ml.r6i.24xlarge",
    ML_R6I_32XLARGE = "ml.r6i.32xlarge",
    ML_R7I_LARGE = "ml.r7i.large",
    ML_R7I_XLARGE = "ml.r7i.xlarge",
    ML_R7I_2XLARGE = "ml.r7i.2xlarge",
    ML_R7I_4XLARGE = "ml.r7i.4xlarge",
    ML_R7I_8XLARGE = "ml.r7i.8xlarge",
    ML_R7I_12XLARGE = "ml.r7i.12xlarge",
    ML_R7I_16XLARGE = "ml.r7i.16xlarge",
    ML_R7I_24XLARGE = "ml.r7i.24xlarge",
    ML_R7I_48XLARGE = "ml.r7i.48xlarge",
    ML_M6ID_LARGE = "ml.m6id.large",
    ML_M6ID_XLARGE = "ml.m6id.xlarge",
    ML_M6ID_2XLARGE = "ml.m6id.2xlarge",
    ML_M6ID_4XLARGE = "ml.m6id.4xlarge",
    ML_M6ID_8XLARGE = "ml.m6id.8xlarge",
    ML_M6ID_12XLARGE = "ml.m6id.12xlarge",
    ML_M6ID_16XLARGE = "ml.m6id.16xlarge",
    ML_M6ID_24XLARGE = "ml.m6id.24xlarge",
    ML_M6ID_32XLARGE = "ml.m6id.32xlarge",
    ML_C6ID_LARGE = "ml.c6id.large",
    ML_C6ID_XLARGE = "ml.c6id.xlarge",
    ML_C6ID_2XLARGE = "ml.c6id.2xlarge",
    ML_C6ID_4XLARGE = "ml.c6id.4xlarge",
    ML_C6ID_8XLARGE = "ml.c6id.8xlarge",
    ML_C6ID_12XLARGE = "ml.c6id.12xlarge",
    ML_C6ID_16XLARGE = "ml.c6id.16xlarge",
    ML_C6ID_24XLARGE = "ml.c6id.24xlarge",
    ML_C6ID_32XLARGE = "ml.c6id.32xlarge",
    ML_R6ID_LARGE = "ml.r6id.large",
    ML_R6ID_XLARGE = "ml.r6id.xlarge",
    ML_R6ID_2XLARGE = "ml.r6id.2xlarge",
    ML_R6ID_4XLARGE = "ml.r6id.4xlarge",
    ML_R6ID_8XLARGE = "ml.r6id.8xlarge",
    ML_R6ID_12XLARGE = "ml.r6id.12xlarge",
    ML_R6ID_16XLARGE = "ml.r6id.16xlarge",
    ML_R6ID_24XLARGE = "ml.r6id.24xlarge",
    ML_R6ID_32XLARGE = "ml.r6id.32xlarge",
    ML_G6_XLARGE = "ml.g6.xlarge",
    ML_G6_2XLARGE = "ml.g6.2xlarge",
    ML_G6_4XLARGE = "ml.g6.4xlarge",
    ML_G6_8XLARGE = "ml.g6.8xlarge",
    ML_G6_12XLARGE = "ml.g6.12xlarge",
    ML_G6_16XLARGE = "ml.g6.16xlarge",
    ML_G6_24XLARGE = "ml.g6.24xlarge",
    ML_G6_48XLARGE = "ml.g6.48xlarge",
}

M.RealTimeInferenceConfig = {
    type = "structure",
    id = "RealTimeInferenceConfig",
    members = {
        InstanceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstanceCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.ModelInfrastructureConfig = {
    type = "structure",
    id = "ModelInfrastructureConfig",
    members = {
        InfrastructureType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RealTimeInferenceConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RealTimeInferenceConfig }),
    },
}

M.ModelVariantConfig = {
    type = "structure",
    id = "ModelVariantConfig",
    members = {
        ModelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VariantName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InfrastructureConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ModelInfrastructureConfig }),
    },
}

M.InferenceExperimentSchedule = {
    type = "structure",
    id = "InferenceExperimentSchedule",
    members = {
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
    },
}

M.ShadowModelVariantConfig = {
    type = "structure",
    id = "ShadowModelVariantConfig",
    members = {
        ShadowModelVariantName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SamplingPercentage = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.ShadowModeConfig = {
    type = "structure",
    id = "ShadowModeConfig",
    members = {
        SourceModelVariantName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ShadowModelVariants = {
            type = "list",
            member = M.ShadowModelVariantConfig,
            traits = {
                required = true,
            },
        },
    },
}

M.InferenceExperimentType = {
    SHADOW_MODE = "ShadowMode",
}

M.CreateInferenceExperimentInput = {
    type = "structure",
    id = "CreateInferenceExperimentInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Schedule = M.InferenceExperimentSchedule,
        Description = {
            type = "string",
        },
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EndpointName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ModelVariants = {
            type = "list",
            member = M.ModelVariantConfig,
            traits = {
                required = true,
            },
        },
        DataStorageConfig = M.InferenceExperimentDataStorageConfig,
        ShadowModeConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ShadowModeConfig }),
        KmsKey = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateInferenceExperimentOutput = {
    type = "structure",
    id = "CreateInferenceExperimentOutput",
    members = {
        InferenceExperimentArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RecommendationJobPayloadConfig = {
    type = "structure",
    id = "RecommendationJobPayloadConfig",
    members = {
        SamplePayloadUrl = {
            type = "string",
        },
        SupportedContentTypes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.RecommendationJobSupportedEndpointType = {
    REALTIME = "RealTime",
    SERVERLESS = "Serverless",
}

M.RecommendationJobContainerConfig = {
    type = "structure",
    id = "RecommendationJobContainerConfig",
    members = {
        Domain = {
            type = "string",
        },
        Task = {
            type = "string",
        },
        Framework = {
            type = "string",
        },
        FrameworkVersion = {
            type = "string",
        },
        PayloadConfig = M.RecommendationJobPayloadConfig,
        NearestModelName = {
            type = "string",
        },
        SupportedInstanceTypes = {
            type = "list",
            member = { type = "string" },
        },
        SupportedEndpointType = {
            type = "string",
        },
        DataInputConfig = {
            type = "string",
        },
        SupportedResponseMIMETypes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.EnvironmentParameterRanges = {
    type = "structure",
    id = "EnvironmentParameterRanges",
    members = {
        CategoricalParameterRanges = {
            type = "list",
            member = M.CategoricalParameter,
        },
    },
}

M.EndpointInputConfiguration = {
    type = "structure",
    id = "EndpointInputConfiguration",
    members = {
        InstanceType = {
            type = "string",
        },
        ServerlessConfig = M.ProductionVariantServerlessConfig,
        InferenceSpecificationName = {
            type = "string",
        },
        EnvironmentParameterRanges = M.EnvironmentParameterRanges,
    },
}

M.EndpointInfo = {
    type = "structure",
    id = "EndpointInfo",
    members = {
        EndpointName = {
            type = "string",
        },
    },
}

M.RecommendationJobResourceLimit = {
    type = "structure",
    id = "RecommendationJobResourceLimit",
    members = {
        MaxNumberOfTests = {
            type = "integer",
        },
        MaxParallelOfTests = {
            type = "integer",
        },
    },
}

M.Phase = {
    type = "structure",
    id = "Phase",
    members = {
        InitialNumberOfUsers = {
            type = "integer",
        },
        SpawnRate = {
            type = "integer",
        },
        DurationInSeconds = {
            type = "integer",
        },
    },
}

M.Stairs = {
    type = "structure",
    id = "Stairs",
    members = {
        DurationInSeconds = {
            type = "integer",
        },
        NumberOfSteps = {
            type = "integer",
        },
        UsersPerStep = {
            type = "integer",
        },
    },
}

M.TrafficType = {
    PHASES = "PHASES",
    STAIRS = "STAIRS",
}

M.TrafficPattern = {
    type = "structure",
    id = "TrafficPattern",
    members = {
        TrafficType = {
            type = "string",
        },
        Phases = {
            type = "list",
            member = M.Phase,
        },
        Stairs = M.Stairs,
    },
}

M.RecommendationJobVpcConfig = {
    type = "structure",
    id = "RecommendationJobVpcConfig",
    members = {
        SecurityGroupIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Subnets = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.RecommendationJobInputConfig = {
    type = "structure",
    id = "RecommendationJobInputConfig",
    members = {
        ModelPackageVersionArn = {
            type = "string",
        },
        ModelName = {
            type = "string",
        },
        JobDurationInSeconds = {
            type = "integer",
        },
        TrafficPattern = M.TrafficPattern,
        ResourceLimit = M.RecommendationJobResourceLimit,
        EndpointConfigurations = {
            type = "list",
            member = M.EndpointInputConfiguration,
        },
        VolumeKmsKeyId = {
            type = "string",
        },
        ContainerConfig = M.RecommendationJobContainerConfig,
        Endpoints = {
            type = "list",
            member = M.EndpointInfo,
        },
        VpcConfig = M.RecommendationJobVpcConfig,
    },
}

M.RecommendationJobType = {
    DEFAULT = "Default",
    ADVANCED = "Advanced",
}

M.RecommendationJobCompiledOutputConfig = {
    type = "structure",
    id = "RecommendationJobCompiledOutputConfig",
    members = {
        S3OutputUri = {
            type = "string",
        },
    },
}

M.RecommendationJobOutputConfig = {
    type = "structure",
    id = "RecommendationJobOutputConfig",
    members = {
        KmsKeyId = {
            type = "string",
        },
        CompiledOutputConfig = M.RecommendationJobCompiledOutputConfig,
    },
}

M.FlatInvocations = {
    CONTINUE = "Continue",
    STOP = "Stop",
}

M.ModelLatencyThreshold = {
    type = "structure",
    id = "ModelLatencyThreshold",
    members = {
        Percentile = {
            type = "string",
        },
        ValueInMilliseconds = {
            type = "integer",
        },
    },
}

M.RecommendationJobStoppingConditions = {
    type = "structure",
    id = "RecommendationJobStoppingConditions",
    members = {
        MaxInvocations = {
            type = "integer",
        },
        ModelLatencyThresholds = {
            type = "list",
            member = M.ModelLatencyThreshold,
        },
        FlatInvocations = {
            type = "string",
        },
    },
}

M.CreateInferenceRecommendationsJobInput = {
    type = "structure",
    id = "CreateInferenceRecommendationsJobInput",
    members = {
        JobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        JobType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InputConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RecommendationJobInputConfig }),
        JobDescription = {
            type = "string",
        },
        StoppingConditions = M.RecommendationJobStoppingConditions,
        OutputConfig = M.RecommendationJobOutputConfig,
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateInferenceRecommendationsJobOutput = {
    type = "structure",
    id = "CreateInferenceRecommendationsJobOutput",
    members = {
        JobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UiConfig = {
    type = "structure",
    id = "UiConfig",
    members = {
        UiTemplateS3Uri = {
            type = "string",
        },
        HumanTaskUiArn = {
            type = "string",
        },
    },
}

M.HumanTaskConfig = {
    type = "structure",
    id = "HumanTaskConfig",
    members = {
        WorkteamArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UiConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.UiConfig }),
        PreHumanTaskLambdaArn = {
            type = "string",
        },
        TaskKeywords = {
            type = "list",
            member = { type = "string" },
        },
        TaskTitle = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TaskDescription = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NumberOfHumanWorkersPerDataObject = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        TaskTimeLimitInSeconds = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        TaskAvailabilityLifetimeInSeconds = {
            type = "integer",
        },
        MaxConcurrentTaskCount = {
            type = "integer",
        },
        AnnotationConsolidationConfig = M.AnnotationConsolidationConfig,
        PublicWorkforceTaskPrice = M.PublicWorkforceTaskPrice,
    },
}

M.LabelingJobDataAttributes = {
    type = "structure",
    id = "LabelingJobDataAttributes",
    members = {
        ContentClassifiers = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.LabelingJobS3DataSource = {
    type = "structure",
    id = "LabelingJobS3DataSource",
    members = {
        ManifestS3Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.LabelingJobSnsDataSource = {
    type = "structure",
    id = "LabelingJobSnsDataSource",
    members = {
        SnsTopicArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.LabelingJobDataSource = {
    type = "structure",
    id = "LabelingJobDataSource",
    members = {
        S3DataSource = M.LabelingJobS3DataSource,
        SnsDataSource = M.LabelingJobSnsDataSource,
    },
}

M.LabelingJobInputConfig = {
    type = "structure",
    id = "LabelingJobInputConfig",
    members = {
        DataSource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LabelingJobDataSource }),
        DataAttributes = M.LabelingJobDataAttributes,
    },
}

M.LabelingJobResourceConfig = {
    type = "structure",
    id = "LabelingJobResourceConfig",
    members = {
        VolumeKmsKeyId = {
            type = "string",
        },
        VpcConfig = M.VpcConfig,
    },
}

M.LabelingJobAlgorithmsConfig = {
    type = "structure",
    id = "LabelingJobAlgorithmsConfig",
    members = {
        LabelingJobAlgorithmSpecificationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InitialActiveLearningModelArn = {
            type = "string",
        },
        LabelingJobResourceConfig = M.LabelingJobResourceConfig,
    },
}

M.LabelingJobOutputConfig = {
    type = "structure",
    id = "LabelingJobOutputConfig",
    members = {
        S3OutputPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KmsKeyId = {
            type = "string",
        },
        SnsTopicArn = {
            type = "string",
        },
    },
}

M.LabelingJobStoppingConditions = {
    type = "structure",
    id = "LabelingJobStoppingConditions",
    members = {
        MaxHumanLabeledObjectCount = {
            type = "integer",
        },
        MaxPercentageOfInputDatasetLabeled = {
            type = "integer",
        },
    },
}

M.CreateLabelingJobInput = {
    type = "structure",
    id = "CreateLabelingJobInput",
    members = {
        LabelingJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LabelAttributeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InputConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LabelingJobInputConfig }),
        OutputConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LabelingJobOutputConfig }),
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LabelCategoryConfigS3Uri = {
            type = "string",
        },
        StoppingConditions = M.LabelingJobStoppingConditions,
        LabelingJobAlgorithmsConfig = M.LabelingJobAlgorithmsConfig,
        HumanTaskConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.HumanTaskConfig }),
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateLabelingJobOutput = {
    type = "structure",
    id = "CreateLabelingJobOutput",
    members = {
        LabelingJobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ModelRegistrationMode = {
    AUTO_MODEL_REGISTRATION_ENABLED = "AutoModelRegistrationEnabled",
    AUTO_MODEL_REGISTRATION_DISABLED = "AutoModelRegistrationDisabled",
}

M.CreateMlflowAppInput = {
    type = "structure",
    id = "CreateMlflowAppInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ArtifactStoreUri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ModelRegistrationMode = {
            type = "string",
        },
        WeeklyMaintenanceWindowStart = {
            type = "string",
        },
        AccountDefaultStatus = {
            type = "string",
        },
        DefaultDomainIdList = {
            type = "list",
            member = { type = "string" },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateMlflowAppOutput = {
    type = "structure",
    id = "CreateMlflowAppOutput",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.TrackingServerSize = {
    S = "Small",
    M = "Medium",
    L = "Large",
}

M.CreateMlflowTrackingServerInput = {
    type = "structure",
    id = "CreateMlflowTrackingServerInput",
    members = {
        TrackingServerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ArtifactStoreUri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TrackingServerSize = {
            type = "string",
        },
        MlflowVersion = {
            type = "string",
        },
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AutomaticModelRegistration = {
            type = "boolean",
        },
        WeeklyMaintenanceWindowStart = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        S3BucketOwnerAccountId = {
            type = "string",
        },
        S3BucketOwnerVerification = {
            type = "boolean",
        },
    },
}

M.CreateMlflowTrackingServerOutput = {
    type = "structure",
    id = "CreateMlflowTrackingServerOutput",
    members = {
        TrackingServerArn = {
            type = "string",
        },
    },
}

M.InferenceExecutionMode = {
    SERIAL = "Serial",
    DIRECT = "Direct",
}

M.InferenceExecutionConfig = {
    type = "structure",
    id = "InferenceExecutionConfig",
    members = {
        Mode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateModelInput = {
    type = "structure",
    id = "CreateModelInput",
    members = {
        ModelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PrimaryContainer = M.ContainerDefinition,
        Containers = {
            type = "list",
            member = M.ContainerDefinition,
        },
        InferenceExecutionConfig = M.InferenceExecutionConfig,
        ExecutionRoleArn = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        VpcConfig = M.VpcConfig,
        EnableNetworkIsolation = {
            type = "boolean",
        },
    },
}

M.CreateModelOutput = {
    type = "structure",
    id = "CreateModelOutput",
    members = {
        ModelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ModelBiasAppSpecification = {
    type = "structure",
    id = "ModelBiasAppSpecification",
    members = {
        ImageUri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConfigUri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Environment = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ModelBiasBaselineConfig = {
    type = "structure",
    id = "ModelBiasBaselineConfig",
    members = {
        BaseliningJobName = {
            type = "string",
        },
        ConstraintsResource = M.MonitoringConstraintsResource,
    },
}

M.MonitoringGroundTruthS3Input = {
    type = "structure",
    id = "MonitoringGroundTruthS3Input",
    members = {
        S3Uri = {
            type = "string",
        },
    },
}

M.ModelBiasJobInput = {
    type = "structure",
    id = "ModelBiasJobInput",
    members = {
        EndpointInput = M.EndpointInput,
        BatchTransformInput = M.BatchTransformInput,
        GroundTruthS3Input = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MonitoringGroundTruthS3Input }),
    },
}

M.CreateModelBiasJobDefinitionInput = {
    type = "structure",
    id = "CreateModelBiasJobDefinitionInput",
    members = {
        JobDefinitionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ModelBiasBaselineConfig = M.ModelBiasBaselineConfig,
        ModelBiasAppSpecification = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ModelBiasAppSpecification }),
        ModelBiasJobInput = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ModelBiasJobInput }),
        ModelBiasJobOutputConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MonitoringOutputConfig }),
        JobResources = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MonitoringResources }),
        NetworkConfig = M.MonitoringNetworkConfig,
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StoppingCondition = M.MonitoringStoppingCondition,
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateModelBiasJobDefinitionOutput = {
    type = "structure",
    id = "CreateModelBiasJobDefinitionOutput",
    members = {
        JobDefinitionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ModelCardStatus = {
    DRAFT = "Draft",
    PENDINGREVIEW = "PendingReview",
    APPROVED = "Approved",
    ARCHIVED = "Archived",
}

M.ModelCardSecurityConfig = {
    type = "structure",
    id = "ModelCardSecurityConfig",
    members = {
        KmsKeyId = {
            type = "string",
        },
    },
}

M.CreateModelCardInput = {
    type = "structure",
    id = "CreateModelCardInput",
    members = {
        ModelCardName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SecurityConfig = M.ModelCardSecurityConfig,
        Content = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ModelCardStatus = {
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

M.CreateModelCardOutput = {
    type = "structure",
    id = "CreateModelCardOutput",
    members = {
        ModelCardArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ModelCardExportOutputConfig = {
    type = "structure",
    id = "ModelCardExportOutputConfig",
    members = {
        S3OutputPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateModelCardExportJobInput = {
    type = "structure",
    id = "CreateModelCardExportJobInput",
    members = {
        ModelCardName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ModelCardVersion = {
            type = "integer",
        },
        ModelCardExportJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OutputConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ModelCardExportOutputConfig }),
    },
}

M.CreateModelCardExportJobOutput = {
    type = "structure",
    id = "CreateModelCardExportJobOutput",
    members = {
        ModelCardExportJobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ModelExplainabilityAppSpecification = {
    type = "structure",
    id = "ModelExplainabilityAppSpecification",
    members = {
        ImageUri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConfigUri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Environment = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ModelExplainabilityBaselineConfig = {
    type = "structure",
    id = "ModelExplainabilityBaselineConfig",
    members = {
        BaseliningJobName = {
            type = "string",
        },
        ConstraintsResource = M.MonitoringConstraintsResource,
    },
}

M.ModelExplainabilityJobInput = {
    type = "structure",
    id = "ModelExplainabilityJobInput",
    members = {
        EndpointInput = M.EndpointInput,
        BatchTransformInput = M.BatchTransformInput,
    },
}

M.CreateModelExplainabilityJobDefinitionInput = {
    type = "structure",
    id = "CreateModelExplainabilityJobDefinitionInput",
    members = {
        JobDefinitionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ModelExplainabilityBaselineConfig = M.ModelExplainabilityBaselineConfig,
        ModelExplainabilityAppSpecification = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ModelExplainabilityAppSpecification }),
        ModelExplainabilityJobInput = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ModelExplainabilityJobInput }),
        ModelExplainabilityJobOutputConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MonitoringOutputConfig }),
        JobResources = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MonitoringResources }),
        NetworkConfig = M.MonitoringNetworkConfig,
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StoppingCondition = M.MonitoringStoppingCondition,
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateModelExplainabilityJobDefinitionOutput = {
    type = "structure",
    id = "CreateModelExplainabilityJobDefinitionOutput",
    members = {
        JobDefinitionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.FileSource = {
    type = "structure",
    id = "FileSource",
    members = {
        ContentType = {
            type = "string",
        },
        ContentDigest = {
            type = "string",
        },
        S3Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DriftCheckBias = {
    type = "structure",
    id = "DriftCheckBias",
    members = {
        ConfigFile = M.FileSource,
        PreTrainingConstraints = M.MetricsSource,
        PostTrainingConstraints = M.MetricsSource,
    },
}

M.DriftCheckExplainability = {
    type = "structure",
    id = "DriftCheckExplainability",
    members = {
        Constraints = M.MetricsSource,
        ConfigFile = M.FileSource,
    },
}

M.DriftCheckModelDataQuality = {
    type = "structure",
    id = "DriftCheckModelDataQuality",
    members = {
        Statistics = M.MetricsSource,
        Constraints = M.MetricsSource,
    },
}

M.DriftCheckModelQuality = {
    type = "structure",
    id = "DriftCheckModelQuality",
    members = {
        Statistics = M.MetricsSource,
        Constraints = M.MetricsSource,
    },
}

M.DriftCheckBaselines = {
    type = "structure",
    id = "DriftCheckBaselines",
    members = {
        Bias = M.DriftCheckBias,
        Explainability = M.DriftCheckExplainability,
        ModelQuality = M.DriftCheckModelQuality,
        ModelDataQuality = M.DriftCheckModelDataQuality,
    },
}

M.ModelPackageModelCard = {
    type = "structure",
    id = "ModelPackageModelCard",
    members = {
        ModelCardContent = {
            type = "string",
        },
        ModelCardStatus = {
            type = "string",
        },
    },
}

M.ModelLifeCycle = {
    type = "structure",
    id = "ModelLifeCycle",
    members = {
        Stage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StageStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StageDescription = {
            type = "string",
        },
    },
}

M.Explainability = {
    type = "structure",
    id = "Explainability",
    members = {
        Report = M.MetricsSource,
    },
}

M.ModelDataQuality = {
    type = "structure",
    id = "ModelDataQuality",
    members = {
        Statistics = M.MetricsSource,
        Constraints = M.MetricsSource,
    },
}

M.ModelQuality = {
    type = "structure",
    id = "ModelQuality",
    members = {
        Statistics = M.MetricsSource,
        Constraints = M.MetricsSource,
    },
}

M.ModelMetrics = {
    type = "structure",
    id = "ModelMetrics",
    members = {
        ModelQuality = M.ModelQuality,
        ModelDataQuality = M.ModelDataQuality,
        Bias = M.Bias,
        Explainability = M.Explainability,
    },
}

M.ModelPackageSecurityConfig = {
    type = "structure",
    id = "ModelPackageSecurityConfig",
    members = {
        KmsKeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SkipModelValidation = {
    ALL = "All",
    NONE = "None",
}

M.SourceAlgorithm = {
    type = "structure",
    id = "SourceAlgorithm",
    members = {
        ModelDataUrl = {
            type = "string",
        },
        ModelDataSource = M.ModelDataSource,
        ModelDataETag = {
            type = "string",
        },
        AlgorithmName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SourceAlgorithmSpecification = {
    type = "structure",
    id = "SourceAlgorithmSpecification",
    members = {
        SourceAlgorithms = {
            type = "list",
            member = M.SourceAlgorithm,
            traits = {
                required = true,
            },
        },
    },
}

M.ModelPackageValidationProfile = {
    type = "structure",
    id = "ModelPackageValidationProfile",
    members = {
        ProfileName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TransformJobDefinition = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TransformJobDefinition }),
    },
}

M.ModelPackageValidationSpecification = {
    type = "structure",
    id = "ModelPackageValidationSpecification",
    members = {
        ValidationRole = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ValidationProfiles = {
            type = "list",
            member = M.ModelPackageValidationProfile,
            traits = {
                required = true,
            },
        },
    },
}

M.CreateModelPackageInput = {
    type = "structure",
    id = "CreateModelPackageInput",
    members = {
        ModelPackageName = {
            type = "string",
        },
        ModelPackageGroupName = {
            type = "string",
        },
        ModelPackageDescription = {
            type = "string",
        },
        ModelPackageRegistrationType = {
            type = "string",
        },
        InferenceSpecification = M.InferenceSpecification,
        ValidationSpecification = M.ModelPackageValidationSpecification,
        SourceAlgorithmSpecification = M.SourceAlgorithmSpecification,
        CertifyForMarketplace = {
            type = "boolean",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        ModelApprovalStatus = {
            type = "string",
        },
        MetadataProperties = M.MetadataProperties,
        ModelMetrics = M.ModelMetrics,
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        Domain = {
            type = "string",
        },
        Task = {
            type = "string",
        },
        SamplePayloadUrl = {
            type = "string",
        },
        CustomerMetadataProperties = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        DriftCheckBaselines = M.DriftCheckBaselines,
        AdditionalInferenceSpecifications = {
            type = "list",
            member = M.AdditionalInferenceSpecificationDefinition,
        },
        SkipModelValidation = {
            type = "string",
        },
        SourceUri = {
            type = "string",
        },
        SecurityConfig = M.ModelPackageSecurityConfig,
        ModelCard = M.ModelPackageModelCard,
        ModelLifeCycle = M.ModelLifeCycle,
    },
}

M.CreateModelPackageOutput = {
    type = "structure",
    id = "CreateModelPackageOutput",
    members = {
        ModelPackageArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateModelPackageGroupInput = {
    type = "structure",
    id = "CreateModelPackageGroupInput",
    members = {
        ModelPackageGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ModelPackageGroupDescription = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateModelPackageGroupOutput = {
    type = "structure",
    id = "CreateModelPackageGroupOutput",
    members = {
        ModelPackageGroupArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MonitoringProblemType = {
    BINARY_CLASSIFICATION = "BinaryClassification",
    MULTICLASS_CLASSIFICATION = "MulticlassClassification",
    REGRESSION = "Regression",
}

M.ModelQualityAppSpecification = {
    type = "structure",
    id = "ModelQualityAppSpecification",
    members = {
        ImageUri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ContainerEntrypoint = {
            type = "list",
            member = { type = "string" },
        },
        ContainerArguments = {
            type = "list",
            member = { type = "string" },
        },
        RecordPreprocessorSourceUri = {
            type = "string",
        },
        PostAnalyticsProcessorSourceUri = {
            type = "string",
        },
        ProblemType = {
            type = "string",
        },
        Environment = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ModelQualityBaselineConfig = {
    type = "structure",
    id = "ModelQualityBaselineConfig",
    members = {
        BaseliningJobName = {
            type = "string",
        },
        ConstraintsResource = M.MonitoringConstraintsResource,
    },
}

M.ModelQualityJobInput = {
    type = "structure",
    id = "ModelQualityJobInput",
    members = {
        EndpointInput = M.EndpointInput,
        BatchTransformInput = M.BatchTransformInput,
        GroundTruthS3Input = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MonitoringGroundTruthS3Input }),
    },
}

M.CreateModelQualityJobDefinitionInput = {
    type = "structure",
    id = "CreateModelQualityJobDefinitionInput",
    members = {
        JobDefinitionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ModelQualityBaselineConfig = M.ModelQualityBaselineConfig,
        ModelQualityAppSpecification = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ModelQualityAppSpecification }),
        ModelQualityJobInput = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ModelQualityJobInput }),
        ModelQualityJobOutputConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MonitoringOutputConfig }),
        JobResources = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MonitoringResources }),
        NetworkConfig = M.MonitoringNetworkConfig,
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StoppingCondition = M.MonitoringStoppingCondition,
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateModelQualityJobDefinitionOutput = {
    type = "structure",
    id = "CreateModelQualityJobDefinitionOutput",
    members = {
        JobDefinitionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MonitoringBaselineConfig = {
    type = "structure",
    id = "MonitoringBaselineConfig",
    members = {
        BaseliningJobName = {
            type = "string",
        },
        ConstraintsResource = M.MonitoringConstraintsResource,
        StatisticsResource = M.MonitoringStatisticsResource,
    },
}

M.MonitoringAppSpecification = {
    type = "structure",
    id = "MonitoringAppSpecification",
    members = {
        ImageUri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ContainerEntrypoint = {
            type = "list",
            member = { type = "string" },
        },
        ContainerArguments = {
            type = "list",
            member = { type = "string" },
        },
        RecordPreprocessorSourceUri = {
            type = "string",
        },
        PostAnalyticsProcessorSourceUri = {
            type = "string",
        },
    },
}

M.MonitoringInput = {
    type = "structure",
    id = "MonitoringInput",
    members = {
        EndpointInput = M.EndpointInput,
        BatchTransformInput = M.BatchTransformInput,
    },
}

M.NetworkConfig = {
    type = "structure",
    id = "NetworkConfig",
    members = {
        EnableInterContainerTrafficEncryption = {
            type = "boolean",
        },
        EnableNetworkIsolation = {
            type = "boolean",
        },
        VpcConfig = M.VpcConfig,
    },
}

M.MonitoringJobDefinition = {
    type = "structure",
    id = "MonitoringJobDefinition",
    members = {
        BaselineConfig = M.MonitoringBaselineConfig,
        MonitoringInputs = {
            type = "list",
            member = M.MonitoringInput,
            traits = {
                required = true,
            },
        },
        MonitoringOutputConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MonitoringOutputConfig }),
        MonitoringResources = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MonitoringResources }),
        MonitoringAppSpecification = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MonitoringAppSpecification }),
        StoppingCondition = M.MonitoringStoppingCondition,
        Environment = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        NetworkConfig = M.NetworkConfig,
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MonitoringType = {
    DATA_QUALITY = "DataQuality",
    MODEL_QUALITY = "ModelQuality",
    MODEL_BIAS = "ModelBias",
    MODEL_EXPLAINABILITY = "ModelExplainability",
}

M.ScheduleConfig = {
    type = "structure",
    id = "ScheduleConfig",
    members = {
        ScheduleExpression = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataAnalysisStartTime = {
            type = "string",
        },
        DataAnalysisEndTime = {
            type = "string",
        },
    },
}

M.MonitoringScheduleConfig = {
    type = "structure",
    id = "MonitoringScheduleConfig",
    members = {
        ScheduleConfig = M.ScheduleConfig,
        MonitoringJobDefinition = M.MonitoringJobDefinition,
        MonitoringJobDefinitionName = {
            type = "string",
        },
        MonitoringType = {
            type = "string",
        },
    },
}

M.CreateMonitoringScheduleInput = {
    type = "structure",
    id = "CreateMonitoringScheduleInput",
    members = {
        MonitoringScheduleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MonitoringScheduleConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MonitoringScheduleConfig }),
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateMonitoringScheduleOutput = {
    type = "structure",
    id = "CreateMonitoringScheduleOutput",
    members = {
        MonitoringScheduleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.NotebookInstanceAcceleratorType = {
    ML_EIA1_MEDIUM = "ml.eia1.medium",
    ML_EIA1_LARGE = "ml.eia1.large",
    ML_EIA1_XLARGE = "ml.eia1.xlarge",
    ML_EIA2_MEDIUM = "ml.eia2.medium",
    ML_EIA2_LARGE = "ml.eia2.large",
    ML_EIA2_XLARGE = "ml.eia2.xlarge",
}

M.DirectInternetAccess = {
    ENABLED = "Enabled",
    DISABLED = "Disabled",
}

M.InstanceMetadataServiceConfiguration = {
    type = "structure",
    id = "InstanceMetadataServiceConfiguration",
    members = {
        MinimumInstanceMetadataServiceVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RootAccess = {
    ENABLED = "Enabled",
    DISABLED = "Disabled",
}

M.CreateNotebookInstanceInput = {
    type = "structure",
    id = "CreateNotebookInstanceInput",
    members = {
        NotebookInstanceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstanceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SubnetId = {
            type = "string",
        },
        SecurityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        IpAddressType = {
            type = "string",
        },
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KmsKeyId = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        LifecycleConfigName = {
            type = "string",
        },
        DirectInternetAccess = {
            type = "string",
        },
        VolumeSizeInGB = {
            type = "integer",
        },
        AcceleratorTypes = {
            type = "list",
            member = { type = "string" },
        },
        DefaultCodeRepository = {
            type = "string",
        },
        AdditionalCodeRepositories = {
            type = "list",
            member = { type = "string" },
        },
        RootAccess = {
            type = "string",
        },
        PlatformIdentifier = {
            type = "string",
        },
        InstanceMetadataServiceConfiguration = M.InstanceMetadataServiceConfiguration,
    },
}

M.CreateNotebookInstanceOutput = {
    type = "structure",
    id = "CreateNotebookInstanceOutput",
    members = {
        NotebookInstanceArn = {
            type = "string",
        },
    },
}

M.NotebookInstanceLifecycleHook = {
    type = "structure",
    id = "NotebookInstanceLifecycleHook",
    members = {
        Content = {
            type = "string",
        },
    },
}

M.CreateNotebookInstanceLifecycleConfigInput = {
    type = "structure",
    id = "CreateNotebookInstanceLifecycleConfigInput",
    members = {
        NotebookInstanceLifecycleConfigName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OnCreate = {
            type = "list",
            member = M.NotebookInstanceLifecycleHook,
        },
        OnStart = {
            type = "list",
            member = M.NotebookInstanceLifecycleHook,
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateNotebookInstanceLifecycleConfigOutput = {
    type = "structure",
    id = "CreateNotebookInstanceLifecycleConfigOutput",
    members = {
        NotebookInstanceLifecycleConfigArn = {
            type = "string",
        },
    },
}

M.OptimizationJobDeploymentInstanceType = {
    ML_P4D_24XLARGE = "ml.p4d.24xlarge",
    ML_P4DE_24XLARGE = "ml.p4de.24xlarge",
    ML_P5_48XLARGE = "ml.p5.48xlarge",
    ML_P5E_48XLARGE = "ml.p5e.48xlarge",
    ML_P5EN_48XLARGE = "ml.p5en.48xlarge",
    ML_G4DN_XLARGE = "ml.g4dn.xlarge",
    ML_G4DN_2XLARGE = "ml.g4dn.2xlarge",
    ML_G4DN_4XLARGE = "ml.g4dn.4xlarge",
    ML_G4DN_8XLARGE = "ml.g4dn.8xlarge",
    ML_G4DN_12XLARGE = "ml.g4dn.12xlarge",
    ML_G4DN_16XLARGE = "ml.g4dn.16xlarge",
    ML_G5_XLARGE = "ml.g5.xlarge",
    ML_G5_2XLARGE = "ml.g5.2xlarge",
    ML_G5_4XLARGE = "ml.g5.4xlarge",
    ML_G5_8XLARGE = "ml.g5.8xlarge",
    ML_G5_12XLARGE = "ml.g5.12xlarge",
    ML_G5_16XLARGE = "ml.g5.16xlarge",
    ML_G5_24XLARGE = "ml.g5.24xlarge",
    ML_G5_48XLARGE = "ml.g5.48xlarge",
    ML_G6_XLARGE = "ml.g6.xlarge",
    ML_G6_2XLARGE = "ml.g6.2xlarge",
    ML_G6_4XLARGE = "ml.g6.4xlarge",
    ML_G6_8XLARGE = "ml.g6.8xlarge",
    ML_G6_12XLARGE = "ml.g6.12xlarge",
    ML_G6_16XLARGE = "ml.g6.16xlarge",
    ML_G6_24XLARGE = "ml.g6.24xlarge",
    ML_G6_48XLARGE = "ml.g6.48xlarge",
    ML_G6E_XLARGE = "ml.g6e.xlarge",
    ML_G6E_2XLARGE = "ml.g6e.2xlarge",
    ML_G6E_4XLARGE = "ml.g6e.4xlarge",
    ML_G6E_8XLARGE = "ml.g6e.8xlarge",
    ML_G6E_12XLARGE = "ml.g6e.12xlarge",
    ML_G6E_16XLARGE = "ml.g6e.16xlarge",
    ML_G6E_24XLARGE = "ml.g6e.24xlarge",
    ML_G6E_48XLARGE = "ml.g6e.48xlarge",
    ML_INF2_XLARGE = "ml.inf2.xlarge",
    ML_INF2_8XLARGE = "ml.inf2.8xlarge",
    ML_INF2_24XLARGE = "ml.inf2.24xlarge",
    ML_INF2_48XLARGE = "ml.inf2.48xlarge",
    ML_TRN1_2XLARGE = "ml.trn1.2xlarge",
    ML_TRN1_32XLARGE = "ml.trn1.32xlarge",
    ML_TRN1N_32XLARGE = "ml.trn1n.32xlarge",
}

M.OptimizationModelAccessConfig = {
    type = "structure",
    id = "OptimizationModelAccessConfig",
    members = {
        AcceptEula = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.OptimizationJobModelSourceS3 = {
    type = "structure",
    id = "OptimizationJobModelSourceS3",
    members = {
        S3Uri = {
            type = "string",
        },
        ModelAccessConfig = M.OptimizationModelAccessConfig,
    },
}

M.OptimizationSageMakerModel = {
    type = "structure",
    id = "OptimizationSageMakerModel",
    members = {
        ModelName = {
            type = "string",
        },
    },
}

M.OptimizationJobModelSource = {
    type = "structure",
    id = "OptimizationJobModelSource",
    members = {
        S3 = M.OptimizationJobModelSourceS3,
        SageMakerModel = M.OptimizationSageMakerModel,
    },
}

M.ModelCompilationConfig = {
    type = "structure",
    id = "ModelCompilationConfig",
    members = {
        Image = {
            type = "string",
        },
        OverrideEnvironment = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ModelQuantizationConfig = {
    type = "structure",
    id = "ModelQuantizationConfig",
    members = {
        Image = {
            type = "string",
        },
        OverrideEnvironment = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ModelShardingConfig = {
    type = "structure",
    id = "ModelShardingConfig",
    members = {
        Image = {
            type = "string",
        },
        OverrideEnvironment = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ModelSpeculativeDecodingTechnique = {
    EAGLE = "EAGLE",
}

M.ModelSpeculativeDecodingS3DataType = {
    S3Prefix = "S3Prefix",
    ManifestFile = "ManifestFile",
}

M.ModelSpeculativeDecodingTrainingDataSource = {
    type = "structure",
    id = "ModelSpeculativeDecodingTrainingDataSource",
    members = {
        S3Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        S3DataType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ModelSpeculativeDecodingConfig = {
    type = "structure",
    id = "ModelSpeculativeDecodingConfig",
    members = {
        Technique = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TrainingDataSource = M.ModelSpeculativeDecodingTrainingDataSource,
    },
}

M.OptimizationConfig = {
    type = "union",
    id = "OptimizationConfig",
    members = {
        ModelQuantizationConfig = M.ModelQuantizationConfig,
        ModelCompilationConfig = M.ModelCompilationConfig,
        ModelShardingConfig = M.ModelShardingConfig,
        ModelSpeculativeDecodingConfig = M.ModelSpeculativeDecodingConfig,
    },
}

M.OptimizationJobOutputConfig = {
    type = "structure",
    id = "OptimizationJobOutputConfig",
    members = {
        KmsKeyId = {
            type = "string",
        },
        S3OutputLocation = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SageMakerModel = M.OptimizationSageMakerModel,
    },
}

M.OptimizationVpcConfig = {
    type = "structure",
    id = "OptimizationVpcConfig",
    members = {
        SecurityGroupIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Subnets = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.CreateOptimizationJobInput = {
    type = "structure",
    id = "CreateOptimizationJobInput",
    members = {
        OptimizationJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ModelSource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OptimizationJobModelSource }),
        DeploymentInstanceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxInstanceCount = {
            type = "integer",
        },
        OptimizationEnvironment = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        OptimizationConfigs = {
            type = "list",
            member = M.OptimizationConfig,
            traits = {
                required = true,
            },
        },
        OutputConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OptimizationJobOutputConfig }),
        StoppingCondition = setmetatable({ traits = {
            required = true,
        } }, { __index = M.StoppingCondition }),
        Tags = {
            type = "list",
            member = M.Tag,
        },
        VpcConfig = M.OptimizationVpcConfig,
    },
}

M.CreateOptimizationJobOutput = {
    type = "structure",
    id = "CreateOptimizationJobOutput",
    members = {
        OptimizationJobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RoleGroupAssignment = {
    type = "structure",
    id = "RoleGroupAssignment",
    members = {
        RoleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GroupPatterns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.PartnerAppConfig = {
    type = "structure",
    id = "PartnerAppConfig",
    members = {
        AdminUsers = {
            type = "list",
            member = { type = "string" },
        },
        Arguments = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        AssignedGroupPatterns = {
            type = "list",
            member = { type = "string" },
        },
        RoleGroupAssignments = {
            type = "list",
            member = M.RoleGroupAssignment,
        },
    },
}

M.PartnerAppAuthType = {
    IAM = "IAM",
}

M.PartnerAppMaintenanceConfig = {
    type = "structure",
    id = "PartnerAppMaintenanceConfig",
    members = {
        MaintenanceWindowStart = {
            type = "string",
        },
    },
}

M.PartnerAppType = {
    LAKERA_GUARD = "lakera-guard",
    COMET = "comet",
    DEEPCHECKS_LLM_EVALUATION = "deepchecks-llm-evaluation",
    FIDDLER = "fiddler",
}

M.CreatePartnerAppInput = {
    type = "structure",
    id = "CreatePartnerAppInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExecutionRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KmsKeyId = {
            type = "string",
        },
        MaintenanceConfig = M.PartnerAppMaintenanceConfig,
        Tier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ApplicationConfig = M.PartnerAppConfig,
        AuthType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EnableIamSessionBasedIdentity = {
            type = "boolean",
        },
        EnableAutoMinorVersionUpgrade = {
            type = "boolean",
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreatePartnerAppOutput = {
    type = "structure",
    id = "CreatePartnerAppOutput",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.CreatePartnerAppPresignedUrlInput = {
    type = "structure",
    id = "CreatePartnerAppPresignedUrlInput",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExpiresInSeconds = {
            type = "integer",
        },
        SessionExpirationDurationInSeconds = {
            type = "integer",
        },
    },
}

M.CreatePartnerAppPresignedUrlOutput = {
    type = "structure",
    id = "CreatePartnerAppPresignedUrlOutput",
    members = {
        Url = {
            type = "string",
        },
    },
}

M.ParallelismConfiguration = {
    type = "structure",
    id = "ParallelismConfiguration",
    members = {
        MaxParallelExecutionSteps = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.PipelineDefinitionS3Location = {
    type = "structure",
    id = "PipelineDefinitionS3Location",
    members = {
        Bucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ObjectKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VersionId = {
            type = "string",
        },
    },
}

M.CreatePipelineInput = {
    type = "structure",
    id = "CreatePipelineInput",
    members = {
        PipelineName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PipelineDisplayName = {
            type = "string",
        },
        PipelineDefinition = {
            type = "string",
        },
        PipelineDefinitionS3Location = M.PipelineDefinitionS3Location,
        PipelineDescription = {
            type = "string",
        },
        ClientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        ParallelismConfiguration = M.ParallelismConfiguration,
    },
}

M.CreatePipelineOutput = {
    type = "structure",
    id = "CreatePipelineOutput",
    members = {
        PipelineArn = {
            type = "string",
        },
    },
}

M.CreatePresignedDomainUrlInput = {
    type = "structure",
    id = "CreatePresignedDomainUrlInput",
    members = {
        DomainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserProfileName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SessionExpirationDurationInSeconds = {
            type = "integer",
        },
        ExpiresInSeconds = {
            type = "integer",
        },
        SpaceName = {
            type = "string",
        },
        LandingUri = {
            type = "string",
        },
    },
}

M.CreatePresignedDomainUrlOutput = {
    type = "structure",
    id = "CreatePresignedDomainUrlOutput",
    members = {
        AuthorizedUrl = {
            type = "string",
        },
    },
}

M.CreatePresignedMlflowAppUrlInput = {
    type = "structure",
    id = "CreatePresignedMlflowAppUrlInput",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExpiresInSeconds = {
            type = "integer",
        },
        SessionExpirationDurationInSeconds = {
            type = "integer",
        },
    },
}

M.CreatePresignedMlflowAppUrlOutput = {
    type = "structure",
    id = "CreatePresignedMlflowAppUrlOutput",
    members = {
        AuthorizedUrl = {
            type = "string",
        },
    },
}

M.CreatePresignedMlflowTrackingServerUrlInput = {
    type = "structure",
    id = "CreatePresignedMlflowTrackingServerUrlInput",
    members = {
        TrackingServerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExpiresInSeconds = {
            type = "integer",
        },
        SessionExpirationDurationInSeconds = {
            type = "integer",
        },
    },
}

M.CreatePresignedMlflowTrackingServerUrlOutput = {
    type = "structure",
    id = "CreatePresignedMlflowTrackingServerUrlOutput",
    members = {
        AuthorizedUrl = {
            type = "string",
        },
    },
}

M.CreatePresignedNotebookInstanceUrlInput = {
    type = "structure",
    id = "CreatePresignedNotebookInstanceUrlInput",
    members = {
        NotebookInstanceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SessionExpirationDurationInSeconds = {
            type = "integer",
        },
    },
}

M.CreatePresignedNotebookInstanceUrlOutput = {
    type = "structure",
    id = "CreatePresignedNotebookInstanceUrlOutput",
    members = {
        AuthorizedUrl = {
            type = "string",
        },
    },
}

M.ExperimentConfig = {
    type = "structure",
    id = "ExperimentConfig",
    members = {
        ExperimentName = {
            type = "string",
        },
        TrialName = {
            type = "string",
        },
        TrialComponentDisplayName = {
            type = "string",
        },
        RunName = {
            type = "string",
        },
    },
}

M.DataDistributionType = {
    FULLYREPLICATED = "FullyReplicated",
    SHARDEDBYS3KEY = "ShardedByS3Key",
}

M.InputMode = {
    PIPE = "Pipe",
    FILE = "File",
}

M.RedshiftResultCompressionType = {
    NONE = "None",
    GZIP = "GZIP",
    BZIP2 = "BZIP2",
    ZSTD = "ZSTD",
    SNAPPY = "SNAPPY",
}

M.RedshiftResultFormat = {
    PARQUET = "PARQUET",
    CSV = "CSV",
}

M.RedshiftDatasetDefinition = {
    type = "structure",
    id = "RedshiftDatasetDefinition",
    members = {
        ClusterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Database = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DbUser = {
            type = "string",
            traits = {
                required = true,
            },
        },
        QueryString = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClusterRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OutputS3Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KmsKeyId = {
            type = "string",
        },
        OutputFormat = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OutputCompression = {
            type = "string",
        },
    },
}

M.DatasetDefinition = {
    type = "structure",
    id = "DatasetDefinition",
    members = {
        AthenaDatasetDefinition = M.AthenaDatasetDefinition,
        RedshiftDatasetDefinition = M.RedshiftDatasetDefinition,
        LocalPath = {
            type = "string",
        },
        DataDistributionType = {
            type = "string",
        },
        InputMode = {
            type = "string",
        },
    },
}

M.ProcessingS3CompressionType = {
    NONE = "None",
    GZIP = "Gzip",
}

M.ProcessingS3DataType = {
    MANIFEST_FILE = "ManifestFile",
    S3_PREFIX = "S3Prefix",
}

M.ProcessingS3Input = {
    type = "structure",
    id = "ProcessingS3Input",
    members = {
        S3Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LocalPath = {
            type = "string",
        },
        S3DataType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        S3InputMode = {
            type = "string",
        },
        S3DataDistributionType = {
            type = "string",
        },
        S3CompressionType = {
            type = "string",
        },
    },
}

M.ProcessingInput = {
    type = "structure",
    id = "ProcessingInput",
    members = {
        InputName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AppManaged = {
            type = "boolean",
        },
        S3Input = M.ProcessingS3Input,
        DatasetDefinition = M.DatasetDefinition,
    },
}

M.ProcessingFeatureStoreOutput = {
    type = "structure",
    id = "ProcessingFeatureStoreOutput",
    members = {
        FeatureGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ProcessingS3Output = {
    type = "structure",
    id = "ProcessingS3Output",
    members = {
        S3Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LocalPath = {
            type = "string",
        },
        S3UploadMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ProcessingOutput = {
    type = "structure",
    id = "ProcessingOutput",
    members = {
        OutputName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        S3Output = M.ProcessingS3Output,
        FeatureStoreOutput = M.ProcessingFeatureStoreOutput,
        AppManaged = {
            type = "boolean",
        },
    },
}

M.ProcessingOutputConfig = {
    type = "structure",
    id = "ProcessingOutputConfig",
    members = {
        Outputs = {
            type = "list",
            member = M.ProcessingOutput,
            traits = {
                required = true,
            },
        },
        KmsKeyId = {
            type = "string",
        },
    },
}

M.ProcessingClusterConfig = {
    type = "structure",
    id = "ProcessingClusterConfig",
    members = {
        InstanceCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        InstanceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VolumeSizeInGB = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        VolumeKmsKeyId = {
            type = "string",
        },
    },
}

M.ProcessingResources = {
    type = "structure",
    id = "ProcessingResources",
    members = {
        ClusterConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ProcessingClusterConfig }),
    },
}

M.ProcessingStoppingCondition = {
    type = "structure",
    id = "ProcessingStoppingCondition",
    members = {
        MaxRuntimeInSeconds = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateProcessingJobInput = {
    type = "structure",
    id = "CreateProcessingJobInput",
    members = {
        ProcessingInputs = {
            type = "list",
            member = M.ProcessingInput,
        },
        ProcessingOutputConfig = M.ProcessingOutputConfig,
        ProcessingJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProcessingResources = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ProcessingResources }),
        StoppingCondition = M.ProcessingStoppingCondition,
        AppSpecification = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AppSpecification }),
        Environment = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        NetworkConfig = M.NetworkConfig,
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        ExperimentConfig = M.ExperimentConfig,
    },
}

M.CreateProcessingJobOutput = {
    type = "structure",
    id = "CreateProcessingJobOutput",
    members = {
        ProcessingJobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ProvisioningParameter = {
    type = "structure",
    id = "ProvisioningParameter",
    members = {
        Key = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.ServiceCatalogProvisioningDetails = {
    type = "structure",
    id = "ServiceCatalogProvisioningDetails",
    members = {
        ProductId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProvisioningArtifactId = {
            type = "string",
        },
        PathId = {
            type = "string",
        },
        ProvisioningParameters = {
            type = "list",
            member = M.ProvisioningParameter,
        },
    },
}

M.CreateTemplateProvider = {
    type = "structure",
    id = "CreateTemplateProvider",
    members = {
        CfnTemplateProvider = M.CfnCreateTemplateProvider,
    },
}

M.CreateProjectInput = {
    type = "structure",
    id = "CreateProjectInput",
    members = {
        ProjectName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProjectDescription = {
            type = "string",
        },
        ServiceCatalogProvisioningDetails = M.ServiceCatalogProvisioningDetails,
        Tags = {
            type = "list",
            member = M.Tag,
        },
        TemplateProviders = {
            type = "list",
            member = M.CreateTemplateProvider,
        },
    },
}

M.CreateProjectOutput = {
    type = "structure",
    id = "CreateProjectOutput",
    members = {
        ProjectArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProjectId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.OwnershipSettings = {
    type = "structure",
    id = "OwnershipSettings",
    members = {
        OwnerUserProfileName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SpaceIdleSettings = {
    type = "structure",
    id = "SpaceIdleSettings",
    members = {
        IdleTimeoutInMinutes = {
            type = "integer",
        },
    },
}

M.SpaceAppLifecycleManagement = {
    type = "structure",
    id = "SpaceAppLifecycleManagement",
    members = {
        IdleSettings = M.SpaceIdleSettings,
    },
}

M.SpaceCodeEditorAppSettings = {
    type = "structure",
    id = "SpaceCodeEditorAppSettings",
    members = {
        DefaultResourceSpec = M.ResourceSpec,
        AppLifecycleManagement = M.SpaceAppLifecycleManagement,
    },
}

M.EFSFileSystem = {
    type = "structure",
    id = "EFSFileSystem",
    members = {
        FileSystemId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.FSxLustreFileSystem = {
    type = "structure",
    id = "FSxLustreFileSystem",
    members = {
        FileSystemId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.S3FileSystem = {
    type = "structure",
    id = "S3FileSystem",
    members = {
        S3Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CustomFileSystem = {
    type = "union",
    id = "CustomFileSystem",
    members = {
        EFSFileSystem = M.EFSFileSystem,
        FSxLustreFileSystem = M.FSxLustreFileSystem,
        S3FileSystem = M.S3FileSystem,
    },
}

M.SpaceJupyterLabAppSettings = {
    type = "structure",
    id = "SpaceJupyterLabAppSettings",
    members = {
        DefaultResourceSpec = M.ResourceSpec,
        CodeRepositories = {
            type = "list",
            member = M.CodeRepository,
        },
        AppLifecycleManagement = M.SpaceAppLifecycleManagement,
    },
}

M.EbsStorageSettings = {
    type = "structure",
    id = "EbsStorageSettings",
    members = {
        EbsVolumeSizeInGb = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.SpaceStorageSettings = {
    type = "structure",
    id = "SpaceStorageSettings",
    members = {
        EbsStorageSettings = M.EbsStorageSettings,
    },
}

M.SpaceSettings = {
    type = "structure",
    id = "SpaceSettings",
    members = {
        JupyterServerAppSettings = M.JupyterServerAppSettings,
        KernelGatewayAppSettings = M.KernelGatewayAppSettings,
        CodeEditorAppSettings = M.SpaceCodeEditorAppSettings,
        JupyterLabAppSettings = M.SpaceJupyterLabAppSettings,
        AppType = {
            type = "string",
        },
        SpaceStorageSettings = M.SpaceStorageSettings,
        SpaceManagedResources = {
            type = "string",
        },
        CustomFileSystems = {
            type = "list",
            member = M.CustomFileSystem,
        },
        RemoteAccess = {
            type = "string",
        },
    },
}

M.SharingType = {
    Private = "Private",
    Shared = "Shared",
}

M.SpaceSharingSettings = {
    type = "structure",
    id = "SpaceSharingSettings",
    members = {
        SharingType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateSpaceInput = {
    type = "structure",
    id = "CreateSpaceInput",
    members = {
        DomainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SpaceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        SpaceSettings = M.SpaceSettings,
        OwnershipSettings = M.OwnershipSettings,
        SpaceSharingSettings = M.SpaceSharingSettings,
        SpaceDisplayName = {
            type = "string",
        },
    },
}

M.CreateSpaceOutput = {
    type = "structure",
    id = "CreateSpaceOutput",
    members = {
        SpaceArn = {
            type = "string",
        },
    },
}

M.StudioLifecycleConfigAppType = {
    JupyterServer = "JupyterServer",
    KernelGateway = "KernelGateway",
    CodeEditor = "CodeEditor",
    JupyterLab = "JupyterLab",
}

M.CreateStudioLifecycleConfigInput = {
    type = "structure",
    id = "CreateStudioLifecycleConfigInput",
    members = {
        StudioLifecycleConfigName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StudioLifecycleConfigContent = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StudioLifecycleConfigAppType = {
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

M.CreateStudioLifecycleConfigOutput = {
    type = "structure",
    id = "CreateStudioLifecycleConfigOutput",
    members = {
        StudioLifecycleConfigArn = {
            type = "string",
        },
    },
}

M.DebugHookConfig = {
    type = "structure",
    id = "DebugHookConfig",
    members = {
        LocalPath = {
            type = "string",
        },
        S3OutputPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HookParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        CollectionConfigurations = {
            type = "list",
            member = M.CollectionConfiguration,
        },
    },
}

M.DebugRuleConfiguration = {
    type = "structure",
    id = "DebugRuleConfiguration",
    members = {
        RuleConfigurationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LocalPath = {
            type = "string",
        },
        S3OutputPath = {
            type = "string",
        },
        RuleEvaluatorImage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstanceType = {
            type = "string",
        },
        VolumeSizeInGB = {
            type = "integer",
        },
        RuleParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.InfraCheckConfig = {
    type = "structure",
    id = "InfraCheckConfig",
    members = {
        EnableInfraCheck = {
            type = "boolean",
        },
    },
}

M.MlflowConfig = {
    type = "structure",
    id = "MlflowConfig",
    members = {
        MlflowResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MlflowExperimentName = {
            type = "string",
        },
        MlflowRunName = {
            type = "string",
        },
    },
}

M.ModelPackageConfig = {
    type = "structure",
    id = "ModelPackageConfig",
    members = {
        ModelPackageGroupArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceModelPackageArn = {
            type = "string",
        },
    },
}

M.ProfilerConfig = {
    type = "structure",
    id = "ProfilerConfig",
    members = {
        S3OutputPath = {
            type = "string",
        },
        ProfilingIntervalInMilliseconds = {
            type = "long",
        },
        ProfilingParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        DisableProfiler = {
            type = "boolean",
        },
    },
}

M.ProfilerRuleConfiguration = {
    type = "structure",
    id = "ProfilerRuleConfiguration",
    members = {
        RuleConfigurationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LocalPath = {
            type = "string",
        },
        S3OutputPath = {
            type = "string",
        },
        RuleEvaluatorImage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstanceType = {
            type = "string",
        },
        VolumeSizeInGB = {
            type = "integer",
        },
        RuleParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.RemoteDebugConfig = {
    type = "structure",
    id = "RemoteDebugConfig",
    members = {
        EnableRemoteDebug = {
            type = "boolean",
        },
    },
}

M.CustomizationTechnique = {
    SFT = "SFT",
    DPO = "DPO",
    RLVR = "RLVR",
    RLAIF = "RLAIF",
}

M.EvaluationType = {
    LLMAJ_EVALUATION = "LLMAJEvaluation",
    CUSTOM_SCORER_EVALUATION = "CustomScorerEvaluation",
    BENCHMARK_EVALUATION = "BenchmarkEvaluation",
}

M.ServerlessJobType = {
    FINE_TUNING = "FineTuning",
    EVALUATION = "Evaluation",
}

M.Peft = {
    LORA = "LORA",
}

M.ServerlessJobConfig = {
    type = "structure",
    id = "ServerlessJobConfig",
    members = {
        BaseModelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AcceptEula = {
            type = "boolean",
        },
        JobType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CustomizationTechnique = {
            type = "string",
        },
        Peft = {
            type = "string",
        },
        EvaluationType = {
            type = "string",
        },
        EvaluatorArn = {
            type = "string",
        },
    },
}

M.SessionChainingConfig = {
    type = "structure",
    id = "SessionChainingConfig",
    members = {
        EnableSessionTagChaining = {
            type = "boolean",
        },
    },
}

M.TensorBoardOutputConfig = {
    type = "structure",
    id = "TensorBoardOutputConfig",
    members = {
        LocalPath = {
            type = "string",
        },
        S3OutputPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateTrainingJobInput = {
    type = "structure",
    id = "CreateTrainingJobInput",
    members = {
        TrainingJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HyperParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        AlgorithmSpecification = M.AlgorithmSpecification,
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InputDataConfig = {
            type = "list",
            member = M.Channel,
        },
        OutputDataConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OutputDataConfig }),
        ResourceConfig = M.ResourceConfig,
        VpcConfig = M.VpcConfig,
        StoppingCondition = M.StoppingCondition,
        Tags = {
            type = "list",
            member = M.Tag,
        },
        EnableNetworkIsolation = {
            type = "boolean",
        },
        EnableInterContainerTrafficEncryption = {
            type = "boolean",
        },
        EnableManagedSpotTraining = {
            type = "boolean",
        },
        CheckpointConfig = M.CheckpointConfig,
        DebugHookConfig = M.DebugHookConfig,
        DebugRuleConfigurations = {
            type = "list",
            member = M.DebugRuleConfiguration,
        },
        TensorBoardOutputConfig = M.TensorBoardOutputConfig,
        ExperimentConfig = M.ExperimentConfig,
        ProfilerConfig = M.ProfilerConfig,
        ProfilerRuleConfigurations = {
            type = "list",
            member = M.ProfilerRuleConfiguration,
        },
        Environment = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        RetryStrategy = M.RetryStrategy,
        RemoteDebugConfig = M.RemoteDebugConfig,
        InfraCheckConfig = M.InfraCheckConfig,
        SessionChainingConfig = M.SessionChainingConfig,
        ServerlessJobConfig = M.ServerlessJobConfig,
        MlflowConfig = M.MlflowConfig,
        ModelPackageConfig = M.ModelPackageConfig,
    },
}

M.CreateTrainingJobOutput = {
    type = "structure",
    id = "CreateTrainingJobOutput",
    members = {
        TrainingJobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateTrainingPlanInput = {
    type = "structure",
    id = "CreateTrainingPlanInput",
    members = {
        TrainingPlanName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TrainingPlanOfferingId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SpareInstanceCountPerUltraServer = {
            type = "integer",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateTrainingPlanOutput = {
    type = "structure",
    id = "CreateTrainingPlanOutput",
    members = {
        TrainingPlanArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.JoinSource = {
    INPUT = "Input",
    NONE = "None",
}

M.DataProcessing = {
    type = "structure",
    id = "DataProcessing",
    members = {
        InputFilter = {
            type = "string",
        },
        OutputFilter = {
            type = "string",
        },
        JoinSource = {
            type = "string",
        },
    },
}

M.ModelClientConfig = {
    type = "structure",
    id = "ModelClientConfig",
    members = {
        InvocationsTimeoutInSeconds = {
            type = "integer",
        },
        InvocationsMaxRetries = {
            type = "integer",
        },
    },
}

M.CreateTransformJobInput = {
    type = "structure",
    id = "CreateTransformJobInput",
    members = {
        TransformJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ModelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxConcurrentTransforms = {
            type = "integer",
        },
        ModelClientConfig = M.ModelClientConfig,
        MaxPayloadInMB = {
            type = "integer",
        },
        BatchStrategy = {
            type = "string",
        },
        Environment = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        TransformInput = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TransformInput }),
        TransformOutput = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TransformOutput }),
        DataCaptureConfig = M.BatchDataCaptureConfig,
        TransformResources = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TransformResources }),
        DataProcessing = M.DataProcessing,
        Tags = {
            type = "list",
            member = M.Tag,
        },
        ExperimentConfig = M.ExperimentConfig,
    },
}

M.CreateTransformJobOutput = {
    type = "structure",
    id = "CreateTransformJobOutput",
    members = {
        TransformJobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateTrialInput = {
    type = "structure",
    id = "CreateTrialInput",
    members = {
        TrialName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DisplayName = {
            type = "string",
        },
        ExperimentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MetadataProperties = M.MetadataProperties,
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateTrialOutput = {
    type = "structure",
    id = "CreateTrialOutput",
    members = {
        TrialArn = {
            type = "string",
        },
    },
}

M.TrialComponentArtifact = {
    type = "structure",
    id = "TrialComponentArtifact",
    members = {
        MediaType = {
            type = "string",
        },
        Value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TrialComponentParameterValue = {
    type = "union",
    id = "TrialComponentParameterValue",
    members = {
        StringValue = {
            type = "string",
        },
        NumberValue = {
            type = "double",
        },
    },
}

M.TrialComponentPrimaryStatus = {
    IN_PROGRESS = "InProgress",
    COMPLETED = "Completed",
    FAILED = "Failed",
    STOPPING = "Stopping",
    STOPPED = "Stopped",
}

M.TrialComponentStatus = {
    type = "structure",
    id = "TrialComponentStatus",
    members = {
        PrimaryStatus = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.CreateTrialComponentInput = {
    type = "structure",
    id = "CreateTrialComponentInput",
    members = {
        TrialComponentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DisplayName = {
            type = "string",
        },
        Status = M.TrialComponentStatus,
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        Parameters = {
            type = "map",
            key = { type = "string" },
            value = M.TrialComponentParameterValue,
        },
        InputArtifacts = {
            type = "map",
            key = { type = "string" },
            value = M.TrialComponentArtifact,
        },
        OutputArtifacts = {
            type = "map",
            key = { type = "string" },
            value = M.TrialComponentArtifact,
        },
        MetadataProperties = M.MetadataProperties,
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateTrialComponentOutput = {
    type = "structure",
    id = "CreateTrialComponentOutput",
    members = {
        TrialComponentArn = {
            type = "string",
        },
    },
}

M.CreateUserProfileInput = {
    type = "structure",
    id = "CreateUserProfileInput",
    members = {
        DomainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserProfileName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SingleSignOnUserIdentifier = {
            type = "string",
        },
        SingleSignOnUserValue = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        UserSettings = M.UserSettings,
    },
}

M.CreateUserProfileOutput = {
    type = "structure",
    id = "CreateUserProfileOutput",
    members = {
        UserProfileArn = {
            type = "string",
        },
    },
}

M.WorkforceIpAddressType = {
    ipv4 = "ipv4",
    dualstack = "dualstack",
}

M.OidcConfig = {
    type = "structure",
    id = "OidcConfig",
    members = {
        ClientId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientSecret = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Issuer = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AuthorizationEndpoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TokenEndpoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserInfoEndpoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LogoutEndpoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
        JwksUri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Scope = {
            type = "string",
        },
        AuthenticationRequestExtraParams = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.SourceIpConfig = {
    type = "structure",
    id = "SourceIpConfig",
    members = {
        Cidrs = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.WorkforceVpcConfigRequest = {
    type = "structure",
    id = "WorkforceVpcConfigRequest",
    members = {
        VpcId = {
            type = "string",
        },
        SecurityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        Subnets = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CreateWorkforceInput = {
    type = "structure",
    id = "CreateWorkforceInput",
    members = {
        CognitoConfig = M.CognitoConfig,
        OidcConfig = M.OidcConfig,
        SourceIpConfig = M.SourceIpConfig,
        WorkforceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        WorkforceVpcConfig = M.WorkforceVpcConfigRequest,
        IpAddressType = {
            type = "string",
        },
    },
}

M.CreateWorkforceOutput = {
    type = "structure",
    id = "CreateWorkforceOutput",
    members = {
        WorkforceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.OidcMemberDefinition = {
    type = "structure",
    id = "OidcMemberDefinition",
    members = {
        Groups = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.MemberDefinition = {
    type = "structure",
    id = "MemberDefinition",
    members = {
        CognitoMemberDefinition = M.CognitoMemberDefinition,
        OidcMemberDefinition = M.OidcMemberDefinition,
    },
}

M.NotificationConfiguration = {
    type = "structure",
    id = "NotificationConfiguration",
    members = {
        NotificationTopicArn = {
            type = "string",
        },
    },
}

M.EnabledOrDisabled = {
    Enabled = "Enabled",
    Disabled = "Disabled",
}

M.IamPolicyConstraints = {
    type = "structure",
    id = "IamPolicyConstraints",
    members = {
        SourceIp = {
            type = "string",
        },
        VpcSourceIp = {
            type = "string",
        },
    },
}

M.S3Presign = {
    type = "structure",
    id = "S3Presign",
    members = {
        IamPolicyConstraints = M.IamPolicyConstraints,
    },
}

M.WorkerAccessConfiguration = {
    type = "structure",
    id = "WorkerAccessConfiguration",
    members = {
        S3Presign = M.S3Presign,
    },
}

M.CreateWorkteamInput = {
    type = "structure",
    id = "CreateWorkteamInput",
    members = {
        WorkteamName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WorkforceName = {
            type = "string",
        },
        MemberDefinitions = {
            type = "list",
            member = M.MemberDefinition,
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NotificationConfiguration = M.NotificationConfiguration,
        WorkerAccessConfiguration = M.WorkerAccessConfiguration,
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateWorkteamOutput = {
    type = "structure",
    id = "CreateWorkteamOutput",
    members = {
        WorkteamArn = {
            type = "string",
        },
    },
}

M.CrossAccountFilterOption = {
    SAME_ACCOUNT = "SameAccount",
    CROSS_ACCOUNT = "CrossAccount",
}

M.Statistic = {
    AVERAGE = "Average",
    MINIMUM = "Minimum",
    MAXIMUM = "Maximum",
    SAMPLE_COUNT = "SampleCount",
    SUM = "Sum",
}

M.CustomizedMetricSpecification = {
    type = "structure",
    id = "CustomizedMetricSpecification",
    members = {
        MetricName = {
            type = "string",
        },
        Namespace = {
            type = "string",
        },
        Statistic = {
            type = "string",
        },
    },
}

M.DataCaptureConfigSummary = {
    type = "structure",
    id = "DataCaptureConfigSummary",
    members = {
        EnableCapture = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        CaptureStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CurrentSamplingPercentage = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        DestinationS3Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KmsKeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RuleEvaluationStatus = {
    IN_PROGRESS = "InProgress",
    NO_ISSUES_FOUND = "NoIssuesFound",
    ISSUES_FOUND = "IssuesFound",
    ERROR = "Error",
    STOPPING = "Stopping",
    STOPPED = "Stopped",
}

M.DebugRuleEvaluationStatus = {
    type = "structure",
    id = "DebugRuleEvaluationStatus",
    members = {
        RuleConfigurationName = {
            type = "string",
        },
        RuleEvaluationJobArn = {
            type = "string",
        },
        RuleEvaluationStatus = {
            type = "string",
        },
        StatusDetails = {
            type = "string",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
    },
}

M.InstanceGroupHealthCheckConfiguration = {
    type = "structure",
    id = "InstanceGroupHealthCheckConfiguration",
    members = {
        InstanceGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstanceIds = {
            type = "list",
            member = { type = "string" },
        },
        DeepHealthChecks = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteActionInput = {
    type = "structure",
    id = "DeleteActionInput",
    members = {
        ActionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteActionOutput = {
    type = "structure",
    id = "DeleteActionOutput",
    members = {
        ActionArn = {
            type = "string",
        },
    },
}

M.DeleteAIBenchmarkJobInput = {
    type = "structure",
    id = "DeleteAIBenchmarkJobInput",
    members = {
        AIBenchmarkJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteAIBenchmarkJobOutput = {
    type = "structure",
    id = "DeleteAIBenchmarkJobOutput",
    members = {
        AIBenchmarkJobArn = {
            type = "string",
        },
    },
}

M.DeleteAIRecommendationJobInput = {
    type = "structure",
    id = "DeleteAIRecommendationJobInput",
    members = {
        AIRecommendationJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteAIRecommendationJobOutput = {
    type = "structure",
    id = "DeleteAIRecommendationJobOutput",
    members = {
        AIRecommendationJobArn = {
            type = "string",
        },
    },
}

M.DeleteAIWorkloadConfigInput = {
    type = "structure",
    id = "DeleteAIWorkloadConfigInput",
    members = {
        AIWorkloadConfigName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteAIWorkloadConfigOutput = {
    type = "structure",
    id = "DeleteAIWorkloadConfigOutput",
    members = {
        AIWorkloadConfigArn = {
            type = "string",
        },
    },
}

M.DeleteAlgorithmInput = {
    type = "structure",
    id = "DeleteAlgorithmInput",
    members = {
        AlgorithmName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteAlgorithmOutput = {
    type = "structure",
    id = "DeleteAlgorithmOutput",
}

M.DeleteAppInput = {
    type = "structure",
    id = "DeleteAppInput",
    members = {
        DomainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserProfileName = {
            type = "string",
        },
        SpaceName = {
            type = "string",
        },
        AppType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AppName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteAppOutput = {
    type = "structure",
    id = "DeleteAppOutput",
}

M.DeleteAppImageConfigInput = {
    type = "structure",
    id = "DeleteAppImageConfigInput",
    members = {
        AppImageConfigName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteAppImageConfigOutput = {
    type = "structure",
    id = "DeleteAppImageConfigOutput",
}

M.DeleteArtifactInput = {
    type = "structure",
    id = "DeleteArtifactInput",
    members = {
        ArtifactArn = {
            type = "string",
        },
        Source = M.ArtifactSource,
    },
}

M.DeleteArtifactOutput = {
    type = "structure",
    id = "DeleteArtifactOutput",
    members = {
        ArtifactArn = {
            type = "string",
        },
    },
}

M.DeleteAssociationInput = {
    type = "structure",
    id = "DeleteAssociationInput",
    members = {
        SourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DestinationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteAssociationOutput = {
    type = "structure",
    id = "DeleteAssociationOutput",
    members = {
        SourceArn = {
            type = "string",
        },
        DestinationArn = {
            type = "string",
        },
    },
}

M.DeleteClusterInput = {
    type = "structure",
    id = "DeleteClusterInput",
    members = {
        ClusterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteClusterOutput = {
    type = "structure",
    id = "DeleteClusterOutput",
    members = {
        ClusterArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteClusterSchedulerConfigInput = {
    type = "structure",
    id = "DeleteClusterSchedulerConfigInput",
    members = {
        ClusterSchedulerConfigId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteClusterSchedulerConfigOutput = {
    type = "structure",
    id = "DeleteClusterSchedulerConfigOutput",
}

M.DeleteCodeRepositoryInput = {
    type = "structure",
    id = "DeleteCodeRepositoryInput",
    members = {
        CodeRepositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteCodeRepositoryOutput = {
    type = "structure",
    id = "DeleteCodeRepositoryOutput",
}

M.DeleteCompilationJobInput = {
    type = "structure",
    id = "DeleteCompilationJobInput",
    members = {
        CompilationJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteCompilationJobOutput = {
    type = "structure",
    id = "DeleteCompilationJobOutput",
}

M.DeleteComputeQuotaInput = {
    type = "structure",
    id = "DeleteComputeQuotaInput",
    members = {
        ComputeQuotaId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteComputeQuotaOutput = {
    type = "structure",
    id = "DeleteComputeQuotaOutput",
}

M.DeleteContextInput = {
    type = "structure",
    id = "DeleteContextInput",
    members = {
        ContextName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteContextOutput = {
    type = "structure",
    id = "DeleteContextOutput",
    members = {
        ContextArn = {
            type = "string",
        },
    },
}

M.DeleteDataQualityJobDefinitionInput = {
    type = "structure",
    id = "DeleteDataQualityJobDefinitionInput",
    members = {
        JobDefinitionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteDataQualityJobDefinitionOutput = {
    type = "structure",
    id = "DeleteDataQualityJobDefinitionOutput",
}

M.DeleteDeviceFleetInput = {
    type = "structure",
    id = "DeleteDeviceFleetInput",
    members = {
        DeviceFleetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteDeviceFleetOutput = {
    type = "structure",
    id = "DeleteDeviceFleetOutput",
}

M.RetentionType = {
    Retain = "Retain",
    Delete = "Delete",
}

M.RetentionPolicy = {
    type = "structure",
    id = "RetentionPolicy",
    members = {
        HomeEfsFileSystem = {
            type = "string",
        },
    },
}

M.DeleteDomainInput = {
    type = "structure",
    id = "DeleteDomainInput",
    members = {
        DomainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RetentionPolicy = M.RetentionPolicy,
    },
}

M.DeleteDomainOutput = {
    type = "structure",
    id = "DeleteDomainOutput",
}

M.DeleteEdgeDeploymentPlanInput = {
    type = "structure",
    id = "DeleteEdgeDeploymentPlanInput",
    members = {
        EdgeDeploymentPlanName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteEdgeDeploymentPlanOutput = {
    type = "structure",
    id = "DeleteEdgeDeploymentPlanOutput",
}

M.DeleteEdgeDeploymentStageInput = {
    type = "structure",
    id = "DeleteEdgeDeploymentStageInput",
    members = {
        EdgeDeploymentPlanName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StageName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteEdgeDeploymentStageOutput = {
    type = "structure",
    id = "DeleteEdgeDeploymentStageOutput",
}

M.DeleteEndpointInput = {
    type = "structure",
    id = "DeleteEndpointInput",
    members = {
        EndpointName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteEndpointOutput = {
    type = "structure",
    id = "DeleteEndpointOutput",
}

M.DeleteEndpointConfigInput = {
    type = "structure",
    id = "DeleteEndpointConfigInput",
    members = {
        EndpointConfigName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteEndpointConfigOutput = {
    type = "structure",
    id = "DeleteEndpointConfigOutput",
}

M.DeleteExperimentInput = {
    type = "structure",
    id = "DeleteExperimentInput",
    members = {
        ExperimentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteExperimentOutput = {
    type = "structure",
    id = "DeleteExperimentOutput",
    members = {
        ExperimentArn = {
            type = "string",
        },
    },
}

M.DeleteFeatureGroupInput = {
    type = "structure",
    id = "DeleteFeatureGroupInput",
    members = {
        FeatureGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteFeatureGroupOutput = {
    type = "structure",
    id = "DeleteFeatureGroupOutput",
}

M.DeleteFlowDefinitionInput = {
    type = "structure",
    id = "DeleteFlowDefinitionInput",
    members = {
        FlowDefinitionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteFlowDefinitionOutput = {
    type = "structure",
    id = "DeleteFlowDefinitionOutput",
}

M.DeleteHubInput = {
    type = "structure",
    id = "DeleteHubInput",
    members = {
        HubName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteHubOutput = {
    type = "structure",
    id = "DeleteHubOutput",
}

M.DeleteHubContentInput = {
    type = "structure",
    id = "DeleteHubContentInput",
    members = {
        HubName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HubContentType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HubContentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HubContentVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteHubContentOutput = {
    type = "structure",
    id = "DeleteHubContentOutput",
}

M.DeleteHubContentReferenceInput = {
    type = "structure",
    id = "DeleteHubContentReferenceInput",
    members = {
        HubName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HubContentType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HubContentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteHubContentReferenceOutput = {
    type = "structure",
    id = "DeleteHubContentReferenceOutput",
}

M.DeleteHumanTaskUiInput = {
    type = "structure",
    id = "DeleteHumanTaskUiInput",
    members = {
        HumanTaskUiName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteHumanTaskUiOutput = {
    type = "structure",
    id = "DeleteHumanTaskUiOutput",
}

M.DeleteHyperParameterTuningJobInput = {
    type = "structure",
    id = "DeleteHyperParameterTuningJobInput",
    members = {
        HyperParameterTuningJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteHyperParameterTuningJobOutput = {
    type = "structure",
    id = "DeleteHyperParameterTuningJobOutput",
}

M.DeleteImageInput = {
    type = "structure",
    id = "DeleteImageInput",
    members = {
        ImageName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteImageOutput = {
    type = "structure",
    id = "DeleteImageOutput",
}

M.DeleteImageVersionInput = {
    type = "structure",
    id = "DeleteImageVersionInput",
    members = {
        ImageName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Version = {
            type = "integer",
        },
        Alias = {
            type = "string",
        },
    },
}

M.DeleteImageVersionOutput = {
    type = "structure",
    id = "DeleteImageVersionOutput",
}

M.DeleteInferenceComponentInput = {
    type = "structure",
    id = "DeleteInferenceComponentInput",
    members = {
        InferenceComponentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteInferenceComponentOutput = {
    type = "structure",
    id = "DeleteInferenceComponentOutput",
}

M.DeleteInferenceExperimentInput = {
    type = "structure",
    id = "DeleteInferenceExperimentInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteInferenceExperimentOutput = {
    type = "structure",
    id = "DeleteInferenceExperimentOutput",
    members = {
        InferenceExperimentArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteMlflowAppInput = {
    type = "structure",
    id = "DeleteMlflowAppInput",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteMlflowAppOutput = {
    type = "structure",
    id = "DeleteMlflowAppOutput",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.DeleteMlflowTrackingServerInput = {
    type = "structure",
    id = "DeleteMlflowTrackingServerInput",
    members = {
        TrackingServerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteMlflowTrackingServerOutput = {
    type = "structure",
    id = "DeleteMlflowTrackingServerOutput",
    members = {
        TrackingServerArn = {
            type = "string",
        },
    },
}

M.DeleteModelInput = {
    type = "structure",
    id = "DeleteModelInput",
    members = {
        ModelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteModelOutput = {
    type = "structure",
    id = "DeleteModelOutput",
}

M.DeleteModelBiasJobDefinitionInput = {
    type = "structure",
    id = "DeleteModelBiasJobDefinitionInput",
    members = {
        JobDefinitionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteModelBiasJobDefinitionOutput = {
    type = "structure",
    id = "DeleteModelBiasJobDefinitionOutput",
}

M.DeleteModelCardInput = {
    type = "structure",
    id = "DeleteModelCardInput",
    members = {
        ModelCardName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteModelCardOutput = {
    type = "structure",
    id = "DeleteModelCardOutput",
}

M.DeleteModelExplainabilityJobDefinitionInput = {
    type = "structure",
    id = "DeleteModelExplainabilityJobDefinitionInput",
    members = {
        JobDefinitionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteModelExplainabilityJobDefinitionOutput = {
    type = "structure",
    id = "DeleteModelExplainabilityJobDefinitionOutput",
}

M.DeleteModelPackageInput = {
    type = "structure",
    id = "DeleteModelPackageInput",
    members = {
        ModelPackageName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteModelPackageOutput = {
    type = "structure",
    id = "DeleteModelPackageOutput",
}

M.DeleteModelPackageGroupInput = {
    type = "structure",
    id = "DeleteModelPackageGroupInput",
    members = {
        ModelPackageGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteModelPackageGroupOutput = {
    type = "structure",
    id = "DeleteModelPackageGroupOutput",
}

M.DeleteModelPackageGroupPolicyInput = {
    type = "structure",
    id = "DeleteModelPackageGroupPolicyInput",
    members = {
        ModelPackageGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteModelPackageGroupPolicyOutput = {
    type = "structure",
    id = "DeleteModelPackageGroupPolicyOutput",
}

M.DeleteModelQualityJobDefinitionInput = {
    type = "structure",
    id = "DeleteModelQualityJobDefinitionInput",
    members = {
        JobDefinitionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteModelQualityJobDefinitionOutput = {
    type = "structure",
    id = "DeleteModelQualityJobDefinitionOutput",
}

M.DeleteMonitoringScheduleInput = {
    type = "structure",
    id = "DeleteMonitoringScheduleInput",
    members = {
        MonitoringScheduleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteMonitoringScheduleOutput = {
    type = "structure",
    id = "DeleteMonitoringScheduleOutput",
}

M.DeleteNotebookInstanceInput = {
    type = "structure",
    id = "DeleteNotebookInstanceInput",
    members = {
        NotebookInstanceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteNotebookInstanceOutput = {
    type = "structure",
    id = "DeleteNotebookInstanceOutput",
}

M.DeleteNotebookInstanceLifecycleConfigInput = {
    type = "structure",
    id = "DeleteNotebookInstanceLifecycleConfigInput",
    members = {
        NotebookInstanceLifecycleConfigName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteNotebookInstanceLifecycleConfigOutput = {
    type = "structure",
    id = "DeleteNotebookInstanceLifecycleConfigOutput",
}

M.DeleteOptimizationJobInput = {
    type = "structure",
    id = "DeleteOptimizationJobInput",
    members = {
        OptimizationJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteOptimizationJobOutput = {
    type = "structure",
    id = "DeleteOptimizationJobOutput",
}

M.DeletePartnerAppInput = {
    type = "structure",
    id = "DeletePartnerAppInput",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.DeletePartnerAppOutput = {
    type = "structure",
    id = "DeletePartnerAppOutput",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.DeletePipelineInput = {
    type = "structure",
    id = "DeletePipelineInput",
    members = {
        PipelineName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
    },
}

M.DeletePipelineOutput = {
    type = "structure",
    id = "DeletePipelineOutput",
    members = {
        PipelineArn = {
            type = "string",
        },
    },
}

M.DeleteProcessingJobInput = {
    type = "structure",
    id = "DeleteProcessingJobInput",
    members = {
        ProcessingJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteProcessingJobOutput = {
    type = "structure",
    id = "DeleteProcessingJobOutput",
}

M.DeleteProjectInput = {
    type = "structure",
    id = "DeleteProjectInput",
    members = {
        ProjectName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteProjectOutput = {
    type = "structure",
    id = "DeleteProjectOutput",
}

M.DeleteSpaceInput = {
    type = "structure",
    id = "DeleteSpaceInput",
    members = {
        DomainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SpaceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteSpaceOutput = {
    type = "structure",
    id = "DeleteSpaceOutput",
}

M.DeleteStudioLifecycleConfigInput = {
    type = "structure",
    id = "DeleteStudioLifecycleConfigInput",
    members = {
        StudioLifecycleConfigName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteStudioLifecycleConfigOutput = {
    type = "structure",
    id = "DeleteStudioLifecycleConfigOutput",
}

M.DeleteTagsInput = {
    type = "structure",
    id = "DeleteTagsInput",
    members = {
        ResourceArn = {
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

M.DeleteTagsOutput = {
    type = "structure",
    id = "DeleteTagsOutput",
}

M.DeleteTrainingJobInput = {
    type = "structure",
    id = "DeleteTrainingJobInput",
    members = {
        TrainingJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteTrainingJobOutput = {
    type = "structure",
    id = "DeleteTrainingJobOutput",
}

M.DeleteTrialInput = {
    type = "structure",
    id = "DeleteTrialInput",
    members = {
        TrialName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteTrialOutput = {
    type = "structure",
    id = "DeleteTrialOutput",
    members = {
        TrialArn = {
            type = "string",
        },
    },
}

M.DeleteTrialComponentInput = {
    type = "structure",
    id = "DeleteTrialComponentInput",
    members = {
        TrialComponentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteTrialComponentOutput = {
    type = "structure",
    id = "DeleteTrialComponentOutput",
    members = {
        TrialComponentArn = {
            type = "string",
        },
    },
}

M.DeleteUserProfileInput = {
    type = "structure",
    id = "DeleteUserProfileInput",
    members = {
        DomainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserProfileName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteUserProfileOutput = {
    type = "structure",
    id = "DeleteUserProfileOutput",
}

M.DeleteWorkforceInput = {
    type = "structure",
    id = "DeleteWorkforceInput",
    members = {
        WorkforceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteWorkforceOutput = {
    type = "structure",
    id = "DeleteWorkforceOutput",
}

M.DeleteWorkteamInput = {
    type = "structure",
    id = "DeleteWorkteamInput",
    members = {
        WorkteamName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteWorkteamOutput = {
    type = "structure",
    id = "DeleteWorkteamOutput",
    members = {
        Success = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.DeployedImage = {
    type = "structure",
    id = "DeployedImage",
    members = {
        SpecifiedImage = {
            type = "string",
        },
        ResolvedImage = {
            type = "string",
        },
        ResolutionTime = {
            type = "timestamp",
        },
    },
}

M.RealTimeInferenceRecommendation = {
    type = "structure",
    id = "RealTimeInferenceRecommendation",
    members = {
        RecommendationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstanceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Environment = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.RecommendationStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
    NOT_APPLICABLE = "NOT_APPLICABLE",
}

M.DeploymentRecommendation = {
    type = "structure",
    id = "DeploymentRecommendation",
    members = {
        RecommendationStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RealTimeInferenceRecommendations = {
            type = "list",
            member = M.RealTimeInferenceRecommendation,
        },
    },
}

M.StageStatus = {
    Creating = "CREATING",
    ReadyToDeploy = "READYTODEPLOY",
    Starting = "STARTING",
    InProgress = "INPROGRESS",
    Deployed = "DEPLOYED",
    Failed = "FAILED",
    Stopping = "STOPPING",
    Stopped = "STOPPED",
}

M.EdgeDeploymentStatus = {
    type = "structure",
    id = "EdgeDeploymentStatus",
    members = {
        StageStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EdgeDeploymentSuccessInStage = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        EdgeDeploymentPendingInStage = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        EdgeDeploymentFailedInStage = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        EdgeDeploymentStatusMessage = {
            type = "string",
        },
        EdgeDeploymentStageStartTime = {
            type = "timestamp",
        },
    },
}

M.DeploymentStageStatusSummary = {
    type = "structure",
    id = "DeploymentStageStatusSummary",
    members = {
        StageName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeviceSelectionConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DeviceSelectionConfig }),
        DeploymentConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EdgeDeploymentConfig }),
        DeploymentStatus = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EdgeDeploymentStatus }),
    },
}

M.DeregisterDevicesInput = {
    type = "structure",
    id = "DeregisterDevicesInput",
    members = {
        DeviceFleetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeviceNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DeregisterDevicesOutput = {
    type = "structure",
    id = "DeregisterDevicesOutput",
}

M.DerivedInformation = {
    type = "structure",
    id = "DerivedInformation",
    members = {
        DerivedDataInputConfig = {
            type = "string",
        },
    },
}

M.DescribeActionInput = {
    type = "structure",
    id = "DescribeActionInput",
    members = {
        ActionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeActionOutput = {
    type = "structure",
    id = "DescribeActionOutput",
    members = {
        ActionName = {
            type = "string",
        },
        ActionArn = {
            type = "string",
        },
        Source = M.ActionSource,
        ActionType = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Properties = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        CreationTime = {
            type = "timestamp",
        },
        CreatedBy = M.UserContext,
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedBy = M.UserContext,
        MetadataProperties = M.MetadataProperties,
        LineageGroupArn = {
            type = "string",
        },
    },
}

M.DescribeAIBenchmarkJobInput = {
    type = "structure",
    id = "DescribeAIBenchmarkJobInput",
    members = {
        AIBenchmarkJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeAIBenchmarkJobOutput = {
    type = "structure",
    id = "DescribeAIBenchmarkJobOutput",
    members = {
        AIBenchmarkJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AIBenchmarkJobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AIBenchmarkJobStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FailureReason = {
            type = "string",
        },
        BenchmarkTarget = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AIBenchmarkTarget }),
        OutputConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AIBenchmarkOutputResult }),
        AIWorkloadConfigIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NetworkConfig = M.AIBenchmarkNetworkConfig,
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.DescribeAIRecommendationJobInput = {
    type = "structure",
    id = "DescribeAIRecommendationJobInput",
    members = {
        AIRecommendationJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeAIRecommendationJobOutput = {
    type = "structure",
    id = "DescribeAIRecommendationJobOutput",
    members = {
        AIRecommendationJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AIRecommendationJobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AIRecommendationJobStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FailureReason = {
            type = "string",
        },
        ModelSource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AIModelSource }),
        OutputConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AIRecommendationOutputResult }),
        InferenceSpecification = M.AIRecommendationInferenceSpecification,
        AIWorkloadConfigIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OptimizeModel = {
            type = "boolean",
        },
        PerformanceTarget = M.AIRecommendationPerformanceTarget,
        Recommendations = {
            type = "list",
            member = M.AIRecommendation,
        },
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ComputeSpec = M.AIRecommendationComputeSpec,
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.DescribeAIWorkloadConfigInput = {
    type = "structure",
    id = "DescribeAIWorkloadConfigInput",
    members = {
        AIWorkloadConfigName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeAIWorkloadConfigOutput = {
    type = "structure",
    id = "DescribeAIWorkloadConfigOutput",
    members = {
        AIWorkloadConfigName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AIWorkloadConfigArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DatasetConfig = M.AIDatasetConfig,
        AIWorkloadConfigs = M.AIWorkloadConfigs,
        Tags = {
            type = "list",
            member = M.Tag,
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeAlgorithmInput = {
    type = "structure",
    id = "DescribeAlgorithmInput",
    members = {
        AlgorithmName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeAlgorithmOutput = {
    type = "structure",
    id = "DescribeAlgorithmOutput",
    members = {
        AlgorithmName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AlgorithmArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AlgorithmDescription = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        TrainingSpecification = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TrainingSpecification }),
        InferenceSpecification = M.InferenceSpecification,
        ValidationSpecification = M.AlgorithmValidationSpecification,
        AlgorithmStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AlgorithmStatusDetails = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AlgorithmStatusDetails }),
        ProductId = {
            type = "string",
        },
        CertifyForMarketplace = {
            type = "boolean",
        },
    },
}

M.DescribeAppInput = {
    type = "structure",
    id = "DescribeAppInput",
    members = {
        DomainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserProfileName = {
            type = "string",
        },
        SpaceName = {
            type = "string",
        },
        AppType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AppName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeAppOutput = {
    type = "structure",
    id = "DescribeAppOutput",
    members = {
        AppArn = {
            type = "string",
        },
        AppType = {
            type = "string",
        },
        AppName = {
            type = "string",
        },
        DomainId = {
            type = "string",
        },
        UserProfileName = {
            type = "string",
        },
        SpaceName = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        EffectiveTrustedIdentityPropagationStatus = {
            type = "string",
        },
        RecoveryMode = {
            type = "boolean",
        },
        LastHealthCheckTimestamp = {
            type = "timestamp",
        },
        LastUserActivityTimestamp = {
            type = "timestamp",
        },
        CreationTime = {
            type = "timestamp",
        },
        FailureReason = {
            type = "string",
        },
        ResourceSpec = M.ResourceSpec,
        BuiltInLifecycleConfigArn = {
            type = "string",
        },
    },
}

M.DescribeAppImageConfigInput = {
    type = "structure",
    id = "DescribeAppImageConfigInput",
    members = {
        AppImageConfigName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeAppImageConfigOutput = {
    type = "structure",
    id = "DescribeAppImageConfigOutput",
    members = {
        AppImageConfigArn = {
            type = "string",
        },
        AppImageConfigName = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        KernelGatewayImageConfig = M.KernelGatewayImageConfig,
        JupyterLabAppImageConfig = M.JupyterLabAppImageConfig,
        CodeEditorAppImageConfig = M.CodeEditorAppImageConfig,
    },
}

M.DescribeArtifactInput = {
    type = "structure",
    id = "DescribeArtifactInput",
    members = {
        ArtifactArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeArtifactOutput = {
    type = "structure",
    id = "DescribeArtifactOutput",
    members = {
        ArtifactName = {
            type = "string",
        },
        ArtifactArn = {
            type = "string",
        },
        Source = M.ArtifactSource,
        ArtifactType = {
            type = "string",
        },
        Properties = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        CreationTime = {
            type = "timestamp",
        },
        CreatedBy = M.UserContext,
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedBy = M.UserContext,
        MetadataProperties = M.MetadataProperties,
        LineageGroupArn = {
            type = "string",
        },
    },
}

M.DescribeAutoMLJobInput = {
    type = "structure",
    id = "DescribeAutoMLJobInput",
    members = {
        AutoMLJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ModelDeployResult = {
    type = "structure",
    id = "ModelDeployResult",
    members = {
        EndpointName = {
            type = "string",
        },
    },
}

M.ResolvedAttributes = {
    type = "structure",
    id = "ResolvedAttributes",
    members = {
        AutoMLJobObjective = M.AutoMLJobObjective,
        ProblemType = {
            type = "string",
        },
        CompletionCriteria = M.AutoMLJobCompletionCriteria,
    },
}

M.DescribeAutoMLJobOutput = {
    type = "structure",
    id = "DescribeAutoMLJobOutput",
    members = {
        AutoMLJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AutoMLJobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InputDataConfig = {
            type = "list",
            member = M.AutoMLChannel,
            traits = {
                required = true,
            },
        },
        OutputDataConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AutoMLOutputDataConfig }),
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AutoMLJobObjective = M.AutoMLJobObjective,
        ProblemType = {
            type = "string",
        },
        AutoMLJobConfig = M.AutoMLJobConfig,
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        EndTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        FailureReason = {
            type = "string",
        },
        PartialFailureReasons = {
            type = "list",
            member = M.AutoMLPartialFailureReason,
        },
        BestCandidate = M.AutoMLCandidate,
        AutoMLJobStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AutoMLJobSecondaryStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GenerateCandidateDefinitionsOnly = {
            type = "boolean",
        },
        AutoMLJobArtifacts = M.AutoMLJobArtifacts,
        ResolvedAttributes = M.ResolvedAttributes,
        ModelDeployConfig = M.ModelDeployConfig,
        ModelDeployResult = M.ModelDeployResult,
    },
}

M.DescribeAutoMLJobV2Input = {
    type = "structure",
    id = "DescribeAutoMLJobV2Input",
    members = {
        AutoMLJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeAutoMLJobV2Output = {
    type = "structure",
    id = "DescribeAutoMLJobV2Output",
    members = {
        AutoMLJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AutoMLJobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AutoMLJobInputDataConfig = {
            type = "list",
            member = M.AutoMLJobChannel,
            traits = {
                required = true,
            },
        },
        OutputDataConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AutoMLOutputDataConfig }),
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AutoMLJobObjective = M.AutoMLJobObjective,
        AutoMLProblemTypeConfig = M.AutoMLProblemTypeConfig,
        AutoMLProblemTypeConfigName = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        EndTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        FailureReason = {
            type = "string",
        },
        PartialFailureReasons = {
            type = "list",
            member = M.AutoMLPartialFailureReason,
        },
        BestCandidate = M.AutoMLCandidate,
        AutoMLJobStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AutoMLJobSecondaryStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AutoMLJobArtifacts = M.AutoMLJobArtifacts,
        ResolvedAttributes = M.AutoMLResolvedAttributes,
        ModelDeployConfig = M.ModelDeployConfig,
        ModelDeployResult = M.ModelDeployResult,
        DataSplitConfig = M.AutoMLDataSplitConfig,
        SecurityConfig = M.AutoMLSecurityConfig,
        AutoMLComputeConfig = M.AutoMLComputeConfig,
    },
}

M.DescribeClusterInput = {
    type = "structure",
    id = "DescribeClusterInput",
    members = {
        ClusterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeClusterOutput = {
    type = "structure",
    id = "DescribeClusterOutput",
    members = {
        ClusterArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClusterName = {
            type = "string",
        },
        ClusterStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationTime = {
            type = "timestamp",
        },
        FailureMessage = {
            type = "string",
        },
        InstanceGroups = {
            type = "list",
            member = M.ClusterInstanceGroupDetails,
            traits = {
                required = true,
            },
        },
        RestrictedInstanceGroups = {
            type = "list",
            member = M.ClusterRestrictedInstanceGroupDetails,
        },
        VpcConfig = M.VpcConfig,
        Orchestrator = M.ClusterOrchestrator,
        TieredStorageConfig = M.ClusterTieredStorageConfig,
        NodeRecovery = {
            type = "string",
        },
        NodeProvisioningMode = {
            type = "string",
        },
        ClusterRole = {
            type = "string",
        },
        AutoScaling = M.ClusterAutoScalingConfigOutput,
    },
}

M.DescribeClusterEventInput = {
    type = "structure",
    id = "DescribeClusterEventInput",
    members = {
        EventId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClusterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeClusterEventOutput = {
    type = "structure",
    id = "DescribeClusterEventOutput",
    members = {
        EventDetails = M.ClusterEventDetail,
    },
}

M.DescribeClusterNodeInput = {
    type = "structure",
    id = "DescribeClusterNodeInput",
    members = {
        ClusterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NodeId = {
            type = "string",
        },
        NodeLogicalId = {
            type = "string",
        },
    },
}

M.DescribeClusterNodeOutput = {
    type = "structure",
    id = "DescribeClusterNodeOutput",
    members = {
        NodeDetails = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ClusterNodeDetails }),
    },
}

M.DescribeClusterSchedulerConfigInput = {
    type = "structure",
    id = "DescribeClusterSchedulerConfigInput",
    members = {
        ClusterSchedulerConfigId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClusterSchedulerConfigVersion = {
            type = "integer",
        },
    },
}

M.SchedulerConfigComponent = {
    PRIORITY_CLASSES = "PriorityClasses",
    FAIR_SHARE = "FairShare",
    IDLE_RESOURCE_SHARING = "IdleResourceSharing",
}

M.DescribeClusterSchedulerConfigOutput = {
    type = "structure",
    id = "DescribeClusterSchedulerConfigOutput",
    members = {
        ClusterSchedulerConfigArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClusterSchedulerConfigId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClusterSchedulerConfigVersion = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FailureReason = {
            type = "string",
        },
        StatusDetails = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        ClusterArn = {
            type = "string",
        },
        SchedulerConfig = M.SchedulerConfig,
        Description = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        CreatedBy = M.UserContext,
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedBy = M.UserContext,
    },
}

M.DescribeCodeRepositoryInput = {
    type = "structure",
    id = "DescribeCodeRepositoryInput",
    members = {
        CodeRepositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeCodeRepositoryOutput = {
    type = "structure",
    id = "DescribeCodeRepositoryOutput",
    members = {
        CodeRepositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CodeRepositoryArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        GitConfig = M.GitConfig,
    },
}

M.DescribeCompilationJobInput = {
    type = "structure",
    id = "DescribeCompilationJobInput",
    members = {
        CompilationJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ModelArtifacts = {
    type = "structure",
    id = "ModelArtifacts",
    members = {
        S3ModelArtifacts = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ModelDigests = {
    type = "structure",
    id = "ModelDigests",
    members = {
        ArtifactDigest = {
            type = "string",
        },
    },
}

M.DescribeCompilationJobOutput = {
    type = "structure",
    id = "DescribeCompilationJobOutput",
    members = {
        CompilationJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CompilationJobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CompilationJobStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CompilationStartTime = {
            type = "timestamp",
        },
        CompilationEndTime = {
            type = "timestamp",
        },
        StoppingCondition = setmetatable({ traits = {
            required = true,
        } }, { __index = M.StoppingCondition }),
        InferenceImage = {
            type = "string",
        },
        ModelPackageVersionArn = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        FailureReason = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ModelArtifacts = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ModelArtifacts }),
        ModelDigests = M.ModelDigests,
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InputConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InputConfig }),
        OutputConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OutputConfig }),
        VpcConfig = M.NeoVpcConfig,
        DerivedInformation = M.DerivedInformation,
    },
}

M.DescribeComputeQuotaInput = {
    type = "structure",
    id = "DescribeComputeQuotaInput",
    members = {
        ComputeQuotaId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ComputeQuotaVersion = {
            type = "integer",
        },
    },
}

M.DescribeComputeQuotaOutput = {
    type = "structure",
    id = "DescribeComputeQuotaOutput",
    members = {
        ComputeQuotaArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ComputeQuotaId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        ComputeQuotaVersion = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FailureReason = {
            type = "string",
        },
        ClusterArn = {
            type = "string",
        },
        ComputeQuotaConfig = M.ComputeQuotaConfig,
        ComputeQuotaTarget = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ComputeQuotaTarget }),
        ActivationState = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        CreatedBy = M.UserContext,
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedBy = M.UserContext,
    },
}

M.DescribeContextInput = {
    type = "structure",
    id = "DescribeContextInput",
    members = {
        ContextName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeContextOutput = {
    type = "structure",
    id = "DescribeContextOutput",
    members = {
        ContextName = {
            type = "string",
        },
        ContextArn = {
            type = "string",
        },
        Source = M.ContextSource,
        ContextType = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Properties = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        CreationTime = {
            type = "timestamp",
        },
        CreatedBy = M.UserContext,
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedBy = M.UserContext,
        LineageGroupArn = {
            type = "string",
        },
    },
}

M.DescribeDataQualityJobDefinitionInput = {
    type = "structure",
    id = "DescribeDataQualityJobDefinitionInput",
    members = {
        JobDefinitionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeDataQualityJobDefinitionOutput = {
    type = "structure",
    id = "DescribeDataQualityJobDefinitionOutput",
    members = {
        JobDefinitionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        JobDefinitionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        DataQualityBaselineConfig = M.DataQualityBaselineConfig,
        DataQualityAppSpecification = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataQualityAppSpecification }),
        DataQualityJobInput = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataQualityJobInput }),
        DataQualityJobOutputConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MonitoringOutputConfig }),
        JobResources = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MonitoringResources }),
        NetworkConfig = M.MonitoringNetworkConfig,
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StoppingCondition = M.MonitoringStoppingCondition,
    },
}

M.DescribeDeviceInput = {
    type = "structure",
    id = "DescribeDeviceInput",
    members = {
        NextToken = {
            type = "string",
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
    },
}

M.EdgeModel = {
    type = "structure",
    id = "EdgeModel",
    members = {
        ModelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ModelVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LatestSampleTime = {
            type = "timestamp",
        },
        LatestInference = {
            type = "timestamp",
        },
    },
}

M.DescribeDeviceOutput = {
    type = "structure",
    id = "DescribeDeviceOutput",
    members = {
        DeviceArn = {
            type = "string",
        },
        DeviceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        DeviceFleetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IotThingName = {
            type = "string",
        },
        RegistrationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LatestHeartbeat = {
            type = "timestamp",
        },
        Models = {
            type = "list",
            member = M.EdgeModel,
        },
        MaxModels = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        AgentVersion = {
            type = "string",
        },
    },
}

M.DescribeDeviceFleetInput = {
    type = "structure",
    id = "DescribeDeviceFleetInput",
    members = {
        DeviceFleetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeDeviceFleetOutput = {
    type = "structure",
    id = "DescribeDeviceFleetOutput",
    members = {
        DeviceFleetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeviceFleetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OutputConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EdgeOutputConfig }),
        Description = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        RoleArn = {
            type = "string",
        },
        IotRoleAlias = {
            type = "string",
        },
    },
}

M.DescribeDomainInput = {
    type = "structure",
    id = "DescribeDomainInput",
    members = {
        DomainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DomainStatus = {
    Deleting = "Deleting",
    Failed = "Failed",
    InService = "InService",
    Pending = "Pending",
    Updating = "Updating",
    Update_Failed = "Update_Failed",
    Delete_Failed = "Delete_Failed",
}

M.DescribeDomainOutput = {
    type = "structure",
    id = "DescribeDomainOutput",
    members = {
        DomainArn = {
            type = "string",
        },
        DomainId = {
            type = "string",
        },
        DomainName = {
            type = "string",
        },
        HomeEfsFileSystemId = {
            type = "string",
        },
        SingleSignOnManagedApplicationInstanceId = {
            type = "string",
        },
        SingleSignOnApplicationArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        FailureReason = {
            type = "string",
        },
        SecurityGroupIdForDomainBoundary = {
            type = "string",
        },
        AuthMode = {
            type = "string",
        },
        DefaultUserSettings = M.UserSettings,
        DomainSettings = M.DomainSettings,
        AppNetworkAccessType = {
            type = "string",
        },
        HomeEfsFileSystemKmsKeyId = {
            type = "string",
        },
        SubnetIds = {
            type = "list",
            member = { type = "string" },
        },
        Url = {
            type = "string",
        },
        VpcId = {
            type = "string",
        },
        KmsKeyId = {
            type = "string",
        },
        AppSecurityGroupManagement = {
            type = "string",
        },
        TagPropagation = {
            type = "string",
        },
        DefaultSpaceSettings = M.DefaultSpaceSettings,
    },
}

M.DescribeEdgeDeploymentPlanInput = {
    type = "structure",
    id = "DescribeEdgeDeploymentPlanInput",
    members = {
        EdgeDeploymentPlanName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.DescribeEdgeDeploymentPlanOutput = {
    type = "structure",
    id = "DescribeEdgeDeploymentPlanOutput",
    members = {
        EdgeDeploymentPlanArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EdgeDeploymentPlanName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ModelConfigs = {
            type = "list",
            member = M.EdgeDeploymentModelConfig,
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
        EdgeDeploymentSuccess = {
            type = "integer",
        },
        EdgeDeploymentPending = {
            type = "integer",
        },
        EdgeDeploymentFailed = {
            type = "integer",
        },
        Stages = {
            type = "list",
            member = M.DeploymentStageStatusSummary,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
    },
}

M.DescribeEdgePackagingJobInput = {
    type = "structure",
    id = "DescribeEdgePackagingJobInput",
    members = {
        EdgePackagingJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EdgePackagingJobStatus = {
    Starting = "STARTING",
    InProgress = "INPROGRESS",
    Completed = "COMPLETED",
    Failed = "FAILED",
    Stopping = "STOPPING",
    Stopped = "STOPPED",
}

M.EdgePresetDeploymentStatus = {
    Completed = "COMPLETED",
    Failed = "FAILED",
}

M.EdgePresetDeploymentOutput = {
    type = "structure",
    id = "EdgePresetDeploymentOutput",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Artifact = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
    },
}

M.DescribeEdgePackagingJobOutput = {
    type = "structure",
    id = "DescribeEdgePackagingJobOutput",
    members = {
        EdgePackagingJobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EdgePackagingJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CompilationJobName = {
            type = "string",
        },
        ModelName = {
            type = "string",
        },
        ModelVersion = {
            type = "string",
        },
        RoleArn = {
            type = "string",
        },
        OutputConfig = M.EdgeOutputConfig,
        ResourceKey = {
            type = "string",
        },
        EdgePackagingJobStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EdgePackagingJobStatusMessage = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        ModelArtifact = {
            type = "string",
        },
        ModelSignature = {
            type = "string",
        },
        PresetDeploymentOutput = M.EdgePresetDeploymentOutput,
    },
}

M.DescribeEndpointInput = {
    type = "structure",
    id = "DescribeEndpointInput",
    members = {
        EndpointName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EndpointStatus = {
    OUT_OF_SERVICE = "OutOfService",
    CREATING = "Creating",
    UPDATING = "Updating",
    SYSTEM_UPDATING = "SystemUpdating",
    ROLLING_BACK = "RollingBack",
    IN_SERVICE = "InService",
    DELETING = "Deleting",
    FAILED = "Failed",
    UPDATE_ROLLBACK_FAILED = "UpdateRollbackFailed",
}

M.InstancePoolSummary = {
    type = "structure",
    id = "InstancePoolSummary",
    members = {
        InstanceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CurrentInstanceCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.VariantStatus = {
    CREATING = "Creating",
    UPDATING = "Updating",
    DELETING = "Deleting",
    ACTIVATING_TRAFFIC = "ActivatingTraffic",
    BAKING = "Baking",
}

M.ProductionVariantStatus = {
    type = "structure",
    id = "ProductionVariantStatus",
    members = {
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StatusMessage = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
        },
    },
}

M.PendingProductionVariantSummary = {
    type = "structure",
    id = "PendingProductionVariantSummary",
    members = {
        VariantName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeployedImages = {
            type = "list",
            member = M.DeployedImage,
        },
        CurrentWeight = {
            type = "float",
        },
        DesiredWeight = {
            type = "float",
        },
        CurrentInstanceCount = {
            type = "integer",
        },
        DesiredInstanceCount = {
            type = "integer",
        },
        InstanceType = {
            type = "string",
        },
        InstancePools = {
            type = "list",
            member = M.InstancePoolSummary,
        },
        AcceleratorType = {
            type = "string",
        },
        VariantStatus = {
            type = "list",
            member = M.ProductionVariantStatus,
        },
        CurrentServerlessConfig = M.ProductionVariantServerlessConfig,
        DesiredServerlessConfig = M.ProductionVariantServerlessConfig,
        ManagedInstanceScaling = M.ProductionVariantManagedInstanceScaling,
        RoutingConfig = M.ProductionVariantRoutingConfig,
    },
}

M.PendingDeploymentSummary = {
    type = "structure",
    id = "PendingDeploymentSummary",
    members = {
        EndpointConfigName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProductionVariants = {
            type = "list",
            member = M.PendingProductionVariantSummary,
        },
        StartTime = {
            type = "timestamp",
        },
        ShadowProductionVariants = {
            type = "list",
            member = M.PendingProductionVariantSummary,
        },
    },
}

M.Ec2CapacityReservation = {
    type = "structure",
    id = "Ec2CapacityReservation",
    members = {
        Ec2CapacityReservationId = {
            type = "string",
        },
        TotalInstanceCount = {
            type = "integer",
        },
        AvailableInstanceCount = {
            type = "integer",
        },
        UsedByCurrentEndpoint = {
            type = "integer",
        },
    },
}

M.ProductionVariantCapacityReservationSummary = {
    type = "structure",
    id = "ProductionVariantCapacityReservationSummary",
    members = {
        MlReservationArn = {
            type = "string",
        },
        CapacityReservationPreference = {
            type = "string",
        },
        TotalInstanceCount = {
            type = "integer",
        },
        AvailableInstanceCount = {
            type = "integer",
        },
        UsedByCurrentEndpoint = {
            type = "integer",
        },
        Ec2CapacityReservations = {
            type = "list",
            member = M.Ec2CapacityReservation,
        },
    },
}

M.ProductionVariantSummary = {
    type = "structure",
    id = "ProductionVariantSummary",
    members = {
        VariantName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeployedImages = {
            type = "list",
            member = M.DeployedImage,
        },
        CurrentWeight = {
            type = "float",
        },
        DesiredWeight = {
            type = "float",
        },
        CurrentInstanceCount = {
            type = "integer",
        },
        DesiredInstanceCount = {
            type = "integer",
        },
        InstancePools = {
            type = "list",
            member = M.InstancePoolSummary,
        },
        VariantStatus = {
            type = "list",
            member = M.ProductionVariantStatus,
        },
        CurrentServerlessConfig = M.ProductionVariantServerlessConfig,
        DesiredServerlessConfig = M.ProductionVariantServerlessConfig,
        ManagedInstanceScaling = M.ProductionVariantManagedInstanceScaling,
        RoutingConfig = M.ProductionVariantRoutingConfig,
        CapacityReservationConfig = M.ProductionVariantCapacityReservationSummary,
    },
}

M.DescribeEndpointOutput = {
    type = "structure",
    id = "DescribeEndpointOutput",
    members = {
        EndpointName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EndpointArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EndpointConfigName = {
            type = "string",
        },
        ProductionVariants = {
            type = "list",
            member = M.ProductionVariantSummary,
        },
        DataCaptureConfig = M.DataCaptureConfigSummary,
        EndpointStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FailureReason = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastDeploymentConfig = M.DeploymentConfig,
        AsyncInferenceConfig = M.AsyncInferenceConfig,
        PendingDeploymentSummary = M.PendingDeploymentSummary,
        ExplainerConfig = M.ExplainerConfig,
        ShadowProductionVariants = {
            type = "list",
            member = M.ProductionVariantSummary,
        },
        MetricsConfig = M.MetricsConfig,
    },
}

M.DescribeEndpointConfigInput = {
    type = "structure",
    id = "DescribeEndpointConfigInput",
    members = {
        EndpointConfigName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeEndpointConfigOutput = {
    type = "structure",
    id = "DescribeEndpointConfigOutput",
    members = {
        EndpointConfigName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EndpointConfigArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProductionVariants = {
            type = "list",
            member = M.ProductionVariant,
            traits = {
                required = true,
            },
        },
        DataCaptureConfig = M.DataCaptureConfig,
        KmsKeyId = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        AsyncInferenceConfig = M.AsyncInferenceConfig,
        ExplainerConfig = M.ExplainerConfig,
        ShadowProductionVariants = {
            type = "list",
            member = M.ProductionVariant,
        },
        ExecutionRoleArn = {
            type = "string",
        },
        VpcConfig = M.VpcConfig,
        EnableNetworkIsolation = {
            type = "boolean",
        },
        MetricsConfig = M.MetricsConfig,
    },
}

M.DescribeExperimentInput = {
    type = "structure",
    id = "DescribeExperimentInput",
    members = {
        ExperimentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ExperimentSource = {
    type = "structure",
    id = "ExperimentSource",
    members = {
        SourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceType = {
            type = "string",
        },
    },
}

M.DescribeExperimentOutput = {
    type = "structure",
    id = "DescribeExperimentOutput",
    members = {
        ExperimentName = {
            type = "string",
        },
        ExperimentArn = {
            type = "string",
        },
        DisplayName = {
            type = "string",
        },
        Source = M.ExperimentSource,
        Description = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        CreatedBy = M.UserContext,
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedBy = M.UserContext,
    },
}

M.DescribeFeatureGroupInput = {
    type = "structure",
    id = "DescribeFeatureGroupInput",
    members = {
        FeatureGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.FeatureGroupStatus = {
    CREATING = "Creating",
    CREATED = "Created",
    CREATE_FAILED = "CreateFailed",
    DELETING = "Deleting",
    DELETE_FAILED = "DeleteFailed",
}

M.LastUpdateStatusValue = {
    SUCCESSFUL = "Successful",
    FAILED = "Failed",
    IN_PROGRESS = "InProgress",
}

M.LastUpdateStatus = {
    type = "structure",
    id = "LastUpdateStatus",
    members = {
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FailureReason = {
            type = "string",
        },
    },
}

M.OfflineStoreStatusValue = {
    ACTIVE = "Active",
    BLOCKED = "Blocked",
    DISABLED = "Disabled",
}

M.OfflineStoreStatus = {
    type = "structure",
    id = "OfflineStoreStatus",
    members = {
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BlockedReason = {
            type = "string",
        },
    },
}

M.ThroughputConfigDescription = {
    type = "structure",
    id = "ThroughputConfigDescription",
    members = {
        ThroughputMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProvisionedReadCapacityUnits = {
            type = "integer",
        },
        ProvisionedWriteCapacityUnits = {
            type = "integer",
        },
    },
}

M.DescribeFeatureGroupOutput = {
    type = "structure",
    id = "DescribeFeatureGroupOutput",
    members = {
        FeatureGroupArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FeatureGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RecordIdentifierFeatureName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EventTimeFeatureName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FeatureDefinitions = {
            type = "list",
            member = M.FeatureDefinition,
            traits = {
                required = true,
            },
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        OnlineStoreConfig = M.OnlineStoreConfig,
        OfflineStoreConfig = M.OfflineStoreConfig,
        ThroughputConfig = M.ThroughputConfigDescription,
        RoleArn = {
            type = "string",
        },
        FeatureGroupStatus = {
            type = "string",
        },
        OfflineStoreStatus = M.OfflineStoreStatus,
        LastUpdateStatus = M.LastUpdateStatus,
        FailureReason = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        NextToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OnlineStoreTotalSizeBytes = {
            type = "long",
        },
    },
}

M.DescribeFeatureMetadataInput = {
    type = "structure",
    id = "DescribeFeatureMetadataInput",
    members = {
        FeatureGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FeatureName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.FeatureParameter = {
    type = "structure",
    id = "FeatureParameter",
    members = {
        Key = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.DescribeFeatureMetadataOutput = {
    type = "structure",
    id = "DescribeFeatureMetadataOutput",
    members = {
        FeatureGroupArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FeatureGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FeatureName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FeatureType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Parameters = {
            type = "list",
            member = M.FeatureParameter,
        },
    },
}

M.DescribeFlowDefinitionInput = {
    type = "structure",
    id = "DescribeFlowDefinitionInput",
    members = {
        FlowDefinitionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.FlowDefinitionStatus = {
    INITIALIZING = "Initializing",
    ACTIVE = "Active",
    FAILED = "Failed",
    DELETING = "Deleting",
}

M.DescribeFlowDefinitionOutput = {
    type = "structure",
    id = "DescribeFlowDefinitionOutput",
    members = {
        FlowDefinitionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FlowDefinitionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FlowDefinitionStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        HumanLoopRequestSource = M.HumanLoopRequestSource,
        HumanLoopActivationConfig = M.HumanLoopActivationConfig,
        HumanLoopConfig = M.HumanLoopConfig,
        OutputConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FlowDefinitionOutputConfig }),
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FailureReason = {
            type = "string",
        },
    },
}

M.DescribeHubInput = {
    type = "structure",
    id = "DescribeHubInput",
    members = {
        HubName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.HubStatus = {
    IN_SERVICE = "InService",
    CREATING = "Creating",
    UPDATING = "Updating",
    DELETING = "Deleting",
    CREATE_FAILED = "CreateFailed",
    UPDATE_FAILED = "UpdateFailed",
    DELETE_FAILED = "DeleteFailed",
}

M.DescribeHubOutput = {
    type = "structure",
    id = "DescribeHubOutput",
    members = {
        HubName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HubArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HubDisplayName = {
            type = "string",
        },
        HubDescription = {
            type = "string",
        },
        HubSearchKeywords = {
            type = "list",
            member = { type = "string" },
        },
        S3StorageConfig = M.HubS3StorageConfig,
        HubStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FailureReason = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeHubContentInput = {
    type = "structure",
    id = "DescribeHubContentInput",
    members = {
        HubName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HubContentType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HubContentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HubContentVersion = {
            type = "string",
        },
    },
}

M.HubContentDependency = {
    type = "structure",
    id = "HubContentDependency",
    members = {
        DependencyOriginPath = {
            type = "string",
        },
        DependencyCopyPath = {
            type = "string",
        },
    },
}

M.HubContentStatus = {
    AVAILABLE = "Available",
    IMPORTING = "Importing",
    DELETING = "Deleting",
    IMPORT_FAILED = "ImportFailed",
    DELETE_FAILED = "DeleteFailed",
    PENDING_IMPORT = "PendingImport",
    PENDING_DELETE = "PendingDelete",
}

M.HubContentSupportStatus = {
    SUPPORTED = "Supported",
    DEPRECATED = "Deprecated",
    RESTRICTED = "Restricted",
}

M.DescribeHubContentOutput = {
    type = "structure",
    id = "DescribeHubContentOutput",
    members = {
        HubContentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HubContentArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HubContentVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HubContentType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DocumentSchemaVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HubName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HubArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HubContentDisplayName = {
            type = "string",
        },
        HubContentDescription = {
            type = "string",
        },
        HubContentMarkdown = {
            type = "string",
        },
        HubContentDocument = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SageMakerPublicHubContentArn = {
            type = "string",
        },
        ReferenceMinVersion = {
            type = "string",
        },
        SupportStatus = {
            type = "string",
        },
        HubContentSearchKeywords = {
            type = "list",
            member = { type = "string" },
        },
        HubContentDependencies = {
            type = "list",
            member = M.HubContentDependency,
        },
        HubContentStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FailureReason = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastModifiedTime = {
            type = "timestamp",
        },
    },
}

M.DescribeHumanTaskUiInput = {
    type = "structure",
    id = "DescribeHumanTaskUiInput",
    members = {
        HumanTaskUiName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.HumanTaskUiStatus = {
    ACTIVE = "Active",
    DELETING = "Deleting",
}

M.UiTemplateInfo = {
    type = "structure",
    id = "UiTemplateInfo",
    members = {
        Url = {
            type = "string",
        },
        ContentSha256 = {
            type = "string",
        },
    },
}

M.DescribeHumanTaskUiOutput = {
    type = "structure",
    id = "DescribeHumanTaskUiOutput",
    members = {
        HumanTaskUiArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HumanTaskUiName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HumanTaskUiStatus = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        UiTemplate = setmetatable({ traits = {
            required = true,
        } }, { __index = M.UiTemplateInfo }),
    },
}

M.DescribeHyperParameterTuningJobInput = {
    type = "structure",
    id = "DescribeHyperParameterTuningJobInput",
    members = {
        HyperParameterTuningJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.FinalHyperParameterTuningJobObjectiveMetric = {
    type = "structure",
    id = "FinalHyperParameterTuningJobObjectiveMetric",
    members = {
        Type = {
            type = "string",
        },
        MetricName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "float",
            traits = {
                required = true,
            },
        },
    },
}

M.TrainingJobStatus = {
    IN_PROGRESS = "InProgress",
    COMPLETED = "Completed",
    FAILED = "Failed",
    STOPPING = "Stopping",
    STOPPED = "Stopped",
    DELETING = "Deleting",
}

M.HyperParameterTrainingJobSummary = {
    type = "structure",
    id = "HyperParameterTrainingJobSummary",
    members = {
        TrainingJobDefinitionName = {
            type = "string",
        },
        TrainingJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TrainingJobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TuningJobName = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        TrainingStartTime = {
            type = "timestamp",
        },
        TrainingEndTime = {
            type = "timestamp",
        },
        TrainingJobStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TunedHyperParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
        FailureReason = {
            type = "string",
        },
        FinalHyperParameterTuningJobObjectiveMetric = M.FinalHyperParameterTuningJobObjectiveMetric,
        ObjectiveStatus = {
            type = "string",
        },
    },
}

M.HyperParameterTuningJobConsumedResources = {
    type = "structure",
    id = "HyperParameterTuningJobConsumedResources",
    members = {
        RuntimeInSeconds = {
            type = "integer",
        },
    },
}

M.HyperParameterTuningJobStatus = {
    COMPLETED = "Completed",
    IN_PROGRESS = "InProgress",
    FAILED = "Failed",
    STOPPED = "Stopped",
    STOPPING = "Stopping",
    DELETING = "Deleting",
    DELETE_FAILED = "DeleteFailed",
}

M.ObjectiveStatusCounters = {
    type = "structure",
    id = "ObjectiveStatusCounters",
    members = {
        Succeeded = {
            type = "integer",
        },
        Pending = {
            type = "integer",
        },
        Failed = {
            type = "integer",
        },
    },
}

M.TrainingJobStatusCounters = {
    type = "structure",
    id = "TrainingJobStatusCounters",
    members = {
        Completed = {
            type = "integer",
        },
        InProgress = {
            type = "integer",
        },
        RetryableError = {
            type = "integer",
        },
        NonRetryableError = {
            type = "integer",
        },
        Stopped = {
            type = "integer",
        },
    },
}

M.HyperParameterTuningJobCompletionDetails = {
    type = "structure",
    id = "HyperParameterTuningJobCompletionDetails",
    members = {
        NumberOfTrainingJobsObjectiveNotImproving = {
            type = "integer",
        },
        ConvergenceDetectedTime = {
            type = "timestamp",
        },
    },
}

M.DescribeHyperParameterTuningJobOutput = {
    type = "structure",
    id = "DescribeHyperParameterTuningJobOutput",
    members = {
        HyperParameterTuningJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HyperParameterTuningJobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HyperParameterTuningJobConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.HyperParameterTuningJobConfig }),
        TrainingJobDefinition = M.HyperParameterTrainingJobDefinition,
        TrainingJobDefinitions = {
            type = "list",
            member = M.HyperParameterTrainingJobDefinition,
        },
        HyperParameterTuningJobStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        HyperParameterTuningEndTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        TrainingJobStatusCounters = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TrainingJobStatusCounters }),
        ObjectiveStatusCounters = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ObjectiveStatusCounters }),
        BestTrainingJob = M.HyperParameterTrainingJobSummary,
        OverallBestTrainingJob = M.HyperParameterTrainingJobSummary,
        WarmStartConfig = M.HyperParameterTuningJobWarmStartConfig,
        Autotune = M.Autotune,
        FailureReason = {
            type = "string",
        },
        TuningJobCompletionDetails = M.HyperParameterTuningJobCompletionDetails,
        ConsumedResources = M.HyperParameterTuningJobConsumedResources,
    },
}

M.DescribeImageInput = {
    type = "structure",
    id = "DescribeImageInput",
    members = {
        ImageName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ImageStatus = {
    CREATING = "CREATING",
    CREATED = "CREATED",
    CREATE_FAILED = "CREATE_FAILED",
    UPDATING = "UPDATING",
    UPDATE_FAILED = "UPDATE_FAILED",
    DELETING = "DELETING",
    DELETE_FAILED = "DELETE_FAILED",
}

M.DescribeImageOutput = {
    type = "structure",
    id = "DescribeImageOutput",
    members = {
        CreationTime = {
            type = "timestamp",
        },
        Description = {
            type = "string",
        },
        DisplayName = {
            type = "string",
        },
        FailureReason = {
            type = "string",
        },
        ImageArn = {
            type = "string",
        },
        ImageName = {
            type = "string",
        },
        ImageStatus = {
            type = "string",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        RoleArn = {
            type = "string",
        },
    },
}

M.DescribeImageVersionInput = {
    type = "structure",
    id = "DescribeImageVersionInput",
    members = {
        ImageName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Version = {
            type = "integer",
        },
        Alias = {
            type = "string",
        },
    },
}

M.ImageVersionStatus = {
    CREATING = "CREATING",
    CREATED = "CREATED",
    CREATE_FAILED = "CREATE_FAILED",
    DELETING = "DELETING",
    DELETE_FAILED = "DELETE_FAILED",
}

M.DescribeImageVersionOutput = {
    type = "structure",
    id = "DescribeImageVersionOutput",
    members = {
        BaseImage = {
            type = "string",
        },
        ContainerImage = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        FailureReason = {
            type = "string",
        },
        ImageArn = {
            type = "string",
        },
        ImageVersionArn = {
            type = "string",
        },
        ImageVersionStatus = {
            type = "string",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        Version = {
            type = "integer",
        },
        VendorGuidance = {
            type = "string",
        },
        JobType = {
            type = "string",
        },
        MLFramework = {
            type = "string",
        },
        ProgrammingLang = {
            type = "string",
        },
        Processor = {
            type = "string",
        },
        Horovod = {
            type = "boolean",
        },
        ReleaseNotes = {
            type = "string",
        },
    },
}

M.DescribeInferenceComponentInput = {
    type = "structure",
    id = "DescribeInferenceComponentInput",
    members = {
        InferenceComponentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InferenceComponentStatus = {
    IN_SERVICE = "InService",
    CREATING = "Creating",
    UPDATING = "Updating",
    FAILED = "Failed",
    DELETING = "Deleting",
}

M.InferenceComponentCapacitySizeType = {
    COPY_COUNT = "COPY_COUNT",
    CAPACITY_PERCENT = "CAPACITY_PERCENT",
}

M.InferenceComponentCapacitySize = {
    type = "structure",
    id = "InferenceComponentCapacitySize",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.InferenceComponentRollingUpdatePolicy = {
    type = "structure",
    id = "InferenceComponentRollingUpdatePolicy",
    members = {
        MaximumBatchSize = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InferenceComponentCapacitySize }),
        WaitIntervalInSeconds = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        MaximumExecutionTimeoutInSeconds = {
            type = "integer",
        },
        RollbackMaximumBatchSize = M.InferenceComponentCapacitySize,
    },
}

M.InferenceComponentDeploymentConfig = {
    type = "structure",
    id = "InferenceComponentDeploymentConfig",
    members = {
        RollingUpdatePolicy = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InferenceComponentRollingUpdatePolicy }),
        AutoRollbackConfiguration = M.AutoRollbackConfig,
    },
}

M.InferenceComponentPlacementStatus = {
    type = "structure",
    id = "InferenceComponentPlacementStatus",
    members = {
        InstanceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CurrentCopyCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.InferenceComponentRuntimeConfigSummary = {
    type = "structure",
    id = "InferenceComponentRuntimeConfigSummary",
    members = {
        DesiredCopyCount = {
            type = "integer",
        },
        CurrentCopyCount = {
            type = "integer",
        },
        PlacementStatus = {
            type = "list",
            member = M.InferenceComponentPlacementStatus,
        },
    },
}

M.InferenceComponentContainerSpecificationSummary = {
    type = "structure",
    id = "InferenceComponentContainerSpecificationSummary",
    members = {
        DeployedImage = M.DeployedImage,
        ArtifactUrl = {
            type = "string",
        },
        Environment = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.InferenceComponentDataCacheConfigSummary = {
    type = "structure",
    id = "InferenceComponentDataCacheConfigSummary",
    members = {
        EnableCaching = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.InferenceComponentSpecificationSummary = {
    type = "structure",
    id = "InferenceComponentSpecificationSummary",
    members = {
        InstanceType = {
            type = "string",
        },
        ModelName = {
            type = "string",
        },
        Container = M.InferenceComponentContainerSpecificationSummary,
        StartupParameters = M.InferenceComponentStartupParameters,
        ComputeResourceRequirements = M.InferenceComponentComputeResourceRequirements,
        BaseInferenceComponentName = {
            type = "string",
        },
        DataCacheConfig = M.InferenceComponentDataCacheConfigSummary,
        SchedulingConfig = M.InferenceComponentSchedulingConfig,
    },
}

M.DescribeInferenceComponentOutput = {
    type = "structure",
    id = "DescribeInferenceComponentOutput",
    members = {
        InferenceComponentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InferenceComponentArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EndpointName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EndpointArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VariantName = {
            type = "string",
        },
        FailureReason = {
            type = "string",
        },
        Specification = M.InferenceComponentSpecificationSummary,
        Specifications = {
            type = "list",
            member = M.InferenceComponentSpecificationSummary,
        },
        RuntimeConfig = M.InferenceComponentRuntimeConfigSummary,
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        InferenceComponentStatus = {
            type = "string",
        },
        LastDeploymentConfig = M.InferenceComponentDeploymentConfig,
    },
}

M.DescribeInferenceExperimentInput = {
    type = "structure",
    id = "DescribeInferenceExperimentInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EndpointMetadata = {
    type = "structure",
    id = "EndpointMetadata",
    members = {
        EndpointName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EndpointConfigName = {
            type = "string",
        },
        EndpointStatus = {
            type = "string",
        },
        FailureReason = {
            type = "string",
        },
    },
}

M.ModelVariantStatus = {
    CREATING = "Creating",
    UPDATING = "Updating",
    IN_SERVICE = "InService",
    DELETING = "Deleting",
    DELETED = "Deleted",
}

M.ModelVariantConfigSummary = {
    type = "structure",
    id = "ModelVariantConfigSummary",
    members = {
        ModelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VariantName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InfrastructureConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ModelInfrastructureConfig }),
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InferenceExperimentStatus = {
    CREATING = "Creating",
    CREATED = "Created",
    UPDATING = "Updating",
    RUNNING = "Running",
    STARTING = "Starting",
    STOPPING = "Stopping",
    COMPLETED = "Completed",
    CANCELLED = "Cancelled",
}

M.DescribeInferenceExperimentOutput = {
    type = "structure",
    id = "DescribeInferenceExperimentOutput",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Schedule = M.InferenceExperimentSchedule,
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StatusReason = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        CompletionTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        RoleArn = {
            type = "string",
        },
        EndpointMetadata = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EndpointMetadata }),
        ModelVariants = {
            type = "list",
            member = M.ModelVariantConfigSummary,
            traits = {
                required = true,
            },
        },
        DataStorageConfig = M.InferenceExperimentDataStorageConfig,
        ShadowModeConfig = M.ShadowModeConfig,
        KmsKey = {
            type = "string",
        },
    },
}

M.DescribeInferenceRecommendationsJobInput = {
    type = "structure",
    id = "DescribeInferenceRecommendationsJobInput",
    members = {
        JobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InferenceMetrics = {
    type = "structure",
    id = "InferenceMetrics",
    members = {
        MaxInvocations = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        ModelLatency = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.EndpointPerformance = {
    type = "structure",
    id = "EndpointPerformance",
    members = {
        Metrics = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InferenceMetrics }),
        EndpointInfo = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EndpointInfo }),
    },
}

M.EndpointOutputConfiguration = {
    type = "structure",
    id = "EndpointOutputConfiguration",
    members = {
        EndpointName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VariantName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstanceType = {
            type = "string",
        },
        InitialInstanceCount = {
            type = "integer",
        },
        ServerlessConfig = M.ProductionVariantServerlessConfig,
    },
}

M.RecommendationMetrics = {
    type = "structure",
    id = "RecommendationMetrics",
    members = {
        CostPerHour = {
            type = "float",
        },
        CostPerInference = {
            type = "float",
        },
        MaxInvocations = {
            type = "integer",
        },
        ModelLatency = {
            type = "integer",
        },
        CpuUtilization = {
            type = "float",
        },
        MemoryUtilization = {
            type = "float",
        },
        ModelSetupTime = {
            type = "integer",
        },
    },
}

M.EnvironmentParameter = {
    type = "structure",
    id = "EnvironmentParameter",
    members = {
        Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ValueType = {
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

M.ModelConfiguration = {
    type = "structure",
    id = "ModelConfiguration",
    members = {
        InferenceSpecificationName = {
            type = "string",
        },
        EnvironmentParameters = {
            type = "list",
            member = M.EnvironmentParameter,
        },
        CompilationJobName = {
            type = "string",
        },
    },
}

M.InferenceRecommendation = {
    type = "structure",
    id = "InferenceRecommendation",
    members = {
        RecommendationId = {
            type = "string",
        },
        Metrics = M.RecommendationMetrics,
        EndpointConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EndpointOutputConfiguration }),
        ModelConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ModelConfiguration }),
        InvocationEndTime = {
            type = "timestamp",
        },
        InvocationStartTime = {
            type = "timestamp",
        },
    },
}

M.RecommendationJobStatus = {
    PENDING = "PENDING",
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
    STOPPING = "STOPPING",
    STOPPED = "STOPPED",
    DELETING = "DELETING",
    DELETED = "DELETED",
}

M.DescribeInferenceRecommendationsJobOutput = {
    type = "structure",
    id = "DescribeInferenceRecommendationsJobOutput",
    members = {
        JobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        JobDescription = {
            type = "string",
        },
        JobType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        JobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        CompletionTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        FailureReason = {
            type = "string",
        },
        InputConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RecommendationJobInputConfig }),
        StoppingConditions = M.RecommendationJobStoppingConditions,
        InferenceRecommendations = {
            type = "list",
            member = M.InferenceRecommendation,
        },
        EndpointPerformances = {
            type = "list",
            member = M.EndpointPerformance,
        },
    },
}

M.DescribeLabelingJobInput = {
    type = "structure",
    id = "DescribeLabelingJobInput",
    members = {
        LabelingJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.LabelCounters = {
    type = "structure",
    id = "LabelCounters",
    members = {
        TotalLabeled = {
            type = "integer",
        },
        HumanLabeled = {
            type = "integer",
        },
        MachineLabeled = {
            type = "integer",
        },
        FailedNonRetryableError = {
            type = "integer",
        },
        Unlabeled = {
            type = "integer",
        },
    },
}

M.LabelingJobOutput = {
    type = "structure",
    id = "LabelingJobOutput",
    members = {
        OutputDatasetS3Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FinalActiveLearningModelArn = {
            type = "string",
        },
    },
}

M.LabelingJobStatus = {
    INITIALIZING = "Initializing",
    IN_PROGRESS = "InProgress",
    COMPLETED = "Completed",
    FAILED = "Failed",
    STOPPING = "Stopping",
    STOPPED = "Stopped",
}

M.DescribeLabelingJobOutput = {
    type = "structure",
    id = "DescribeLabelingJobOutput",
    members = {
        LabelingJobStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LabelCounters = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LabelCounters }),
        FailureReason = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        JobReferenceCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LabelingJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LabelingJobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LabelAttributeName = {
            type = "string",
        },
        InputConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LabelingJobInputConfig }),
        OutputConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LabelingJobOutputConfig }),
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LabelCategoryConfigS3Uri = {
            type = "string",
        },
        StoppingConditions = M.LabelingJobStoppingConditions,
        LabelingJobAlgorithmsConfig = M.LabelingJobAlgorithmsConfig,
        HumanTaskConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.HumanTaskConfig }),
        Tags = {
            type = "list",
            member = M.Tag,
        },
        LabelingJobOutput = M.LabelingJobOutput,
    },
}

M.DescribeLineageGroupInput = {
    type = "structure",
    id = "DescribeLineageGroupInput",
    members = {
        LineageGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeLineageGroupOutput = {
    type = "structure",
    id = "DescribeLineageGroupOutput",
    members = {
        LineageGroupName = {
            type = "string",
        },
        LineageGroupArn = {
            type = "string",
        },
        DisplayName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        CreatedBy = M.UserContext,
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedBy = M.UserContext,
    },
}

M.DescribeMlflowAppInput = {
    type = "structure",
    id = "DescribeMlflowAppInput",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MaintenanceStatus = {
    MAINTENANCE_IN_PROGRESS = "MaintenanceInProgress",
    MAINTENANCE_COMPLETE = "MaintenanceComplete",
    MAINTENANCE_FAILED = "MaintenanceFailed",
}

M.MlflowAppStatus = {
    CREATING = "Creating",
    CREATED = "Created",
    CREATE_FAILED = "CreateFailed",
    UPDATING = "Updating",
    UPDATED = "Updated",
    UPDATE_FAILED = "UpdateFailed",
    DELETING = "Deleting",
    DELETE_FAILED = "DeleteFailed",
    DELETED = "Deleted",
}

M.DescribeMlflowAppOutput = {
    type = "structure",
    id = "DescribeMlflowAppOutput",
    members = {
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        ArtifactStoreUri = {
            type = "string",
        },
        MlflowVersion = {
            type = "string",
        },
        RoleArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        ModelRegistrationMode = {
            type = "string",
        },
        AccountDefaultStatus = {
            type = "string",
        },
        DefaultDomainIdList = {
            type = "list",
            member = { type = "string" },
        },
        CreationTime = {
            type = "timestamp",
        },
        CreatedBy = M.UserContext,
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedBy = M.UserContext,
        WeeklyMaintenanceWindowStart = {
            type = "string",
        },
        MaintenanceStatus = {
            type = "string",
        },
    },
}

M.DescribeMlflowTrackingServerInput = {
    type = "structure",
    id = "DescribeMlflowTrackingServerInput",
    members = {
        TrackingServerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.IsTrackingServerActive = {
    ACTIVE = "Active",
    INACTIVE = "Inactive",
}

M.TrackingServerMaintenanceStatus = {
    MAINTENANCE_IN_PROGRESS = "MaintenanceInProgress",
    MAINTENANCE_COMPLETE = "MaintenanceComplete",
    MAINTENANCE_FAILED = "MaintenanceFailed",
}

M.TrackingServerStatus = {
    CREATING = "Creating",
    CREATED = "Created",
    CREATE_FAILED = "CreateFailed",
    UPDATING = "Updating",
    UPDATED = "Updated",
    UPDATE_FAILED = "UpdateFailed",
    DELETING = "Deleting",
    DELETE_FAILED = "DeleteFailed",
    STOPPING = "Stopping",
    STOPPED = "Stopped",
    STOP_FAILED = "StopFailed",
    STARTING = "Starting",
    STARTED = "Started",
    START_FAILED = "StartFailed",
    MAINTENANCE_IN_PROGRESS = "MaintenanceInProgress",
    MAINTENANCE_COMPLETE = "MaintenanceComplete",
    MAINTENANCE_FAILED = "MaintenanceFailed",
}

M.DescribeMlflowTrackingServerOutput = {
    type = "structure",
    id = "DescribeMlflowTrackingServerOutput",
    members = {
        TrackingServerArn = {
            type = "string",
        },
        TrackingServerName = {
            type = "string",
        },
        ArtifactStoreUri = {
            type = "string",
        },
        TrackingServerSize = {
            type = "string",
        },
        MlflowVersion = {
            type = "string",
        },
        RoleArn = {
            type = "string",
        },
        TrackingServerStatus = {
            type = "string",
        },
        TrackingServerMaintenanceStatus = {
            type = "string",
        },
        IsActive = {
            type = "string",
        },
        TrackingServerUrl = {
            type = "string",
        },
        WeeklyMaintenanceWindowStart = {
            type = "string",
        },
        AutomaticModelRegistration = {
            type = "boolean",
        },
        CreationTime = {
            type = "timestamp",
        },
        CreatedBy = M.UserContext,
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedBy = M.UserContext,
        S3BucketOwnerAccountId = {
            type = "string",
        },
        S3BucketOwnerVerification = {
            type = "boolean",
        },
    },
}

M.DescribeModelInput = {
    type = "structure",
    id = "DescribeModelInput",
    members = {
        ModelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeModelOutput = {
    type = "structure",
    id = "DescribeModelOutput",
    members = {
        ModelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PrimaryContainer = M.ContainerDefinition,
        Containers = {
            type = "list",
            member = M.ContainerDefinition,
        },
        InferenceExecutionConfig = M.InferenceExecutionConfig,
        ExecutionRoleArn = {
            type = "string",
        },
        VpcConfig = M.VpcConfig,
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        ModelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EnableNetworkIsolation = {
            type = "boolean",
        },
        DeploymentRecommendation = M.DeploymentRecommendation,
    },
}

M.DescribeModelBiasJobDefinitionInput = {
    type = "structure",
    id = "DescribeModelBiasJobDefinitionInput",
    members = {
        JobDefinitionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeModelBiasJobDefinitionOutput = {
    type = "structure",
    id = "DescribeModelBiasJobDefinitionOutput",
    members = {
        JobDefinitionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        JobDefinitionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        ModelBiasBaselineConfig = M.ModelBiasBaselineConfig,
        ModelBiasAppSpecification = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ModelBiasAppSpecification }),
        ModelBiasJobInput = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ModelBiasJobInput }),
        ModelBiasJobOutputConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MonitoringOutputConfig }),
        JobResources = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MonitoringResources }),
        NetworkConfig = M.MonitoringNetworkConfig,
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StoppingCondition = M.MonitoringStoppingCondition,
    },
}

M.DescribeModelCardInput = {
    type = "structure",
    id = "DescribeModelCardInput",
    members = {
        ModelCardName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ModelCardVersion = {
            type = "integer",
        },
    },
}

M.ModelCardProcessingStatus = {
    DELETE_INPROGRESS = "DeleteInProgress",
    DELETE_PENDING = "DeletePending",
    CONTENT_DELETED = "ContentDeleted",
    EXPORTJOBS_DELETED = "ExportJobsDeleted",
    DELETE_COMPLETED = "DeleteCompleted",
    DELETE_FAILED = "DeleteFailed",
}

M.DescribeModelCardOutput = {
    type = "structure",
    id = "DescribeModelCardOutput",
    members = {
        ModelCardArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ModelCardName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ModelCardVersion = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Content = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ModelCardStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SecurityConfig = M.ModelCardSecurityConfig,
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        CreatedBy = setmetatable({ traits = {
            required = true,
        } }, { __index = M.UserContext }),
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedBy = M.UserContext,
        ModelCardProcessingStatus = {
            type = "string",
        },
    },
}

M.DescribeModelCardExportJobInput = {
    type = "structure",
    id = "DescribeModelCardExportJobInput",
    members = {
        ModelCardExportJobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ModelCardExportArtifacts = {
    type = "structure",
    id = "ModelCardExportArtifacts",
    members = {
        S3ExportArtifacts = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ModelCardExportJobStatus = {
    IN_PROGRESS = "InProgress",
    COMPLETED = "Completed",
    FAILED = "Failed",
}

M.DescribeModelCardExportJobOutput = {
    type = "structure",
    id = "DescribeModelCardExportJobOutput",
    members = {
        ModelCardExportJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ModelCardExportJobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ModelCardName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ModelCardVersion = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        OutputConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ModelCardExportOutputConfig }),
        CreatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastModifiedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        FailureReason = {
            type = "string",
        },
        ExportArtifacts = M.ModelCardExportArtifacts,
    },
}

M.DescribeModelExplainabilityJobDefinitionInput = {
    type = "structure",
    id = "DescribeModelExplainabilityJobDefinitionInput",
    members = {
        JobDefinitionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeModelExplainabilityJobDefinitionOutput = {
    type = "structure",
    id = "DescribeModelExplainabilityJobDefinitionOutput",
    members = {
        JobDefinitionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        JobDefinitionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        ModelExplainabilityBaselineConfig = M.ModelExplainabilityBaselineConfig,
        ModelExplainabilityAppSpecification = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ModelExplainabilityAppSpecification }),
        ModelExplainabilityJobInput = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ModelExplainabilityJobInput }),
        ModelExplainabilityJobOutputConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MonitoringOutputConfig }),
        JobResources = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MonitoringResources }),
        NetworkConfig = M.MonitoringNetworkConfig,
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StoppingCondition = M.MonitoringStoppingCondition,
    },
}

M.DescribeModelPackageInput = {
    type = "structure",
    id = "DescribeModelPackageInput",
    members = {
        ModelPackageName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DetailedModelPackageStatus = {
    NOT_STARTED = "NotStarted",
    IN_PROGRESS = "InProgress",
    COMPLETED = "Completed",
    FAILED = "Failed",
}

M.ModelPackageStatusItem = {
    type = "structure",
    id = "ModelPackageStatusItem",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FailureReason = {
            type = "string",
        },
    },
}

M.ModelPackageStatusDetails = {
    type = "structure",
    id = "ModelPackageStatusDetails",
    members = {
        ValidationStatuses = {
            type = "list",
            member = M.ModelPackageStatusItem,
            traits = {
                required = true,
            },
        },
        ImageScanStatuses = {
            type = "list",
            member = M.ModelPackageStatusItem,
        },
    },
}

M.DescribeModelPackageOutput = {
    type = "structure",
    id = "DescribeModelPackageOutput",
    members = {
        ModelPackageName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ModelPackageGroupName = {
            type = "string",
        },
        ModelPackageVersion = {
            type = "integer",
        },
        ModelPackageRegistrationType = {
            type = "string",
        },
        ModelPackageArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ModelPackageDescription = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        InferenceSpecification = M.InferenceSpecification,
        SourceAlgorithmSpecification = M.SourceAlgorithmSpecification,
        ValidationSpecification = M.ModelPackageValidationSpecification,
        ModelPackageStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ModelPackageStatusDetails = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ModelPackageStatusDetails }),
        CertifyForMarketplace = {
            type = "boolean",
        },
        ModelApprovalStatus = {
            type = "string",
        },
        CreatedBy = M.UserContext,
        MetadataProperties = M.MetadataProperties,
        ModelMetrics = M.ModelMetrics,
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedBy = M.UserContext,
        ApprovalDescription = {
            type = "string",
        },
        Domain = {
            type = "string",
        },
        Task = {
            type = "string",
        },
        SamplePayloadUrl = {
            type = "string",
        },
        CustomerMetadataProperties = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        DriftCheckBaselines = M.DriftCheckBaselines,
        AdditionalInferenceSpecifications = {
            type = "list",
            member = M.AdditionalInferenceSpecificationDefinition,
        },
        SkipModelValidation = {
            type = "string",
        },
        SourceUri = {
            type = "string",
        },
        SecurityConfig = M.ModelPackageSecurityConfig,
        ModelCard = M.ModelPackageModelCard,
        ModelLifeCycle = M.ModelLifeCycle,
    },
}

M.DescribeModelPackageGroupInput = {
    type = "structure",
    id = "DescribeModelPackageGroupInput",
    members = {
        ModelPackageGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ModelPackageGroupStatus = {
    PENDING = "Pending",
    IN_PROGRESS = "InProgress",
    COMPLETED = "Completed",
    FAILED = "Failed",
    DELETING = "Deleting",
    DELETE_FAILED = "DeleteFailed",
}

M.DescribeModelPackageGroupOutput = {
    type = "structure",
    id = "DescribeModelPackageGroupOutput",
    members = {
        ModelPackageGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ModelPackageGroupArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ModelPackageGroupDescription = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        CreatedBy = setmetatable({ traits = {
            required = true,
        } }, { __index = M.UserContext }),
        ModelPackageGroupStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeModelQualityJobDefinitionInput = {
    type = "structure",
    id = "DescribeModelQualityJobDefinitionInput",
    members = {
        JobDefinitionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeModelQualityJobDefinitionOutput = {
    type = "structure",
    id = "DescribeModelQualityJobDefinitionOutput",
    members = {
        JobDefinitionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        JobDefinitionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        ModelQualityBaselineConfig = M.ModelQualityBaselineConfig,
        ModelQualityAppSpecification = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ModelQualityAppSpecification }),
        ModelQualityJobInput = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ModelQualityJobInput }),
        ModelQualityJobOutputConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MonitoringOutputConfig }),
        JobResources = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MonitoringResources }),
        NetworkConfig = M.MonitoringNetworkConfig,
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StoppingCondition = M.MonitoringStoppingCondition,
    },
}

M.DescribeMonitoringScheduleInput = {
    type = "structure",
    id = "DescribeMonitoringScheduleInput",
    members = {
        MonitoringScheduleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ExecutionStatus = {
    PENDING = "Pending",
    COMPLETED = "Completed",
    COMPLETED_WITH_VIOLATIONS = "CompletedWithViolations",
    IN_PROGRESS = "InProgress",
    FAILED = "Failed",
    STOPPING = "Stopping",
    STOPPED = "Stopped",
}

M.MonitoringExecutionSummary = {
    type = "structure",
    id = "MonitoringExecutionSummary",
    members = {
        MonitoringScheduleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ScheduledTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        MonitoringExecutionStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProcessingJobArn = {
            type = "string",
        },
        EndpointName = {
            type = "string",
        },
        FailureReason = {
            type = "string",
        },
        MonitoringJobDefinitionName = {
            type = "string",
        },
        MonitoringType = {
            type = "string",
        },
    },
}

M.ScheduleStatus = {
    PENDING = "Pending",
    FAILED = "Failed",
    SCHEDULED = "Scheduled",
    STOPPED = "Stopped",
}

M.DescribeMonitoringScheduleOutput = {
    type = "structure",
    id = "DescribeMonitoringScheduleOutput",
    members = {
        MonitoringScheduleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MonitoringScheduleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MonitoringScheduleStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MonitoringType = {
            type = "string",
        },
        FailureReason = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        MonitoringScheduleConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MonitoringScheduleConfig }),
        EndpointName = {
            type = "string",
        },
        LastMonitoringExecutionSummary = M.MonitoringExecutionSummary,
    },
}

M.DescribeNotebookInstanceInput = {
    type = "structure",
    id = "DescribeNotebookInstanceInput",
    members = {
        NotebookInstanceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.NotebookInstanceStatus = {
    Pending = "Pending",
    InService = "InService",
    Stopping = "Stopping",
    Stopped = "Stopped",
    Failed = "Failed",
    Deleting = "Deleting",
    Updating = "Updating",
}

M.DescribeNotebookInstanceOutput = {
    type = "structure",
    id = "DescribeNotebookInstanceOutput",
    members = {
        NotebookInstanceArn = {
            type = "string",
        },
        NotebookInstanceName = {
            type = "string",
        },
        NotebookInstanceStatus = {
            type = "string",
        },
        FailureReason = {
            type = "string",
        },
        Url = {
            type = "string",
        },
        InstanceType = {
            type = "string",
        },
        IpAddressType = {
            type = "string",
        },
        SubnetId = {
            type = "string",
        },
        SecurityGroups = {
            type = "list",
            member = { type = "string" },
        },
        RoleArn = {
            type = "string",
        },
        KmsKeyId = {
            type = "string",
        },
        NetworkInterfaceId = {
            type = "string",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        CreationTime = {
            type = "timestamp",
        },
        NotebookInstanceLifecycleConfigName = {
            type = "string",
        },
        DirectInternetAccess = {
            type = "string",
        },
        VolumeSizeInGB = {
            type = "integer",
        },
        AcceleratorTypes = {
            type = "list",
            member = { type = "string" },
        },
        DefaultCodeRepository = {
            type = "string",
        },
        AdditionalCodeRepositories = {
            type = "list",
            member = { type = "string" },
        },
        RootAccess = {
            type = "string",
        },
        PlatformIdentifier = {
            type = "string",
        },
        InstanceMetadataServiceConfiguration = M.InstanceMetadataServiceConfiguration,
    },
}

M.DescribeNotebookInstanceLifecycleConfigInput = {
    type = "structure",
    id = "DescribeNotebookInstanceLifecycleConfigInput",
    members = {
        NotebookInstanceLifecycleConfigName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeNotebookInstanceLifecycleConfigOutput = {
    type = "structure",
    id = "DescribeNotebookInstanceLifecycleConfigOutput",
    members = {
        NotebookInstanceLifecycleConfigArn = {
            type = "string",
        },
        NotebookInstanceLifecycleConfigName = {
            type = "string",
        },
        OnCreate = {
            type = "list",
            member = M.NotebookInstanceLifecycleHook,
        },
        OnStart = {
            type = "list",
            member = M.NotebookInstanceLifecycleHook,
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        CreationTime = {
            type = "timestamp",
        },
    },
}

M.DescribeOptimizationJobInput = {
    type = "structure",
    id = "DescribeOptimizationJobInput",
    members = {
        OptimizationJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.OptimizationJobStatus = {
    INPROGRESS = "INPROGRESS",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
    STARTING = "STARTING",
    STOPPING = "STOPPING",
    STOPPED = "STOPPED",
}

M.OptimizationOutput = {
    type = "structure",
    id = "OptimizationOutput",
    members = {
        RecommendedInferenceImage = {
            type = "string",
        },
    },
}

M.DescribeOptimizationJobOutput = {
    type = "structure",
    id = "DescribeOptimizationJobOutput",
    members = {
        OptimizationJobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OptimizationJobStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OptimizationStartTime = {
            type = "timestamp",
        },
        OptimizationEndTime = {
            type = "timestamp",
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        FailureReason = {
            type = "string",
        },
        OptimizationJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ModelSource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OptimizationJobModelSource }),
        OptimizationEnvironment = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        DeploymentInstanceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxInstanceCount = {
            type = "integer",
        },
        OptimizationConfigs = {
            type = "list",
            member = M.OptimizationConfig,
            traits = {
                required = true,
            },
        },
        OutputConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OptimizationJobOutputConfig }),
        OptimizationOutput = M.OptimizationOutput,
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StoppingCondition = setmetatable({ traits = {
            required = true,
        } }, { __index = M.StoppingCondition }),
        VpcConfig = M.OptimizationVpcConfig,
    },
}

M.DescribePartnerAppInput = {
    type = "structure",
    id = "DescribePartnerAppInput",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IncludeAvailableUpgrade = {
            type = "boolean",
        },
    },
}

M.ErrorInfo = {
    type = "structure",
    id = "ErrorInfo",
    members = {
        Code = {
            type = "string",
        },
        Reason = {
            type = "string",
        },
    },
}

M.PartnerAppStatus = {
    CREATING = "Creating",
    UPDATING = "Updating",
    DELETING = "Deleting",
    AVAILABLE = "Available",
    FAILED = "Failed",
    UPDATE_FAILED = "UpdateFailed",
    DELETED = "Deleted",
}

M.DescribePartnerAppOutput = {
    type = "structure",
    id = "DescribePartnerAppOutput",
    members = {
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        ExecutionRoleArn = {
            type = "string",
        },
        KmsKeyId = {
            type = "string",
        },
        BaseUrl = {
            type = "string",
        },
        MaintenanceConfig = M.PartnerAppMaintenanceConfig,
        Tier = {
            type = "string",
        },
        Version = {
            type = "string",
        },
        ApplicationConfig = M.PartnerAppConfig,
        AuthType = {
            type = "string",
        },
        EnableIamSessionBasedIdentity = {
            type = "boolean",
        },
        Error = M.ErrorInfo,
        EnableAutoMinorVersionUpgrade = {
            type = "boolean",
        },
        CurrentVersionEolDate = {
            type = "timestamp",
        },
        AvailableUpgrade = M.AvailableUpgrade,
    },
}

M.DescribePipelineInput = {
    type = "structure",
    id = "DescribePipelineInput",
    members = {
        PipelineName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PipelineVersionId = {
            type = "long",
        },
    },
}

M.PipelineStatus = {
    ACTIVE = "Active",
    DELETING = "Deleting",
}

M.DescribePipelineOutput = {
    type = "structure",
    id = "DescribePipelineOutput",
    members = {
        PipelineArn = {
            type = "string",
        },
        PipelineName = {
            type = "string",
        },
        PipelineDisplayName = {
            type = "string",
        },
        PipelineDefinition = {
            type = "string",
        },
        PipelineDescription = {
            type = "string",
        },
        RoleArn = {
            type = "string",
        },
        PipelineStatus = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LastRunTime = {
            type = "timestamp",
        },
        CreatedBy = M.UserContext,
        LastModifiedBy = M.UserContext,
        ParallelismConfiguration = M.ParallelismConfiguration,
        PipelineVersionDisplayName = {
            type = "string",
        },
        PipelineVersionDescription = {
            type = "string",
        },
    },
}

M.DescribePipelineDefinitionForExecutionInput = {
    type = "structure",
    id = "DescribePipelineDefinitionForExecutionInput",
    members = {
        PipelineExecutionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribePipelineDefinitionForExecutionOutput = {
    type = "structure",
    id = "DescribePipelineDefinitionForExecutionOutput",
    members = {
        PipelineDefinition = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
    },
}

M.DescribePipelineExecutionInput = {
    type = "structure",
    id = "DescribePipelineExecutionInput",
    members = {
        PipelineExecutionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MLflowConfiguration = {
    type = "structure",
    id = "MLflowConfiguration",
    members = {
        MlflowResourceArn = {
            type = "string",
        },
        MlflowExperimentName = {
            type = "string",
        },
    },
}

M.PipelineExecutionStatus = {
    EXECUTING = "Executing",
    STOPPING = "Stopping",
    STOPPED = "Stopped",
    FAILED = "Failed",
    SUCCEEDED = "Succeeded",
}

M.PipelineExperimentConfig = {
    type = "structure",
    id = "PipelineExperimentConfig",
    members = {
        ExperimentName = {
            type = "string",
        },
        TrialName = {
            type = "string",
        },
    },
}

M.SelectedStep = {
    type = "structure",
    id = "SelectedStep",
    members = {
        StepName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SelectiveExecutionConfig = {
    type = "structure",
    id = "SelectiveExecutionConfig",
    members = {
        SourcePipelineExecutionArn = {
            type = "string",
        },
        SelectedSteps = {
            type = "list",
            member = M.SelectedStep,
            traits = {
                required = true,
            },
        },
    },
}

M.DescribePipelineExecutionOutput = {
    type = "structure",
    id = "DescribePipelineExecutionOutput",
    members = {
        PipelineArn = {
            type = "string",
        },
        PipelineExecutionArn = {
            type = "string",
        },
        PipelineExecutionDisplayName = {
            type = "string",
        },
        PipelineExecutionStatus = {
            type = "string",
        },
        PipelineExecutionDescription = {
            type = "string",
        },
        PipelineExperimentConfig = M.PipelineExperimentConfig,
        FailureReason = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        CreatedBy = M.UserContext,
        LastModifiedBy = M.UserContext,
        ParallelismConfiguration = M.ParallelismConfiguration,
        SelectiveExecutionConfig = M.SelectiveExecutionConfig,
        PipelineVersionId = {
            type = "long",
        },
        MLflowConfig = M.MLflowConfiguration,
    },
}

M.DescribeProcessingJobInput = {
    type = "structure",
    id = "DescribeProcessingJobInput",
    members = {
        ProcessingJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ProcessingJobStatus = {
    IN_PROGRESS = "InProgress",
    COMPLETED = "Completed",
    FAILED = "Failed",
    STOPPING = "Stopping",
    STOPPED = "Stopped",
}

M.DescribeProcessingJobOutput = {
    type = "structure",
    id = "DescribeProcessingJobOutput",
    members = {
        ProcessingInputs = {
            type = "list",
            member = M.ProcessingInput,
        },
        ProcessingOutputConfig = M.ProcessingOutputConfig,
        ProcessingJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProcessingResources = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ProcessingResources }),
        StoppingCondition = M.ProcessingStoppingCondition,
        AppSpecification = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AppSpecification }),
        Environment = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        NetworkConfig = M.NetworkConfig,
        RoleArn = {
            type = "string",
        },
        ExperimentConfig = M.ExperimentConfig,
        ProcessingJobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProcessingJobStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExitMessage = {
            type = "string",
        },
        FailureReason = {
            type = "string",
        },
        ProcessingEndTime = {
            type = "timestamp",
        },
        ProcessingStartTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        MonitoringScheduleArn = {
            type = "string",
        },
        AutoMLJobArn = {
            type = "string",
        },
        TrainingJobArn = {
            type = "string",
        },
    },
}

M.DescribeProjectInput = {
    type = "structure",
    id = "DescribeProjectInput",
    members = {
        ProjectName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ProjectStatus = {
    PENDING = "Pending",
    CREATE_IN_PROGRESS = "CreateInProgress",
    CREATE_COMPLETED = "CreateCompleted",
    CREATE_FAILED = "CreateFailed",
    DELETE_IN_PROGRESS = "DeleteInProgress",
    DELETE_FAILED = "DeleteFailed",
    DELETE_COMPLETED = "DeleteCompleted",
    UPDATE_IN_PROGRESS = "UpdateInProgress",
    UPDATE_COMPLETED = "UpdateCompleted",
    UPDATE_FAILED = "UpdateFailed",
}

M.ServiceCatalogProvisionedProductDetails = {
    type = "structure",
    id = "ServiceCatalogProvisionedProductDetails",
    members = {
        ProvisionedProductId = {
            type = "string",
        },
        ProvisionedProductStatusMessage = {
            type = "string",
        },
    },
}

M.TemplateProviderDetail = {
    type = "structure",
    id = "TemplateProviderDetail",
    members = {
        CfnTemplateProviderDetail = M.CfnTemplateProviderDetail,
    },
}

M.DescribeProjectOutput = {
    type = "structure",
    id = "DescribeProjectOutput",
    members = {
        ProjectArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProjectName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProjectId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProjectDescription = {
            type = "string",
        },
        ServiceCatalogProvisioningDetails = M.ServiceCatalogProvisioningDetails,
        ServiceCatalogProvisionedProductDetails = M.ServiceCatalogProvisionedProductDetails,
        ProjectStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TemplateProviderDetails = {
            type = "list",
            member = M.TemplateProviderDetail,
        },
        CreatedBy = M.UserContext,
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedBy = M.UserContext,
    },
}

M.DescribeReservedCapacityInput = {
    type = "structure",
    id = "DescribeReservedCapacityInput",
    members = {
        ReservedCapacityArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ReservedCapacityInstanceType = {
    ML_P4D_24XLARGE = "ml.p4d.24xlarge",
    ML_P5_48XLARGE = "ml.p5.48xlarge",
    ML_P5E_48XLARGE = "ml.p5e.48xlarge",
    ML_P5EN_48XLARGE = "ml.p5en.48xlarge",
    ML_TRN1_32XLARGE = "ml.trn1.32xlarge",
    ML_TRN2_48XLARGE = "ml.trn2.48xlarge",
    ML_P6_B200_48XLARGE = "ml.p6-b200.48xlarge",
    ML_P4DE_24XLARGE = "ml.p4de.24xlarge",
    ML_P6E_GB200_36XLARGE = "ml.p6e-gb200.36xlarge",
    ML_P5_4XLARGE = "ml.p5.4xlarge",
    ML_P6_B300_48XLARGE = "ml.p6-b300.48xlarge",
}

M.ReservedCapacityType = {
    ULTRASERVER = "UltraServer",
    INSTANCE = "Instance",
}

M.ReservedCapacityStatus = {
    PENDING = "Pending",
    ACTIVE = "Active",
    SCHEDULED = "Scheduled",
    EXPIRED = "Expired",
    FAILED = "Failed",
}

M.UltraServerSummary = {
    type = "structure",
    id = "UltraServerSummary",
    members = {
        UltraServerType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstanceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UltraServerCount = {
            type = "integer",
        },
        AvailableSpareInstanceCount = {
            type = "integer",
        },
        UnhealthyInstanceCount = {
            type = "integer",
        },
    },
}

M.DescribeReservedCapacityOutput = {
    type = "structure",
    id = "DescribeReservedCapacityOutput",
    members = {
        ReservedCapacityArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ReservedCapacityType = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        AvailabilityZone = {
            type = "string",
        },
        DurationHours = {
            type = "long",
        },
        DurationMinutes = {
            type = "long",
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        InstanceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TotalInstanceCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        AvailableInstanceCount = {
            type = "integer",
        },
        InUseInstanceCount = {
            type = "integer",
        },
        UltraServerSummary = M.UltraServerSummary,
    },
}

M.DescribeSpaceInput = {
    type = "structure",
    id = "DescribeSpaceInput",
    members = {
        DomainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SpaceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SpaceStatus = {
    Deleting = "Deleting",
    Failed = "Failed",
    InService = "InService",
    Pending = "Pending",
    Updating = "Updating",
    Update_Failed = "Update_Failed",
    Delete_Failed = "Delete_Failed",
}

M.DescribeSpaceOutput = {
    type = "structure",
    id = "DescribeSpaceOutput",
    members = {
        DomainId = {
            type = "string",
        },
        SpaceArn = {
            type = "string",
        },
        SpaceName = {
            type = "string",
        },
        HomeEfsFileSystemUid = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        CreationTime = {
            type = "timestamp",
        },
        FailureReason = {
            type = "string",
        },
        SpaceSettings = M.SpaceSettings,
        OwnershipSettings = M.OwnershipSettings,
        SpaceSharingSettings = M.SpaceSharingSettings,
        SpaceDisplayName = {
            type = "string",
        },
        Url = {
            type = "string",
        },
    },
}

M.DescribeStudioLifecycleConfigInput = {
    type = "structure",
    id = "DescribeStudioLifecycleConfigInput",
    members = {
        StudioLifecycleConfigName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeStudioLifecycleConfigOutput = {
    type = "structure",
    id = "DescribeStudioLifecycleConfigOutput",
    members = {
        StudioLifecycleConfigArn = {
            type = "string",
        },
        StudioLifecycleConfigName = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        StudioLifecycleConfigContent = {
            type = "string",
        },
        StudioLifecycleConfigAppType = {
            type = "string",
        },
    },
}

M.DescribeSubscribedWorkteamInput = {
    type = "structure",
    id = "DescribeSubscribedWorkteamInput",
    members = {
        WorkteamArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SubscribedWorkteam = {
    type = "structure",
    id = "SubscribedWorkteam",
    members = {
        WorkteamArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MarketplaceTitle = {
            type = "string",
        },
        SellerName = {
            type = "string",
        },
        MarketplaceDescription = {
            type = "string",
        },
        ListingId = {
            type = "string",
        },
    },
}

M.DescribeSubscribedWorkteamOutput = {
    type = "structure",
    id = "DescribeSubscribedWorkteamOutput",
    members = {
        SubscribedWorkteam = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SubscribedWorkteam }),
    },
}

M.DescribeTrainingJobInput = {
    type = "structure",
    id = "DescribeTrainingJobInput",
    members = {
        TrainingJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MetricData = {
    type = "structure",
    id = "MetricData",
    members = {
        MetricName = {
            type = "string",
        },
        Value = {
            type = "float",
        },
        Timestamp = {
            type = "timestamp",
        },
    },
}

M.MlflowDetails = {
    type = "structure",
    id = "MlflowDetails",
    members = {
        MlflowExperimentId = {
            type = "string",
        },
        MlflowRunId = {
            type = "string",
        },
    },
}

M.ProfilerRuleEvaluationStatus = {
    type = "structure",
    id = "ProfilerRuleEvaluationStatus",
    members = {
        RuleConfigurationName = {
            type = "string",
        },
        RuleEvaluationJobArn = {
            type = "string",
        },
        RuleEvaluationStatus = {
            type = "string",
        },
        StatusDetails = {
            type = "string",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
    },
}

M.ProfilingStatus = {
    ENABLED = "Enabled",
    DISABLED = "Disabled",
}

M.TrainingProgressInfo = {
    type = "structure",
    id = "TrainingProgressInfo",
    members = {
        TotalStepCountPerEpoch = {
            type = "long",
        },
        CurrentStep = {
            type = "long",
        },
        CurrentEpoch = {
            type = "long",
        },
        MaxEpoch = {
            type = "long",
        },
    },
}

M.SecondaryStatus = {
    STARTING = "Starting",
    LAUNCHING_ML_INSTANCES = "LaunchingMLInstances",
    PREPARING_TRAINING_STACK = "PreparingTrainingStack",
    DOWNLOADING = "Downloading",
    DOWNLOADING_TRAINING_IMAGE = "DownloadingTrainingImage",
    TRAINING = "Training",
    UPLOADING = "Uploading",
    STOPPING = "Stopping",
    STOPPED = "Stopped",
    MAX_RUNTIME_EXCEEDED = "MaxRuntimeExceeded",
    COMPLETED = "Completed",
    FAILED = "Failed",
    INTERRUPTED = "Interrupted",
    MAX_WAIT_TIME_EXCEEDED = "MaxWaitTimeExceeded",
    UPDATING = "Updating",
    RESTARTING = "Restarting",
    PENDING = "Pending",
}

M.SecondaryStatusTransition = {
    type = "structure",
    id = "SecondaryStatusTransition",
    members = {
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StartTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        EndTime = {
            type = "timestamp",
        },
        StatusMessage = {
            type = "string",
        },
    },
}

M.WarmPoolResourceStatus = {
    AVAILABLE = "Available",
    TERMINATED = "Terminated",
    REUSED = "Reused",
    INUSE = "InUse",
}

M.WarmPoolStatus = {
    type = "structure",
    id = "WarmPoolStatus",
    members = {
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceRetainedBillableTimeInSeconds = {
            type = "integer",
        },
        ReusedByJob = {
            type = "string",
        },
    },
}

M.DescribeTrainingJobOutput = {
    type = "structure",
    id = "DescribeTrainingJobOutput",
    members = {
        TrainingJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TrainingJobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TuningJobArn = {
            type = "string",
        },
        LabelingJobArn = {
            type = "string",
        },
        AutoMLJobArn = {
            type = "string",
        },
        ModelArtifacts = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ModelArtifacts }),
        TrainingJobStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SecondaryStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FailureReason = {
            type = "string",
        },
        HyperParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        AlgorithmSpecification = M.AlgorithmSpecification,
        RoleArn = {
            type = "string",
        },
        InputDataConfig = {
            type = "list",
            member = M.Channel,
        },
        OutputDataConfig = M.OutputDataConfig,
        ResourceConfig = M.ResourceConfig,
        WarmPoolStatus = M.WarmPoolStatus,
        VpcConfig = M.VpcConfig,
        StoppingCondition = setmetatable({ traits = {
            required = true,
        } }, { __index = M.StoppingCondition }),
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        TrainingStartTime = {
            type = "timestamp",
        },
        TrainingEndTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        SecondaryStatusTransitions = {
            type = "list",
            member = M.SecondaryStatusTransition,
        },
        FinalMetricDataList = {
            type = "list",
            member = M.MetricData,
        },
        EnableNetworkIsolation = {
            type = "boolean",
        },
        EnableInterContainerTrafficEncryption = {
            type = "boolean",
        },
        EnableManagedSpotTraining = {
            type = "boolean",
        },
        CheckpointConfig = M.CheckpointConfig,
        TrainingTimeInSeconds = {
            type = "integer",
        },
        BillableTimeInSeconds = {
            type = "integer",
        },
        BillableTokenCount = {
            type = "long",
        },
        DebugHookConfig = M.DebugHookConfig,
        ExperimentConfig = M.ExperimentConfig,
        DebugRuleConfigurations = {
            type = "list",
            member = M.DebugRuleConfiguration,
        },
        TensorBoardOutputConfig = M.TensorBoardOutputConfig,
        DebugRuleEvaluationStatuses = {
            type = "list",
            member = M.DebugRuleEvaluationStatus,
        },
        ProfilerConfig = M.ProfilerConfig,
        ProfilerRuleConfigurations = {
            type = "list",
            member = M.ProfilerRuleConfiguration,
        },
        ProfilerRuleEvaluationStatuses = {
            type = "list",
            member = M.ProfilerRuleEvaluationStatus,
        },
        ProfilingStatus = {
            type = "string",
        },
        Environment = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        RetryStrategy = M.RetryStrategy,
        RemoteDebugConfig = M.RemoteDebugConfig,
        InfraCheckConfig = M.InfraCheckConfig,
        ServerlessJobConfig = M.ServerlessJobConfig,
        MlflowConfig = M.MlflowConfig,
        ModelPackageConfig = M.ModelPackageConfig,
        MlflowDetails = M.MlflowDetails,
        ProgressInfo = M.TrainingProgressInfo,
        OutputModelPackageArn = {
            type = "string",
        },
    },
}

M.DescribeTrainingPlanInput = {
    type = "structure",
    id = "DescribeTrainingPlanInput",
    members = {
        TrainingPlanName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ReservedCapacitySummary = {
    type = "structure",
    id = "ReservedCapacitySummary",
    members = {
        ReservedCapacityArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ReservedCapacityType = {
            type = "string",
        },
        UltraServerType = {
            type = "string",
        },
        UltraServerCount = {
            type = "integer",
        },
        InstanceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TotalInstanceCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AvailabilityZone = {
            type = "string",
        },
        DurationHours = {
            type = "long",
        },
        DurationMinutes = {
            type = "long",
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
    },
}

M.TrainingPlanStatus = {
    PENDING = "Pending",
    ACTIVE = "Active",
    SCHEDULED = "Scheduled",
    EXPIRED = "Expired",
    FAILED = "Failed",
}

M.SageMakerResourceName = {
    TRAINING_JOB = "training-job",
    HYPERPOD_CLUSTER = "hyperpod-cluster",
    ENDPOINT = "endpoint",
}

M.DescribeTrainingPlanOutput = {
    type = "structure",
    id = "DescribeTrainingPlanOutput",
    members = {
        TrainingPlanArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TrainingPlanName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StatusMessage = {
            type = "string",
        },
        DurationHours = {
            type = "long",
        },
        DurationMinutes = {
            type = "long",
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        UpfrontFee = {
            type = "string",
        },
        CurrencyCode = {
            type = "string",
        },
        TotalInstanceCount = {
            type = "integer",
        },
        AvailableInstanceCount = {
            type = "integer",
        },
        InUseInstanceCount = {
            type = "integer",
        },
        UnhealthyInstanceCount = {
            type = "integer",
        },
        AvailableSpareInstanceCount = {
            type = "integer",
        },
        TotalUltraServerCount = {
            type = "integer",
        },
        TargetResources = {
            type = "list",
            member = { type = "string" },
        },
        ReservedCapacitySummaries = {
            type = "list",
            member = M.ReservedCapacitySummary,
        },
    },
}

M.DescribeTrainingPlanExtensionHistoryInput = {
    type = "structure",
    id = "DescribeTrainingPlanExtensionHistoryInput",
    members = {
        TrainingPlanArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.TrainingPlanExtension = {
    type = "structure",
    id = "TrainingPlanExtension",
    members = {
        TrainingPlanExtensionOfferingId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExtendedAt = {
            type = "timestamp",
        },
        StartDate = {
            type = "timestamp",
        },
        EndDate = {
            type = "timestamp",
        },
        Status = {
            type = "string",
        },
        PaymentStatus = {
            type = "string",
        },
        AvailabilityZone = {
            type = "string",
        },
        AvailabilityZoneId = {
            type = "string",
        },
        DurationHours = {
            type = "integer",
        },
        UpfrontFee = {
            type = "string",
        },
        CurrencyCode = {
            type = "string",
        },
    },
}

M.DescribeTrainingPlanExtensionHistoryOutput = {
    type = "structure",
    id = "DescribeTrainingPlanExtensionHistoryOutput",
    members = {
        TrainingPlanExtensions = {
            type = "list",
            member = M.TrainingPlanExtension,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeTransformJobInput = {
    type = "structure",
    id = "DescribeTransformJobInput",
    members = {
        TransformJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TransformJobStatus = {
    IN_PROGRESS = "InProgress",
    COMPLETED = "Completed",
    FAILED = "Failed",
    STOPPING = "Stopping",
    STOPPED = "Stopped",
}

M.DescribeTransformJobOutput = {
    type = "structure",
    id = "DescribeTransformJobOutput",
    members = {
        TransformJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TransformJobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TransformJobStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FailureReason = {
            type = "string",
        },
        ModelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxConcurrentTransforms = {
            type = "integer",
        },
        ModelClientConfig = M.ModelClientConfig,
        MaxPayloadInMB = {
            type = "integer",
        },
        BatchStrategy = {
            type = "string",
        },
        Environment = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        TransformInput = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TransformInput }),
        TransformOutput = M.TransformOutput,
        DataCaptureConfig = M.BatchDataCaptureConfig,
        TransformResources = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TransformResources }),
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        TransformStartTime = {
            type = "timestamp",
        },
        TransformEndTime = {
            type = "timestamp",
        },
        LabelingJobArn = {
            type = "string",
        },
        AutoMLJobArn = {
            type = "string",
        },
        DataProcessing = M.DataProcessing,
        ExperimentConfig = M.ExperimentConfig,
    },
}

M.DescribeTrialInput = {
    type = "structure",
    id = "DescribeTrialInput",
    members = {
        TrialName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TrialSource = {
    type = "structure",
    id = "TrialSource",
    members = {
        SourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceType = {
            type = "string",
        },
    },
}

M.DescribeTrialOutput = {
    type = "structure",
    id = "DescribeTrialOutput",
    members = {
        TrialName = {
            type = "string",
        },
        TrialArn = {
            type = "string",
        },
        DisplayName = {
            type = "string",
        },
        ExperimentName = {
            type = "string",
        },
        Source = M.TrialSource,
        CreationTime = {
            type = "timestamp",
        },
        CreatedBy = M.UserContext,
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedBy = M.UserContext,
        MetadataProperties = M.MetadataProperties,
    },
}

M.DescribeTrialComponentInput = {
    type = "structure",
    id = "DescribeTrialComponentInput",
    members = {
        TrialComponentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TrialComponentMetricSummary = {
    type = "structure",
    id = "TrialComponentMetricSummary",
    members = {
        MetricName = {
            type = "string",
        },
        SourceArn = {
            type = "string",
        },
        TimeStamp = {
            type = "timestamp",
        },
        Max = {
            type = "double",
        },
        Min = {
            type = "double",
        },
        Last = {
            type = "double",
        },
        Count = {
            type = "integer",
        },
        Avg = {
            type = "double",
        },
        StdDev = {
            type = "double",
        },
    },
}

M.TrialComponentSource = {
    type = "structure",
    id = "TrialComponentSource",
    members = {
        SourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceType = {
            type = "string",
        },
    },
}

M.DescribeTrialComponentOutput = {
    type = "structure",
    id = "DescribeTrialComponentOutput",
    members = {
        TrialComponentName = {
            type = "string",
        },
        TrialComponentArn = {
            type = "string",
        },
        DisplayName = {
            type = "string",
        },
        Source = M.TrialComponentSource,
        Status = M.TrialComponentStatus,
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        CreationTime = {
            type = "timestamp",
        },
        CreatedBy = M.UserContext,
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedBy = M.UserContext,
        Parameters = {
            type = "map",
            key = { type = "string" },
            value = M.TrialComponentParameterValue,
        },
        InputArtifacts = {
            type = "map",
            key = { type = "string" },
            value = M.TrialComponentArtifact,
        },
        OutputArtifacts = {
            type = "map",
            key = { type = "string" },
            value = M.TrialComponentArtifact,
        },
        MetadataProperties = M.MetadataProperties,
        Metrics = {
            type = "list",
            member = M.TrialComponentMetricSummary,
        },
        LineageGroupArn = {
            type = "string",
        },
        Sources = {
            type = "list",
            member = M.TrialComponentSource,
        },
    },
}

M.DescribeUserProfileInput = {
    type = "structure",
    id = "DescribeUserProfileInput",
    members = {
        DomainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserProfileName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UserProfileStatus = {
    Deleting = "Deleting",
    Failed = "Failed",
    InService = "InService",
    Pending = "Pending",
    Updating = "Updating",
    Update_Failed = "Update_Failed",
    Delete_Failed = "Delete_Failed",
}

M.DescribeUserProfileOutput = {
    type = "structure",
    id = "DescribeUserProfileOutput",
    members = {
        DomainId = {
            type = "string",
        },
        UserProfileArn = {
            type = "string",
        },
        UserProfileName = {
            type = "string",
        },
        HomeEfsFileSystemUid = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        CreationTime = {
            type = "timestamp",
        },
        FailureReason = {
            type = "string",
        },
        SingleSignOnUserIdentifier = {
            type = "string",
        },
        SingleSignOnUserValue = {
            type = "string",
        },
        UserSettings = M.UserSettings,
    },
}

M.DescribeWorkforceInput = {
    type = "structure",
    id = "DescribeWorkforceInput",
    members = {
        WorkforceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.OidcConfigForResponse = {
    type = "structure",
    id = "OidcConfigForResponse",
    members = {
        ClientId = {
            type = "string",
        },
        Issuer = {
            type = "string",
        },
        AuthorizationEndpoint = {
            type = "string",
        },
        TokenEndpoint = {
            type = "string",
        },
        UserInfoEndpoint = {
            type = "string",
        },
        LogoutEndpoint = {
            type = "string",
        },
        JwksUri = {
            type = "string",
        },
        Scope = {
            type = "string",
        },
        AuthenticationRequestExtraParams = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.WorkforceStatus = {
    INITIALIZING = "Initializing",
    UPDATING = "Updating",
    DELETING = "Deleting",
    FAILED = "Failed",
    ACTIVE = "Active",
}

M.WorkforceVpcConfigResponse = {
    type = "structure",
    id = "WorkforceVpcConfigResponse",
    members = {
        VpcId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SecurityGroupIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Subnets = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        VpcEndpointId = {
            type = "string",
        },
    },
}

M.Workforce = {
    type = "structure",
    id = "Workforce",
    members = {
        WorkforceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WorkforceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LastUpdatedDate = {
            type = "timestamp",
        },
        SourceIpConfig = M.SourceIpConfig,
        SubDomain = {
            type = "string",
        },
        CognitoConfig = M.CognitoConfig,
        OidcConfig = M.OidcConfigForResponse,
        CreateDate = {
            type = "timestamp",
        },
        WorkforceVpcConfig = M.WorkforceVpcConfigResponse,
        Status = {
            type = "string",
        },
        FailureReason = {
            type = "string",
        },
        IpAddressType = {
            type = "string",
        },
    },
}

M.DescribeWorkforceOutput = {
    type = "structure",
    id = "DescribeWorkforceOutput",
    members = {
        Workforce = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Workforce }),
    },
}

M.DescribeWorkteamInput = {
    type = "structure",
    id = "DescribeWorkteamInput",
    members = {
        WorkteamName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Workteam = {
    type = "structure",
    id = "Workteam",
    members = {
        WorkteamName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MemberDefinitions = {
            type = "list",
            member = M.MemberDefinition,
            traits = {
                required = true,
            },
        },
        WorkteamArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WorkforceArn = {
            type = "string",
        },
        ProductListingIds = {
            type = "list",
            member = { type = "string" },
        },
        Description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SubDomain = {
            type = "string",
        },
        CreateDate = {
            type = "timestamp",
        },
        LastUpdatedDate = {
            type = "timestamp",
        },
        NotificationConfiguration = M.NotificationConfiguration,
        WorkerAccessConfiguration = M.WorkerAccessConfiguration,
    },
}

M.DescribeWorkteamOutput = {
    type = "structure",
    id = "DescribeWorkteamOutput",
    members = {
        Workteam = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Workteam }),
    },
}

M.ProductionVariantServerlessUpdateConfig = {
    type = "structure",
    id = "ProductionVariantServerlessUpdateConfig",
    members = {
        MaxConcurrency = {
            type = "integer",
        },
        ProvisionedConcurrency = {
            type = "integer",
        },
    },
}

M.DesiredWeightAndCapacity = {
    type = "structure",
    id = "DesiredWeightAndCapacity",
    members = {
        VariantName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DesiredWeight = {
            type = "float",
        },
        DesiredInstanceCount = {
            type = "integer",
        },
        ServerlessUpdateConfig = M.ProductionVariantServerlessUpdateConfig,
    },
}

M.DetachClusterNodeVolumeInput = {
    type = "structure",
    id = "DetachClusterNodeVolumeInput",
    members = {
        ClusterArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NodeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VolumeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DetachClusterNodeVolumeOutput = {
    type = "structure",
    id = "DetachClusterNodeVolumeOutput",
    members = {
        ClusterArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NodeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VolumeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AttachTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        Status = {
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
    },
}

M.Device = {
    type = "structure",
    id = "Device",
    members = {
        DeviceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        IotThingName = {
            type = "string",
        },
    },
}

M.DeviceDeploymentStatus = {
    ReadyToDeploy = "READYTODEPLOY",
    InProgress = "INPROGRESS",
    Deployed = "DEPLOYED",
    Failed = "FAILED",
    Stopping = "STOPPING",
    Stopped = "STOPPED",
}

M.DeviceDeploymentSummary = {
    type = "structure",
    id = "DeviceDeploymentSummary",
    members = {
        EdgeDeploymentPlanArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EdgeDeploymentPlanName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StageName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeployedStageName = {
            type = "string",
        },
        DeviceFleetName = {
            type = "string",
        },
        DeviceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeviceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeviceDeploymentStatus = {
            type = "string",
        },
        DeviceDeploymentStatusMessage = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        DeploymentStartTime = {
            type = "timestamp",
        },
    },
}

M.DeviceFleetSummary = {
    type = "structure",
    id = "DeviceFleetSummary",
    members = {
        DeviceFleetArn = {
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
        CreationTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
    },
}

M.DeviceStats = {
    type = "structure",
    id = "DeviceStats",
    members = {
        ConnectedDeviceCount = {
            type = "long",
            traits = {
                required = true,
            },
        },
        RegisteredDeviceCount = {
            type = "long",
            traits = {
                required = true,
            },
        },
    },
}

M.EdgeModelSummary = {
    type = "structure",
    id = "EdgeModelSummary",
    members = {
        ModelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ModelVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeviceSummary = {
    type = "structure",
    id = "DeviceSummary",
    members = {
        DeviceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeviceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        DeviceFleetName = {
            type = "string",
        },
        IotThingName = {
            type = "string",
        },
        RegistrationTime = {
            type = "timestamp",
        },
        LatestHeartbeat = {
            type = "timestamp",
        },
        Models = {
            type = "list",
            member = M.EdgeModelSummary,
        },
        AgentVersion = {
            type = "string",
        },
    },
}

M.Direction = {
    BOTH = "Both",
    ASCENDANTS = "Ascendants",
    DESCENDANTS = "Descendants",
}

M.DisableSagemakerServicecatalogPortfolioInput = {
    type = "structure",
    id = "DisableSagemakerServicecatalogPortfolioInput",
}

M.DisableSagemakerServicecatalogPortfolioOutput = {
    type = "structure",
    id = "DisableSagemakerServicecatalogPortfolioOutput",
}

M.DisassociateTrialComponentInput = {
    type = "structure",
    id = "DisassociateTrialComponentInput",
    members = {
        TrialComponentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TrialName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateTrialComponentOutput = {
    type = "structure",
    id = "DisassociateTrialComponentOutput",
    members = {
        TrialComponentArn = {
            type = "string",
        },
        TrialArn = {
            type = "string",
        },
    },
}

M.DomainDetails = {
    type = "structure",
    id = "DomainDetails",
    members = {
        DomainArn = {
            type = "string",
        },
        DomainId = {
            type = "string",
        },
        DomainName = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        Url = {
            type = "string",
        },
    },
}

M.RStudioServerProDomainSettingsForUpdate = {
    type = "structure",
    id = "RStudioServerProDomainSettingsForUpdate",
    members = {
        DomainExecutionRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DefaultResourceSpec = M.ResourceSpec,
        RStudioConnectUrl = {
            type = "string",
        },
        RStudioPackageManagerUrl = {
            type = "string",
        },
    },
}

M.DomainSettingsForUpdate = {
    type = "structure",
    id = "DomainSettingsForUpdate",
    members = {
        RStudioServerProDomainSettingsForUpdate = M.RStudioServerProDomainSettingsForUpdate,
        ExecutionRoleIdentityConfig = {
            type = "string",
        },
        SecurityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        TrustedIdentityPropagationSettings = M.TrustedIdentityPropagationSettings,
        DockerSettings = M.DockerSettings,
        AmazonQSettings = M.AmazonQSettings,
        UnifiedStudioSettings = M.UnifiedStudioSettings,
        IpAddressType = {
            type = "string",
        },
    },
}

M.PredefinedMetricSpecification = {
    type = "structure",
    id = "PredefinedMetricSpecification",
    members = {
        PredefinedMetricType = {
            type = "string",
        },
    },
}

M.MetricSpecification = {
    type = "union",
    id = "MetricSpecification",
    members = {
        Predefined = M.PredefinedMetricSpecification,
        Customized = M.CustomizedMetricSpecification,
    },
}

M.TargetTrackingScalingPolicyConfiguration = {
    type = "structure",
    id = "TargetTrackingScalingPolicyConfiguration",
    members = {
        MetricSpecification = M.MetricSpecification,
        TargetValue = {
            type = "double",
        },
    },
}

M.ScalingPolicy = {
    type = "union",
    id = "ScalingPolicy",
    members = {
        TargetTracking = M.TargetTrackingScalingPolicyConfiguration,
    },
}

M.DynamicScalingConfiguration = {
    type = "structure",
    id = "DynamicScalingConfiguration",
    members = {
        MinCapacity = {
            type = "integer",
        },
        MaxCapacity = {
            type = "integer",
        },
        ScaleInCooldown = {
            type = "integer",
        },
        ScaleOutCooldown = {
            type = "integer",
        },
        ScalingPolicies = {
            type = "list",
            member = M.ScalingPolicy,
        },
    },
}

M.Edge = {
    type = "structure",
    id = "Edge",
    members = {
        SourceArn = {
            type = "string",
        },
        DestinationArn = {
            type = "string",
        },
        AssociationType = {
            type = "string",
        },
    },
}

M.EdgeDeploymentPlanSummary = {
    type = "structure",
    id = "EdgeDeploymentPlanSummary",
    members = {
        EdgeDeploymentPlanArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EdgeDeploymentPlanName = {
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
        EdgeDeploymentSuccess = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        EdgeDeploymentPending = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        EdgeDeploymentFailed = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
    },
}

M.EdgeModelStat = {
    type = "structure",
    id = "EdgeModelStat",
    members = {
        ModelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ModelVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OfflineDeviceCount = {
            type = "long",
            traits = {
                required = true,
            },
        },
        ConnectedDeviceCount = {
            type = "long",
            traits = {
                required = true,
            },
        },
        ActiveDeviceCount = {
            type = "long",
            traits = {
                required = true,
            },
        },
        SamplingDeviceCount = {
            type = "long",
            traits = {
                required = true,
            },
        },
    },
}

M.EdgePackagingJobSummary = {
    type = "structure",
    id = "EdgePackagingJobSummary",
    members = {
        EdgePackagingJobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EdgePackagingJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EdgePackagingJobStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CompilationJobName = {
            type = "string",
        },
        ModelName = {
            type = "string",
        },
        ModelVersion = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
    },
}

M.EMRStepMetadata = {
    type = "structure",
    id = "EMRStepMetadata",
    members = {
        ClusterId = {
            type = "string",
        },
        StepId = {
            type = "string",
        },
        StepName = {
            type = "string",
        },
        LogFilePath = {
            type = "string",
        },
    },
}

M.EnableSagemakerServicecatalogPortfolioInput = {
    type = "structure",
    id = "EnableSagemakerServicecatalogPortfolioInput",
}

M.EnableSagemakerServicecatalogPortfolioOutput = {
    type = "structure",
    id = "EnableSagemakerServicecatalogPortfolioOutput",
}

M.MonitoringSchedule = {
    type = "structure",
    id = "MonitoringSchedule",
    members = {
        MonitoringScheduleArn = {
            type = "string",
        },
        MonitoringScheduleName = {
            type = "string",
        },
        MonitoringScheduleStatus = {
            type = "string",
        },
        MonitoringType = {
            type = "string",
        },
        FailureReason = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        MonitoringScheduleConfig = M.MonitoringScheduleConfig,
        EndpointName = {
            type = "string",
        },
        LastMonitoringExecutionSummary = M.MonitoringExecutionSummary,
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.Endpoint = {
    type = "structure",
    id = "Endpoint",
    members = {
        EndpointName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EndpointArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EndpointConfigName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProductionVariants = {
            type = "list",
            member = M.ProductionVariantSummary,
        },
        DataCaptureConfig = M.DataCaptureConfigSummary,
        EndpointStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FailureReason = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        MonitoringSchedules = {
            type = "list",
            member = M.MonitoringSchedule,
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        ShadowProductionVariants = {
            type = "list",
            member = M.ProductionVariantSummary,
        },
    },
}

M.EndpointConfigSortKey = {
    Name = "Name",
    CreationTime = "CreationTime",
}

M.EndpointConfigStepMetadata = {
    type = "structure",
    id = "EndpointConfigStepMetadata",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.EndpointConfigSummary = {
    type = "structure",
    id = "EndpointConfigSummary",
    members = {
        EndpointConfigName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EndpointConfigArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.EndpointSortKey = {
    Name = "Name",
    CreationTime = "CreationTime",
    Status = "Status",
}

M.EndpointStepMetadata = {
    type = "structure",
    id = "EndpointStepMetadata",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.EndpointSummary = {
    type = "structure",
    id = "EndpointSummary",
    members = {
        EndpointName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EndpointArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        EndpointStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EventSortBy = {
    EVENT_TIME = "EventTime",
}

M.Experiment = {
    type = "structure",
    id = "Experiment",
    members = {
        ExperimentName = {
            type = "string",
        },
        ExperimentArn = {
            type = "string",
        },
        DisplayName = {
            type = "string",
        },
        Source = M.ExperimentSource,
        Description = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        CreatedBy = M.UserContext,
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedBy = M.UserContext,
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.ExperimentSummary = {
    type = "structure",
    id = "ExperimentSummary",
    members = {
        ExperimentArn = {
            type = "string",
        },
        ExperimentName = {
            type = "string",
        },
        DisplayName = {
            type = "string",
        },
        ExperimentSource = M.ExperimentSource,
        CreationTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
    },
}

M.ExtendTrainingPlanInput = {
    type = "structure",
    id = "ExtendTrainingPlanInput",
    members = {
        TrainingPlanExtensionOfferingId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ExtendTrainingPlanOutput = {
    type = "structure",
    id = "ExtendTrainingPlanOutput",
    members = {
        TrainingPlanExtensions = {
            type = "list",
            member = M.TrainingPlanExtension,
            traits = {
                required = true,
            },
        },
    },
}

M.FailStepMetadata = {
    type = "structure",
    id = "FailStepMetadata",
    members = {
        ErrorMessage = {
            type = "string",
        },
    },
}

M.FeatureGroup = {
    type = "structure",
    id = "FeatureGroup",
    members = {
        FeatureGroupArn = {
            type = "string",
        },
        FeatureGroupName = {
            type = "string",
        },
        RecordIdentifierFeatureName = {
            type = "string",
        },
        EventTimeFeatureName = {
            type = "string",
        },
        FeatureDefinitions = {
            type = "list",
            member = M.FeatureDefinition,
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        OnlineStoreConfig = M.OnlineStoreConfig,
        OfflineStoreConfig = M.OfflineStoreConfig,
        RoleArn = {
            type = "string",
        },
        FeatureGroupStatus = {
            type = "string",
        },
        OfflineStoreStatus = M.OfflineStoreStatus,
        LastUpdateStatus = M.LastUpdateStatus,
        FailureReason = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.FeatureGroupSortBy = {
    NAME = "Name",
    FEATURE_GROUP_STATUS = "FeatureGroupStatus",
    OFFLINE_STORE_STATUS = "OfflineStoreStatus",
    CREATION_TIME = "CreationTime",
}

M.FeatureGroupSortOrder = {
    ASCENDING = "Ascending",
    DESCENDING = "Descending",
}

M.FeatureGroupSummary = {
    type = "structure",
    id = "FeatureGroupSummary",
    members = {
        FeatureGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FeatureGroupArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        FeatureGroupStatus = {
            type = "string",
        },
        OfflineStoreStatus = M.OfflineStoreStatus,
    },
}

M.FeatureMetadata = {
    type = "structure",
    id = "FeatureMetadata",
    members = {
        FeatureGroupArn = {
            type = "string",
        },
        FeatureGroupName = {
            type = "string",
        },
        FeatureName = {
            type = "string",
        },
        FeatureType = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        Description = {
            type = "string",
        },
        Parameters = {
            type = "list",
            member = M.FeatureParameter,
        },
    },
}

M.Operator = {
    EQUALS = "Equals",
    NOT_EQUALS = "NotEquals",
    GREATER_THAN = "GreaterThan",
    GREATER_THAN_OR_EQUAL_TO = "GreaterThanOrEqualTo",
    LESS_THAN = "LessThan",
    LESS_THAN_OR_EQUAL_TO = "LessThanOrEqualTo",
    CONTAINS = "Contains",
    EXISTS = "Exists",
    NOT_EXISTS = "NotExists",
    IN = "In",
}

M.Filter = {
    type = "structure",
    id = "Filter",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Operator = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.FlowDefinitionSummary = {
    type = "structure",
    id = "FlowDefinitionSummary",
    members = {
        FlowDefinitionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FlowDefinitionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FlowDefinitionStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        FailureReason = {
            type = "string",
        },
    },
}

M.GetDeviceFleetReportInput = {
    type = "structure",
    id = "GetDeviceFleetReportInput",
    members = {
        DeviceFleetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetDeviceFleetReportOutput = {
    type = "structure",
    id = "GetDeviceFleetReportOutput",
    members = {
        DeviceFleetArn = {
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
        OutputConfig = M.EdgeOutputConfig,
        Description = {
            type = "string",
        },
        ReportGenerated = {
            type = "timestamp",
        },
        DeviceStats = M.DeviceStats,
        AgentVersions = {
            type = "list",
            member = M.AgentVersion,
        },
        ModelStats = {
            type = "list",
            member = M.EdgeModelStat,
        },
    },
}

M.GetLineageGroupPolicyInput = {
    type = "structure",
    id = "GetLineageGroupPolicyInput",
    members = {
        LineageGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetLineageGroupPolicyOutput = {
    type = "structure",
    id = "GetLineageGroupPolicyOutput",
    members = {
        LineageGroupArn = {
            type = "string",
        },
        ResourcePolicy = {
            type = "string",
        },
    },
}

M.GetModelPackageGroupPolicyInput = {
    type = "structure",
    id = "GetModelPackageGroupPolicyInput",
    members = {
        ModelPackageGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetModelPackageGroupPolicyOutput = {
    type = "structure",
    id = "GetModelPackageGroupPolicyOutput",
    members = {
        ResourcePolicy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetSagemakerServicecatalogPortfolioStatusInput = {
    type = "structure",
    id = "GetSagemakerServicecatalogPortfolioStatusInput",
}

M.SagemakerServicecatalogStatus = {
    ENABLED = "Enabled",
    DISABLED = "Disabled",
}

M.GetSagemakerServicecatalogPortfolioStatusOutput = {
    type = "structure",
    id = "GetSagemakerServicecatalogPortfolioStatusOutput",
    members = {
        Status = {
            type = "string",
        },
    },
}

M.ScalingPolicyObjective = {
    type = "structure",
    id = "ScalingPolicyObjective",
    members = {
        MinInvocationsPerMinute = {
            type = "integer",
        },
        MaxInvocationsPerMinute = {
            type = "integer",
        },
    },
}

M.GetScalingConfigurationRecommendationInput = {
    type = "structure",
    id = "GetScalingConfigurationRecommendationInput",
    members = {
        InferenceRecommendationsJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RecommendationId = {
            type = "string",
        },
        EndpointName = {
            type = "string",
        },
        TargetCpuUtilizationPerCore = {
            type = "integer",
        },
        ScalingPolicyObjective = M.ScalingPolicyObjective,
    },
}

M.ScalingPolicyMetric = {
    type = "structure",
    id = "ScalingPolicyMetric",
    members = {
        InvocationsPerInstance = {
            type = "integer",
        },
        ModelLatency = {
            type = "integer",
        },
    },
}

M.GetScalingConfigurationRecommendationOutput = {
    type = "structure",
    id = "GetScalingConfigurationRecommendationOutput",
    members = {
        InferenceRecommendationsJobName = {
            type = "string",
        },
        RecommendationId = {
            type = "string",
        },
        EndpointName = {
            type = "string",
        },
        TargetCpuUtilizationPerCore = {
            type = "integer",
        },
        ScalingPolicyObjective = M.ScalingPolicyObjective,
        Metric = M.ScalingPolicyMetric,
        DynamicScalingConfiguration = M.DynamicScalingConfiguration,
    },
}

M.ResourceType = {
    TRAINING_JOB = "TrainingJob",
    EXPERIMENT = "Experiment",
    EXPERIMENT_TRIAL = "ExperimentTrial",
    EXPERIMENT_TRIAL_COMPONENT = "ExperimentTrialComponent",
    ENDPOINT = "Endpoint",
    MODEL = "Model",
    MODEL_PACKAGE = "ModelPackage",
    MODEL_PACKAGE_GROUP = "ModelPackageGroup",
    PIPELINE = "Pipeline",
    PIPELINE_EXECUTION = "PipelineExecution",
    FEATURE_GROUP = "FeatureGroup",
    FEATURE_METADATA = "FeatureMetadata",
    IMAGE = "Image",
    IMAGE_VERSION = "ImageVersion",
    PROJECT = "Project",
    HYPER_PARAMETER_TUNING_JOB = "HyperParameterTuningJob",
    MODEL_CARD = "ModelCard",
    PIPELINE_VERSION = "PipelineVersion",
}

M.PropertyNameQuery = {
    type = "structure",
    id = "PropertyNameQuery",
    members = {
        PropertyNameHint = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SuggestionQuery = {
    type = "structure",
    id = "SuggestionQuery",
    members = {
        PropertyNameQuery = M.PropertyNameQuery,
    },
}

M.GetSearchSuggestionsInput = {
    type = "structure",
    id = "GetSearchSuggestionsInput",
    members = {
        Resource = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SuggestionQuery = M.SuggestionQuery,
    },
}

M.PropertyNameSuggestion = {
    type = "structure",
    id = "PropertyNameSuggestion",
    members = {
        PropertyName = {
            type = "string",
        },
    },
}

M.GetSearchSuggestionsOutput = {
    type = "structure",
    id = "GetSearchSuggestionsOutput",
    members = {
        PropertyNameSuggestions = {
            type = "list",
            member = M.PropertyNameSuggestion,
        },
    },
}

M.GitConfigForUpdate = {
    type = "structure",
    id = "GitConfigForUpdate",
    members = {
        SecretArn = {
            type = "string",
        },
    },
}

M.HubContentInfo = {
    type = "structure",
    id = "HubContentInfo",
    members = {
        HubContentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HubContentArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SageMakerPublicHubContentArn = {
            type = "string",
        },
        HubContentVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HubContentType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DocumentSchemaVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HubContentDisplayName = {
            type = "string",
        },
        HubContentDescription = {
            type = "string",
        },
        SupportStatus = {
            type = "string",
        },
        HubContentSearchKeywords = {
            type = "list",
            member = { type = "string" },
        },
        HubContentStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        OriginalCreationTime = {
            type = "timestamp",
        },
    },
}

M.HubContentSortBy = {
    HUB_CONTENT_NAME = "HubContentName",
    CREATION_TIME = "CreationTime",
    HUB_CONTENT_STATUS = "HubContentStatus",
}

M.HubInfo = {
    type = "structure",
    id = "HubInfo",
    members = {
        HubName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HubArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HubDisplayName = {
            type = "string",
        },
        HubDescription = {
            type = "string",
        },
        HubSearchKeywords = {
            type = "list",
            member = { type = "string" },
        },
        HubStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.HubSortBy = {
    HUB_NAME = "HubName",
    CREATION_TIME = "CreationTime",
    HUB_STATUS = "HubStatus",
    ACCOUNT_ID_OWNER = "AccountIdOwner",
}

M.HumanTaskUiSummary = {
    type = "structure",
    id = "HumanTaskUiSummary",
    members = {
        HumanTaskUiName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HumanTaskUiArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.HyperParameterTuningJobSearchEntity = {
    type = "structure",
    id = "HyperParameterTuningJobSearchEntity",
    members = {
        HyperParameterTuningJobName = {
            type = "string",
        },
        HyperParameterTuningJobArn = {
            type = "string",
        },
        HyperParameterTuningJobConfig = M.HyperParameterTuningJobConfig,
        TrainingJobDefinition = M.HyperParameterTrainingJobDefinition,
        TrainingJobDefinitions = {
            type = "list",
            member = M.HyperParameterTrainingJobDefinition,
        },
        HyperParameterTuningJobStatus = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        HyperParameterTuningEndTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        TrainingJobStatusCounters = M.TrainingJobStatusCounters,
        ObjectiveStatusCounters = M.ObjectiveStatusCounters,
        BestTrainingJob = M.HyperParameterTrainingJobSummary,
        OverallBestTrainingJob = M.HyperParameterTrainingJobSummary,
        WarmStartConfig = M.HyperParameterTuningJobWarmStartConfig,
        FailureReason = {
            type = "string",
        },
        TuningJobCompletionDetails = M.HyperParameterTuningJobCompletionDetails,
        ConsumedResources = M.HyperParameterTuningJobConsumedResources,
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.HyperParameterTuningJobSortByOptions = {
    Name = "Name",
    Status = "Status",
    CreationTime = "CreationTime",
}

M.HyperParameterTuningJobSummary = {
    type = "structure",
    id = "HyperParameterTuningJobSummary",
    members = {
        HyperParameterTuningJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HyperParameterTuningJobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HyperParameterTuningJobStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Strategy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        HyperParameterTuningEndTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        TrainingJobStatusCounters = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TrainingJobStatusCounters }),
        ObjectiveStatusCounters = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ObjectiveStatusCounters }),
        ResourceLimits = M.ResourceLimits,
    },
}

M.Image = {
    type = "structure",
    id = "Image",
    members = {
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        DisplayName = {
            type = "string",
        },
        FailureReason = {
            type = "string",
        },
        ImageArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ImageName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ImageStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ImageSortBy = {
    CREATION_TIME = "CREATION_TIME",
    LAST_MODIFIED_TIME = "LAST_MODIFIED_TIME",
    IMAGE_NAME = "IMAGE_NAME",
}

M.ImageSortOrder = {
    ASCENDING = "ASCENDING",
    DESCENDING = "DESCENDING",
}

M.ImageVersion = {
    type = "structure",
    id = "ImageVersion",
    members = {
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        FailureReason = {
            type = "string",
        },
        ImageArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ImageVersionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ImageVersionStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        Version = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.ImageVersionSortBy = {
    CREATION_TIME = "CREATION_TIME",
    LAST_MODIFIED_TIME = "LAST_MODIFIED_TIME",
    VERSION = "VERSION",
}

M.ImageVersionSortOrder = {
    ASCENDING = "ASCENDING",
    DESCENDING = "DESCENDING",
}

M.ImportHubContentInput = {
    type = "structure",
    id = "ImportHubContentInput",
    members = {
        HubContentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HubContentVersion = {
            type = "string",
        },
        HubContentType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DocumentSchemaVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HubName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HubContentDisplayName = {
            type = "string",
        },
        HubContentDescription = {
            type = "string",
        },
        HubContentMarkdown = {
            type = "string",
        },
        HubContentDocument = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SupportStatus = {
            type = "string",
        },
        HubContentSearchKeywords = {
            type = "list",
            member = { type = "string" },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.ImportHubContentOutput = {
    type = "structure",
    id = "ImportHubContentOutput",
    members = {
        HubArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HubContentArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InferenceComponentMetadata = {
    type = "structure",
    id = "InferenceComponentMetadata",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.InferenceComponentSortKey = {
    Name = "Name",
    CreationTime = "CreationTime",
    Status = "Status",
}

M.InferenceComponentSummary = {
    type = "structure",
    id = "InferenceComponentSummary",
    members = {
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        InferenceComponentArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InferenceComponentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EndpointArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EndpointName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VariantName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InferenceComponentStatus = {
            type = "string",
        },
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.InferenceExperimentSummary = {
    type = "structure",
    id = "InferenceExperimentSummary",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Schedule = M.InferenceExperimentSchedule,
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StatusReason = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        CompletionTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        RoleArn = {
            type = "string",
        },
    },
}

M.InferenceExperimentStopDesiredState = {
    COMPLETED = "Completed",
    CANCELLED = "Cancelled",
}

M.InferenceRecommendationsJob = {
    type = "structure",
    id = "InferenceRecommendationsJob",
    members = {
        JobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        JobDescription = {
            type = "string",
            traits = {
                required = true,
            },
        },
        JobType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        JobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        CompletionTime = {
            type = "timestamp",
        },
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        FailureReason = {
            type = "string",
        },
        ModelName = {
            type = "string",
        },
        SamplePayloadUrl = {
            type = "string",
        },
        ModelPackageVersionArn = {
            type = "string",
        },
    },
}

M.RecommendationJobInferenceBenchmark = {
    type = "structure",
    id = "RecommendationJobInferenceBenchmark",
    members = {
        Metrics = M.RecommendationMetrics,
        EndpointMetrics = M.InferenceMetrics,
        EndpointConfiguration = M.EndpointOutputConfiguration,
        ModelConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ModelConfiguration }),
        FailureReason = {
            type = "string",
        },
        InvocationEndTime = {
            type = "timestamp",
        },
        InvocationStartTime = {
            type = "timestamp",
        },
    },
}

M.RecommendationStepType = {
    BENCHMARK = "BENCHMARK",
}

M.InferenceRecommendationsJobStep = {
    type = "structure",
    id = "InferenceRecommendationsJobStep",
    members = {
        StepType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        JobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InferenceBenchmark = M.RecommendationJobInferenceBenchmark,
    },
}

M.LabelCountersForWorkteam = {
    type = "structure",
    id = "LabelCountersForWorkteam",
    members = {
        HumanLabeled = {
            type = "integer",
        },
        PendingHuman = {
            type = "integer",
        },
        Total = {
            type = "integer",
        },
    },
}

M.LabelingJobForWorkteamSummary = {
    type = "structure",
    id = "LabelingJobForWorkteamSummary",
    members = {
        LabelingJobName = {
            type = "string",
        },
        JobReferenceCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WorkRequesterAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LabelCounters = M.LabelCountersForWorkteam,
        NumberOfHumanWorkersPerDataObject = {
            type = "integer",
        },
    },
}

M.LabelingJobSummary = {
    type = "structure",
    id = "LabelingJobSummary",
    members = {
        LabelingJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LabelingJobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LabelingJobStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LabelCounters = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LabelCounters }),
        WorkteamArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PreHumanTaskLambdaArn = {
            type = "string",
        },
        AnnotationConsolidationLambdaArn = {
            type = "string",
        },
        FailureReason = {
            type = "string",
        },
        LabelingJobOutput = M.LabelingJobOutput,
        InputConfig = M.LabelingJobInputConfig,
    },
}

M.LambdaStepMetadata = {
    type = "structure",
    id = "LambdaStepMetadata",
    members = {
        Arn = {
            type = "string",
        },
        OutputParameters = {
            type = "list",
            member = M.OutputParameter,
        },
    },
}

M.LineageGroupSummary = {
    type = "structure",
    id = "LineageGroupSummary",
    members = {
        LineageGroupArn = {
            type = "string",
        },
        LineageGroupName = {
            type = "string",
        },
        DisplayName = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
    },
}

M.LineageMetadata = {
    type = "structure",
    id = "LineageMetadata",
    members = {
        ActionArns = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        ArtifactArns = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        ContextArns = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Associations = {
            type = "list",
            member = M.AssociationInfo,
        },
    },
}

M.LineageType = {
    TRIAL_COMPONENT = "TrialComponent",
    ARTIFACT = "Artifact",
    CONTEXT = "Context",
    ACTION = "Action",
}

M.SortActionsBy = {
    NAME = "Name",
    CREATION_TIME = "CreationTime",
}

M.SortOrder = {
    ASCENDING = "Ascending",
    DESCENDING = "Descending",
}

M.ListActionsInput = {
    type = "structure",
    id = "ListActionsInput",
    members = {
        SourceUri = {
            type = "string",
        },
        ActionType = {
            type = "string",
        },
        CreatedAfter = {
            type = "timestamp",
        },
        CreatedBefore = {
            type = "timestamp",
        },
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListActionsOutput = {
    type = "structure",
    id = "ListActionsOutput",
    members = {
        ActionSummaries = {
            type = "list",
            member = M.ActionSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListAIBenchmarkJobsSortBy = {
    NAME = "Name",
    CREATION_TIME = "CreationTime",
    STATUS = "Status",
}

M.ListAIBenchmarkJobsInput = {
    type = "structure",
    id = "ListAIBenchmarkJobsInput",
    members = {
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        NameContains = {
            type = "string",
        },
        StatusEquals = {
            type = "string",
        },
        CreationTimeAfter = {
            type = "timestamp",
        },
        CreationTimeBefore = {
            type = "timestamp",
        },
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
    },
}

M.ListAIBenchmarkJobsOutput = {
    type = "structure",
    id = "ListAIBenchmarkJobsOutput",
    members = {
        AIBenchmarkJobs = {
            type = "list",
            member = M.AIBenchmarkJobSummary,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListAIRecommendationJobsSortBy = {
    NAME = "Name",
    CREATION_TIME = "CreationTime",
    STATUS = "Status",
}

M.ListAIRecommendationJobsInput = {
    type = "structure",
    id = "ListAIRecommendationJobsInput",
    members = {
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        NameContains = {
            type = "string",
        },
        StatusEquals = {
            type = "string",
        },
        CreationTimeAfter = {
            type = "timestamp",
        },
        CreationTimeBefore = {
            type = "timestamp",
        },
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
    },
}

M.ListAIRecommendationJobsOutput = {
    type = "structure",
    id = "ListAIRecommendationJobsOutput",
    members = {
        AIRecommendationJobs = {
            type = "list",
            member = M.AIRecommendationJobSummary,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListAIWorkloadConfigsSortBy = {
    NAME = "Name",
    CREATION_TIME = "CreationTime",
}

M.ListAIWorkloadConfigsInput = {
    type = "structure",
    id = "ListAIWorkloadConfigsInput",
    members = {
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        NameContains = {
            type = "string",
        },
        CreationTimeAfter = {
            type = "timestamp",
        },
        CreationTimeBefore = {
            type = "timestamp",
        },
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
    },
}

M.ListAIWorkloadConfigsOutput = {
    type = "structure",
    id = "ListAIWorkloadConfigsOutput",
    members = {
        AIWorkloadConfigs = {
            type = "list",
            member = M.AIWorkloadConfigSummary,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListAlgorithmsInput = {
    type = "structure",
    id = "ListAlgorithmsInput",
    members = {
        CreationTimeAfter = {
            type = "timestamp",
        },
        CreationTimeBefore = {
            type = "timestamp",
        },
        MaxResults = {
            type = "integer",
        },
        NameContains = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
    },
}

M.ListAlgorithmsOutput = {
    type = "structure",
    id = "ListAlgorithmsOutput",
    members = {
        AlgorithmSummaryList = {
            type = "list",
            member = M.AlgorithmSummary,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListAliasesInput = {
    type = "structure",
    id = "ListAliasesInput",
    members = {
        ImageName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Alias = {
            type = "string",
        },
        Version = {
            type = "integer",
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListAliasesOutput = {
    type = "structure",
    id = "ListAliasesOutput",
    members = {
        SageMakerImageVersionAliases = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListAppImageConfigsInput = {
    type = "structure",
    id = "ListAppImageConfigsInput",
    members = {
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        NameContains = {
            type = "string",
        },
        CreationTimeBefore = {
            type = "timestamp",
        },
        CreationTimeAfter = {
            type = "timestamp",
        },
        ModifiedTimeBefore = {
            type = "timestamp",
        },
        ModifiedTimeAfter = {
            type = "timestamp",
        },
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
    },
}

M.ListAppImageConfigsOutput = {
    type = "structure",
    id = "ListAppImageConfigsOutput",
    members = {
        NextToken = {
            type = "string",
        },
        AppImageConfigs = {
            type = "list",
            member = M.AppImageConfigDetails,
        },
    },
}

M.ListAppsInput = {
    type = "structure",
    id = "ListAppsInput",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        SortOrder = {
            type = "string",
        },
        SortBy = {
            type = "string",
        },
        DomainIdEquals = {
            type = "string",
        },
        UserProfileNameEquals = {
            type = "string",
        },
        SpaceNameEquals = {
            type = "string",
        },
    },
}

M.ListAppsOutput = {
    type = "structure",
    id = "ListAppsOutput",
    members = {
        Apps = {
            type = "list",
            member = M.AppDetails,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.SortArtifactsBy = {
    CREATION_TIME = "CreationTime",
}

M.ListArtifactsInput = {
    type = "structure",
    id = "ListArtifactsInput",
    members = {
        SourceUri = {
            type = "string",
        },
        ArtifactType = {
            type = "string",
        },
        CreatedAfter = {
            type = "timestamp",
        },
        CreatedBefore = {
            type = "timestamp",
        },
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListArtifactsOutput = {
    type = "structure",
    id = "ListArtifactsOutput",
    members = {
        ArtifactSummaries = {
            type = "list",
            member = M.ArtifactSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.SortAssociationsBy = {
    SOURCE_ARN = "SourceArn",
    DESTINATION_ARN = "DestinationArn",
    SOURCE_TYPE = "SourceType",
    DESTINATION_TYPE = "DestinationType",
    CREATION_TIME = "CreationTime",
}

M.ListAssociationsInput = {
    type = "structure",
    id = "ListAssociationsInput",
    members = {
        SourceArn = {
            type = "string",
        },
        DestinationArn = {
            type = "string",
        },
        SourceType = {
            type = "string",
        },
        DestinationType = {
            type = "string",
        },
        AssociationType = {
            type = "string",
        },
        CreatedAfter = {
            type = "timestamp",
        },
        CreatedBefore = {
            type = "timestamp",
        },
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListAssociationsOutput = {
    type = "structure",
    id = "ListAssociationsOutput",
    members = {
        AssociationSummaries = {
            type = "list",
            member = M.AssociationSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListAutoMLJobsInput = {
    type = "structure",
    id = "ListAutoMLJobsInput",
    members = {
        CreationTimeAfter = {
            type = "timestamp",
        },
        CreationTimeBefore = {
            type = "timestamp",
        },
        LastModifiedTimeAfter = {
            type = "timestamp",
        },
        LastModifiedTimeBefore = {
            type = "timestamp",
        },
        NameContains = {
            type = "string",
        },
        StatusEquals = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
        SortBy = {
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

M.ListAutoMLJobsOutput = {
    type = "structure",
    id = "ListAutoMLJobsOutput",
    members = {
        AutoMLJobSummaries = {
            type = "list",
            member = M.AutoMLJobSummary,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListCandidatesForAutoMLJobInput = {
    type = "structure",
    id = "ListCandidatesForAutoMLJobInput",
    members = {
        AutoMLJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StatusEquals = {
            type = "string",
        },
        CandidateNameEquals = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
        SortBy = {
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

M.ListCandidatesForAutoMLJobOutput = {
    type = "structure",
    id = "ListCandidatesForAutoMLJobOutput",
    members = {
        Candidates = {
            type = "list",
            member = M.AutoMLCandidate,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListClusterEventsInput = {
    type = "structure",
    id = "ListClusterEventsInput",
    members = {
        ClusterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstanceGroupName = {
            type = "string",
        },
        NodeId = {
            type = "string",
        },
        EventTimeAfter = {
            type = "timestamp",
        },
        EventTimeBefore = {
            type = "timestamp",
        },
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
        ResourceType = {
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

M.ListClusterEventsOutput = {
    type = "structure",
    id = "ListClusterEventsOutput",
    members = {
        NextToken = {
            type = "string",
        },
        Events = {
            type = "list",
            member = M.ClusterEventSummary,
        },
    },
}

M.ListClusterNodesInput = {
    type = "structure",
    id = "ListClusterNodesInput",
    members = {
        ClusterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationTimeAfter = {
            type = "timestamp",
        },
        CreationTimeBefore = {
            type = "timestamp",
        },
        InstanceGroupNameContains = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
        IncludeNodeLogicalIds = {
            type = "boolean",
        },
    },
}

M.ListClusterNodesOutput = {
    type = "structure",
    id = "ListClusterNodesOutput",
    members = {
        NextToken = {
            type = "string",
        },
        ClusterNodeSummaries = {
            type = "list",
            member = M.ClusterNodeSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.ListClustersInput = {
    type = "structure",
    id = "ListClustersInput",
    members = {
        CreationTimeAfter = {
            type = "timestamp",
        },
        CreationTimeBefore = {
            type = "timestamp",
        },
        MaxResults = {
            type = "integer",
        },
        NameContains = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
        TrainingPlanArn = {
            type = "string",
        },
    },
}

M.ListClustersOutput = {
    type = "structure",
    id = "ListClustersOutput",
    members = {
        NextToken = {
            type = "string",
        },
        ClusterSummaries = {
            type = "list",
            member = M.ClusterSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.SortClusterSchedulerConfigBy = {
    NAME = "Name",
    CREATION_TIME = "CreationTime",
    STATUS = "Status",
}

M.ListClusterSchedulerConfigsInput = {
    type = "structure",
    id = "ListClusterSchedulerConfigsInput",
    members = {
        CreatedAfter = {
            type = "timestamp",
        },
        CreatedBefore = {
            type = "timestamp",
        },
        NameContains = {
            type = "string",
        },
        ClusterArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListClusterSchedulerConfigsOutput = {
    type = "structure",
    id = "ListClusterSchedulerConfigsOutput",
    members = {
        ClusterSchedulerConfigSummaries = {
            type = "list",
            member = M.ClusterSchedulerConfigSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListCodeRepositoriesInput = {
    type = "structure",
    id = "ListCodeRepositoriesInput",
    members = {
        CreationTimeAfter = {
            type = "timestamp",
        },
        CreationTimeBefore = {
            type = "timestamp",
        },
        LastModifiedTimeAfter = {
            type = "timestamp",
        },
        LastModifiedTimeBefore = {
            type = "timestamp",
        },
        MaxResults = {
            type = "integer",
        },
        NameContains = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
    },
}

M.ListCodeRepositoriesOutput = {
    type = "structure",
    id = "ListCodeRepositoriesOutput",
    members = {
        CodeRepositorySummaryList = {
            type = "list",
            member = M.CodeRepositorySummary,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListCompilationJobsSortBy = {
    NAME = "Name",
    CREATION_TIME = "CreationTime",
    STATUS = "Status",
}

M.ListCompilationJobsInput = {
    type = "structure",
    id = "ListCompilationJobsInput",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        CreationTimeAfter = {
            type = "timestamp",
        },
        CreationTimeBefore = {
            type = "timestamp",
        },
        LastModifiedTimeAfter = {
            type = "timestamp",
        },
        LastModifiedTimeBefore = {
            type = "timestamp",
        },
        NameContains = {
            type = "string",
        },
        StatusEquals = {
            type = "string",
        },
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
    },
}

M.ListCompilationJobsOutput = {
    type = "structure",
    id = "ListCompilationJobsOutput",
    members = {
        CompilationJobSummaries = {
            type = "list",
            member = M.CompilationJobSummary,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.SortQuotaBy = {
    NAME = "Name",
    CREATION_TIME = "CreationTime",
    STATUS = "Status",
    CLUSTER_ARN = "ClusterArn",
}

M.ListComputeQuotasInput = {
    type = "structure",
    id = "ListComputeQuotasInput",
    members = {
        CreatedAfter = {
            type = "timestamp",
        },
        CreatedBefore = {
            type = "timestamp",
        },
        NameContains = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        ClusterArn = {
            type = "string",
        },
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListComputeQuotasOutput = {
    type = "structure",
    id = "ListComputeQuotasOutput",
    members = {
        ComputeQuotaSummaries = {
            type = "list",
            member = M.ComputeQuotaSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.SortContextsBy = {
    NAME = "Name",
    CREATION_TIME = "CreationTime",
}

M.ListContextsInput = {
    type = "structure",
    id = "ListContextsInput",
    members = {
        SourceUri = {
            type = "string",
        },
        ContextType = {
            type = "string",
        },
        CreatedAfter = {
            type = "timestamp",
        },
        CreatedBefore = {
            type = "timestamp",
        },
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListContextsOutput = {
    type = "structure",
    id = "ListContextsOutput",
    members = {
        ContextSummaries = {
            type = "list",
            member = M.ContextSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.MonitoringJobDefinitionSortKey = {
    NAME = "Name",
    CREATION_TIME = "CreationTime",
}

M.ListDataQualityJobDefinitionsInput = {
    type = "structure",
    id = "ListDataQualityJobDefinitionsInput",
    members = {
        EndpointName = {
            type = "string",
        },
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        NameContains = {
            type = "string",
        },
        CreationTimeBefore = {
            type = "timestamp",
        },
        CreationTimeAfter = {
            type = "timestamp",
        },
    },
}

M.MonitoringJobDefinitionSummary = {
    type = "structure",
    id = "MonitoringJobDefinitionSummary",
    members = {
        MonitoringJobDefinitionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MonitoringJobDefinitionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        EndpointName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListDataQualityJobDefinitionsOutput = {
    type = "structure",
    id = "ListDataQualityJobDefinitionsOutput",
    members = {
        JobDefinitionSummaries = {
            type = "list",
            member = M.MonitoringJobDefinitionSummary,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListDeviceFleetsSortBy = {
    Name = "NAME",
    CreationTime = "CREATION_TIME",
    LastModifiedTime = "LAST_MODIFIED_TIME",
}

M.ListDeviceFleetsInput = {
    type = "structure",
    id = "ListDeviceFleetsInput",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        CreationTimeAfter = {
            type = "timestamp",
        },
        CreationTimeBefore = {
            type = "timestamp",
        },
        LastModifiedTimeAfter = {
            type = "timestamp",
        },
        LastModifiedTimeBefore = {
            type = "timestamp",
        },
        NameContains = {
            type = "string",
        },
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
    },
}

M.ListDeviceFleetsOutput = {
    type = "structure",
    id = "ListDeviceFleetsOutput",
    members = {
        DeviceFleetSummaries = {
            type = "list",
            member = M.DeviceFleetSummary,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListDevicesInput = {
    type = "structure",
    id = "ListDevicesInput",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        LatestHeartbeatAfter = {
            type = "timestamp",
        },
        ModelName = {
            type = "string",
        },
        DeviceFleetName = {
            type = "string",
        },
    },
}

M.ListDevicesOutput = {
    type = "structure",
    id = "ListDevicesOutput",
    members = {
        DeviceSummaries = {
            type = "list",
            member = M.DeviceSummary,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListDomainsInput = {
    type = "structure",
    id = "ListDomainsInput",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListDomainsOutput = {
    type = "structure",
    id = "ListDomainsOutput",
    members = {
        Domains = {
            type = "list",
            member = M.DomainDetails,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListEdgeDeploymentPlansSortBy = {
    Name = "NAME",
    DeviceFleetName = "DEVICE_FLEET_NAME",
    CreationTime = "CREATION_TIME",
    LastModifiedTime = "LAST_MODIFIED_TIME",
}

M.ListEdgeDeploymentPlansInput = {
    type = "structure",
    id = "ListEdgeDeploymentPlansInput",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        CreationTimeAfter = {
            type = "timestamp",
        },
        CreationTimeBefore = {
            type = "timestamp",
        },
        LastModifiedTimeAfter = {
            type = "timestamp",
        },
        LastModifiedTimeBefore = {
            type = "timestamp",
        },
        NameContains = {
            type = "string",
        },
        DeviceFleetNameContains = {
            type = "string",
        },
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
    },
}

M.ListEdgeDeploymentPlansOutput = {
    type = "structure",
    id = "ListEdgeDeploymentPlansOutput",
    members = {
        EdgeDeploymentPlanSummaries = {
            type = "list",
            member = M.EdgeDeploymentPlanSummary,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListEdgePackagingJobsSortBy = {
    Name = "NAME",
    ModelName = "MODEL_NAME",
    CreationTime = "CREATION_TIME",
    LastModifiedTime = "LAST_MODIFIED_TIME",
    EdgePackagingJobStatus = "STATUS",
}

M.ListEdgePackagingJobsInput = {
    type = "structure",
    id = "ListEdgePackagingJobsInput",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        CreationTimeAfter = {
            type = "timestamp",
        },
        CreationTimeBefore = {
            type = "timestamp",
        },
        LastModifiedTimeAfter = {
            type = "timestamp",
        },
        LastModifiedTimeBefore = {
            type = "timestamp",
        },
        NameContains = {
            type = "string",
        },
        ModelNameContains = {
            type = "string",
        },
        StatusEquals = {
            type = "string",
        },
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
    },
}

M.ListEdgePackagingJobsOutput = {
    type = "structure",
    id = "ListEdgePackagingJobsOutput",
    members = {
        EdgePackagingJobSummaries = {
            type = "list",
            member = M.EdgePackagingJobSummary,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.OrderKey = {
    Ascending = "Ascending",
    Descending = "Descending",
}

M.ListEndpointConfigsInput = {
    type = "structure",
    id = "ListEndpointConfigsInput",
    members = {
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        NameContains = {
            type = "string",
        },
        CreationTimeBefore = {
            type = "timestamp",
        },
        CreationTimeAfter = {
            type = "timestamp",
        },
    },
}

M.ListEndpointConfigsOutput = {
    type = "structure",
    id = "ListEndpointConfigsOutput",
    members = {
        EndpointConfigs = {
            type = "list",
            member = M.EndpointConfigSummary,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListEndpointsInput = {
    type = "structure",
    id = "ListEndpointsInput",
    members = {
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        NameContains = {
            type = "string",
        },
        CreationTimeBefore = {
            type = "timestamp",
        },
        CreationTimeAfter = {
            type = "timestamp",
        },
        LastModifiedTimeBefore = {
            type = "timestamp",
        },
        LastModifiedTimeAfter = {
            type = "timestamp",
        },
        StatusEquals = {
            type = "string",
        },
    },
}

M.ListEndpointsOutput = {
    type = "structure",
    id = "ListEndpointsOutput",
    members = {
        Endpoints = {
            type = "list",
            member = M.EndpointSummary,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.SortExperimentsBy = {
    NAME = "Name",
    CREATION_TIME = "CreationTime",
}

M.ListExperimentsInput = {
    type = "structure",
    id = "ListExperimentsInput",
    members = {
        CreatedAfter = {
            type = "timestamp",
        },
        CreatedBefore = {
            type = "timestamp",
        },
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListExperimentsOutput = {
    type = "structure",
    id = "ListExperimentsOutput",
    members = {
        ExperimentSummaries = {
            type = "list",
            member = M.ExperimentSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListFeatureGroupsInput = {
    type = "structure",
    id = "ListFeatureGroupsInput",
    members = {
        NameContains = {
            type = "string",
        },
        FeatureGroupStatusEquals = {
            type = "string",
        },
        OfflineStoreStatusEquals = {
            type = "string",
        },
        CreationTimeAfter = {
            type = "timestamp",
        },
        CreationTimeBefore = {
            type = "timestamp",
        },
        SortOrder = {
            type = "string",
        },
        SortBy = {
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

M.ListFeatureGroupsOutput = {
    type = "structure",
    id = "ListFeatureGroupsOutput",
    members = {
        FeatureGroupSummaries = {
            type = "list",
            member = M.FeatureGroupSummary,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListFlowDefinitionsInput = {
    type = "structure",
    id = "ListFlowDefinitionsInput",
    members = {
        CreationTimeAfter = {
            type = "timestamp",
        },
        CreationTimeBefore = {
            type = "timestamp",
        },
        SortOrder = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListFlowDefinitionsOutput = {
    type = "structure",
    id = "ListFlowDefinitionsOutput",
    members = {
        FlowDefinitionSummaries = {
            type = "list",
            member = M.FlowDefinitionSummary,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListHubContentsInput = {
    type = "structure",
    id = "ListHubContentsInput",
    members = {
        HubName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HubContentType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NameContains = {
            type = "string",
        },
        MaxSchemaVersion = {
            type = "string",
        },
        CreationTimeBefore = {
            type = "timestamp",
        },
        CreationTimeAfter = {
            type = "timestamp",
        },
        SortBy = {
            type = "string",
        },
        SortOrder = {
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

M.ListHubContentsOutput = {
    type = "structure",
    id = "ListHubContentsOutput",
    members = {
        HubContentSummaries = {
            type = "list",
            member = M.HubContentInfo,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListHubContentVersionsInput = {
    type = "structure",
    id = "ListHubContentVersionsInput",
    members = {
        HubName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HubContentType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HubContentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MinVersion = {
            type = "string",
        },
        MaxSchemaVersion = {
            type = "string",
        },
        CreationTimeBefore = {
            type = "timestamp",
        },
        CreationTimeAfter = {
            type = "timestamp",
        },
        SortBy = {
            type = "string",
        },
        SortOrder = {
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

M.ListHubContentVersionsOutput = {
    type = "structure",
    id = "ListHubContentVersionsOutput",
    members = {
        HubContentSummaries = {
            type = "list",
            member = M.HubContentInfo,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListHubsInput = {
    type = "structure",
    id = "ListHubsInput",
    members = {
        NameContains = {
            type = "string",
        },
        CreationTimeBefore = {
            type = "timestamp",
        },
        CreationTimeAfter = {
            type = "timestamp",
        },
        LastModifiedTimeBefore = {
            type = "timestamp",
        },
        LastModifiedTimeAfter = {
            type = "timestamp",
        },
        SortBy = {
            type = "string",
        },
        SortOrder = {
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

M.ListHubsOutput = {
    type = "structure",
    id = "ListHubsOutput",
    members = {
        HubSummaries = {
            type = "list",
            member = M.HubInfo,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListHumanTaskUisInput = {
    type = "structure",
    id = "ListHumanTaskUisInput",
    members = {
        CreationTimeAfter = {
            type = "timestamp",
        },
        CreationTimeBefore = {
            type = "timestamp",
        },
        SortOrder = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListHumanTaskUisOutput = {
    type = "structure",
    id = "ListHumanTaskUisOutput",
    members = {
        HumanTaskUiSummaries = {
            type = "list",
            member = M.HumanTaskUiSummary,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListHyperParameterTuningJobsInput = {
    type = "structure",
    id = "ListHyperParameterTuningJobsInput",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
        NameContains = {
            type = "string",
        },
        CreationTimeAfter = {
            type = "timestamp",
        },
        CreationTimeBefore = {
            type = "timestamp",
        },
        LastModifiedTimeAfter = {
            type = "timestamp",
        },
        LastModifiedTimeBefore = {
            type = "timestamp",
        },
        StatusEquals = {
            type = "string",
        },
    },
}

M.ListHyperParameterTuningJobsOutput = {
    type = "structure",
    id = "ListHyperParameterTuningJobsOutput",
    members = {
        HyperParameterTuningJobSummaries = {
            type = "list",
            member = M.HyperParameterTuningJobSummary,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListImagesInput = {
    type = "structure",
    id = "ListImagesInput",
    members = {
        CreationTimeAfter = {
            type = "timestamp",
        },
        CreationTimeBefore = {
            type = "timestamp",
        },
        LastModifiedTimeAfter = {
            type = "timestamp",
        },
        LastModifiedTimeBefore = {
            type = "timestamp",
        },
        MaxResults = {
            type = "integer",
        },
        NameContains = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
    },
}

M.ListImagesOutput = {
    type = "structure",
    id = "ListImagesOutput",
    members = {
        Images = {
            type = "list",
            member = M.Image,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListImageVersionsInput = {
    type = "structure",
    id = "ListImageVersionsInput",
    members = {
        CreationTimeAfter = {
            type = "timestamp",
        },
        CreationTimeBefore = {
            type = "timestamp",
        },
        ImageName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LastModifiedTimeAfter = {
            type = "timestamp",
        },
        LastModifiedTimeBefore = {
            type = "timestamp",
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
    },
}

M.ListImageVersionsOutput = {
    type = "structure",
    id = "ListImageVersionsOutput",
    members = {
        ImageVersions = {
            type = "list",
            member = M.ImageVersion,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListInferenceComponentsInput = {
    type = "structure",
    id = "ListInferenceComponentsInput",
    members = {
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        NameContains = {
            type = "string",
        },
        CreationTimeBefore = {
            type = "timestamp",
        },
        CreationTimeAfter = {
            type = "timestamp",
        },
        LastModifiedTimeBefore = {
            type = "timestamp",
        },
        LastModifiedTimeAfter = {
            type = "timestamp",
        },
        StatusEquals = {
            type = "string",
        },
        EndpointNameEquals = {
            type = "string",
        },
        VariantNameEquals = {
            type = "string",
        },
    },
}

M.ListInferenceComponentsOutput = {
    type = "structure",
    id = "ListInferenceComponentsOutput",
    members = {
        InferenceComponents = {
            type = "list",
            member = M.InferenceComponentSummary,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.SortInferenceExperimentsBy = {
    NAME = "Name",
    CREATION_TIME = "CreationTime",
    STATUS = "Status",
}

M.ListInferenceExperimentsInput = {
    type = "structure",
    id = "ListInferenceExperimentsInput",
    members = {
        NameContains = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        StatusEquals = {
            type = "string",
        },
        CreationTimeAfter = {
            type = "timestamp",
        },
        CreationTimeBefore = {
            type = "timestamp",
        },
        LastModifiedTimeAfter = {
            type = "timestamp",
        },
        LastModifiedTimeBefore = {
            type = "timestamp",
        },
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListInferenceExperimentsOutput = {
    type = "structure",
    id = "ListInferenceExperimentsOutput",
    members = {
        InferenceExperiments = {
            type = "list",
            member = M.InferenceExperimentSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListInferenceRecommendationsJobsSortBy = {
    NAME = "Name",
    CREATION_TIME = "CreationTime",
    STATUS = "Status",
}

M.ListInferenceRecommendationsJobsInput = {
    type = "structure",
    id = "ListInferenceRecommendationsJobsInput",
    members = {
        CreationTimeAfter = {
            type = "timestamp",
        },
        CreationTimeBefore = {
            type = "timestamp",
        },
        LastModifiedTimeAfter = {
            type = "timestamp",
        },
        LastModifiedTimeBefore = {
            type = "timestamp",
        },
        NameContains = {
            type = "string",
        },
        StatusEquals = {
            type = "string",
        },
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        ModelNameEquals = {
            type = "string",
        },
        ModelPackageVersionArnEquals = {
            type = "string",
        },
    },
}

M.ListInferenceRecommendationsJobsOutput = {
    type = "structure",
    id = "ListInferenceRecommendationsJobsOutput",
    members = {
        InferenceRecommendationsJobs = {
            type = "list",
            member = M.InferenceRecommendationsJob,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListInferenceRecommendationsJobStepsInput = {
    type = "structure",
    id = "ListInferenceRecommendationsJobStepsInput",
    members = {
        JobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
        },
        StepType = {
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

M.ListInferenceRecommendationsJobStepsOutput = {
    type = "structure",
    id = "ListInferenceRecommendationsJobStepsOutput",
    members = {
        Steps = {
            type = "list",
            member = M.InferenceRecommendationsJobStep,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.SortBy = {
    NAME = "Name",
    CREATION_TIME = "CreationTime",
    STATUS = "Status",
}

M.ListLabelingJobsInput = {
    type = "structure",
    id = "ListLabelingJobsInput",
    members = {
        CreationTimeAfter = {
            type = "timestamp",
        },
        CreationTimeBefore = {
            type = "timestamp",
        },
        LastModifiedTimeAfter = {
            type = "timestamp",
        },
        LastModifiedTimeBefore = {
            type = "timestamp",
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        NameContains = {
            type = "string",
        },
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
        StatusEquals = {
            type = "string",
        },
    },
}

M.ListLabelingJobsOutput = {
    type = "structure",
    id = "ListLabelingJobsOutput",
    members = {
        LabelingJobSummaryList = {
            type = "list",
            member = M.LabelingJobSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListLabelingJobsForWorkteamSortByOptions = {
    CREATION_TIME = "CreationTime",
}

M.ListLabelingJobsForWorkteamInput = {
    type = "structure",
    id = "ListLabelingJobsForWorkteamInput",
    members = {
        WorkteamArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        CreationTimeAfter = {
            type = "timestamp",
        },
        CreationTimeBefore = {
            type = "timestamp",
        },
        JobReferenceCodeContains = {
            type = "string",
        },
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
    },
}

M.ListLabelingJobsForWorkteamOutput = {
    type = "structure",
    id = "ListLabelingJobsForWorkteamOutput",
    members = {
        LabelingJobSummaryList = {
            type = "list",
            member = M.LabelingJobForWorkteamSummary,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.SortLineageGroupsBy = {
    NAME = "Name",
    CREATION_TIME = "CreationTime",
}

M.ListLineageGroupsInput = {
    type = "structure",
    id = "ListLineageGroupsInput",
    members = {
        CreatedAfter = {
            type = "timestamp",
        },
        CreatedBefore = {
            type = "timestamp",
        },
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListLineageGroupsOutput = {
    type = "structure",
    id = "ListLineageGroupsOutput",
    members = {
        LineageGroupSummaries = {
            type = "list",
            member = M.LineageGroupSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.SortMlflowAppBy = {
    NAME = "Name",
    CREATION_TIME = "CreationTime",
    STATUS = "Status",
}

M.ListMlflowAppsInput = {
    type = "structure",
    id = "ListMlflowAppsInput",
    members = {
        CreatedAfter = {
            type = "timestamp",
        },
        CreatedBefore = {
            type = "timestamp",
        },
        Status = {
            type = "string",
        },
        MlflowVersion = {
            type = "string",
        },
        DefaultForDomainId = {
            type = "string",
        },
        AccountDefaultStatus = {
            type = "string",
        },
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.MlflowAppSummary = {
    type = "structure",
    id = "MlflowAppSummary",
    members = {
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        MlflowVersion = {
            type = "string",
        },
    },
}

M.ListMlflowAppsOutput = {
    type = "structure",
    id = "ListMlflowAppsOutput",
    members = {
        Summaries = {
            type = "list",
            member = M.MlflowAppSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.SortTrackingServerBy = {
    NAME = "Name",
    CREATION_TIME = "CreationTime",
    STATUS = "Status",
}

M.ListMlflowTrackingServersInput = {
    type = "structure",
    id = "ListMlflowTrackingServersInput",
    members = {
        CreatedAfter = {
            type = "timestamp",
        },
        CreatedBefore = {
            type = "timestamp",
        },
        TrackingServerStatus = {
            type = "string",
        },
        MlflowVersion = {
            type = "string",
        },
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.TrackingServerSummary = {
    type = "structure",
    id = "TrackingServerSummary",
    members = {
        TrackingServerArn = {
            type = "string",
        },
        TrackingServerName = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        TrackingServerStatus = {
            type = "string",
        },
        IsActive = {
            type = "string",
        },
        MlflowVersion = {
            type = "string",
        },
    },
}

M.ListMlflowTrackingServersOutput = {
    type = "structure",
    id = "ListMlflowTrackingServersOutput",
    members = {
        TrackingServerSummaries = {
            type = "list",
            member = M.TrackingServerSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListModelBiasJobDefinitionsInput = {
    type = "structure",
    id = "ListModelBiasJobDefinitionsInput",
    members = {
        EndpointName = {
            type = "string",
        },
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        NameContains = {
            type = "string",
        },
        CreationTimeBefore = {
            type = "timestamp",
        },
        CreationTimeAfter = {
            type = "timestamp",
        },
    },
}

M.ListModelBiasJobDefinitionsOutput = {
    type = "structure",
    id = "ListModelBiasJobDefinitionsOutput",
    members = {
        JobDefinitionSummaries = {
            type = "list",
            member = M.MonitoringJobDefinitionSummary,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ModelCardExportJobSortBy = {
    NAME = "Name",
    CREATION_TIME = "CreationTime",
    STATUS = "Status",
}

M.ModelCardExportJobSortOrder = {
    ASCENDING = "Ascending",
    DESCENDING = "Descending",
}

M.ListModelCardExportJobsInput = {
    type = "structure",
    id = "ListModelCardExportJobsInput",
    members = {
        ModelCardName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ModelCardVersion = {
            type = "integer",
        },
        CreationTimeAfter = {
            type = "timestamp",
        },
        CreationTimeBefore = {
            type = "timestamp",
        },
        ModelCardExportJobNameContains = {
            type = "string",
        },
        StatusEquals = {
            type = "string",
        },
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ModelCardExportJobSummary = {
    type = "structure",
    id = "ModelCardExportJobSummary",
    members = {
        ModelCardExportJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ModelCardExportJobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ModelCardName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ModelCardVersion = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastModifiedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListModelCardExportJobsOutput = {
    type = "structure",
    id = "ListModelCardExportJobsOutput",
    members = {
        ModelCardExportJobSummaries = {
            type = "list",
            member = M.ModelCardExportJobSummary,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ModelCardSortBy = {
    NAME = "Name",
    CREATION_TIME = "CreationTime",
}

M.ModelCardSortOrder = {
    ASCENDING = "Ascending",
    DESCENDING = "Descending",
}

M.ListModelCardsInput = {
    type = "structure",
    id = "ListModelCardsInput",
    members = {
        CreationTimeAfter = {
            type = "timestamp",
        },
        CreationTimeBefore = {
            type = "timestamp",
        },
        MaxResults = {
            type = "integer",
        },
        NameContains = {
            type = "string",
        },
        ModelCardStatus = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
    },
}

M.ModelCardSummary = {
    type = "structure",
    id = "ModelCardSummary",
    members = {
        ModelCardName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ModelCardArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ModelCardStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastModifiedTime = {
            type = "timestamp",
        },
    },
}

M.ListModelCardsOutput = {
    type = "structure",
    id = "ListModelCardsOutput",
    members = {
        ModelCardSummaries = {
            type = "list",
            member = M.ModelCardSummary,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ModelCardVersionSortBy = {
    VERSION = "Version",
}

M.ListModelCardVersionsInput = {
    type = "structure",
    id = "ListModelCardVersionsInput",
    members = {
        CreationTimeAfter = {
            type = "timestamp",
        },
        CreationTimeBefore = {
            type = "timestamp",
        },
        MaxResults = {
            type = "integer",
        },
        ModelCardName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ModelCardStatus = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
    },
}

M.ModelCardVersionSummary = {
    type = "structure",
    id = "ModelCardVersionSummary",
    members = {
        ModelCardName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ModelCardArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ModelCardStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ModelCardVersion = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastModifiedTime = {
            type = "timestamp",
        },
    },
}

M.ListModelCardVersionsOutput = {
    type = "structure",
    id = "ListModelCardVersionsOutput",
    members = {
        ModelCardVersionSummaryList = {
            type = "list",
            member = M.ModelCardVersionSummary,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListModelExplainabilityJobDefinitionsInput = {
    type = "structure",
    id = "ListModelExplainabilityJobDefinitionsInput",
    members = {
        EndpointName = {
            type = "string",
        },
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        NameContains = {
            type = "string",
        },
        CreationTimeBefore = {
            type = "timestamp",
        },
        CreationTimeAfter = {
            type = "timestamp",
        },
    },
}

M.ListModelExplainabilityJobDefinitionsOutput = {
    type = "structure",
    id = "ListModelExplainabilityJobDefinitionsOutput",
    members = {
        JobDefinitionSummaries = {
            type = "list",
            member = M.MonitoringJobDefinitionSummary,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ModelMetadataFilterType = {
    DOMAIN = "Domain",
    FRAMEWORK = "Framework",
    TASK = "Task",
    FRAMEWORKVERSION = "FrameworkVersion",
}

M.ModelMetadataFilter = {
    type = "structure",
    id = "ModelMetadataFilter",
    members = {
        Name = {
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

M.ModelMetadataSearchExpression = {
    type = "structure",
    id = "ModelMetadataSearchExpression",
    members = {
        Filters = {
            type = "list",
            member = M.ModelMetadataFilter,
        },
    },
}

M.ListModelMetadataInput = {
    type = "structure",
    id = "ListModelMetadataInput",
    members = {
        SearchExpression = M.ModelMetadataSearchExpression,
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ModelMetadataSummary = {
    type = "structure",
    id = "ModelMetadataSummary",
    members = {
        Domain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Framework = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Task = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Model = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FrameworkVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListModelMetadataOutput = {
    type = "structure",
    id = "ListModelMetadataOutput",
    members = {
        ModelMetadataSummaries = {
            type = "list",
            member = M.ModelMetadataSummary,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ModelPackageGroupSortBy = {
    NAME = "Name",
    CREATION_TIME = "CreationTime",
}

M.ListModelPackageGroupsInput = {
    type = "structure",
    id = "ListModelPackageGroupsInput",
    members = {
        CreationTimeAfter = {
            type = "timestamp",
        },
        CreationTimeBefore = {
            type = "timestamp",
        },
        MaxResults = {
            type = "integer",
        },
        NameContains = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
        CrossAccountFilterOption = {
            type = "string",
        },
    },
}

M.ModelPackageGroupSummary = {
    type = "structure",
    id = "ModelPackageGroupSummary",
    members = {
        ModelPackageGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ModelPackageGroupArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ModelPackageGroupDescription = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        ModelPackageGroupStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListModelPackageGroupsOutput = {
    type = "structure",
    id = "ListModelPackageGroupsOutput",
    members = {
        ModelPackageGroupSummaryList = {
            type = "list",
            member = M.ModelPackageGroupSummary,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ModelPackageType = {
    VERSIONED = "Versioned",
    UNVERSIONED = "Unversioned",
    BOTH = "Both",
}

M.ModelPackageSortBy = {
    NAME = "Name",
    CREATION_TIME = "CreationTime",
}

M.ListModelPackagesInput = {
    type = "structure",
    id = "ListModelPackagesInput",
    members = {
        CreationTimeAfter = {
            type = "timestamp",
        },
        CreationTimeBefore = {
            type = "timestamp",
        },
        MaxResults = {
            type = "integer",
        },
        NameContains = {
            type = "string",
        },
        ModelApprovalStatus = {
            type = "string",
        },
        ModelPackageGroupName = {
            type = "string",
        },
        ModelPackageType = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
    },
}

M.ModelPackageSummary = {
    type = "structure",
    id = "ModelPackageSummary",
    members = {
        ModelPackageName = {
            type = "string",
        },
        ModelPackageGroupName = {
            type = "string",
        },
        ModelPackageVersion = {
            type = "integer",
        },
        ModelPackageArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ModelPackageDescription = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        ModelPackageStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ModelApprovalStatus = {
            type = "string",
        },
        ModelLifeCycle = M.ModelLifeCycle,
        ModelPackageRegistrationType = {
            type = "string",
        },
    },
}

M.ListModelPackagesOutput = {
    type = "structure",
    id = "ListModelPackagesOutput",
    members = {
        ModelPackageSummaryList = {
            type = "list",
            member = M.ModelPackageSummary,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListModelQualityJobDefinitionsInput = {
    type = "structure",
    id = "ListModelQualityJobDefinitionsInput",
    members = {
        EndpointName = {
            type = "string",
        },
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        NameContains = {
            type = "string",
        },
        CreationTimeBefore = {
            type = "timestamp",
        },
        CreationTimeAfter = {
            type = "timestamp",
        },
    },
}

M.ListModelQualityJobDefinitionsOutput = {
    type = "structure",
    id = "ListModelQualityJobDefinitionsOutput",
    members = {
        JobDefinitionSummaries = {
            type = "list",
            member = M.MonitoringJobDefinitionSummary,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ModelSortKey = {
    Name = "Name",
    CreationTime = "CreationTime",
}

M.ListModelsInput = {
    type = "structure",
    id = "ListModelsInput",
    members = {
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        NameContains = {
            type = "string",
        },
        CreationTimeBefore = {
            type = "timestamp",
        },
        CreationTimeAfter = {
            type = "timestamp",
        },
    },
}

M.ModelSummary = {
    type = "structure",
    id = "ModelSummary",
    members = {
        ModelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ModelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListModelsOutput = {
    type = "structure",
    id = "ListModelsOutput",
    members = {
        Models = {
            type = "list",
            member = M.ModelSummary,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.MonitoringAlertHistorySortKey = {
    CreationTime = "CreationTime",
    Status = "Status",
}

M.MonitoringAlertStatus = {
    IN_ALERT = "InAlert",
    OK = "OK",
}

M.ListMonitoringAlertHistoryInput = {
    type = "structure",
    id = "ListMonitoringAlertHistoryInput",
    members = {
        MonitoringScheduleName = {
            type = "string",
        },
        MonitoringAlertName = {
            type = "string",
        },
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        CreationTimeBefore = {
            type = "timestamp",
        },
        CreationTimeAfter = {
            type = "timestamp",
        },
        StatusEquals = {
            type = "string",
        },
    },
}

M.MonitoringAlertHistorySummary = {
    type = "structure",
    id = "MonitoringAlertHistorySummary",
    members = {
        MonitoringScheduleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MonitoringAlertName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        AlertStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListMonitoringAlertHistoryOutput = {
    type = "structure",
    id = "ListMonitoringAlertHistoryOutput",
    members = {
        MonitoringAlertHistory = {
            type = "list",
            member = M.MonitoringAlertHistorySummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListMonitoringAlertsInput = {
    type = "structure",
    id = "ListMonitoringAlertsInput",
    members = {
        MonitoringScheduleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ModelDashboardIndicatorAction = {
    type = "structure",
    id = "ModelDashboardIndicatorAction",
    members = {
        Enabled = {
            type = "boolean",
        },
    },
}

M.MonitoringAlertActions = {
    type = "structure",
    id = "MonitoringAlertActions",
    members = {
        ModelDashboardIndicator = M.ModelDashboardIndicatorAction,
    },
}

M.MonitoringAlertSummary = {
    type = "structure",
    id = "MonitoringAlertSummary",
    members = {
        MonitoringAlertName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        AlertStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DatapointsToAlert = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        EvaluationPeriod = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Actions = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MonitoringAlertActions }),
    },
}

M.ListMonitoringAlertsOutput = {
    type = "structure",
    id = "ListMonitoringAlertsOutput",
    members = {
        MonitoringAlertSummaries = {
            type = "list",
            member = M.MonitoringAlertSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.MonitoringExecutionSortKey = {
    CREATION_TIME = "CreationTime",
    SCHEDULED_TIME = "ScheduledTime",
    STATUS = "Status",
}

M.ListMonitoringExecutionsInput = {
    type = "structure",
    id = "ListMonitoringExecutionsInput",
    members = {
        MonitoringScheduleName = {
            type = "string",
        },
        EndpointName = {
            type = "string",
        },
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        ScheduledTimeBefore = {
            type = "timestamp",
        },
        ScheduledTimeAfter = {
            type = "timestamp",
        },
        CreationTimeBefore = {
            type = "timestamp",
        },
        CreationTimeAfter = {
            type = "timestamp",
        },
        LastModifiedTimeBefore = {
            type = "timestamp",
        },
        LastModifiedTimeAfter = {
            type = "timestamp",
        },
        StatusEquals = {
            type = "string",
        },
        MonitoringJobDefinitionName = {
            type = "string",
        },
        MonitoringTypeEquals = {
            type = "string",
        },
    },
}

M.ListMonitoringExecutionsOutput = {
    type = "structure",
    id = "ListMonitoringExecutionsOutput",
    members = {
        MonitoringExecutionSummaries = {
            type = "list",
            member = M.MonitoringExecutionSummary,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.MonitoringScheduleSortKey = {
    NAME = "Name",
    CREATION_TIME = "CreationTime",
    STATUS = "Status",
}

M.ListMonitoringSchedulesInput = {
    type = "structure",
    id = "ListMonitoringSchedulesInput",
    members = {
        EndpointName = {
            type = "string",
        },
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        NameContains = {
            type = "string",
        },
        CreationTimeBefore = {
            type = "timestamp",
        },
        CreationTimeAfter = {
            type = "timestamp",
        },
        LastModifiedTimeBefore = {
            type = "timestamp",
        },
        LastModifiedTimeAfter = {
            type = "timestamp",
        },
        StatusEquals = {
            type = "string",
        },
        MonitoringJobDefinitionName = {
            type = "string",
        },
        MonitoringTypeEquals = {
            type = "string",
        },
    },
}

M.MonitoringScheduleSummary = {
    type = "structure",
    id = "MonitoringScheduleSummary",
    members = {
        MonitoringScheduleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MonitoringScheduleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        MonitoringScheduleStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EndpointName = {
            type = "string",
        },
        MonitoringJobDefinitionName = {
            type = "string",
        },
        MonitoringType = {
            type = "string",
        },
    },
}

M.ListMonitoringSchedulesOutput = {
    type = "structure",
    id = "ListMonitoringSchedulesOutput",
    members = {
        MonitoringScheduleSummaries = {
            type = "list",
            member = M.MonitoringScheduleSummary,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.NotebookInstanceLifecycleConfigSortKey = {
    NAME = "Name",
    CREATION_TIME = "CreationTime",
    LAST_MODIFIED_TIME = "LastModifiedTime",
}

M.NotebookInstanceLifecycleConfigSortOrder = {
    ASCENDING = "Ascending",
    DESCENDING = "Descending",
}

M.ListNotebookInstanceLifecycleConfigsInput = {
    type = "structure",
    id = "ListNotebookInstanceLifecycleConfigsInput",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
        NameContains = {
            type = "string",
        },
        CreationTimeBefore = {
            type = "timestamp",
        },
        CreationTimeAfter = {
            type = "timestamp",
        },
        LastModifiedTimeBefore = {
            type = "timestamp",
        },
        LastModifiedTimeAfter = {
            type = "timestamp",
        },
    },
}

M.NotebookInstanceLifecycleConfigSummary = {
    type = "structure",
    id = "NotebookInstanceLifecycleConfigSummary",
    members = {
        NotebookInstanceLifecycleConfigName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NotebookInstanceLifecycleConfigArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
    },
}

M.ListNotebookInstanceLifecycleConfigsOutput = {
    type = "structure",
    id = "ListNotebookInstanceLifecycleConfigsOutput",
    members = {
        NextToken = {
            type = "string",
        },
        NotebookInstanceLifecycleConfigs = {
            type = "list",
            member = M.NotebookInstanceLifecycleConfigSummary,
        },
    },
}

M.NotebookInstanceSortKey = {
    NAME = "Name",
    CREATION_TIME = "CreationTime",
    STATUS = "Status",
}

M.NotebookInstanceSortOrder = {
    ASCENDING = "Ascending",
    DESCENDING = "Descending",
}

M.ListNotebookInstancesInput = {
    type = "structure",
    id = "ListNotebookInstancesInput",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
        NameContains = {
            type = "string",
        },
        CreationTimeBefore = {
            type = "timestamp",
        },
        CreationTimeAfter = {
            type = "timestamp",
        },
        LastModifiedTimeBefore = {
            type = "timestamp",
        },
        LastModifiedTimeAfter = {
            type = "timestamp",
        },
        StatusEquals = {
            type = "string",
        },
        NotebookInstanceLifecycleConfigNameContains = {
            type = "string",
        },
        DefaultCodeRepositoryContains = {
            type = "string",
        },
        AdditionalCodeRepositoryEquals = {
            type = "string",
        },
    },
}

M.NotebookInstanceSummary = {
    type = "structure",
    id = "NotebookInstanceSummary",
    members = {
        NotebookInstanceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NotebookInstanceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NotebookInstanceStatus = {
            type = "string",
        },
        Url = {
            type = "string",
        },
        InstanceType = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        NotebookInstanceLifecycleConfigName = {
            type = "string",
        },
        DefaultCodeRepository = {
            type = "string",
        },
        AdditionalCodeRepositories = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListNotebookInstancesOutput = {
    type = "structure",
    id = "ListNotebookInstancesOutput",
    members = {
        NextToken = {
            type = "string",
        },
        NotebookInstances = {
            type = "list",
            member = M.NotebookInstanceSummary,
        },
    },
}

M.ListOptimizationJobsSortBy = {
    NAME = "Name",
    CREATION_TIME = "CreationTime",
    STATUS = "Status",
}

M.ListOptimizationJobsInput = {
    type = "structure",
    id = "ListOptimizationJobsInput",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        CreationTimeAfter = {
            type = "timestamp",
        },
        CreationTimeBefore = {
            type = "timestamp",
        },
        LastModifiedTimeAfter = {
            type = "timestamp",
        },
        LastModifiedTimeBefore = {
            type = "timestamp",
        },
        OptimizationContains = {
            type = "string",
        },
        NameContains = {
            type = "string",
        },
        StatusEquals = {
            type = "string",
        },
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
    },
}

M.OptimizationJobSummary = {
    type = "structure",
    id = "OptimizationJobSummary",
    members = {
        OptimizationJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OptimizationJobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        OptimizationJobStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OptimizationStartTime = {
            type = "timestamp",
        },
        OptimizationEndTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        DeploymentInstanceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxInstanceCount = {
            type = "integer",
        },
        OptimizationTypes = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.ListOptimizationJobsOutput = {
    type = "structure",
    id = "ListOptimizationJobsOutput",
    members = {
        OptimizationJobSummaries = {
            type = "list",
            member = M.OptimizationJobSummary,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListPartnerAppsInput = {
    type = "structure",
    id = "ListPartnerAppsInput",
    members = {
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.PartnerAppSummary = {
    type = "structure",
    id = "PartnerAppSummary",
    members = {
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
    },
}

M.ListPartnerAppsOutput = {
    type = "structure",
    id = "ListPartnerAppsOutput",
    members = {
        Summaries = {
            type = "list",
            member = M.PartnerAppSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.SortPipelineExecutionsBy = {
    CREATION_TIME = "CreationTime",
    PIPELINE_EXECUTION_ARN = "PipelineExecutionArn",
}

M.ListPipelineExecutionsInput = {
    type = "structure",
    id = "ListPipelineExecutionsInput",
    members = {
        PipelineName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatedAfter = {
            type = "timestamp",
        },
        CreatedBefore = {
            type = "timestamp",
        },
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.PipelineExecutionSummary = {
    type = "structure",
    id = "PipelineExecutionSummary",
    members = {
        PipelineExecutionArn = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
        },
        PipelineExecutionStatus = {
            type = "string",
        },
        PipelineExecutionDescription = {
            type = "string",
        },
        PipelineExecutionDisplayName = {
            type = "string",
        },
        PipelineExecutionFailureReason = {
            type = "string",
        },
    },
}

M.ListPipelineExecutionsOutput = {
    type = "structure",
    id = "ListPipelineExecutionsOutput",
    members = {
        PipelineExecutionSummaries = {
            type = "list",
            member = M.PipelineExecutionSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListPipelineExecutionStepsInput = {
    type = "structure",
    id = "ListPipelineExecutionStepsInput",
    members = {
        PipelineExecutionArn = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        SortOrder = {
            type = "string",
        },
    },
}

M.ModelStepMetadata = {
    type = "structure",
    id = "ModelStepMetadata",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.ProcessingJobStepMetadata = {
    type = "structure",
    id = "ProcessingJobStepMetadata",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.QualityCheckStepMetadata = {
    type = "structure",
    id = "QualityCheckStepMetadata",
    members = {
        CheckType = {
            type = "string",
        },
        BaselineUsedForDriftCheckStatistics = {
            type = "string",
        },
        BaselineUsedForDriftCheckConstraints = {
            type = "string",
        },
        CalculatedBaselineStatistics = {
            type = "string",
        },
        CalculatedBaselineConstraints = {
            type = "string",
        },
        ModelPackageGroupName = {
            type = "string",
        },
        ViolationReport = {
            type = "string",
        },
        CheckJobArn = {
            type = "string",
        },
        SkipCheck = {
            type = "boolean",
        },
        RegisterNewBaseline = {
            type = "boolean",
        },
    },
}

M.RegisterModelStepMetadata = {
    type = "structure",
    id = "RegisterModelStepMetadata",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.TrainingJobStepMetadata = {
    type = "structure",
    id = "TrainingJobStepMetadata",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.TransformJobStepMetadata = {
    type = "structure",
    id = "TransformJobStepMetadata",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.TuningJobStepMetaData = {
    type = "structure",
    id = "TuningJobStepMetaData",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.PipelineExecutionStepMetadata = {
    type = "structure",
    id = "PipelineExecutionStepMetadata",
    members = {
        TrainingJob = M.TrainingJobStepMetadata,
        ProcessingJob = M.ProcessingJobStepMetadata,
        TransformJob = M.TransformJobStepMetadata,
        TuningJob = M.TuningJobStepMetaData,
        Model = M.ModelStepMetadata,
        RegisterModel = M.RegisterModelStepMetadata,
        Condition = M.ConditionStepMetadata,
        Callback = M.CallbackStepMetadata,
        Lambda = M.LambdaStepMetadata,
        EMR = M.EMRStepMetadata,
        QualityCheck = M.QualityCheckStepMetadata,
        ClarifyCheck = M.ClarifyCheckStepMetadata,
        Fail = M.FailStepMetadata,
        AutoMLJob = M.AutoMLJobStepMetadata,
        Endpoint = M.EndpointStepMetadata,
        EndpointConfig = M.EndpointConfigStepMetadata,
        BedrockCustomModel = M.BedrockCustomModelMetadata,
        BedrockCustomModelDeployment = M.BedrockCustomModelDeploymentMetadata,
        BedrockProvisionedModelThroughput = M.BedrockProvisionedModelThroughputMetadata,
        BedrockModelImport = M.BedrockModelImportMetadata,
        InferenceComponent = M.InferenceComponentMetadata,
        Lineage = M.LineageMetadata,
    },
}

M.SelectiveExecutionResult = {
    type = "structure",
    id = "SelectiveExecutionResult",
    members = {
        SourcePipelineExecutionArn = {
            type = "string",
        },
    },
}

M.StepStatus = {
    STARTING = "Starting",
    EXECUTING = "Executing",
    STOPPING = "Stopping",
    STOPPED = "Stopped",
    FAILED = "Failed",
    SUCCEEDED = "Succeeded",
}

M.PipelineExecutionStep = {
    type = "structure",
    id = "PipelineExecutionStep",
    members = {
        StepName = {
            type = "string",
        },
        StepDisplayName = {
            type = "string",
        },
        StepDescription = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        StepStatus = {
            type = "string",
        },
        CacheHitResult = M.CacheHitResult,
        FailureReason = {
            type = "string",
        },
        Metadata = M.PipelineExecutionStepMetadata,
        AttemptCount = {
            type = "integer",
        },
        SelectiveExecutionResult = M.SelectiveExecutionResult,
    },
}

M.ListPipelineExecutionStepsOutput = {
    type = "structure",
    id = "ListPipelineExecutionStepsOutput",
    members = {
        PipelineExecutionSteps = {
            type = "list",
            member = M.PipelineExecutionStep,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListPipelineParametersForExecutionInput = {
    type = "structure",
    id = "ListPipelineParametersForExecutionInput",
    members = {
        PipelineExecutionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.Parameter = {
    type = "structure",
    id = "Parameter",
    members = {
        Name = {
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

M.ListPipelineParametersForExecutionOutput = {
    type = "structure",
    id = "ListPipelineParametersForExecutionOutput",
    members = {
        PipelineParameters = {
            type = "list",
            member = M.Parameter,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.SortPipelinesBy = {
    NAME = "Name",
    CREATION_TIME = "CreationTime",
}

M.ListPipelinesInput = {
    type = "structure",
    id = "ListPipelinesInput",
    members = {
        PipelineNamePrefix = {
            type = "string",
        },
        CreatedAfter = {
            type = "timestamp",
        },
        CreatedBefore = {
            type = "timestamp",
        },
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.PipelineSummary = {
    type = "structure",
    id = "PipelineSummary",
    members = {
        PipelineArn = {
            type = "string",
        },
        PipelineName = {
            type = "string",
        },
        PipelineDisplayName = {
            type = "string",
        },
        PipelineDescription = {
            type = "string",
        },
        RoleArn = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LastExecutionTime = {
            type = "timestamp",
        },
    },
}

M.ListPipelinesOutput = {
    type = "structure",
    id = "ListPipelinesOutput",
    members = {
        PipelineSummaries = {
            type = "list",
            member = M.PipelineSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListPipelineVersionsInput = {
    type = "structure",
    id = "ListPipelineVersionsInput",
    members = {
        PipelineName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatedAfter = {
            type = "timestamp",
        },
        CreatedBefore = {
            type = "timestamp",
        },
        SortOrder = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.PipelineVersionSummary = {
    type = "structure",
    id = "PipelineVersionSummary",
    members = {
        PipelineArn = {
            type = "string",
        },
        PipelineVersionId = {
            type = "long",
        },
        CreationTime = {
            type = "timestamp",
        },
        PipelineVersionDescription = {
            type = "string",
        },
        PipelineVersionDisplayName = {
            type = "string",
        },
        LastExecutionPipelineExecutionArn = {
            type = "string",
        },
    },
}

M.ListPipelineVersionsOutput = {
    type = "structure",
    id = "ListPipelineVersionsOutput",
    members = {
        PipelineVersionSummaries = {
            type = "list",
            member = M.PipelineVersionSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListProcessingJobsInput = {
    type = "structure",
    id = "ListProcessingJobsInput",
    members = {
        CreationTimeAfter = {
            type = "timestamp",
        },
        CreationTimeBefore = {
            type = "timestamp",
        },
        LastModifiedTimeAfter = {
            type = "timestamp",
        },
        LastModifiedTimeBefore = {
            type = "timestamp",
        },
        NameContains = {
            type = "string",
        },
        StatusEquals = {
            type = "string",
        },
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ProcessingJobSummary = {
    type = "structure",
    id = "ProcessingJobSummary",
    members = {
        ProcessingJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProcessingJobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        ProcessingEndTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        ProcessingJobStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FailureReason = {
            type = "string",
        },
        ExitMessage = {
            type = "string",
        },
    },
}

M.ListProcessingJobsOutput = {
    type = "structure",
    id = "ListProcessingJobsOutput",
    members = {
        ProcessingJobSummaries = {
            type = "list",
            member = M.ProcessingJobSummary,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ProjectSortBy = {
    NAME = "Name",
    CREATION_TIME = "CreationTime",
}

M.ProjectSortOrder = {
    ASCENDING = "Ascending",
    DESCENDING = "Descending",
}

M.ListProjectsInput = {
    type = "structure",
    id = "ListProjectsInput",
    members = {
        CreationTimeAfter = {
            type = "timestamp",
        },
        CreationTimeBefore = {
            type = "timestamp",
        },
        MaxResults = {
            type = "integer",
        },
        NameContains = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
    },
}

M.ProjectSummary = {
    type = "structure",
    id = "ProjectSummary",
    members = {
        ProjectName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProjectDescription = {
            type = "string",
        },
        ProjectArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProjectId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        ProjectStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListProjectsOutput = {
    type = "structure",
    id = "ListProjectsOutput",
    members = {
        ProjectSummaryList = {
            type = "list",
            member = M.ProjectSummary,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ResourceCatalogSortBy = {
    CREATION_TIME = "CreationTime",
}

M.ResourceCatalogSortOrder = {
    ASCENDING = "Ascending",
    DESCENDING = "Descending",
}

M.ListResourceCatalogsInput = {
    type = "structure",
    id = "ListResourceCatalogsInput",
    members = {
        NameContains = {
            type = "string",
        },
        CreationTimeAfter = {
            type = "timestamp",
        },
        CreationTimeBefore = {
            type = "timestamp",
        },
        SortOrder = {
            type = "string",
        },
        SortBy = {
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

M.ResourceCatalog = {
    type = "structure",
    id = "ResourceCatalog",
    members = {
        ResourceCatalogArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceCatalogName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListResourceCatalogsOutput = {
    type = "structure",
    id = "ListResourceCatalogsOutput",
    members = {
        ResourceCatalogs = {
            type = "list",
            member = M.ResourceCatalog,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.SpaceSortKey = {
    CreationTime = "CreationTime",
    LastModifiedTime = "LastModifiedTime",
}

M.ListSpacesInput = {
    type = "structure",
    id = "ListSpacesInput",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        SortOrder = {
            type = "string",
        },
        SortBy = {
            type = "string",
        },
        DomainIdEquals = {
            type = "string",
        },
        SpaceNameContains = {
            type = "string",
        },
    },
}

M.OwnershipSettingsSummary = {
    type = "structure",
    id = "OwnershipSettingsSummary",
    members = {
        OwnerUserProfileName = {
            type = "string",
        },
    },
}

M.SpaceSettingsSummary = {
    type = "structure",
    id = "SpaceSettingsSummary",
    members = {
        AppType = {
            type = "string",
        },
        RemoteAccess = {
            type = "string",
        },
        SpaceStorageSettings = M.SpaceStorageSettings,
    },
}

M.SpaceSharingSettingsSummary = {
    type = "structure",
    id = "SpaceSharingSettingsSummary",
    members = {
        SharingType = {
            type = "string",
        },
    },
}

M.SpaceDetails = {
    type = "structure",
    id = "SpaceDetails",
    members = {
        DomainId = {
            type = "string",
        },
        SpaceName = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        SpaceSettingsSummary = M.SpaceSettingsSummary,
        SpaceSharingSettingsSummary = M.SpaceSharingSettingsSummary,
        OwnershipSettingsSummary = M.OwnershipSettingsSummary,
        SpaceDisplayName = {
            type = "string",
        },
    },
}

M.ListSpacesOutput = {
    type = "structure",
    id = "ListSpacesOutput",
    members = {
        Spaces = {
            type = "list",
            member = M.SpaceDetails,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListStageDevicesInput = {
    type = "structure",
    id = "ListStageDevicesInput",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        EdgeDeploymentPlanName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExcludeDevicesDeployedInOtherStage = {
            type = "boolean",
        },
        StageName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListStageDevicesOutput = {
    type = "structure",
    id = "ListStageDevicesOutput",
    members = {
        DeviceDeploymentSummaries = {
            type = "list",
            member = M.DeviceDeploymentSummary,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.StudioLifecycleConfigSortKey = {
    CreationTime = "CreationTime",
    LastModifiedTime = "LastModifiedTime",
    Name = "Name",
}

M.ListStudioLifecycleConfigsInput = {
    type = "structure",
    id = "ListStudioLifecycleConfigsInput",
    members = {
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        NameContains = {
            type = "string",
        },
        AppTypeEquals = {
            type = "string",
        },
        CreationTimeBefore = {
            type = "timestamp",
        },
        CreationTimeAfter = {
            type = "timestamp",
        },
        ModifiedTimeBefore = {
            type = "timestamp",
        },
        ModifiedTimeAfter = {
            type = "timestamp",
        },
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
    },
}

M.StudioLifecycleConfigDetails = {
    type = "structure",
    id = "StudioLifecycleConfigDetails",
    members = {
        StudioLifecycleConfigArn = {
            type = "string",
        },
        StudioLifecycleConfigName = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        StudioLifecycleConfigAppType = {
            type = "string",
        },
    },
}

M.ListStudioLifecycleConfigsOutput = {
    type = "structure",
    id = "ListStudioLifecycleConfigsOutput",
    members = {
        NextToken = {
            type = "string",
        },
        StudioLifecycleConfigs = {
            type = "list",
            member = M.StudioLifecycleConfigDetails,
        },
    },
}

M.ListSubscribedWorkteamsInput = {
    type = "structure",
    id = "ListSubscribedWorkteamsInput",
    members = {
        NameContains = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListSubscribedWorkteamsOutput = {
    type = "structure",
    id = "ListSubscribedWorkteamsOutput",
    members = {
        SubscribedWorkteams = {
            type = "list",
            member = M.SubscribedWorkteam,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTagsInput = {
    type = "structure",
    id = "ListTagsInput",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListTagsOutput = {
    type = "structure",
    id = "ListTagsOutput",
    members = {
        Tags = {
            type = "list",
            member = M.Tag,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTrainingJobsInput = {
    type = "structure",
    id = "ListTrainingJobsInput",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        CreationTimeAfter = {
            type = "timestamp",
        },
        CreationTimeBefore = {
            type = "timestamp",
        },
        LastModifiedTimeAfter = {
            type = "timestamp",
        },
        LastModifiedTimeBefore = {
            type = "timestamp",
        },
        NameContains = {
            type = "string",
        },
        StatusEquals = {
            type = "string",
        },
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
        WarmPoolStatusEquals = {
            type = "string",
        },
        TrainingPlanArnEquals = {
            type = "string",
        },
    },
}

M.TrainingJobSummary = {
    type = "structure",
    id = "TrainingJobSummary",
    members = {
        TrainingJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TrainingJobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        TrainingEndTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        TrainingJobStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SecondaryStatus = {
            type = "string",
        },
        WarmPoolStatus = M.WarmPoolStatus,
        TrainingPlanArn = {
            type = "string",
        },
    },
}

M.ListTrainingJobsOutput = {
    type = "structure",
    id = "ListTrainingJobsOutput",
    members = {
        TrainingJobSummaries = {
            type = "list",
            member = M.TrainingJobSummary,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.TrainingJobSortByOptions = {
    Name = "Name",
    CreationTime = "CreationTime",
    Status = "Status",
    FinalObjectiveMetricValue = "FinalObjectiveMetricValue",
}

M.ListTrainingJobsForHyperParameterTuningJobInput = {
    type = "structure",
    id = "ListTrainingJobsForHyperParameterTuningJobInput",
    members = {
        HyperParameterTuningJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        StatusEquals = {
            type = "string",
        },
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
    },
}

M.ListTrainingJobsForHyperParameterTuningJobOutput = {
    type = "structure",
    id = "ListTrainingJobsForHyperParameterTuningJobOutput",
    members = {
        TrainingJobSummaries = {
            type = "list",
            member = M.HyperParameterTrainingJobSummary,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.TrainingPlanFilterName = {
    STATUS = "Status",
}

M.TrainingPlanFilter = {
    type = "structure",
    id = "TrainingPlanFilter",
    members = {
        Name = {
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

M.TrainingPlanSortBy = {
    NAME = "TrainingPlanName",
    START_TIME = "StartTime",
    STATUS = "Status",
}

M.TrainingPlanSortOrder = {
    ASCENDING = "Ascending",
    DESCENDING = "Descending",
}

M.ListTrainingPlansInput = {
    type = "structure",
    id = "ListTrainingPlansInput",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        StartTimeAfter = {
            type = "timestamp",
        },
        StartTimeBefore = {
            type = "timestamp",
        },
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
        Filters = {
            type = "list",
            member = M.TrainingPlanFilter,
        },
    },
}

M.TrainingPlanSummary = {
    type = "structure",
    id = "TrainingPlanSummary",
    members = {
        TrainingPlanArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TrainingPlanName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StatusMessage = {
            type = "string",
        },
        DurationHours = {
            type = "long",
        },
        DurationMinutes = {
            type = "long",
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        UpfrontFee = {
            type = "string",
        },
        CurrencyCode = {
            type = "string",
        },
        TotalInstanceCount = {
            type = "integer",
        },
        AvailableInstanceCount = {
            type = "integer",
        },
        InUseInstanceCount = {
            type = "integer",
        },
        TotalUltraServerCount = {
            type = "integer",
        },
        TargetResources = {
            type = "list",
            member = { type = "string" },
        },
        ReservedCapacitySummaries = {
            type = "list",
            member = M.ReservedCapacitySummary,
        },
    },
}

M.ListTrainingPlansOutput = {
    type = "structure",
    id = "ListTrainingPlansOutput",
    members = {
        NextToken = {
            type = "string",
        },
        TrainingPlanSummaries = {
            type = "list",
            member = M.TrainingPlanSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.ListTransformJobsInput = {
    type = "structure",
    id = "ListTransformJobsInput",
    members = {
        CreationTimeAfter = {
            type = "timestamp",
        },
        CreationTimeBefore = {
            type = "timestamp",
        },
        LastModifiedTimeAfter = {
            type = "timestamp",
        },
        LastModifiedTimeBefore = {
            type = "timestamp",
        },
        NameContains = {
            type = "string",
        },
        StatusEquals = {
            type = "string",
        },
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.TransformJobSummary = {
    type = "structure",
    id = "TransformJobSummary",
    members = {
        TransformJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TransformJobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        TransformEndTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        TransformJobStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FailureReason = {
            type = "string",
        },
    },
}

M.ListTransformJobsOutput = {
    type = "structure",
    id = "ListTransformJobsOutput",
    members = {
        TransformJobSummaries = {
            type = "list",
            member = M.TransformJobSummary,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.SortTrialComponentsBy = {
    NAME = "Name",
    CREATION_TIME = "CreationTime",
}

M.ListTrialComponentsInput = {
    type = "structure",
    id = "ListTrialComponentsInput",
    members = {
        ExperimentName = {
            type = "string",
        },
        TrialName = {
            type = "string",
        },
        SourceArn = {
            type = "string",
        },
        CreatedAfter = {
            type = "timestamp",
        },
        CreatedBefore = {
            type = "timestamp",
        },
        SortBy = {
            type = "string",
        },
        SortOrder = {
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

M.TrialComponentSummary = {
    type = "structure",
    id = "TrialComponentSummary",
    members = {
        TrialComponentName = {
            type = "string",
        },
        TrialComponentArn = {
            type = "string",
        },
        DisplayName = {
            type = "string",
        },
        TrialComponentSource = M.TrialComponentSource,
        Status = M.TrialComponentStatus,
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        CreationTime = {
            type = "timestamp",
        },
        CreatedBy = M.UserContext,
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedBy = M.UserContext,
    },
}

M.ListTrialComponentsOutput = {
    type = "structure",
    id = "ListTrialComponentsOutput",
    members = {
        TrialComponentSummaries = {
            type = "list",
            member = M.TrialComponentSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.SortTrialsBy = {
    NAME = "Name",
    CREATION_TIME = "CreationTime",
}

M.ListTrialsInput = {
    type = "structure",
    id = "ListTrialsInput",
    members = {
        ExperimentName = {
            type = "string",
        },
        TrialComponentName = {
            type = "string",
        },
        CreatedAfter = {
            type = "timestamp",
        },
        CreatedBefore = {
            type = "timestamp",
        },
        SortBy = {
            type = "string",
        },
        SortOrder = {
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

M.TrialSummary = {
    type = "structure",
    id = "TrialSummary",
    members = {
        TrialArn = {
            type = "string",
        },
        TrialName = {
            type = "string",
        },
        DisplayName = {
            type = "string",
        },
        TrialSource = M.TrialSource,
        CreationTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
    },
}

M.ListTrialsOutput = {
    type = "structure",
    id = "ListTrialsOutput",
    members = {
        TrialSummaries = {
            type = "list",
            member = M.TrialSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListUltraServersByReservedCapacityInput = {
    type = "structure",
    id = "ListUltraServersByReservedCapacityInput",
    members = {
        ReservedCapacityArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.UltraServerHealthStatus = {
    OK = "OK",
    IMPAIRED = "Impaired",
    INSUFFICIENT_DATA = "Insufficient-Data",
}

M.UltraServer = {
    type = "structure",
    id = "UltraServer",
    members = {
        UltraServerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UltraServerType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AvailabilityZone = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstanceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TotalInstanceCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        ConfiguredSpareInstanceCount = {
            type = "integer",
        },
        AvailableInstanceCount = {
            type = "integer",
        },
        InUseInstanceCount = {
            type = "integer",
        },
        AvailableSpareInstanceCount = {
            type = "integer",
        },
        UnhealthyInstanceCount = {
            type = "integer",
        },
        HealthStatus = {
            type = "string",
        },
    },
}

M.ListUltraServersByReservedCapacityOutput = {
    type = "structure",
    id = "ListUltraServersByReservedCapacityOutput",
    members = {
        NextToken = {
            type = "string",
        },
        UltraServers = {
            type = "list",
            member = M.UltraServer,
            traits = {
                required = true,
            },
        },
    },
}

M.UserProfileSortKey = {
    CreationTime = "CreationTime",
    LastModifiedTime = "LastModifiedTime",
}

M.ListUserProfilesInput = {
    type = "structure",
    id = "ListUserProfilesInput",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        SortOrder = {
            type = "string",
        },
        SortBy = {
            type = "string",
        },
        DomainIdEquals = {
            type = "string",
        },
        UserProfileNameContains = {
            type = "string",
        },
    },
}

M.UserProfileDetails = {
    type = "structure",
    id = "UserProfileDetails",
    members = {
        DomainId = {
            type = "string",
        },
        UserProfileName = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
    },
}

M.ListUserProfilesOutput = {
    type = "structure",
    id = "ListUserProfilesOutput",
    members = {
        UserProfiles = {
            type = "list",
            member = M.UserProfileDetails,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListWorkforcesSortByOptions = {
    Name = "Name",
    CreateDate = "CreateDate",
}

M.ListWorkforcesInput = {
    type = "structure",
    id = "ListWorkforcesInput",
    members = {
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
        NameContains = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListWorkforcesOutput = {
    type = "structure",
    id = "ListWorkforcesOutput",
    members = {
        Workforces = {
            type = "list",
            member = M.Workforce,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListWorkteamsSortByOptions = {
    Name = "Name",
    CreateDate = "CreateDate",
}

M.ListWorkteamsInput = {
    type = "structure",
    id = "ListWorkteamsInput",
    members = {
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
        NameContains = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListWorkteamsOutput = {
    type = "structure",
    id = "ListWorkteamsOutput",
    members = {
        Workteams = {
            type = "list",
            member = M.Workteam,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
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
        PrimaryContainer = M.ContainerDefinition,
        Containers = {
            type = "list",
            member = M.ContainerDefinition,
        },
        InferenceExecutionConfig = M.InferenceExecutionConfig,
        ExecutionRoleArn = {
            type = "string",
        },
        VpcConfig = M.VpcConfig,
        CreationTime = {
            type = "timestamp",
        },
        ModelArn = {
            type = "string",
        },
        EnableNetworkIsolation = {
            type = "boolean",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        DeploymentRecommendation = M.DeploymentRecommendation,
    },
}

M.ModelCard = {
    type = "structure",
    id = "ModelCard",
    members = {
        ModelCardArn = {
            type = "string",
        },
        ModelCardName = {
            type = "string",
        },
        ModelCardVersion = {
            type = "integer",
        },
        Content = {
            type = "string",
        },
        ModelCardStatus = {
            type = "string",
        },
        SecurityConfig = M.ModelCardSecurityConfig,
        CreationTime = {
            type = "timestamp",
        },
        CreatedBy = M.UserContext,
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedBy = M.UserContext,
        Tags = {
            type = "list",
            member = M.Tag,
        },
        ModelId = {
            type = "string",
        },
        RiskRating = {
            type = "string",
        },
        ModelPackageGroupName = {
            type = "string",
        },
    },
}

M.ModelDashboardEndpoint = {
    type = "structure",
    id = "ModelDashboardEndpoint",
    members = {
        EndpointName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EndpointArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        EndpointStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TransformJob = {
    type = "structure",
    id = "TransformJob",
    members = {
        TransformJobName = {
            type = "string",
        },
        TransformJobArn = {
            type = "string",
        },
        TransformJobStatus = {
            type = "string",
        },
        FailureReason = {
            type = "string",
        },
        ModelName = {
            type = "string",
        },
        MaxConcurrentTransforms = {
            type = "integer",
        },
        ModelClientConfig = M.ModelClientConfig,
        MaxPayloadInMB = {
            type = "integer",
        },
        BatchStrategy = {
            type = "string",
        },
        Environment = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        TransformInput = M.TransformInput,
        TransformOutput = M.TransformOutput,
        DataCaptureConfig = M.BatchDataCaptureConfig,
        TransformResources = M.TransformResources,
        CreationTime = {
            type = "timestamp",
        },
        TransformStartTime = {
            type = "timestamp",
        },
        TransformEndTime = {
            type = "timestamp",
        },
        LabelingJobArn = {
            type = "string",
        },
        AutoMLJobArn = {
            type = "string",
        },
        DataProcessing = M.DataProcessing,
        ExperimentConfig = M.ExperimentConfig,
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.ModelDashboardModelCard = {
    type = "structure",
    id = "ModelDashboardModelCard",
    members = {
        ModelCardArn = {
            type = "string",
        },
        ModelCardName = {
            type = "string",
        },
        ModelCardVersion = {
            type = "integer",
        },
        ModelCardStatus = {
            type = "string",
        },
        SecurityConfig = M.ModelCardSecurityConfig,
        CreationTime = {
            type = "timestamp",
        },
        CreatedBy = M.UserContext,
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedBy = M.UserContext,
        Tags = {
            type = "list",
            member = M.Tag,
        },
        ModelId = {
            type = "string",
        },
        RiskRating = {
            type = "string",
        },
    },
}

M.ModelDashboardMonitoringSchedule = {
    type = "structure",
    id = "ModelDashboardMonitoringSchedule",
    members = {
        MonitoringScheduleArn = {
            type = "string",
        },
        MonitoringScheduleName = {
            type = "string",
        },
        MonitoringScheduleStatus = {
            type = "string",
        },
        MonitoringType = {
            type = "string",
        },
        FailureReason = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        MonitoringScheduleConfig = M.MonitoringScheduleConfig,
        EndpointName = {
            type = "string",
        },
        MonitoringAlertSummaries = {
            type = "list",
            member = M.MonitoringAlertSummary,
        },
        LastMonitoringExecutionSummary = M.MonitoringExecutionSummary,
        BatchTransformInput = M.BatchTransformInput,
    },
}

M.ModelDashboardModel = {
    type = "structure",
    id = "ModelDashboardModel",
    members = {
        Model = M.Model,
        Endpoints = {
            type = "list",
            member = M.ModelDashboardEndpoint,
        },
        LastBatchTransformJob = M.TransformJob,
        MonitoringSchedules = {
            type = "list",
            member = M.ModelDashboardMonitoringSchedule,
        },
        ModelCard = M.ModelDashboardModelCard,
    },
}

M.ModelPackage = {
    type = "structure",
    id = "ModelPackage",
    members = {
        ModelPackageName = {
            type = "string",
        },
        ModelPackageGroupName = {
            type = "string",
        },
        ModelPackageVersion = {
            type = "integer",
        },
        ModelPackageRegistrationType = {
            type = "string",
        },
        ModelPackageArn = {
            type = "string",
        },
        ModelPackageDescription = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        InferenceSpecification = M.InferenceSpecification,
        SourceAlgorithmSpecification = M.SourceAlgorithmSpecification,
        ValidationSpecification = M.ModelPackageValidationSpecification,
        ModelPackageStatus = {
            type = "string",
        },
        ModelPackageStatusDetails = M.ModelPackageStatusDetails,
        CertifyForMarketplace = {
            type = "boolean",
        },
        ModelApprovalStatus = {
            type = "string",
        },
        CreatedBy = M.UserContext,
        MetadataProperties = M.MetadataProperties,
        ModelMetrics = M.ModelMetrics,
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedBy = M.UserContext,
        ApprovalDescription = {
            type = "string",
        },
        Domain = {
            type = "string",
        },
        Task = {
            type = "string",
        },
        SamplePayloadUrl = {
            type = "string",
        },
        AdditionalInferenceSpecifications = {
            type = "list",
            member = M.AdditionalInferenceSpecificationDefinition,
        },
        SourceUri = {
            type = "string",
        },
        SecurityConfig = M.ModelPackageSecurityConfig,
        ModelCard = M.ModelPackageModelCard,
        ModelLifeCycle = M.ModelLifeCycle,
        Tags = {
            type = "list",
            member = M.Tag,
        },
        CustomerMetadataProperties = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        DriftCheckBaselines = M.DriftCheckBaselines,
        SkipModelValidation = {
            type = "string",
        },
    },
}

M.ModelPackageGroup = {
    type = "structure",
    id = "ModelPackageGroup",
    members = {
        ModelPackageGroupName = {
            type = "string",
        },
        ModelPackageGroupArn = {
            type = "string",
        },
        ModelPackageGroupDescription = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        CreatedBy = M.UserContext,
        ModelPackageGroupStatus = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.ModelVariantAction = {
    RETAIN = "Retain",
    REMOVE = "Remove",
    PROMOTE = "Promote",
}

M.NestedFilters = {
    type = "structure",
    id = "NestedFilters",
    members = {
        NestedPropertyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filters = {
            type = "list",
            member = M.Filter,
            traits = {
                required = true,
            },
        },
    },
}

M.OnlineStoreConfigUpdate = {
    type = "structure",
    id = "OnlineStoreConfigUpdate",
    members = {
        TtlDuration = M.TtlDuration,
    },
}

M.Parent = {
    type = "structure",
    id = "Parent",
    members = {
        TrialName = {
            type = "string",
        },
        ExperimentName = {
            type = "string",
        },
    },
}

M.Pipeline = {
    type = "structure",
    id = "Pipeline",
    members = {
        PipelineArn = {
            type = "string",
        },
        PipelineName = {
            type = "string",
        },
        PipelineDisplayName = {
            type = "string",
        },
        PipelineDescription = {
            type = "string",
        },
        RoleArn = {
            type = "string",
        },
        PipelineStatus = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LastRunTime = {
            type = "timestamp",
        },
        CreatedBy = M.UserContext,
        LastModifiedBy = M.UserContext,
        ParallelismConfiguration = M.ParallelismConfiguration,
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.PipelineExecution = {
    type = "structure",
    id = "PipelineExecution",
    members = {
        PipelineArn = {
            type = "string",
        },
        PipelineExecutionArn = {
            type = "string",
        },
        PipelineExecutionDisplayName = {
            type = "string",
        },
        PipelineExecutionStatus = {
            type = "string",
        },
        PipelineExecutionDescription = {
            type = "string",
        },
        PipelineExperimentConfig = M.PipelineExperimentConfig,
        FailureReason = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        CreatedBy = M.UserContext,
        LastModifiedBy = M.UserContext,
        ParallelismConfiguration = M.ParallelismConfiguration,
        SelectiveExecutionConfig = M.SelectiveExecutionConfig,
        PipelineParameters = {
            type = "list",
            member = M.Parameter,
        },
        PipelineVersionId = {
            type = "long",
        },
        PipelineVersionDisplayName = {
            type = "string",
        },
    },
}

M.PipelineVersion = {
    type = "structure",
    id = "PipelineVersion",
    members = {
        PipelineArn = {
            type = "string",
        },
        PipelineVersionId = {
            type = "long",
        },
        PipelineVersionDisplayName = {
            type = "string",
        },
        PipelineVersionDescription = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        CreatedBy = M.UserContext,
        LastModifiedBy = M.UserContext,
        LastExecutedPipelineExecutionArn = {
            type = "string",
        },
        LastExecutedPipelineExecutionDisplayName = {
            type = "string",
        },
        LastExecutedPipelineExecutionStatus = {
            type = "string",
        },
    },
}

M.ProcessingJob = {
    type = "structure",
    id = "ProcessingJob",
    members = {
        ProcessingInputs = {
            type = "list",
            member = M.ProcessingInput,
        },
        ProcessingOutputConfig = M.ProcessingOutputConfig,
        ProcessingJobName = {
            type = "string",
        },
        ProcessingResources = M.ProcessingResources,
        StoppingCondition = M.ProcessingStoppingCondition,
        AppSpecification = M.AppSpecification,
        Environment = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        NetworkConfig = M.NetworkConfig,
        RoleArn = {
            type = "string",
        },
        ExperimentConfig = M.ExperimentConfig,
        ProcessingJobArn = {
            type = "string",
        },
        ProcessingJobStatus = {
            type = "string",
        },
        ExitMessage = {
            type = "string",
        },
        FailureReason = {
            type = "string",
        },
        ProcessingEndTime = {
            type = "timestamp",
        },
        ProcessingStartTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        CreationTime = {
            type = "timestamp",
        },
        MonitoringScheduleArn = {
            type = "string",
        },
        AutoMLJobArn = {
            type = "string",
        },
        TrainingJobArn = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.ProfilerConfigForUpdate = {
    type = "structure",
    id = "ProfilerConfigForUpdate",
    members = {
        S3OutputPath = {
            type = "string",
        },
        ProfilingIntervalInMilliseconds = {
            type = "long",
        },
        ProfilingParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        DisableProfiler = {
            type = "boolean",
        },
    },
}

M.Project = {
    type = "structure",
    id = "Project",
    members = {
        ProjectArn = {
            type = "string",
        },
        ProjectName = {
            type = "string",
        },
        ProjectId = {
            type = "string",
        },
        ProjectDescription = {
            type = "string",
        },
        ServiceCatalogProvisioningDetails = M.ServiceCatalogProvisioningDetails,
        ServiceCatalogProvisionedProductDetails = M.ServiceCatalogProvisionedProductDetails,
        ProjectStatus = {
            type = "string",
        },
        CreatedBy = M.UserContext,
        CreationTime = {
            type = "timestamp",
        },
        TemplateProviderDetails = {
            type = "list",
            member = M.TemplateProviderDetail,
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedBy = M.UserContext,
    },
}

M.PutModelPackageGroupPolicyInput = {
    type = "structure",
    id = "PutModelPackageGroupPolicyInput",
    members = {
        ModelPackageGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourcePolicy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutModelPackageGroupPolicyOutput = {
    type = "structure",
    id = "PutModelPackageGroupPolicyOutput",
    members = {
        ModelPackageGroupArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.QueryFilters = {
    type = "structure",
    id = "QueryFilters",
    members = {
        Types = {
            type = "list",
            member = { type = "string" },
        },
        LineageTypes = {
            type = "list",
            member = { type = "string" },
        },
        CreatedBefore = {
            type = "timestamp",
        },
        CreatedAfter = {
            type = "timestamp",
        },
        ModifiedBefore = {
            type = "timestamp",
        },
        ModifiedAfter = {
            type = "timestamp",
        },
        Properties = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.QueryLineageInput = {
    type = "structure",
    id = "QueryLineageInput",
    members = {
        StartArns = {
            type = "list",
            member = { type = "string" },
        },
        Direction = {
            type = "string",
        },
        IncludeEdges = {
            type = "boolean",
        },
        Filters = M.QueryFilters,
        MaxDepth = {
            type = "integer",
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.Vertex = {
    type = "structure",
    id = "Vertex",
    members = {
        Arn = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        LineageType = {
            type = "string",
        },
    },
}

M.QueryLineageOutput = {
    type = "structure",
    id = "QueryLineageOutput",
    members = {
        Vertices = {
            type = "list",
            member = M.Vertex,
        },
        Edges = {
            type = "list",
            member = M.Edge,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.RegisterDevicesInput = {
    type = "structure",
    id = "RegisterDevicesInput",
    members = {
        DeviceFleetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Devices = {
            type = "list",
            member = M.Device,
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

M.RegisterDevicesOutput = {
    type = "structure",
    id = "RegisterDevicesOutput",
}

M.Relation = {
    EQUAL_TO = "EqualTo",
    GREATER_THAN_OR_EQUAL_TO = "GreaterThanOrEqualTo",
}

M.RemoteDebugConfigForUpdate = {
    type = "structure",
    id = "RemoteDebugConfigForUpdate",
    members = {
        EnableRemoteDebug = {
            type = "boolean",
        },
    },
}

M.RenderableTask = {
    type = "structure",
    id = "RenderableTask",
    members = {
        Input = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RenderingError = {
    type = "structure",
    id = "RenderingError",
    members = {
        Code = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RenderUiTemplateInput = {
    type = "structure",
    id = "RenderUiTemplateInput",
    members = {
        UiTemplate = M.UiTemplate,
        Task = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RenderableTask }),
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HumanTaskUiArn = {
            type = "string",
        },
    },
}

M.RenderUiTemplateOutput = {
    type = "structure",
    id = "RenderUiTemplateOutput",
    members = {
        RenderedContent = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Errors = {
            type = "list",
            member = M.RenderingError,
            traits = {
                required = true,
            },
        },
    },
}

M.ReservedCapacityOffering = {
    type = "structure",
    id = "ReservedCapacityOffering",
    members = {
        ReservedCapacityType = {
            type = "string",
        },
        UltraServerType = {
            type = "string",
        },
        UltraServerCount = {
            type = "integer",
        },
        InstanceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstanceCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        AvailabilityZone = {
            type = "string",
        },
        DurationHours = {
            type = "long",
        },
        DurationMinutes = {
            type = "long",
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        ExtensionStartTime = {
            type = "timestamp",
        },
        ExtensionEndTime = {
            type = "timestamp",
        },
    },
}

M.ResourceConfigForUpdate = {
    type = "structure",
    id = "ResourceConfigForUpdate",
    members = {
        KeepAlivePeriodInSeconds = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.RetryPipelineExecutionInput = {
    type = "structure",
    id = "RetryPipelineExecutionInput",
    members = {
        PipelineExecutionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
        ParallelismConfiguration = M.ParallelismConfiguration,
    },
}

M.RetryPipelineExecutionOutput = {
    type = "structure",
    id = "RetryPipelineExecutionOutput",
    members = {
        PipelineExecutionArn = {
            type = "string",
        },
    },
}

M.SearchSortOrder = {
    ASCENDING = "Ascending",
    DESCENDING = "Descending",
}

M.VisibilityConditions = {
    type = "structure",
    id = "VisibilityConditions",
    members = {
        Key = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.TrainingJob = {
    type = "structure",
    id = "TrainingJob",
    members = {
        TrainingJobName = {
            type = "string",
        },
        TrainingJobArn = {
            type = "string",
        },
        TuningJobArn = {
            type = "string",
        },
        LabelingJobArn = {
            type = "string",
        },
        AutoMLJobArn = {
            type = "string",
        },
        ModelArtifacts = M.ModelArtifacts,
        TrainingJobStatus = {
            type = "string",
        },
        SecondaryStatus = {
            type = "string",
        },
        FailureReason = {
            type = "string",
        },
        HyperParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        AlgorithmSpecification = M.AlgorithmSpecification,
        RoleArn = {
            type = "string",
        },
        InputDataConfig = {
            type = "list",
            member = M.Channel,
        },
        OutputDataConfig = M.OutputDataConfig,
        ResourceConfig = M.ResourceConfig,
        VpcConfig = M.VpcConfig,
        StoppingCondition = M.StoppingCondition,
        CreationTime = {
            type = "timestamp",
        },
        TrainingStartTime = {
            type = "timestamp",
        },
        TrainingEndTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        SecondaryStatusTransitions = {
            type = "list",
            member = M.SecondaryStatusTransition,
        },
        FinalMetricDataList = {
            type = "list",
            member = M.MetricData,
        },
        EnableNetworkIsolation = {
            type = "boolean",
        },
        EnableInterContainerTrafficEncryption = {
            type = "boolean",
        },
        EnableManagedSpotTraining = {
            type = "boolean",
        },
        CheckpointConfig = M.CheckpointConfig,
        TrainingTimeInSeconds = {
            type = "integer",
        },
        BillableTimeInSeconds = {
            type = "integer",
        },
        DebugHookConfig = M.DebugHookConfig,
        ExperimentConfig = M.ExperimentConfig,
        DebugRuleConfigurations = {
            type = "list",
            member = M.DebugRuleConfiguration,
        },
        TensorBoardOutputConfig = M.TensorBoardOutputConfig,
        DebugRuleEvaluationStatuses = {
            type = "list",
            member = M.DebugRuleEvaluationStatus,
        },
        OutputModelPackageArn = {
            type = "string",
        },
        ModelPackageConfig = M.ModelPackageConfig,
        ProfilerConfig = M.ProfilerConfig,
        Environment = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        RetryStrategy = M.RetryStrategy,
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.TrialComponentSimpleSummary = {
    type = "structure",
    id = "TrialComponentSimpleSummary",
    members = {
        TrialComponentName = {
            type = "string",
        },
        TrialComponentArn = {
            type = "string",
        },
        TrialComponentSource = M.TrialComponentSource,
        CreationTime = {
            type = "timestamp",
        },
        CreatedBy = M.UserContext,
    },
}

M.Trial = {
    type = "structure",
    id = "Trial",
    members = {
        TrialName = {
            type = "string",
        },
        TrialArn = {
            type = "string",
        },
        DisplayName = {
            type = "string",
        },
        ExperimentName = {
            type = "string",
        },
        Source = M.TrialSource,
        CreationTime = {
            type = "timestamp",
        },
        CreatedBy = M.UserContext,
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedBy = M.UserContext,
        MetadataProperties = M.MetadataProperties,
        Tags = {
            type = "list",
            member = M.Tag,
        },
        TrialComponentSummaries = {
            type = "list",
            member = M.TrialComponentSimpleSummary,
        },
    },
}

M.TrialComponentSourceDetail = {
    type = "structure",
    id = "TrialComponentSourceDetail",
    members = {
        SourceArn = {
            type = "string",
        },
        TrainingJob = M.TrainingJob,
        ProcessingJob = M.ProcessingJob,
        TransformJob = M.TransformJob,
    },
}

M.TrialComponent = {
    type = "structure",
    id = "TrialComponent",
    members = {
        TrialComponentName = {
            type = "string",
        },
        DisplayName = {
            type = "string",
        },
        TrialComponentArn = {
            type = "string",
        },
        Source = M.TrialComponentSource,
        Status = M.TrialComponentStatus,
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        CreationTime = {
            type = "timestamp",
        },
        CreatedBy = M.UserContext,
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedBy = M.UserContext,
        Parameters = {
            type = "map",
            key = { type = "string" },
            value = M.TrialComponentParameterValue,
        },
        InputArtifacts = {
            type = "map",
            key = { type = "string" },
            value = M.TrialComponentArtifact,
        },
        OutputArtifacts = {
            type = "map",
            key = { type = "string" },
            value = M.TrialComponentArtifact,
        },
        Metrics = {
            type = "list",
            member = M.TrialComponentMetricSummary,
        },
        MetadataProperties = M.MetadataProperties,
        SourceDetail = M.TrialComponentSourceDetail,
        LineageGroupArn = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        Parents = {
            type = "list",
            member = M.Parent,
        },
        RunName = {
            type = "string",
        },
    },
}

M.SearchRecord = {
    type = "structure",
    id = "SearchRecord",
    members = {
        TrainingJob = M.TrainingJob,
        Experiment = M.Experiment,
        Trial = M.Trial,
        TrialComponent = M.TrialComponent,
        Endpoint = M.Endpoint,
        ModelPackage = M.ModelPackage,
        ModelPackageGroup = M.ModelPackageGroup,
        Pipeline = M.Pipeline,
        PipelineExecution = M.PipelineExecution,
        PipelineVersion = M.PipelineVersion,
        FeatureGroup = M.FeatureGroup,
        FeatureMetadata = M.FeatureMetadata,
        Project = M.Project,
        HyperParameterTuningJob = M.HyperParameterTuningJobSearchEntity,
        ModelCard = M.ModelCard,
        Model = M.ModelDashboardModel,
    },
}

M.TotalHits = {
    type = "structure",
    id = "TotalHits",
    members = {
        Value = {
            type = "long",
        },
        Relation = {
            type = "string",
        },
    },
}

M.SearchOutput = {
    type = "structure",
    id = "SearchOutput",
    members = {
        Results = {
            type = "list",
            member = M.SearchRecord,
        },
        NextToken = {
            type = "string",
        },
        TotalHits = M.TotalHits,
    },
}

M.SearchTrainingPlanOfferingsInput = {
    type = "structure",
    id = "SearchTrainingPlanOfferingsInput",
    members = {
        InstanceType = {
            type = "string",
        },
        InstanceCount = {
            type = "integer",
        },
        UltraServerType = {
            type = "string",
        },
        UltraServerCount = {
            type = "integer",
        },
        StartTimeAfter = {
            type = "timestamp",
        },
        EndTimeBefore = {
            type = "timestamp",
        },
        DurationHours = {
            type = "long",
        },
        TargetResources = {
            type = "list",
            member = { type = "string" },
        },
        TrainingPlanArn = {
            type = "string",
        },
    },
}

M.TrainingPlanExtensionOffering = {
    type = "structure",
    id = "TrainingPlanExtensionOffering",
    members = {
        TrainingPlanExtensionOfferingId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AvailabilityZone = {
            type = "string",
        },
        StartDate = {
            type = "timestamp",
        },
        EndDate = {
            type = "timestamp",
        },
        DurationHours = {
            type = "integer",
        },
        UpfrontFee = {
            type = "string",
        },
        CurrencyCode = {
            type = "string",
        },
    },
}

M.TrainingPlanOffering = {
    type = "structure",
    id = "TrainingPlanOffering",
    members = {
        TrainingPlanOfferingId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetResources = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        RequestedStartTimeAfter = {
            type = "timestamp",
        },
        RequestedEndTimeBefore = {
            type = "timestamp",
        },
        DurationHours = {
            type = "long",
        },
        DurationMinutes = {
            type = "long",
        },
        UpfrontFee = {
            type = "string",
        },
        CurrencyCode = {
            type = "string",
        },
        ReservedCapacityOfferings = {
            type = "list",
            member = M.ReservedCapacityOffering,
        },
    },
}

M.SearchTrainingPlanOfferingsOutput = {
    type = "structure",
    id = "SearchTrainingPlanOfferingsOutput",
    members = {
        TrainingPlanOfferings = {
            type = "list",
            member = M.TrainingPlanOffering,
            traits = {
                required = true,
            },
        },
        TrainingPlanExtensionOfferings = {
            type = "list",
            member = M.TrainingPlanExtensionOffering,
        },
    },
}

M.SendPipelineExecutionStepFailureInput = {
    type = "structure",
    id = "SendPipelineExecutionStepFailureInput",
    members = {
        CallbackToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FailureReason = {
            type = "string",
        },
        ClientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.SendPipelineExecutionStepFailureOutput = {
    type = "structure",
    id = "SendPipelineExecutionStepFailureOutput",
    members = {
        PipelineExecutionArn = {
            type = "string",
        },
    },
}

M.SendPipelineExecutionStepSuccessInput = {
    type = "structure",
    id = "SendPipelineExecutionStepSuccessInput",
    members = {
        CallbackToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OutputParameters = {
            type = "list",
            member = M.OutputParameter,
        },
        ClientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.SendPipelineExecutionStepSuccessOutput = {
    type = "structure",
    id = "SendPipelineExecutionStepSuccessOutput",
    members = {
        PipelineExecutionArn = {
            type = "string",
        },
    },
}

M.StartClusterHealthCheckInput = {
    type = "structure",
    id = "StartClusterHealthCheckInput",
    members = {
        ClusterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeepHealthCheckConfigurations = {
            type = "list",
            member = M.InstanceGroupHealthCheckConfiguration,
            traits = {
                required = true,
            },
        },
    },
}

M.StartClusterHealthCheckOutput = {
    type = "structure",
    id = "StartClusterHealthCheckOutput",
    members = {
        ClusterArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartEdgeDeploymentStageInput = {
    type = "structure",
    id = "StartEdgeDeploymentStageInput",
    members = {
        EdgeDeploymentPlanName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StageName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartEdgeDeploymentStageOutput = {
    type = "structure",
    id = "StartEdgeDeploymentStageOutput",
}

M.StartInferenceExperimentInput = {
    type = "structure",
    id = "StartInferenceExperimentInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartInferenceExperimentOutput = {
    type = "structure",
    id = "StartInferenceExperimentOutput",
    members = {
        InferenceExperimentArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartMlflowTrackingServerInput = {
    type = "structure",
    id = "StartMlflowTrackingServerInput",
    members = {
        TrackingServerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartMlflowTrackingServerOutput = {
    type = "structure",
    id = "StartMlflowTrackingServerOutput",
    members = {
        TrackingServerArn = {
            type = "string",
        },
    },
}

M.StartMonitoringScheduleInput = {
    type = "structure",
    id = "StartMonitoringScheduleInput",
    members = {
        MonitoringScheduleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartMonitoringScheduleOutput = {
    type = "structure",
    id = "StartMonitoringScheduleOutput",
}

M.StartNotebookInstanceInput = {
    type = "structure",
    id = "StartNotebookInstanceInput",
    members = {
        NotebookInstanceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartNotebookInstanceOutput = {
    type = "structure",
    id = "StartNotebookInstanceOutput",
}

M.StartPipelineExecutionInput = {
    type = "structure",
    id = "StartPipelineExecutionInput",
    members = {
        PipelineName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PipelineExecutionDisplayName = {
            type = "string",
        },
        PipelineParameters = {
            type = "list",
            member = M.Parameter,
        },
        PipelineExecutionDescription = {
            type = "string",
        },
        ClientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
        ParallelismConfiguration = M.ParallelismConfiguration,
        SelectiveExecutionConfig = M.SelectiveExecutionConfig,
        PipelineVersionId = {
            type = "long",
        },
        MlflowExperimentName = {
            type = "string",
        },
    },
}

M.StartPipelineExecutionOutput = {
    type = "structure",
    id = "StartPipelineExecutionOutput",
    members = {
        PipelineExecutionArn = {
            type = "string",
        },
    },
}

M.StartSessionInput = {
    type = "structure",
    id = "StartSessionInput",
    members = {
        ResourceIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartSessionOutput = {
    type = "structure",
    id = "StartSessionOutput",
    members = {
        SessionId = {
            type = "string",
        },
        StreamUrl = {
            type = "string",
        },
        TokenValue = {
            type = "string",
        },
    },
}

M.StopAIBenchmarkJobInput = {
    type = "structure",
    id = "StopAIBenchmarkJobInput",
    members = {
        AIBenchmarkJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopAIBenchmarkJobOutput = {
    type = "structure",
    id = "StopAIBenchmarkJobOutput",
    members = {
        AIBenchmarkJobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopAIRecommendationJobInput = {
    type = "structure",
    id = "StopAIRecommendationJobInput",
    members = {
        AIRecommendationJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopAIRecommendationJobOutput = {
    type = "structure",
    id = "StopAIRecommendationJobOutput",
    members = {
        AIRecommendationJobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopAutoMLJobInput = {
    type = "structure",
    id = "StopAutoMLJobInput",
    members = {
        AutoMLJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopAutoMLJobOutput = {
    type = "structure",
    id = "StopAutoMLJobOutput",
}

M.StopCompilationJobInput = {
    type = "structure",
    id = "StopCompilationJobInput",
    members = {
        CompilationJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopCompilationJobOutput = {
    type = "structure",
    id = "StopCompilationJobOutput",
}

M.StopEdgeDeploymentStageInput = {
    type = "structure",
    id = "StopEdgeDeploymentStageInput",
    members = {
        EdgeDeploymentPlanName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StageName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopEdgeDeploymentStageOutput = {
    type = "structure",
    id = "StopEdgeDeploymentStageOutput",
}

M.StopEdgePackagingJobInput = {
    type = "structure",
    id = "StopEdgePackagingJobInput",
    members = {
        EdgePackagingJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopEdgePackagingJobOutput = {
    type = "structure",
    id = "StopEdgePackagingJobOutput",
}

M.StopHyperParameterTuningJobInput = {
    type = "structure",
    id = "StopHyperParameterTuningJobInput",
    members = {
        HyperParameterTuningJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopHyperParameterTuningJobOutput = {
    type = "structure",
    id = "StopHyperParameterTuningJobOutput",
}

M.StopInferenceExperimentInput = {
    type = "structure",
    id = "StopInferenceExperimentInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ModelVariantActions = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
        DesiredModelVariants = {
            type = "list",
            member = M.ModelVariantConfig,
        },
        DesiredState = {
            type = "string",
        },
        Reason = {
            type = "string",
        },
    },
}

M.StopInferenceExperimentOutput = {
    type = "structure",
    id = "StopInferenceExperimentOutput",
    members = {
        InferenceExperimentArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopInferenceRecommendationsJobInput = {
    type = "structure",
    id = "StopInferenceRecommendationsJobInput",
    members = {
        JobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopInferenceRecommendationsJobOutput = {
    type = "structure",
    id = "StopInferenceRecommendationsJobOutput",
}

M.StopLabelingJobInput = {
    type = "structure",
    id = "StopLabelingJobInput",
    members = {
        LabelingJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopLabelingJobOutput = {
    type = "structure",
    id = "StopLabelingJobOutput",
}

M.StopMlflowTrackingServerInput = {
    type = "structure",
    id = "StopMlflowTrackingServerInput",
    members = {
        TrackingServerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopMlflowTrackingServerOutput = {
    type = "structure",
    id = "StopMlflowTrackingServerOutput",
    members = {
        TrackingServerArn = {
            type = "string",
        },
    },
}

M.StopMonitoringScheduleInput = {
    type = "structure",
    id = "StopMonitoringScheduleInput",
    members = {
        MonitoringScheduleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopMonitoringScheduleOutput = {
    type = "structure",
    id = "StopMonitoringScheduleOutput",
}

M.StopNotebookInstanceInput = {
    type = "structure",
    id = "StopNotebookInstanceInput",
    members = {
        NotebookInstanceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopNotebookInstanceOutput = {
    type = "structure",
    id = "StopNotebookInstanceOutput",
}

M.StopOptimizationJobInput = {
    type = "structure",
    id = "StopOptimizationJobInput",
    members = {
        OptimizationJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopOptimizationJobOutput = {
    type = "structure",
    id = "StopOptimizationJobOutput",
}

M.StopPipelineExecutionInput = {
    type = "structure",
    id = "StopPipelineExecutionInput",
    members = {
        PipelineExecutionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
    },
}

M.StopPipelineExecutionOutput = {
    type = "structure",
    id = "StopPipelineExecutionOutput",
    members = {
        PipelineExecutionArn = {
            type = "string",
        },
    },
}

M.StopProcessingJobInput = {
    type = "structure",
    id = "StopProcessingJobInput",
    members = {
        ProcessingJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopProcessingJobOutput = {
    type = "structure",
    id = "StopProcessingJobOutput",
}

M.StopTrainingJobInput = {
    type = "structure",
    id = "StopTrainingJobInput",
    members = {
        TrainingJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopTrainingJobOutput = {
    type = "structure",
    id = "StopTrainingJobOutput",
}

M.StopTransformJobInput = {
    type = "structure",
    id = "StopTransformJobInput",
    members = {
        TransformJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopTransformJobOutput = {
    type = "structure",
    id = "StopTransformJobOutput",
}

M.UpdateActionInput = {
    type = "structure",
    id = "UpdateActionInput",
    members = {
        ActionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Properties = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        PropertiesToRemove = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UpdateActionOutput = {
    type = "structure",
    id = "UpdateActionOutput",
    members = {
        ActionArn = {
            type = "string",
        },
    },
}

M.UpdateAppImageConfigInput = {
    type = "structure",
    id = "UpdateAppImageConfigInput",
    members = {
        AppImageConfigName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KernelGatewayImageConfig = M.KernelGatewayImageConfig,
        JupyterLabAppImageConfig = M.JupyterLabAppImageConfig,
        CodeEditorAppImageConfig = M.CodeEditorAppImageConfig,
    },
}

M.UpdateAppImageConfigOutput = {
    type = "structure",
    id = "UpdateAppImageConfigOutput",
    members = {
        AppImageConfigArn = {
            type = "string",
        },
    },
}

M.UpdateArtifactInput = {
    type = "structure",
    id = "UpdateArtifactInput",
    members = {
        ArtifactArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ArtifactName = {
            type = "string",
        },
        Properties = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        PropertiesToRemove = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UpdateArtifactOutput = {
    type = "structure",
    id = "UpdateArtifactOutput",
    members = {
        ArtifactArn = {
            type = "string",
        },
    },
}

M.UpdateClusterInput = {
    type = "structure",
    id = "UpdateClusterInput",
    members = {
        ClusterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstanceGroups = {
            type = "list",
            member = M.ClusterInstanceGroupSpecification,
        },
        RestrictedInstanceGroups = {
            type = "list",
            member = M.ClusterRestrictedInstanceGroupSpecification,
        },
        TieredStorageConfig = M.ClusterTieredStorageConfig,
        NodeRecovery = {
            type = "string",
        },
        InstanceGroupsToDelete = {
            type = "list",
            member = { type = "string" },
        },
        NodeProvisioningMode = {
            type = "string",
        },
        ClusterRole = {
            type = "string",
        },
        AutoScaling = M.ClusterAutoScalingConfig,
        Orchestrator = M.ClusterOrchestrator,
    },
}

M.UpdateClusterOutput = {
    type = "structure",
    id = "UpdateClusterOutput",
    members = {
        ClusterArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateClusterSchedulerConfigInput = {
    type = "structure",
    id = "UpdateClusterSchedulerConfigInput",
    members = {
        ClusterSchedulerConfigId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetVersion = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        SchedulerConfig = M.SchedulerConfig,
        Description = {
            type = "string",
        },
    },
}

M.UpdateClusterSchedulerConfigOutput = {
    type = "structure",
    id = "UpdateClusterSchedulerConfigOutput",
    members = {
        ClusterSchedulerConfigArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClusterSchedulerConfigVersion = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateClusterSoftwareInstanceGroupSpecification = {
    type = "structure",
    id = "UpdateClusterSoftwareInstanceGroupSpecification",
    members = {
        InstanceGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateClusterSoftwareInput = {
    type = "structure",
    id = "UpdateClusterSoftwareInput",
    members = {
        ClusterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstanceGroups = {
            type = "list",
            member = M.UpdateClusterSoftwareInstanceGroupSpecification,
        },
        DeploymentConfig = M.DeploymentConfiguration,
        ImageId = {
            type = "string",
        },
    },
}

M.UpdateClusterSoftwareOutput = {
    type = "structure",
    id = "UpdateClusterSoftwareOutput",
    members = {
        ClusterArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateCodeRepositoryInput = {
    type = "structure",
    id = "UpdateCodeRepositoryInput",
    members = {
        CodeRepositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GitConfig = M.GitConfigForUpdate,
    },
}

M.UpdateCodeRepositoryOutput = {
    type = "structure",
    id = "UpdateCodeRepositoryOutput",
    members = {
        CodeRepositoryArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateComputeQuotaInput = {
    type = "structure",
    id = "UpdateComputeQuotaInput",
    members = {
        ComputeQuotaId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetVersion = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        ComputeQuotaConfig = M.ComputeQuotaConfig,
        ComputeQuotaTarget = M.ComputeQuotaTarget,
        ActivationState = {
            type = "string",
        },
        Description = {
            type = "string",
        },
    },
}

M.UpdateComputeQuotaOutput = {
    type = "structure",
    id = "UpdateComputeQuotaOutput",
    members = {
        ComputeQuotaArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ComputeQuotaVersion = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateContextInput = {
    type = "structure",
    id = "UpdateContextInput",
    members = {
        ContextName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Properties = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        PropertiesToRemove = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UpdateContextOutput = {
    type = "structure",
    id = "UpdateContextOutput",
    members = {
        ContextArn = {
            type = "string",
        },
    },
}

M.UpdateDeviceFleetInput = {
    type = "structure",
    id = "UpdateDeviceFleetInput",
    members = {
        DeviceFleetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RoleArn = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        OutputConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EdgeOutputConfig }),
        EnableIotRoleAlias = {
            type = "boolean",
        },
    },
}

M.UpdateDeviceFleetOutput = {
    type = "structure",
    id = "UpdateDeviceFleetOutput",
}

M.UpdateDevicesInput = {
    type = "structure",
    id = "UpdateDevicesInput",
    members = {
        DeviceFleetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Devices = {
            type = "list",
            member = M.Device,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateDevicesOutput = {
    type = "structure",
    id = "UpdateDevicesOutput",
}

M.UpdateDomainInput = {
    type = "structure",
    id = "UpdateDomainInput",
    members = {
        DomainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DefaultUserSettings = M.UserSettings,
        DomainSettingsForUpdate = M.DomainSettingsForUpdate,
        AppSecurityGroupManagement = {
            type = "string",
        },
        DefaultSpaceSettings = M.DefaultSpaceSettings,
        SubnetIds = {
            type = "list",
            member = { type = "string" },
        },
        AppNetworkAccessType = {
            type = "string",
        },
        TagPropagation = {
            type = "string",
        },
        VpcId = {
            type = "string",
        },
    },
}

M.UpdateDomainOutput = {
    type = "structure",
    id = "UpdateDomainOutput",
    members = {
        DomainArn = {
            type = "string",
        },
    },
}

M.VariantPropertyType = {
    DesiredInstanceCount = "DesiredInstanceCount",
    DesiredWeight = "DesiredWeight",
    DataCaptureConfig = "DataCaptureConfig",
}

M.VariantProperty = {
    type = "structure",
    id = "VariantProperty",
    members = {
        VariantPropertyType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateEndpointInput = {
    type = "structure",
    id = "UpdateEndpointInput",
    members = {
        EndpointName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EndpointConfigName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RetainAllVariantProperties = {
            type = "boolean",
        },
        ExcludeRetainedVariantProperties = {
            type = "list",
            member = M.VariantProperty,
        },
        DeploymentConfig = M.DeploymentConfig,
        RetainDeploymentConfig = {
            type = "boolean",
        },
    },
}

M.UpdateEndpointOutput = {
    type = "structure",
    id = "UpdateEndpointOutput",
    members = {
        EndpointArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateEndpointWeightsAndCapacitiesInput = {
    type = "structure",
    id = "UpdateEndpointWeightsAndCapacitiesInput",
    members = {
        EndpointName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DesiredWeightsAndCapacities = {
            type = "list",
            member = M.DesiredWeightAndCapacity,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateEndpointWeightsAndCapacitiesOutput = {
    type = "structure",
    id = "UpdateEndpointWeightsAndCapacitiesOutput",
    members = {
        EndpointArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateExperimentInput = {
    type = "structure",
    id = "UpdateExperimentInput",
    members = {
        ExperimentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DisplayName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
    },
}

M.UpdateExperimentOutput = {
    type = "structure",
    id = "UpdateExperimentOutput",
    members = {
        ExperimentArn = {
            type = "string",
        },
    },
}

M.ThroughputConfigUpdate = {
    type = "structure",
    id = "ThroughputConfigUpdate",
    members = {
        ThroughputMode = {
            type = "string",
        },
        ProvisionedReadCapacityUnits = {
            type = "integer",
        },
        ProvisionedWriteCapacityUnits = {
            type = "integer",
        },
    },
}

M.UpdateFeatureGroupInput = {
    type = "structure",
    id = "UpdateFeatureGroupInput",
    members = {
        FeatureGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FeatureAdditions = {
            type = "list",
            member = M.FeatureDefinition,
        },
        OnlineStoreConfig = M.OnlineStoreConfigUpdate,
        ThroughputConfig = M.ThroughputConfigUpdate,
    },
}

M.UpdateFeatureGroupOutput = {
    type = "structure",
    id = "UpdateFeatureGroupOutput",
    members = {
        FeatureGroupArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateFeatureMetadataInput = {
    type = "structure",
    id = "UpdateFeatureMetadataInput",
    members = {
        FeatureGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FeatureName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        ParameterAdditions = {
            type = "list",
            member = M.FeatureParameter,
        },
        ParameterRemovals = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UpdateFeatureMetadataOutput = {
    type = "structure",
    id = "UpdateFeatureMetadataOutput",
}

M.UpdateHubInput = {
    type = "structure",
    id = "UpdateHubInput",
    members = {
        HubName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HubDescription = {
            type = "string",
        },
        HubDisplayName = {
            type = "string",
        },
        HubSearchKeywords = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UpdateHubOutput = {
    type = "structure",
    id = "UpdateHubOutput",
    members = {
        HubArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateHubContentInput = {
    type = "structure",
    id = "UpdateHubContentInput",
    members = {
        HubName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HubContentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HubContentType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HubContentVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HubContentDisplayName = {
            type = "string",
        },
        HubContentDescription = {
            type = "string",
        },
        HubContentMarkdown = {
            type = "string",
        },
        HubContentSearchKeywords = {
            type = "list",
            member = { type = "string" },
        },
        SupportStatus = {
            type = "string",
        },
    },
}

M.UpdateHubContentOutput = {
    type = "structure",
    id = "UpdateHubContentOutput",
    members = {
        HubArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HubContentArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateHubContentReferenceInput = {
    type = "structure",
    id = "UpdateHubContentReferenceInput",
    members = {
        HubName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HubContentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HubContentType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MinVersion = {
            type = "string",
        },
    },
}

M.UpdateHubContentReferenceOutput = {
    type = "structure",
    id = "UpdateHubContentReferenceOutput",
    members = {
        HubArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HubContentArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateImageInput = {
    type = "structure",
    id = "UpdateImageInput",
    members = {
        DeleteProperties = {
            type = "list",
            member = { type = "string" },
        },
        Description = {
            type = "string",
        },
        DisplayName = {
            type = "string",
        },
        ImageName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RoleArn = {
            type = "string",
        },
    },
}

M.UpdateImageOutput = {
    type = "structure",
    id = "UpdateImageOutput",
    members = {
        ImageArn = {
            type = "string",
        },
    },
}

M.UpdateImageVersionInput = {
    type = "structure",
    id = "UpdateImageVersionInput",
    members = {
        ImageName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Alias = {
            type = "string",
        },
        Version = {
            type = "integer",
        },
        AliasesToAdd = {
            type = "list",
            member = { type = "string" },
        },
        AliasesToDelete = {
            type = "list",
            member = { type = "string" },
        },
        VendorGuidance = {
            type = "string",
        },
        JobType = {
            type = "string",
        },
        MLFramework = {
            type = "string",
        },
        ProgrammingLang = {
            type = "string",
        },
        Processor = {
            type = "string",
        },
        Horovod = {
            type = "boolean",
        },
        ReleaseNotes = {
            type = "string",
        },
    },
}

M.UpdateImageVersionOutput = {
    type = "structure",
    id = "UpdateImageVersionOutput",
    members = {
        ImageVersionArn = {
            type = "string",
        },
    },
}

M.UpdateInferenceComponentInput = {
    type = "structure",
    id = "UpdateInferenceComponentInput",
    members = {
        InferenceComponentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Specification = M.InferenceComponentSpecification,
        Specifications = {
            type = "list",
            member = M.InferenceComponentSpecification,
        },
        RuntimeConfig = M.InferenceComponentRuntimeConfig,
        DeploymentConfig = M.InferenceComponentDeploymentConfig,
    },
}

M.UpdateInferenceComponentOutput = {
    type = "structure",
    id = "UpdateInferenceComponentOutput",
    members = {
        InferenceComponentArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateInferenceComponentRuntimeConfigInput = {
    type = "structure",
    id = "UpdateInferenceComponentRuntimeConfigInput",
    members = {
        InferenceComponentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DesiredRuntimeConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InferenceComponentRuntimeConfig }),
    },
}

M.UpdateInferenceComponentRuntimeConfigOutput = {
    type = "structure",
    id = "UpdateInferenceComponentRuntimeConfigOutput",
    members = {
        InferenceComponentArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateInferenceExperimentInput = {
    type = "structure",
    id = "UpdateInferenceExperimentInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Schedule = M.InferenceExperimentSchedule,
        Description = {
            type = "string",
        },
        ModelVariants = {
            type = "list",
            member = M.ModelVariantConfig,
        },
        DataStorageConfig = M.InferenceExperimentDataStorageConfig,
        ShadowModeConfig = M.ShadowModeConfig,
    },
}

M.UpdateInferenceExperimentOutput = {
    type = "structure",
    id = "UpdateInferenceExperimentOutput",
    members = {
        InferenceExperimentArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateMlflowAppInput = {
    type = "structure",
    id = "UpdateMlflowAppInput",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        ArtifactStoreUri = {
            type = "string",
        },
        ModelRegistrationMode = {
            type = "string",
        },
        WeeklyMaintenanceWindowStart = {
            type = "string",
        },
        DefaultDomainIdList = {
            type = "list",
            member = { type = "string" },
        },
        AccountDefaultStatus = {
            type = "string",
        },
    },
}

M.UpdateMlflowAppOutput = {
    type = "structure",
    id = "UpdateMlflowAppOutput",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.UpdateMlflowTrackingServerInput = {
    type = "structure",
    id = "UpdateMlflowTrackingServerInput",
    members = {
        TrackingServerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ArtifactStoreUri = {
            type = "string",
        },
        TrackingServerSize = {
            type = "string",
        },
        AutomaticModelRegistration = {
            type = "boolean",
        },
        WeeklyMaintenanceWindowStart = {
            type = "string",
        },
        S3BucketOwnerAccountId = {
            type = "string",
        },
        S3BucketOwnerVerification = {
            type = "boolean",
        },
    },
}

M.UpdateMlflowTrackingServerOutput = {
    type = "structure",
    id = "UpdateMlflowTrackingServerOutput",
    members = {
        TrackingServerArn = {
            type = "string",
        },
    },
}

M.UpdateModelCardInput = {
    type = "structure",
    id = "UpdateModelCardInput",
    members = {
        ModelCardName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Content = {
            type = "string",
        },
        ModelCardStatus = {
            type = "string",
        },
    },
}

M.UpdateModelCardOutput = {
    type = "structure",
    id = "UpdateModelCardOutput",
    members = {
        ModelCardArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateModelPackageInput = {
    type = "structure",
    id = "UpdateModelPackageInput",
    members = {
        ModelPackageArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ModelApprovalStatus = {
            type = "string",
        },
        ModelPackageRegistrationType = {
            type = "string",
        },
        ApprovalDescription = {
            type = "string",
        },
        CustomerMetadataProperties = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        CustomerMetadataPropertiesToRemove = {
            type = "list",
            member = { type = "string" },
        },
        AdditionalInferenceSpecificationsToAdd = {
            type = "list",
            member = M.AdditionalInferenceSpecificationDefinition,
        },
        InferenceSpecification = M.InferenceSpecification,
        SourceUri = {
            type = "string",
        },
        ModelCard = M.ModelPackageModelCard,
        ModelLifeCycle = M.ModelLifeCycle,
        ClientToken = {
            type = "string",
        },
    },
}

M.UpdateModelPackageOutput = {
    type = "structure",
    id = "UpdateModelPackageOutput",
    members = {
        ModelPackageArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateMonitoringAlertInput = {
    type = "structure",
    id = "UpdateMonitoringAlertInput",
    members = {
        MonitoringScheduleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MonitoringAlertName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DatapointsToAlert = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        EvaluationPeriod = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateMonitoringAlertOutput = {
    type = "structure",
    id = "UpdateMonitoringAlertOutput",
    members = {
        MonitoringScheduleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MonitoringAlertName = {
            type = "string",
        },
    },
}

M.UpdateMonitoringScheduleInput = {
    type = "structure",
    id = "UpdateMonitoringScheduleInput",
    members = {
        MonitoringScheduleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MonitoringScheduleConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MonitoringScheduleConfig }),
    },
}

M.UpdateMonitoringScheduleOutput = {
    type = "structure",
    id = "UpdateMonitoringScheduleOutput",
    members = {
        MonitoringScheduleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateNotebookInstanceInput = {
    type = "structure",
    id = "UpdateNotebookInstanceInput",
    members = {
        NotebookInstanceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstanceType = {
            type = "string",
        },
        IpAddressType = {
            type = "string",
        },
        PlatformIdentifier = {
            type = "string",
        },
        RoleArn = {
            type = "string",
        },
        LifecycleConfigName = {
            type = "string",
        },
        DisassociateLifecycleConfig = {
            type = "boolean",
        },
        VolumeSizeInGB = {
            type = "integer",
        },
        DefaultCodeRepository = {
            type = "string",
        },
        AdditionalCodeRepositories = {
            type = "list",
            member = { type = "string" },
        },
        AcceleratorTypes = {
            type = "list",
            member = { type = "string" },
        },
        DisassociateAcceleratorTypes = {
            type = "boolean",
        },
        DisassociateDefaultCodeRepository = {
            type = "boolean",
        },
        DisassociateAdditionalCodeRepositories = {
            type = "boolean",
        },
        RootAccess = {
            type = "string",
        },
        InstanceMetadataServiceConfiguration = M.InstanceMetadataServiceConfiguration,
    },
}

M.UpdateNotebookInstanceOutput = {
    type = "structure",
    id = "UpdateNotebookInstanceOutput",
}

M.UpdateNotebookInstanceLifecycleConfigInput = {
    type = "structure",
    id = "UpdateNotebookInstanceLifecycleConfigInput",
    members = {
        NotebookInstanceLifecycleConfigName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OnCreate = {
            type = "list",
            member = M.NotebookInstanceLifecycleHook,
        },
        OnStart = {
            type = "list",
            member = M.NotebookInstanceLifecycleHook,
        },
    },
}

M.UpdateNotebookInstanceLifecycleConfigOutput = {
    type = "structure",
    id = "UpdateNotebookInstanceLifecycleConfigOutput",
}

M.UpdatePartnerAppInput = {
    type = "structure",
    id = "UpdatePartnerAppInput",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaintenanceConfig = M.PartnerAppMaintenanceConfig,
        Tier = {
            type = "string",
        },
        ApplicationConfig = M.PartnerAppConfig,
        EnableIamSessionBasedIdentity = {
            type = "boolean",
        },
        EnableAutoMinorVersionUpgrade = {
            type = "boolean",
        },
        AppVersion = {
            type = "string",
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.UpdatePartnerAppOutput = {
    type = "structure",
    id = "UpdatePartnerAppOutput",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.UpdatePipelineInput = {
    type = "structure",
    id = "UpdatePipelineInput",
    members = {
        PipelineName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PipelineDisplayName = {
            type = "string",
        },
        PipelineDefinition = {
            type = "string",
        },
        PipelineDefinitionS3Location = M.PipelineDefinitionS3Location,
        PipelineDescription = {
            type = "string",
        },
        RoleArn = {
            type = "string",
        },
        ParallelismConfiguration = M.ParallelismConfiguration,
    },
}

M.UpdatePipelineOutput = {
    type = "structure",
    id = "UpdatePipelineOutput",
    members = {
        PipelineArn = {
            type = "string",
        },
        PipelineVersionId = {
            type = "long",
        },
    },
}

M.UpdatePipelineExecutionInput = {
    type = "structure",
    id = "UpdatePipelineExecutionInput",
    members = {
        PipelineExecutionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PipelineExecutionDescription = {
            type = "string",
        },
        PipelineExecutionDisplayName = {
            type = "string",
        },
        ParallelismConfiguration = M.ParallelismConfiguration,
    },
}

M.UpdatePipelineExecutionOutput = {
    type = "structure",
    id = "UpdatePipelineExecutionOutput",
    members = {
        PipelineExecutionArn = {
            type = "string",
        },
    },
}

M.UpdatePipelineVersionInput = {
    type = "structure",
    id = "UpdatePipelineVersionInput",
    members = {
        PipelineArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PipelineVersionId = {
            type = "long",
            traits = {
                required = true,
            },
        },
        PipelineVersionDisplayName = {
            type = "string",
        },
        PipelineVersionDescription = {
            type = "string",
        },
    },
}

M.UpdatePipelineVersionOutput = {
    type = "structure",
    id = "UpdatePipelineVersionOutput",
    members = {
        PipelineArn = {
            type = "string",
        },
        PipelineVersionId = {
            type = "long",
        },
    },
}

M.ServiceCatalogProvisioningUpdateDetails = {
    type = "structure",
    id = "ServiceCatalogProvisioningUpdateDetails",
    members = {
        ProvisioningArtifactId = {
            type = "string",
        },
        ProvisioningParameters = {
            type = "list",
            member = M.ProvisioningParameter,
        },
    },
}

M.UpdateTemplateProvider = {
    type = "structure",
    id = "UpdateTemplateProvider",
    members = {
        CfnTemplateProvider = M.CfnUpdateTemplateProvider,
    },
}

M.UpdateProjectInput = {
    type = "structure",
    id = "UpdateProjectInput",
    members = {
        ProjectName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProjectDescription = {
            type = "string",
        },
        ServiceCatalogProvisioningUpdateDetails = M.ServiceCatalogProvisioningUpdateDetails,
        Tags = {
            type = "list",
            member = M.Tag,
        },
        TemplateProvidersToUpdate = {
            type = "list",
            member = M.UpdateTemplateProvider,
        },
    },
}

M.UpdateProjectOutput = {
    type = "structure",
    id = "UpdateProjectOutput",
    members = {
        ProjectArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateSpaceInput = {
    type = "structure",
    id = "UpdateSpaceInput",
    members = {
        DomainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SpaceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SpaceSettings = M.SpaceSettings,
        SpaceDisplayName = {
            type = "string",
        },
    },
}

M.UpdateSpaceOutput = {
    type = "structure",
    id = "UpdateSpaceOutput",
    members = {
        SpaceArn = {
            type = "string",
        },
    },
}

M.UpdateTrainingJobInput = {
    type = "structure",
    id = "UpdateTrainingJobInput",
    members = {
        TrainingJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProfilerConfig = M.ProfilerConfigForUpdate,
        ProfilerRuleConfigurations = {
            type = "list",
            member = M.ProfilerRuleConfiguration,
        },
        ResourceConfig = M.ResourceConfigForUpdate,
        RemoteDebugConfig = M.RemoteDebugConfigForUpdate,
    },
}

M.UpdateTrainingJobOutput = {
    type = "structure",
    id = "UpdateTrainingJobOutput",
    members = {
        TrainingJobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateTrialInput = {
    type = "structure",
    id = "UpdateTrialInput",
    members = {
        TrialName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DisplayName = {
            type = "string",
        },
    },
}

M.UpdateTrialOutput = {
    type = "structure",
    id = "UpdateTrialOutput",
    members = {
        TrialArn = {
            type = "string",
        },
    },
}

M.UpdateTrialComponentInput = {
    type = "structure",
    id = "UpdateTrialComponentInput",
    members = {
        TrialComponentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DisplayName = {
            type = "string",
        },
        Status = M.TrialComponentStatus,
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        Parameters = {
            type = "map",
            key = { type = "string" },
            value = M.TrialComponentParameterValue,
        },
        ParametersToRemove = {
            type = "list",
            member = { type = "string" },
        },
        InputArtifacts = {
            type = "map",
            key = { type = "string" },
            value = M.TrialComponentArtifact,
        },
        InputArtifactsToRemove = {
            type = "list",
            member = { type = "string" },
        },
        OutputArtifacts = {
            type = "map",
            key = { type = "string" },
            value = M.TrialComponentArtifact,
        },
        OutputArtifactsToRemove = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UpdateTrialComponentOutput = {
    type = "structure",
    id = "UpdateTrialComponentOutput",
    members = {
        TrialComponentArn = {
            type = "string",
        },
    },
}

M.UpdateUserProfileInput = {
    type = "structure",
    id = "UpdateUserProfileInput",
    members = {
        DomainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserProfileName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserSettings = M.UserSettings,
    },
}

M.UpdateUserProfileOutput = {
    type = "structure",
    id = "UpdateUserProfileOutput",
    members = {
        UserProfileArn = {
            type = "string",
        },
    },
}

M.UpdateWorkforceInput = {
    type = "structure",
    id = "UpdateWorkforceInput",
    members = {
        WorkforceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceIpConfig = M.SourceIpConfig,
        OidcConfig = M.OidcConfig,
        WorkforceVpcConfig = M.WorkforceVpcConfigRequest,
        IpAddressType = {
            type = "string",
        },
    },
}

M.UpdateWorkforceOutput = {
    type = "structure",
    id = "UpdateWorkforceOutput",
    members = {
        Workforce = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Workforce }),
    },
}

M.UpdateWorkteamInput = {
    type = "structure",
    id = "UpdateWorkteamInput",
    members = {
        WorkteamName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MemberDefinitions = {
            type = "list",
            member = M.MemberDefinition,
        },
        Description = {
            type = "string",
        },
        NotificationConfiguration = M.NotificationConfiguration,
        WorkerAccessConfiguration = M.WorkerAccessConfiguration,
    },
}

M.UpdateWorkteamOutput = {
    type = "structure",
    id = "UpdateWorkteamOutput",
    members = {
        Workteam = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Workteam }),
    },
}

M.SearchExpression = {
    type = "structure",
    id = "SearchExpression",
    members = {
        Filters = {
            type = "list",
            member = M.Filter,
        },
        NestedFilters = {
            type = "list",
            member = M.NestedFilters,
        },
        SubExpressions = {
            type = "list",
            member = M.SearchExpression,
        },
        Operator = {
            type = "string",
        },
    },
}

M.SearchInput = {
    type = "structure",
    id = "SearchInput",
    members = {
        Resource = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SearchExpression = M.SearchExpression,
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        CrossAccountFilterOption = {
            type = "string",
        },
        VisibilityConditions = {
            type = "list",
            member = M.VisibilityConditions,
        },
    },
}

return M
