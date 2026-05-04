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
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceNotFound = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AddClusterNodeSpecification = {
    type = "structure",
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
    members = {
        S3DataSource = M.S3ModelDataSource,
    },
}

M.ModelInput = {
    type = "structure",
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
    members = {
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.AgentVersion = {
    type = "structure",
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
    members = {
        VpcConfig = M.VpcConfig,
    },
}

M.AIBenchmarkOutputConfig = {
    type = "structure",
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
    members = {
        Endpoint = M.AIBenchmarkEndpoint,
    },
}

M.AICapacityReservationPreference = {
    CAPACITY_RESERVATIONS_ONLY = "capacity-reservations-only",
}

M.AICapacityReservationConfig = {
    type = "structure",
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
    members = {
        S3DataSource = M.AIWorkloadS3DataSource,
    },
}

M.AIWorkloadInputDataConfig = {
    type = "structure",
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
    members = {
        InputDataConfig = {
            type = "list",
            member = M.AIWorkloadInputDataConfig,
        },
    },
}

M.AIModelSourceS3 = {
    type = "structure",
    members = {
        S3Uri = {
            type = "string",
        },
    },
}

M.AIModelSource = {
    type = "union",
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
    members = {
        Inline = {
            type = "string",
        },
    },
}

M.AIWorkloadConfigs = {
    type = "structure",
    members = {
        WorkloadSpec = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WorkloadSpec }),
    },
}

M.AIWorkloadConfigSummary = {
    type = "structure",
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
    members = {
        AlarmName = {
            type = "string",
        },
    },
}

M.AlarmDetails = {
    type = "structure",
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
    members = {
        FileSystemConfig = M.FileSystemConfig,
        ContainerConfig = M.ContainerConfig,
    },
}

M.JupyterLabAppImageConfig = {
    type = "structure",
    members = {
        FileSystemConfig = M.FileSystemConfig,
        ContainerConfig = M.ContainerConfig,
    },
}

M.KernelSpec = {
    type = "structure",
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
    members = {
        S3DataSource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AutoMLS3DataSource }),
    },
}

M.AutoMLChannel = {
    type = "structure",
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
    members = {
        EmrServerlessComputeConfig = M.EmrServerlessComputeConfig,
    },
}

M.AutoMLDataSplitConfig = {
    type = "structure",
    members = {
        ValidationFraction = {
            type = "float",
        },
    },
}

M.AutoMLJobArtifacts = {
    type = "structure",
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
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.AutoMLPartialFailureReason = {
    type = "structure",
    members = {
        PartialFailureMessage = {
            type = "string",
        },
    },
}

M.AutoMLJobSummary = {
    type = "structure",
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
    members = {
        CompletionCriteria = M.AutoMLJobCompletionCriteria,
    },
}

M.CandidateGenerationConfig = {
    type = "structure",
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
    members = {
        CountryCode = {
            type = "string",
        },
    },
}

M.TimeSeriesConfig = {
    type = "structure",
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
    members = {
        ProblemType = {
            type = "string",
        },
    },
}

M.TextGenerationResolvedAttributes = {
    type = "structure",
    members = {
        BaseModelName = {
            type = "string",
        },
    },
}

M.AutoMLProblemTypeResolvedAttributes = {
    type = "union",
    members = {
        TabularResolvedAttributes = M.TabularResolvedAttributes,
        TextGenerationResolvedAttributes = M.TextGenerationResolvedAttributes,
    },
}

M.AutoMLResolvedAttributes = {
    type = "structure",
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
    members = {
        ClusterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
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
    members = {
        Header = {
            type = "boolean",
        },
    },
}

M.MonitoringJsonDatasetFormat = {
    type = "structure",
    members = {
        Line = {
            type = "boolean",
        },
    },
}

M.MonitoringParquetDatasetFormat = {
    type = "structure",
}

M.MonitoringDatasetFormat = {
    type = "structure",
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
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.BedrockCustomModelMetadata = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.BedrockModelImportMetadata = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.BedrockProvisionedModelThroughputMetadata = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.BestObjectiveNotImproving = {
    type = "structure",
    members = {
        MaxNumberOfTrainingJobsNotImproving = {
            type = "integer",
        },
    },
}

M.MetricsSource = {
    type = "structure",
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
    members = {
        SourcePipelineExecutionArn = {
            type = "string",
        },
    },
}

M.OutputParameter = {
    type = "structure",
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
    members = {
        Status = {
            type = "string",
        },
    },
}

M.EmrServerlessSettings = {
    type = "structure",
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
    members = {
        Status = {
            type = "string",
        },
    },
}

M.ModelRegisterSettings = {
    type = "structure",
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
}

M.ClusterSpotOptions = {
    type = "structure",
}

M.ClusterCapacityRequirements = {
    type = "structure",
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
    members = {
        Cluster = M.ClusterMetadata,
        InstanceGroup = M.InstanceGroupMetadata,
        InstanceGroupScaling = M.InstanceGroupScalingMetadata,
        Instance = M.InstanceMetadata,
    },
}

M.EventDetails = {
    type = "structure",
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
    members = {
        MaximumBatchSize = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CapacitySizeConfig }),
        RollbackMaximumBatchSize = M.CapacitySizeConfig,
    },
}

M.DeploymentConfiguration = {
    type = "structure",
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
    members = {
        EbsVolumeConfig = M.ClusterEbsVolumeConfig,
        FsxLustreConfig = M.ClusterFsxLustreConfig,
        FsxOpenZfsConfig = M.ClusterFsxOpenZfsConfig,
    },
}

M.ClusterInstanceTypeDetail = {
    type = "structure",
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
    members = {
        InterfaceType = {
            type = "string",
        },
    },
}

M.ClusterSlurmConfig = {
    type = "structure",
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
    members = {
        SlurmConfigStrategy = {
            type = "string",
        },
    },
}

M.ClusterOrchestrator = {
    type = "structure",
    members = {
        Eks = M.ClusterOrchestratorEksConfig,
        Slurm = M.ClusterOrchestratorSlurmConfig,
    },
}

M.FSxLustreConfig = {
    type = "structure",
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
    members = {
        FSxLustreConfig = M.FSxLustreConfig,
        S3OutputPath = {
            type = "string",
        },
    },
}

M.ClusterRestrictedInstanceGroupDetails = {
    type = "structure",
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
    members = {
        FSxLustreConfig = M.FSxLustreConfig,
    },
}

M.ClusterRestrictedInstanceGroupSpecification = {
    type = "structure",
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
    members = {
        VectorConfig = M.VectorConfig,
    },
}

M.CollectionConfiguration = {
    type = "structure",
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
    members = {
        Outcome = {
            type = "string",
        },
    },
}

M.ConflictException = {
    type = "structure",
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
    members = {
        ModelCacheSetting = {
            type = "string",
        },
    },
}

M.ContainerDefinition = {
    type = "structure",
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
    members = {
        CompleteOnConvergence = {
            type = "string",
        },
    },
}

M.MetadataProperties = {
    type = "structure",
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
    members = {
        ActionArn = {
            type = "string",
        },
    },
}

M.CreateAIBenchmarkJobInput = {
    type = "structure",
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
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateAIRecommendationJobInput = {
    type = "structure",
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
    members = {
        AppArn = {
            type = "string",
        },
    },
}

M.CreateAppImageConfigInput = {
    type = "structure",
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
    members = {
        AppImageConfigArn = {
            type = "string",
        },
    },
}

M.CreateArtifactInput = {
    type = "structure",
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
    members = {
        ArtifactArn = {
            type = "string",
        },
    },
}

M.ModelDeployConfig = {
    type = "structure",
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
    members = {
        ContextArn = {
            type = "string",
        },
    },
}

M.DataQualityAppSpecification = {
    type = "structure",
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
    members = {
        S3Uri = {
            type = "string",
        },
    },
}

M.MonitoringStatisticsResource = {
    type = "structure",
    members = {
        S3Uri = {
            type = "string",
        },
    },
}

M.DataQualityBaselineConfig = {
    type = "structure",
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
    members = {
        S3Output = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MonitoringS3Output }),
    },
}

M.MonitoringOutputConfig = {
    type = "structure",
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
    members = {
        ClusterConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MonitoringClusterConfig }),
    },
}

M.MonitoringNetworkConfig = {
    type = "structure",
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
}

M.EFSFileSystemConfig = {
    type = "structure",
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
    members = {
        EFSFileSystemConfig = M.EFSFileSystemConfig,
        FSxLustreFileSystemConfig = M.FSxLustreFileSystemConfig,
        S3FileSystemConfig = M.S3FileSystemConfig,
    },
}

M.CustomPosixUserConfig = {
    type = "structure",
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
    members = {
        DefaultEbsStorageSettings = M.DefaultEbsStorageSettings,
    },
}

M.DefaultSpaceSettings = {
    type = "structure",
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
    members = {
        DefaultResourceSpec = M.ResourceSpec,
    },
}

M.UserSettings = {
    type = "structure",
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
}

M.CreateEdgePackagingJobInput = {
    type = "structure",
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
}

M.RollingUpdatePolicy = {
    type = "structure",
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
    members = {
        BlueGreenUpdatePolicy = M.BlueGreenUpdatePolicy,
        RollingUpdatePolicy = M.RollingUpdatePolicy,
        AutoRollbackConfiguration = M.AutoRollbackConfig,
    },
}

M.CreateEndpointInput = {
    type = "structure",
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
    members = {
        HumanLoopActivationConditions = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.HumanLoopActivationConfig = {
    type = "structure",
    members = {
        HumanLoopActivationConditionsConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.HumanLoopActivationConditionsConfig }),
    },
}

M.USD = {
    type = "structure",
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
    members = {
        AmountInUsd = M.USD,
    },
}

M.HumanLoopConfig = {
    type = "structure",
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
    members = {
        S3OutputPath = {
            type = "string",
        },
    },
}

M.CreateHubInput = {
    type = "structure",
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
    members = {
        ImageVersionArn = {
            type = "string",
        },
    },
}

M.InferenceComponentRuntimeConfig = {
    type = "structure",
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
    members = {
        CategoricalParameterRanges = {
            type = "list",
            member = M.CategoricalParameter,
        },
    },
}

M.EndpointInputConfiguration = {
    type = "structure",
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
    members = {
        EndpointName = {
            type = "string",
        },
    },
}

M.RecommendationJobResourceLimit = {
    type = "structure",
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
    members = {
        S3OutputUri = {
            type = "string",
        },
    },
}

M.RecommendationJobOutputConfig = {
    type = "structure",
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
    members = {
        ContentClassifiers = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.LabelingJobS3DataSource = {
    type = "structure",
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
    members = {
        S3DataSource = M.LabelingJobS3DataSource,
        SnsDataSource = M.LabelingJobSnsDataSource,
    },
}

M.LabelingJobInputConfig = {
    type = "structure",
    members = {
        DataSource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LabelingJobDataSource }),
        DataAttributes = M.LabelingJobDataAttributes,
    },
}

M.LabelingJobResourceConfig = {
    type = "structure",
    members = {
        VolumeKmsKeyId = {
            type = "string",
        },
        VpcConfig = M.VpcConfig,
    },
}

M.LabelingJobAlgorithmsConfig = {
    type = "structure",
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
    members = {
        BaseliningJobName = {
            type = "string",
        },
        ConstraintsResource = M.MonitoringConstraintsResource,
    },
}

M.MonitoringGroundTruthS3Input = {
    type = "structure",
    members = {
        S3Uri = {
            type = "string",
        },
    },
}

M.ModelBiasJobInput = {
    type = "structure",
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
    members = {
        KmsKeyId = {
            type = "string",
        },
    },
}

M.CreateModelCardInput = {
    type = "structure",
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
    members = {
        BaseliningJobName = {
            type = "string",
        },
        ConstraintsResource = M.MonitoringConstraintsResource,
    },
}

M.ModelExplainabilityJobInput = {
    type = "structure",
    members = {
        EndpointInput = M.EndpointInput,
        BatchTransformInput = M.BatchTransformInput,
    },
}

M.CreateModelExplainabilityJobDefinitionInput = {
    type = "structure",
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
    members = {
        ConfigFile = M.FileSource,
        PreTrainingConstraints = M.MetricsSource,
        PostTrainingConstraints = M.MetricsSource,
    },
}

M.DriftCheckExplainability = {
    type = "structure",
    members = {
        Constraints = M.MetricsSource,
        ConfigFile = M.FileSource,
    },
}

M.DriftCheckModelDataQuality = {
    type = "structure",
    members = {
        Statistics = M.MetricsSource,
        Constraints = M.MetricsSource,
    },
}

M.DriftCheckModelQuality = {
    type = "structure",
    members = {
        Statistics = M.MetricsSource,
        Constraints = M.MetricsSource,
    },
}

M.DriftCheckBaselines = {
    type = "structure",
    members = {
        Bias = M.DriftCheckBias,
        Explainability = M.DriftCheckExplainability,
        ModelQuality = M.DriftCheckModelQuality,
        ModelDataQuality = M.DriftCheckModelDataQuality,
    },
}

M.ModelPackageModelCard = {
    type = "structure",
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
    members = {
        Report = M.MetricsSource,
    },
}

M.ModelDataQuality = {
    type = "structure",
    members = {
        Statistics = M.MetricsSource,
        Constraints = M.MetricsSource,
    },
}

M.ModelQuality = {
    type = "structure",
    members = {
        Statistics = M.MetricsSource,
        Constraints = M.MetricsSource,
    },
}

M.ModelMetrics = {
    type = "structure",
    members = {
        ModelQuality = M.ModelQuality,
        ModelDataQuality = M.ModelDataQuality,
        Bias = M.Bias,
        Explainability = M.Explainability,
    },
}

M.ModelPackageSecurityConfig = {
    type = "structure",
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
    members = {
        BaseliningJobName = {
            type = "string",
        },
        ConstraintsResource = M.MonitoringConstraintsResource,
    },
}

M.ModelQualityJobInput = {
    type = "structure",
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
    members = {
        EndpointInput = M.EndpointInput,
        BatchTransformInput = M.BatchTransformInput,
    },
}

M.NetworkConfig = {
    type = "structure",
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
    members = {
        NotebookInstanceArn = {
            type = "string",
        },
    },
}

M.NotebookInstanceLifecycleHook = {
    type = "structure",
    members = {
        Content = {
            type = "string",
        },
    },
}

M.CreateNotebookInstanceLifecycleConfigInput = {
    type = "structure",
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
    members = {
        S3Uri = {
            type = "string",
        },
        ModelAccessConfig = M.OptimizationModelAccessConfig,
    },
}

M.OptimizationSageMakerModel = {
    type = "structure",
    members = {
        ModelName = {
            type = "string",
        },
    },
}

M.OptimizationJobModelSource = {
    type = "structure",
    members = {
        S3 = M.OptimizationJobModelSourceS3,
        SageMakerModel = M.OptimizationSageMakerModel,
    },
}

M.ModelCompilationConfig = {
    type = "structure",
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
    members = {
        ModelQuantizationConfig = M.ModelQuantizationConfig,
        ModelCompilationConfig = M.ModelCompilationConfig,
        ModelShardingConfig = M.ModelShardingConfig,
        ModelSpeculativeDecodingConfig = M.ModelSpeculativeDecodingConfig,
    },
}

M.OptimizationJobOutputConfig = {
    type = "structure",
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
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreatePartnerAppOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.CreatePartnerAppPresignedUrlInput = {
    type = "structure",
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
    members = {
        Url = {
            type = "string",
        },
    },
}

M.ParallelismConfiguration = {
    type = "structure",
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
    members = {
        PipelineArn = {
            type = "string",
        },
    },
}

M.CreatePresignedDomainUrlInput = {
    type = "structure",
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
    members = {
        AuthorizedUrl = {
            type = "string",
        },
    },
}

M.CreatePresignedMlflowAppUrlInput = {
    type = "structure",
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
    members = {
        AuthorizedUrl = {
            type = "string",
        },
    },
}

M.CreatePresignedMlflowTrackingServerUrlInput = {
    type = "structure",
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
    members = {
        AuthorizedUrl = {
            type = "string",
        },
    },
}

M.CreatePresignedNotebookInstanceUrlInput = {
    type = "structure",
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
    members = {
        AuthorizedUrl = {
            type = "string",
        },
    },
}

M.ExperimentConfig = {
    type = "structure",
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
    members = {
        ClusterConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ProcessingClusterConfig }),
    },
}

M.ProcessingStoppingCondition = {
    type = "structure",
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
    members = {
        CfnTemplateProvider = M.CfnCreateTemplateProvider,
    },
}

M.CreateProjectInput = {
    type = "structure",
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
    members = {
        IdleTimeoutInMinutes = {
            type = "integer",
        },
    },
}

M.SpaceAppLifecycleManagement = {
    type = "structure",
    members = {
        IdleSettings = M.SpaceIdleSettings,
    },
}

M.SpaceCodeEditorAppSettings = {
    type = "structure",
    members = {
        DefaultResourceSpec = M.ResourceSpec,
        AppLifecycleManagement = M.SpaceAppLifecycleManagement,
    },
}

M.EFSFileSystem = {
    type = "structure",
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
    members = {
        EFSFileSystem = M.EFSFileSystem,
        FSxLustreFileSystem = M.FSxLustreFileSystem,
        S3FileSystem = M.S3FileSystem,
    },
}

M.SpaceJupyterLabAppSettings = {
    type = "structure",
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
    members = {
        EbsStorageSettings = M.EbsStorageSettings,
    },
}

M.SpaceSettings = {
    type = "structure",
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
    members = {
        StudioLifecycleConfigArn = {
            type = "string",
        },
    },
}

M.DebugHookConfig = {
    type = "structure",
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
    members = {
        EnableInfraCheck = {
            type = "boolean",
        },
    },
}

M.MlflowConfig = {
    type = "structure",
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
    members = {
        EnableSessionTagChaining = {
            type = "boolean",
        },
    },
}

M.TensorBoardOutputConfig = {
    type = "structure",
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
    members = {
        TrialArn = {
            type = "string",
        },
    },
}

M.TrialComponentArtifact = {
    type = "structure",
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
    members = {
        TrialComponentArn = {
            type = "string",
        },
    },
}

M.CreateUserProfileInput = {
    type = "structure",
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
    members = {
        Groups = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.MemberDefinition = {
    type = "structure",
    members = {
        CognitoMemberDefinition = M.CognitoMemberDefinition,
        OidcMemberDefinition = M.OidcMemberDefinition,
    },
}

M.NotificationConfiguration = {
    type = "structure",
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
    members = {
        IamPolicyConstraints = M.IamPolicyConstraints,
    },
}

M.WorkerAccessConfiguration = {
    type = "structure",
    members = {
        S3Presign = M.S3Presign,
    },
}

M.CreateWorkteamInput = {
    type = "structure",
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
    members = {
        ActionArn = {
            type = "string",
        },
    },
}

M.DeleteAIBenchmarkJobInput = {
    type = "structure",
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
    members = {
        AIBenchmarkJobArn = {
            type = "string",
        },
    },
}

M.DeleteAIRecommendationJobInput = {
    type = "structure",
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
    members = {
        AIRecommendationJobArn = {
            type = "string",
        },
    },
}

M.DeleteAIWorkloadConfigInput = {
    type = "structure",
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
    members = {
        AIWorkloadConfigArn = {
            type = "string",
        },
    },
}

M.DeleteAlgorithmInput = {
    type = "structure",
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
}

M.DeleteAppInput = {
    type = "structure",
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
}

M.DeleteAppImageConfigInput = {
    type = "structure",
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
}

M.DeleteArtifactInput = {
    type = "structure",
    members = {
        ArtifactArn = {
            type = "string",
        },
        Source = M.ArtifactSource,
    },
}

M.DeleteArtifactOutput = {
    type = "structure",
    members = {
        ArtifactArn = {
            type = "string",
        },
    },
}

M.DeleteAssociationInput = {
    type = "structure",
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
}

M.DeleteCodeRepositoryInput = {
    type = "structure",
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
}

M.DeleteCompilationJobInput = {
    type = "structure",
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
}

M.DeleteComputeQuotaInput = {
    type = "structure",
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
}

M.DeleteContextInput = {
    type = "structure",
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
    members = {
        ContextArn = {
            type = "string",
        },
    },
}

M.DeleteDataQualityJobDefinitionInput = {
    type = "structure",
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
}

M.DeleteDeviceFleetInput = {
    type = "structure",
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
}

M.RetentionType = {
    Retain = "Retain",
    Delete = "Delete",
}

M.RetentionPolicy = {
    type = "structure",
    members = {
        HomeEfsFileSystem = {
            type = "string",
        },
    },
}

M.DeleteDomainInput = {
    type = "structure",
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
}

M.DeleteEdgeDeploymentPlanInput = {
    type = "structure",
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
}

M.DeleteEdgeDeploymentStageInput = {
    type = "structure",
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
}

M.DeleteEndpointInput = {
    type = "structure",
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
}

M.DeleteEndpointConfigInput = {
    type = "structure",
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
}

M.DeleteExperimentInput = {
    type = "structure",
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
    members = {
        ExperimentArn = {
            type = "string",
        },
    },
}

M.DeleteFeatureGroupInput = {
    type = "structure",
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
}

M.DeleteFlowDefinitionInput = {
    type = "structure",
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
}

M.DeleteHubInput = {
    type = "structure",
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
}

M.DeleteHubContentInput = {
    type = "structure",
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
}

M.DeleteHubContentReferenceInput = {
    type = "structure",
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
}

M.DeleteHumanTaskUiInput = {
    type = "structure",
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
}

M.DeleteHyperParameterTuningJobInput = {
    type = "structure",
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
}

M.DeleteImageInput = {
    type = "structure",
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
}

M.DeleteImageVersionInput = {
    type = "structure",
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
}

M.DeleteInferenceComponentInput = {
    type = "structure",
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
}

M.DeleteInferenceExperimentInput = {
    type = "structure",
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
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.DeleteMlflowTrackingServerInput = {
    type = "structure",
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
    members = {
        TrackingServerArn = {
            type = "string",
        },
    },
}

M.DeleteModelInput = {
    type = "structure",
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
}

M.DeleteModelBiasJobDefinitionInput = {
    type = "structure",
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
}

M.DeleteModelCardInput = {
    type = "structure",
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
}

M.DeleteModelExplainabilityJobDefinitionInput = {
    type = "structure",
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
}

M.DeleteModelPackageInput = {
    type = "structure",
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
}

M.DeleteModelPackageGroupInput = {
    type = "structure",
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
}

M.DeleteModelPackageGroupPolicyInput = {
    type = "structure",
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
}

M.DeleteModelQualityJobDefinitionInput = {
    type = "structure",
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
}

M.DeleteMonitoringScheduleInput = {
    type = "structure",
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
}

M.DeleteNotebookInstanceInput = {
    type = "structure",
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
}

M.DeleteNotebookInstanceLifecycleConfigInput = {
    type = "structure",
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
}

M.DeleteOptimizationJobInput = {
    type = "structure",
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
}

M.DeletePartnerAppInput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
        },
    },
}

M.DeletePartnerAppOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.DeletePipelineInput = {
    type = "structure",
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
                required = true,
            },
        },
    },
}

M.DeletePipelineOutput = {
    type = "structure",
    members = {
        PipelineArn = {
            type = "string",
        },
    },
}

M.DeleteProcessingJobInput = {
    type = "structure",
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
}

M.DeleteProjectInput = {
    type = "structure",
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
}

M.DeleteSpaceInput = {
    type = "structure",
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
}

M.DeleteStudioLifecycleConfigInput = {
    type = "structure",
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
}

M.DeleteTagsInput = {
    type = "structure",
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
}

M.DeleteTrainingJobInput = {
    type = "structure",
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
}

M.DeleteTrialInput = {
    type = "structure",
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
    members = {
        TrialArn = {
            type = "string",
        },
    },
}

M.DeleteTrialComponentInput = {
    type = "structure",
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
    members = {
        TrialComponentArn = {
            type = "string",
        },
    },
}

M.DeleteUserProfileInput = {
    type = "structure",
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
}

M.DeleteWorkforceInput = {
    type = "structure",
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
}

M.DeleteWorkteamInput = {
    type = "structure",
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
}

M.DerivedInformation = {
    type = "structure",
    members = {
        DerivedDataInputConfig = {
            type = "string",
        },
    },
}

M.DescribeActionInput = {
    type = "structure",
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
    members = {
        EndpointName = {
            type = "string",
        },
    },
}

M.ResolvedAttributes = {
    type = "structure",
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
    members = {
        EventDetails = M.ClusterEventDetail,
    },
}

M.DescribeClusterNodeInput = {
    type = "structure",
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
    members = {
        NodeDetails = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ClusterNodeDetails }),
    },
}

M.DescribeClusterSchedulerConfigInput = {
    type = "structure",
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
    members = {
        ArtifactDigest = {
            type = "string",
        },
    },
}

M.DescribeCompilationJobOutput = {
    type = "structure",
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
    members = {
        RollingUpdatePolicy = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InferenceComponentRollingUpdatePolicy }),
        AutoRollbackConfiguration = M.AutoRollbackConfig,
    },
}

M.InferenceComponentPlacementStatus = {
    type = "structure",
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
    members = {
        RecommendedInferenceImage = {
            type = "string",
        },
    },
}

M.DescribeOptimizationJobOutput = {
    type = "structure",
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
    members = {
        CfnTemplateProviderDetail = M.CfnTemplateProviderDetail,
    },
}

M.DescribeProjectOutput = {
    type = "structure",
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
    members = {
        SubscribedWorkteam = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SubscribedWorkteam }),
    },
}

M.DescribeTrainingJobInput = {
    type = "structure",
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
    members = {
        Workforce = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Workforce }),
    },
}

M.DescribeWorkteamInput = {
    type = "structure",
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
    members = {
        Workteam = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Workteam }),
    },
}

M.ProductionVariantServerlessUpdateConfig = {
    type = "structure",
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
}

M.DisableSagemakerServicecatalogPortfolioOutput = {
    type = "structure",
}

M.DisassociateTrialComponentInput = {
    type = "structure",
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
    members = {
        PredefinedMetricType = {
            type = "string",
        },
    },
}

M.MetricSpecification = {
    type = "union",
    members = {
        Predefined = M.PredefinedMetricSpecification,
        Customized = M.CustomizedMetricSpecification,
    },
}

M.TargetTrackingScalingPolicyConfiguration = {
    type = "structure",
    members = {
        MetricSpecification = M.MetricSpecification,
        TargetValue = {
            type = "double",
        },
    },
}

M.ScalingPolicy = {
    type = "union",
    members = {
        TargetTracking = M.TargetTrackingScalingPolicyConfiguration,
    },
}

M.DynamicScalingConfiguration = {
    type = "structure",
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
}

M.EnableSagemakerServicecatalogPortfolioOutput = {
    type = "structure",
}

M.MonitoringSchedule = {
    type = "structure",
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
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.EndpointConfigSummary = {
    type = "structure",
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
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.EndpointSummary = {
    type = "structure",
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
    members = {
        ErrorMessage = {
            type = "string",
        },
    },
}

M.FeatureGroup = {
    type = "structure",
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
}

M.SagemakerServicecatalogStatus = {
    ENABLED = "Enabled",
    DISABLED = "Disabled",
}

M.GetSagemakerServicecatalogPortfolioStatusOutput = {
    type = "structure",
    members = {
        Status = {
            type = "string",
        },
    },
}

M.ScalingPolicyObjective = {
    type = "structure",
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
    members = {
        PropertyNameQuery = M.PropertyNameQuery,
    },
}

M.GetSearchSuggestionsInput = {
    type = "structure",
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
    members = {
        PropertyName = {
            type = "string",
        },
    },
}

M.GetSearchSuggestionsOutput = {
    type = "structure",
    members = {
        PropertyNameSuggestions = {
            type = "list",
            member = M.PropertyNameSuggestion,
        },
    },
}

M.GitConfigForUpdate = {
    type = "structure",
    members = {
        SecretArn = {
            type = "string",
        },
    },
}

M.HubContentInfo = {
    type = "structure",
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
    members = {
        Filters = {
            type = "list",
            member = M.ModelMetadataFilter,
        },
    },
}

M.ListModelMetadataInput = {
    type = "structure",
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
    members = {
        Enabled = {
            type = "boolean",
        },
    },
}

M.MonitoringAlertActions = {
    type = "structure",
    members = {
        ModelDashboardIndicator = M.ModelDashboardIndicatorAction,
    },
}

M.MonitoringAlertSummary = {
    type = "structure",
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
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.ProcessingJobStepMetadata = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.QualityCheckStepMetadata = {
    type = "structure",
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
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.TrainingJobStepMetadata = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.TransformJobStepMetadata = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.TuningJobStepMetaData = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.PipelineExecutionStepMetadata = {
    type = "structure",
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
    members = {
        OwnerUserProfileName = {
            type = "string",
        },
    },
}

M.SpaceSettingsSummary = {
    type = "structure",
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
    members = {
        SharingType = {
            type = "string",
        },
    },
}

M.SpaceDetails = {
    type = "structure",
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
    members = {
        TtlDuration = M.TtlDuration,
    },
}

M.Parent = {
    type = "structure",
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
}

M.Relation = {
    EQUAL_TO = "EqualTo",
    GREATER_THAN_OR_EQUAL_TO = "GreaterThanOrEqualTo",
}

M.RemoteDebugConfigForUpdate = {
    type = "structure",
    members = {
        EnableRemoteDebug = {
            type = "boolean",
        },
    },
}

M.RenderableTask = {
    type = "structure",
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
                required = true,
            },
        },
        ParallelismConfiguration = M.ParallelismConfiguration,
    },
}

M.RetryPipelineExecutionOutput = {
    type = "structure",
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
        },
    },
}

M.SendPipelineExecutionStepFailureOutput = {
    type = "structure",
    members = {
        PipelineExecutionArn = {
            type = "string",
        },
    },
}

M.SendPipelineExecutionStepSuccessInput = {
    type = "structure",
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
        },
    },
}

M.SendPipelineExecutionStepSuccessOutput = {
    type = "structure",
    members = {
        PipelineExecutionArn = {
            type = "string",
        },
    },
}

M.StartClusterHealthCheckInput = {
    type = "structure",
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
}

M.StartInferenceExperimentInput = {
    type = "structure",
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
    members = {
        TrackingServerArn = {
            type = "string",
        },
    },
}

M.StartMonitoringScheduleInput = {
    type = "structure",
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
}

M.StartNotebookInstanceInput = {
    type = "structure",
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
}

M.StartPipelineExecutionInput = {
    type = "structure",
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
    members = {
        PipelineExecutionArn = {
            type = "string",
        },
    },
}

M.StartSessionInput = {
    type = "structure",
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
}

M.StopCompilationJobInput = {
    type = "structure",
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
}

M.StopEdgeDeploymentStageInput = {
    type = "structure",
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
}

M.StopEdgePackagingJobInput = {
    type = "structure",
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
}

M.StopHyperParameterTuningJobInput = {
    type = "structure",
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
}

M.StopInferenceExperimentInput = {
    type = "structure",
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
}

M.StopLabelingJobInput = {
    type = "structure",
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
}

M.StopMlflowTrackingServerInput = {
    type = "structure",
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
    members = {
        TrackingServerArn = {
            type = "string",
        },
    },
}

M.StopMonitoringScheduleInput = {
    type = "structure",
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
}

M.StopNotebookInstanceInput = {
    type = "structure",
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
}

M.StopOptimizationJobInput = {
    type = "structure",
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
}

M.StopPipelineExecutionInput = {
    type = "structure",
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
                required = true,
            },
        },
    },
}

M.StopPipelineExecutionOutput = {
    type = "structure",
    members = {
        PipelineExecutionArn = {
            type = "string",
        },
    },
}

M.StopProcessingJobInput = {
    type = "structure",
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
}

M.StopTrainingJobInput = {
    type = "structure",
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
}

M.StopTransformJobInput = {
    type = "structure",
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
}

M.UpdateActionInput = {
    type = "structure",
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
    members = {
        ActionArn = {
            type = "string",
        },
    },
}

M.UpdateAppImageConfigInput = {
    type = "structure",
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
    members = {
        AppImageConfigArn = {
            type = "string",
        },
    },
}

M.UpdateArtifactInput = {
    type = "structure",
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
    members = {
        ArtifactArn = {
            type = "string",
        },
    },
}

M.UpdateClusterInput = {
    type = "structure",
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
    members = {
        ContextArn = {
            type = "string",
        },
    },
}

M.UpdateDeviceFleetInput = {
    type = "structure",
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
}

M.UpdateDevicesInput = {
    type = "structure",
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
}

M.UpdateDomainInput = {
    type = "structure",
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
    members = {
        ExperimentArn = {
            type = "string",
        },
    },
}

M.ThroughputConfigUpdate = {
    type = "structure",
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
}

M.UpdateHubInput = {
    type = "structure",
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
    members = {
        ImageArn = {
            type = "string",
        },
    },
}

M.UpdateImageVersionInput = {
    type = "structure",
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
    members = {
        ImageVersionArn = {
            type = "string",
        },
    },
}

M.UpdateInferenceComponentInput = {
    type = "structure",
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
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.UpdateMlflowTrackingServerInput = {
    type = "structure",
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
    members = {
        TrackingServerArn = {
            type = "string",
        },
    },
}

M.UpdateModelCardInput = {
    type = "structure",
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
}

M.UpdateNotebookInstanceLifecycleConfigInput = {
    type = "structure",
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
}

M.UpdatePartnerAppInput = {
    type = "structure",
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
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.UpdatePartnerAppOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.UpdatePipelineInput = {
    type = "structure",
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
    members = {
        PipelineExecutionArn = {
            type = "string",
        },
    },
}

M.UpdatePipelineVersionInput = {
    type = "structure",
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
    members = {
        CfnTemplateProvider = M.CfnUpdateTemplateProvider,
    },
}

M.UpdateProjectInput = {
    type = "structure",
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
    members = {
        SpaceArn = {
            type = "string",
        },
    },
}

M.UpdateTrainingJobInput = {
    type = "structure",
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
    members = {
        TrialArn = {
            type = "string",
        },
    },
}

M.UpdateTrialComponentInput = {
    type = "structure",
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
    members = {
        TrialComponentArn = {
            type = "string",
        },
    },
}

M.UpdateUserProfileInput = {
    type = "structure",
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
    members = {
        UserProfileArn = {
            type = "string",
        },
    },
}

M.UpdateWorkforceInput = {
    type = "structure",
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
    members = {
        Workforce = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Workforce }),
    },
}

M.UpdateWorkteamInput = {
    type = "structure",
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
    members = {
        Workteam = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Workteam }),
    },
}

M.SearchExpression = {
    type = "structure",
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
