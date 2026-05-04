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
            type = "number",
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
            type = "number",
        },
        Accelerators = {
            type = "number",
        },
        VCpu = {
            type = "number",
        },
        MemoryInGiB = {
            type = "number",
        },
        AcceleratorPartition = {
            type = "structure",
        },
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
        Source = {
            type = "structure",
        },
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
            type = "number",
            traits = {
                required = true,
            },
        },
        AvailabilityZones = {
            type = "list",
            member_type = "string",
        },
        InstanceTypes = {
            type = "list",
            member_type = "string",
        },
    },
}

M.AdditionalEnis = {
    type = "structure",
    members = {
        EfaEnis = {
            type = "list",
            member_type = "string",
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
        ModelAccessConfig = {
            type = "structure",
        },
        HubAccessConfig = {
            type = "structure",
        },
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
        S3DataSource = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        S3DataSource = {
            type = "structure",
        },
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
        ModelDataSource = {
            type = "structure",
        },
        ProductId = {
            type = "string",
        },
        Environment = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        ModelInput = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        AdditionalS3DataSource = {
            type = "structure",
        },
        ModelDataETag = {
            type = "string",
        },
        IsCheckpoint = {
            type = "boolean",
        },
        BaseModel = {
            type = "structure",
        },
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        SupportedTransformInstanceTypes = {
            type = "list",
            member_type = "string",
        },
        SupportedRealtimeInferenceInstanceTypes = {
            type = "list",
            member_type = "string",
        },
        SupportedContentTypes = {
            type = "list",
            member_type = "string",
        },
        SupportedResponseMIMETypes = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
        Subnets = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AIBenchmarkNetworkConfig = {
    type = "structure",
    members = {
        VpcConfig = {
            type = "structure",
        },
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
            member_type = "structure",
        },
    },
}

M.AIBenchmarkTarget = {
    type = "union",
    members = {
        Endpoint = {
            type = "structure",
        },
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
            member_type = "string",
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
        S3DataSource = {
            type = "structure",
        },
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
        DataSource = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.AIDatasetConfig = {
    type = "union",
    members = {
        InputDataConfig = {
            type = "list",
            member_type = "structure",
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
        S3 = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        ImageUri = {
            type = "string",
        },
        InstanceType = {
            type = "string",
        },
        InstanceCount = {
            type = "number",
        },
        CopyCountPerInstance = {
            type = "number",
        },
        EnvironmentVariables = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            type = "number",
        },
        CopyCountPerInstance = {
            type = "number",
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
            member_type = "structure",
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
            key_type = "string",
            value_type = "string",
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
            member_type = "structure",
        },
        ModelDetails = {
            type = "structure",
        },
        DeploymentConfiguration = {
            type = "structure",
        },
        AIBenchmarkJobArn = {
            type = "string",
        },
        ExpectedPerformance = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AIRecommendationComputeSpec = {
    type = "structure",
    members = {
        InstanceTypes = {
            type = "list",
            member_type = "string",
        },
        CapacityReservationConfig = {
            type = "structure",
        },
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
            member_type = "structure",
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
        WorkloadSpec = {
            type = "union",
            traits = {
                required = true,
            },
        },
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
        TrainingRepositoryAuthConfig = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        EnableSageMakerMetricsTimeSeries = {
            type = "boolean",
        },
        ContainerEntrypoint = {
            type = "list",
            member_type = "string",
        },
        ContainerArguments = {
            type = "list",
            member_type = "string",
        },
        TrainingImageConfig = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        ImageScanStatuses = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
        },
        InstanceGroupNames = {
            type = "list",
            member_type = "string",
        },
        ModelAccessConfig = {
            type = "structure",
        },
        HubAccessConfig = {
            type = "structure",
        },
    },
}

M.DataSource = {
    type = "structure",
    members = {
        S3DataSource = {
            type = "structure",
        },
        FileSystemDataSource = {
            type = "structure",
        },
        DatasetSource = {
            type = "structure",
        },
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
            type = "number",
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
        DataSource = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        ShuffleConfig = {
            type = "structure",
        },
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
            type = "number",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
        },
        VolumeSizeInGB = {
            type = "number",
        },
        VolumeKmsKeyId = {
            type = "string",
        },
        KeepAlivePeriodInSeconds = {
            type = "number",
        },
        InstanceGroups = {
            type = "list",
            member_type = "structure",
        },
        TrainingPlanArn = {
            type = "string",
        },
        InstancePlacementConfig = {
            type = "structure",
        },
    },
}

M.StoppingCondition = {
    type = "structure",
    members = {
        MaxRuntimeInSeconds = {
            type = "number",
        },
        MaxWaitTimeInSeconds = {
            type = "number",
        },
        MaxPendingTimeInSeconds = {
            type = "number",
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
            key_type = "string",
            value_type = "string",
        },
        InputDataConfig = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        OutputDataConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ResourceConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        StoppingCondition = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        S3DataSource = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        DataSource = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            type = "number",
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
            type = "number",
        },
        MaxPayloadInMB = {
            type = "number",
        },
        BatchStrategy = {
            type = "string",
        },
        Environment = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        TransformInput = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        TransformOutput = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        TransformResources = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        TrainingJobDefinition = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        TransformJobDefinition = {
            type = "structure",
        },
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
            member_type = "structure",
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
        ResourceSpec = {
            type = "structure",
        },
    },
}

M.ContainerConfig = {
    type = "structure",
    members = {
        ContainerArguments = {
            type = "list",
            member_type = "string",
        },
        ContainerEntrypoint = {
            type = "list",
            member_type = "string",
        },
        ContainerEnvironmentVariables = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            type = "number",
        },
        DefaultGid = {
            type = "number",
        },
    },
}

M.CodeEditorAppImageConfig = {
    type = "structure",
    members = {
        FileSystemConfig = {
            type = "structure",
        },
        ContainerConfig = {
            type = "structure",
        },
    },
}

M.JupyterLabAppImageConfig = {
    type = "structure",
    members = {
        FileSystemConfig = {
            type = "structure",
        },
        ContainerConfig = {
            type = "structure",
        },
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        FileSystemConfig = {
            type = "structure",
        },
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
        KernelGatewayImageConfig = {
            type = "structure",
        },
        JupyterLabAppImageConfig = {
            type = "structure",
        },
        CodeEditorAppImageConfig = {
            type = "structure",
        },
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
            type = "number",
        },
        MinIdleTimeoutInMinutes = {
            type = "number",
        },
        MaxIdleTimeoutInMinutes = {
            type = "number",
        },
    },
}

M.AppLifecycleManagement = {
    type = "structure",
    members = {
        IdleSettings = {
            type = "structure",
        },
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
            member_type = "string",
        },
        ContainerArguments = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
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
        Source = {
            type = "structure",
        },
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
        IamIdentity = {
            type = "structure",
        },
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
        CreatedBy = {
            type = "structure",
        },
    },
}

M.AsyncInferenceClientConfig = {
    type = "structure",
    members = {
        MaxConcurrentInvocationsPerInstance = {
            type = "number",
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
            member_type = "string",
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
        NotificationConfig = {
            type = "structure",
        },
        S3FailurePath = {
            type = "string",
        },
    },
}

M.AsyncInferenceConfig = {
    type = "structure",
    members = {
        ClientConfig = {
            type = "structure",
        },
        OutputConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            member_type = "string",
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
            type = "number",
        },
        Set = {
            type = "string",
        },
    },
}

M.CandidateProperties = {
    type = "structure",
    members = {
        CandidateArtifactLocations = {
            type = "structure",
        },
        CandidateMetrics = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            key_type = "string",
            value_type = "string",
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
        FinalAutoMLJobObjectiveMetric = {
            type = "structure",
        },
        ObjectiveStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CandidateSteps = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
        CandidateProperties = {
            type = "structure",
        },
        InferenceContainerDefinitions = {
            type = "map",
            key_type = "string",
            value_type = "list",
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
            member_type = "structure",
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
        S3DataSource = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.AutoMLChannel = {
    type = "structure",
    members = {
        DataSource = {
            type = "structure",
        },
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
        EmrServerlessComputeConfig = {
            type = "structure",
        },
    },
}

M.AutoMLDataSplitConfig = {
    type = "structure",
    members = {
        ValidationFraction = {
            type = "number",
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
        DataSource = {
            type = "structure",
        },
    },
}

M.AutoMLJobCompletionCriteria = {
    type = "structure",
    members = {
        MaxCandidates = {
            type = "number",
        },
        MaxRuntimePerTrainingJobInSeconds = {
            type = "number",
        },
        MaxAutoMLJobRuntimeInSeconds = {
            type = "number",
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
        VpcConfig = {
            type = "structure",
        },
    },
}

M.AutoMLJobConfig = {
    type = "structure",
    members = {
        CompletionCriteria = {
            type = "structure",
        },
        SecurityConfig = {
            type = "structure",
        },
        CandidateGenerationConfig = {
            type = "structure",
        },
        DataSplitConfig = {
            type = "structure",
        },
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
            member_type = "structure",
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
        CompletionCriteria = {
            type = "structure",
        },
    },
}

M.CandidateGenerationConfig = {
    type = "structure",
    members = {
        AlgorithmsConfig = {
            type = "list",
            member_type = "structure",
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
        CandidateGenerationConfig = {
            type = "structure",
        },
        CompletionCriteria = {
            type = "structure",
        },
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
        CompletionCriteria = {
            type = "structure",
        },
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
        CompletionCriteria = {
            type = "structure",
        },
        BaseModelName = {
            type = "string",
        },
        TextGenerationHyperParameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        ModelAccessConfig = {
            type = "structure",
        },
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
            member_type = "string",
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
            key_type = "string",
            value_type = "map",
        },
        Aggregation = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.TimeSeriesForecastingJobConfig = {
    type = "structure",
    members = {
        FeatureSpecificationS3Uri = {
            type = "string",
        },
        CompletionCriteria = {
            type = "structure",
        },
        ForecastFrequency = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ForecastHorizon = {
            type = "number",
            traits = {
                required = true,
            },
        },
        ForecastQuantiles = {
            type = "list",
            member_type = "string",
        },
        Transformations = {
            type = "structure",
        },
        TimeSeriesConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        HolidayConfig = {
            type = "list",
            member_type = "structure",
        },
        CandidateGenerationConfig = {
            type = "structure",
        },
    },
}

M.AutoMLProblemTypeConfig = {
    type = "union",
    members = {
        ImageClassificationJobConfig = {
            type = "structure",
        },
        TextClassificationJobConfig = {
            type = "structure",
        },
        TimeSeriesForecastingJobConfig = {
            type = "structure",
        },
        TabularJobConfig = {
            type = "structure",
        },
        TextGenerationJobConfig = {
            type = "structure",
        },
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
        TabularResolvedAttributes = {
            type = "structure",
        },
        TextGenerationResolvedAttributes = {
            type = "structure",
        },
    },
}

M.AutoMLResolvedAttributes = {
    type = "structure",
    members = {
        AutoMLJobObjective = {
            type = "structure",
        },
        CompletionCriteria = {
            type = "structure",
        },
        AutoMLProblemTypeResolvedAttributes = {
            type = "union",
        },
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
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "structure",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        AvailabilityZones = {
            type = "list",
            member_type = "string",
        },
        InstanceTypes = {
            type = "list",
            member_type = "string",
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
            member_type = "string",
        },
        InstanceTypes = {
            type = "list",
            member_type = "string",
        },
    },
}

M.BatchAddClusterNodesOutput = {
    type = "structure",
    members = {
        Successful = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        Failed = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
        },
        NodeLogicalIds = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
        },
        Successful = {
            type = "list",
            member_type = "string",
        },
        FailedNodeLogicalIds = {
            type = "list",
            member_type = "structure",
        },
        SuccessfulNodeLogicalIds = {
            type = "list",
            member_type = "string",
        },
    },
}

M.BatchDescribeModelPackageInput = {
    type = "structure",
    members = {
        ModelPackageArnList = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        SupportedTransformInstanceTypes = {
            type = "list",
            member_type = "string",
        },
        SupportedRealtimeInferenceInstanceTypes = {
            type = "list",
            member_type = "string",
        },
        SupportedContentTypes = {
            type = "list",
            member_type = "string",
        },
        SupportedResponseMIMETypes = {
            type = "list",
            member_type = "string",
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
            type = "number",
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
        InferenceSpecification = {
            type = "structure",
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
            key_type = "string",
            value_type = "structure",
        },
        BatchDescribeModelPackageErrorMap = {
            type = "map",
            key_type = "string",
            value_type = "structure",
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
            member_type = "string",
        },
        NodeLogicalIds = {
            type = "list",
            member_type = "string",
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
            member_type = "string",
        },
        Failed = {
            type = "list",
            member_type = "structure",
        },
        FailedNodeLogicalIds = {
            type = "list",
            member_type = "structure",
        },
        SuccessfulNodeLogicalIds = {
            type = "list",
            member_type = "string",
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
            member_type = "string",
        },
        NodeLogicalIds = {
            type = "list",
            member_type = "string",
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
            member_type = "string",
        },
        Failed = {
            type = "list",
            member_type = "structure",
        },
        FailedNodeLogicalIds = {
            type = "list",
            member_type = "structure",
        },
        SuccessfulNodeLogicalIds = {
            type = "list",
            member_type = "string",
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
        Csv = {
            type = "structure",
        },
        Json = {
            type = "structure",
        },
        Parquet = {
            type = "structure",
        },
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
        DatasetFormat = {
            type = "structure",
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
            type = "number",
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
            type = "number",
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
        Report = {
            type = "structure",
        },
        PreTrainingReport = {
            type = "structure",
        },
        PostTrainingReport = {
            type = "structure",
        },
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
            type = "number",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        CanarySize = {
            type = "structure",
        },
        LinearStepSize = {
            type = "structure",
        },
    },
}

M.BlueGreenUpdatePolicy = {
    type = "structure",
    members = {
        TrafficRoutingConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        TerminationWaitInSeconds = {
            type = "number",
        },
        MaximumExecutionTimeoutInSeconds = {
            type = "number",
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
            member_type = "structure",
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
        TimeSeriesForecastingSettings = {
            type = "structure",
        },
        ModelRegisterSettings = {
            type = "structure",
        },
        WorkspaceSettings = {
            type = "structure",
        },
        IdentityProviderOAuthSettings = {
            type = "list",
            member_type = "structure",
        },
        DirectDeploySettings = {
            type = "structure",
        },
        KendraSettings = {
            type = "structure",
        },
        GenerativeAiSettings = {
            type = "structure",
        },
        EmrServerlessSettings = {
            type = "structure",
        },
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
            type = "number",
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
            member_type = "string",
        },
        JsonContentTypes = {
            type = "list",
            member_type = "string",
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
            member_type = "string",
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
            member_type = "string",
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
            member_type = "string",
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
            member_type = "structure",
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
            member_type = "structure",
        },
        StackDetail = {
            type = "structure",
        },
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
            member_type = "structure",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
        SupportedCompressionTypes = {
            type = "list",
            member_type = "string",
        },
        SupportedInputModes = {
            type = "list",
            member_type = "string",
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
            type = "number",
        },
        MaxPayloadInMB = {
            type = "number",
        },
        ProbabilityIndex = {
            type = "number",
        },
        LabelIndex = {
            type = "number",
        },
        ProbabilityAttribute = {
            type = "string",
        },
        LabelAttribute = {
            type = "string",
        },
        LabelHeaders = {
            type = "list",
            member_type = "string",
        },
        FeatureHeaders = {
            type = "list",
            member_type = "string",
        },
        FeatureTypes = {
            type = "list",
            member_type = "string",
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
        ShapBaselineConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        NumberOfSamples = {
            type = "number",
        },
        UseLogit = {
            type = "boolean",
        },
        Seed = {
            type = "number",
        },
        TextConfig = {
            type = "structure",
        },
    },
}

M.ClarifyExplainerConfig = {
    type = "structure",
    members = {
        EnableExplanations = {
            type = "string",
        },
        InferenceConfig = {
            type = "structure",
        },
        ShapConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        Spot = {
            type = "structure",
        },
        OnDemand = {
            type = "structure",
        },
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
            type = "number",
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
            member_type = "string",
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
        AdditionalEnis = {
            type = "structure",
        },
        CapacityReservation = {
            type = "structure",
        },
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
        CapacityReservation = {
            type = "structure",
        },
        SubnetId = {
            type = "string",
        },
        SecurityGroupIds = {
            type = "list",
            member_type = "string",
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
            type = "number",
        },
        TargetCount = {
            type = "number",
        },
        MinCount = {
            type = "number",
        },
        FailureMessage = {
            type = "string",
        },
    },
}

M.EventMetadata = {
    type = "union",
    members = {
        Cluster = {
            type = "structure",
        },
        InstanceGroup = {
            type = "structure",
        },
        InstanceGroupScaling = {
            type = "structure",
        },
        Instance = {
            type = "structure",
        },
    },
}

M.EventDetails = {
    type = "structure",
    members = {
        EventMetadata = {
            type = "union",
        },
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
        EventDetails = {
            type = "structure",
        },
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
        MaximumBatchSize = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        RollbackMaximumBatchSize = {
            type = "structure",
        },
    },
}

M.DeploymentConfiguration = {
    type = "structure",
    members = {
        RollingUpdatePolicy = {
            type = "structure",
        },
        WaitIntervalInSeconds = {
            type = "number",
        },
        AutoRollbackConfiguration = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ClusterInstanceRequirementDetails = {
    type = "structure",
    members = {
        CurrentInstanceTypes = {
            type = "list",
            member_type = "string",
        },
        DesiredInstanceTypes = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ClusterInstanceStorageConfig = {
    type = "union",
    members = {
        EbsVolumeConfig = {
            type = "structure",
        },
        FsxLustreConfig = {
            type = "structure",
        },
        FsxOpenZfsConfig = {
            type = "structure",
        },
    },
}

M.ClusterInstanceTypeDetail = {
    type = "structure",
    members = {
        InstanceType = {
            type = "string",
        },
        CurrentCount = {
            type = "number",
        },
        ThreadsPerCore = {
            type = "number",
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
            key_type = "string",
            value_type = "string",
        },
        DesiredLabels = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        CurrentTaints = {
            type = "list",
            member_type = "structure",
        },
        DesiredTaints = {
            type = "list",
            member_type = "structure",
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
        DeploymentConfig = {
            type = "structure",
        },
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
            member_type = "string",
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
            type = "number",
        },
        TargetCount = {
            type = "number",
        },
        MinCount = {
            type = "number",
        },
        InstanceGroupName = {
            type = "string",
        },
        InstanceType = {
            type = "string",
        },
        InstanceRequirements = {
            type = "structure",
        },
        InstanceTypeDetails = {
            type = "list",
            member_type = "structure",
        },
        LifeCycleConfig = {
            type = "structure",
        },
        ExecutionRole = {
            type = "string",
        },
        ThreadsPerCore = {
            type = "number",
        },
        InstanceStorageConfigs = {
            type = "list",
            member_type = "union",
        },
        OnStartDeepHealthChecks = {
            type = "list",
            member_type = "string",
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
        OverrideVpcConfig = {
            type = "structure",
        },
        ScheduledUpdateConfig = {
            type = "structure",
        },
        CurrentImageId = {
            type = "string",
        },
        DesiredImageId = {
            type = "string",
        },
        ActiveOperations = {
            type = "map",
            key_type = "string",
            value_type = "number",
        },
        KubernetesConfig = {
            type = "structure",
        },
        CapacityRequirements = {
            type = "structure",
        },
        TargetStateCount = {
            type = "number",
        },
        SoftwareUpdateStatus = {
            type = "string",
        },
        ActiveSoftwareUpdateConfig = {
            type = "structure",
        },
        SlurmConfig = {
            type = "structure",
        },
        NetworkInterface = {
            type = "structure",
        },
    },
}

M.ClusterInstanceRequirements = {
    type = "structure",
    members = {
        InstanceTypes = {
            type = "list",
            member_type = "string",
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
            key_type = "string",
            value_type = "string",
        },
        Taints = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
        },
    },
}

M.ClusterInstanceGroupSpecification = {
    type = "structure",
    members = {
        InstanceCount = {
            type = "number",
            traits = {
                required = true,
            },
        },
        MinInstanceCount = {
            type = "number",
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
        InstanceRequirements = {
            type = "structure",
        },
        LifeCycleConfig = {
            type = "structure",
        },
        ExecutionRole = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ThreadsPerCore = {
            type = "number",
        },
        InstanceStorageConfigs = {
            type = "list",
            member_type = "union",
        },
        OnStartDeepHealthChecks = {
            type = "list",
            member_type = "string",
        },
        TrainingPlanArn = {
            type = "string",
        },
        OverrideVpcConfig = {
            type = "structure",
        },
        ScheduledUpdateConfig = {
            type = "structure",
        },
        ImageId = {
            type = "string",
        },
        KubernetesConfig = {
            type = "structure",
        },
        SlurmConfig = {
            type = "structure",
        },
        CapacityRequirements = {
            type = "structure",
        },
        NetworkInterface = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
        },
        DesiredLabels = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        CurrentTaints = {
            type = "list",
            member_type = "structure",
        },
        DesiredTaints = {
            type = "list",
            member_type = "structure",
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
        InstanceStatus = {
            type = "structure",
        },
        InstanceType = {
            type = "string",
        },
        LaunchTime = {
            type = "timestamp",
        },
        LastSoftwareUpdateTime = {
            type = "timestamp",
        },
        LifeCycleConfig = {
            type = "structure",
        },
        OverrideVpcConfig = {
            type = "structure",
        },
        ThreadsPerCore = {
            type = "number",
        },
        InstanceStorageConfigs = {
            type = "list",
            member_type = "union",
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
        Placement = {
            type = "structure",
        },
        CurrentImageId = {
            type = "string",
        },
        DesiredImageId = {
            type = "string",
        },
        UltraServerInfo = {
            type = "structure",
        },
        KubernetesConfig = {
            type = "structure",
        },
        CapacityType = {
            type = "string",
        },
        NetworkInterface = {
            type = "structure",
        },
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
        InstanceStatus = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        UltraServerInfo = {
            type = "structure",
        },
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
        Eks = {
            type = "structure",
        },
        Slurm = {
            type = "structure",
        },
    },
}

M.FSxLustreConfig = {
    type = "structure",
    members = {
        SizeInGiB = {
            type = "number",
            traits = {
                required = true,
            },
        },
        PerUnitStorageThroughput = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.EnvironmentConfigDetails = {
    type = "structure",
    members = {
        FSxLustreConfig = {
            type = "structure",
        },
        S3OutputPath = {
            type = "string",
        },
    },
}

M.ClusterRestrictedInstanceGroupDetails = {
    type = "structure",
    members = {
        CurrentCount = {
            type = "number",
        },
        TargetCount = {
            type = "number",
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
            type = "number",
        },
        InstanceStorageConfigs = {
            type = "list",
            member_type = "union",
        },
        OnStartDeepHealthChecks = {
            type = "list",
            member_type = "string",
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
        OverrideVpcConfig = {
            type = "structure",
        },
        ScheduledUpdateConfig = {
            type = "structure",
        },
        EnvironmentConfig = {
            type = "structure",
        },
    },
}

M.EnvironmentConfig = {
    type = "structure",
    members = {
        FSxLustreConfig = {
            type = "structure",
        },
    },
}

M.ClusterRestrictedInstanceGroupSpecification = {
    type = "structure",
    members = {
        InstanceCount = {
            type = "number",
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
            type = "number",
        },
        InstanceStorageConfigs = {
            type = "list",
            member_type = "union",
        },
        OnStartDeepHealthChecks = {
            type = "list",
            member_type = "string",
        },
        TrainingPlanArn = {
            type = "string",
        },
        OverrideVpcConfig = {
            type = "structure",
        },
        ScheduledUpdateConfig = {
            type = "structure",
        },
        EnvironmentConfig = {
            type = "structure",
        },
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
            type = "number",
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
            member_type = "string",
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
            type = "number",
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
            type = "number",
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
        DefaultResourceSpec = {
            type = "structure",
        },
        CustomImages = {
            type = "list",
            member_type = "structure",
        },
        LifecycleConfigArns = {
            type = "list",
            member_type = "string",
        },
        AppLifecycleManagement = {
            type = "structure",
        },
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
        GitConfig = {
            type = "structure",
        },
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
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.CollectionConfig = {
    type = "union",
    members = {
        VectorConfig = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
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
            type = "number",
        },
        AbsoluteBorrowLimits = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ComputeQuotaConfig = {
    type = "structure",
    members = {
        ComputeQuotaResources = {
            type = "list",
            member_type = "structure",
        },
        ResourceSharingConfig = {
            type = "structure",
        },
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
            type = "number",
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
            type = "number",
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
        ComputeQuotaConfig = {
            type = "structure",
        },
        ComputeQuotaTarget = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        RepositoryAuthConfig = {
            type = "structure",
        },
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
        ImageConfig = {
            type = "structure",
        },
        Mode = {
            type = "string",
        },
        ModelDataUrl = {
            type = "string",
        },
        ModelDataSource = {
            type = "structure",
        },
        AdditionalModelDataSources = {
            type = "list",
            member_type = "structure",
        },
        Environment = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        ModelPackageName = {
            type = "string",
        },
        InferenceSpecificationName = {
            type = "string",
        },
        MultiModelConfig = {
            type = "structure",
        },
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
        Source = {
            type = "structure",
        },
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
        Source = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            key_type = "string",
            value_type = "string",
        },
        MetadataProperties = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
        BenchmarkTarget = {
            type = "union",
            traits = {
                required = true,
            },
        },
        OutputConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        NetworkConfig = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
        ModelSource = {
            type = "union",
            traits = {
                required = true,
            },
        },
        OutputConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        AIWorkloadConfigIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PerformanceTarget = {
            type = "structure",
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
        InferenceSpecification = {
            type = "structure",
        },
        OptimizeModel = {
            type = "boolean",
        },
        ComputeSpec = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
        DatasetConfig = {
            type = "union",
        },
        AIWorkloadConfigs = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
        IntegerParameterRangeSpecification = {
            type = "structure",
        },
        ContinuousParameterRangeSpecification = {
            type = "structure",
        },
        CategoricalParameterRangeSpecification = {
            type = "structure",
        },
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
        Range = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        SupportedTrainingInstanceTypes = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        SupportsDistributedTraining = {
            type = "boolean",
        },
        MetricDefinitions = {
            type = "list",
            member_type = "structure",
        },
        TrainingChannels = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        SupportedTuningJobObjectiveMetrics = {
            type = "list",
            member_type = "structure",
        },
        AdditionalS3DataSource = {
            type = "structure",
        },
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
        TrainingSpecification = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        InferenceSpecification = {
            type = "structure",
        },
        ValidationSpecification = {
            type = "structure",
        },
        CertifyForMarketplace = {
            type = "boolean",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
        ResourceSpec = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        KernelGatewayImageConfig = {
            type = "structure",
        },
        JupyterLabAppImageConfig = {
            type = "structure",
        },
        CodeEditorAppImageConfig = {
            type = "structure",
        },
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
        Source = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ArtifactType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Properties = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        MetadataProperties = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        OutputDataConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ProblemType = {
            type = "string",
        },
        AutoMLJobObjective = {
            type = "structure",
        },
        AutoMLJobConfig = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        ModelDeployConfig = {
            type = "structure",
        },
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        OutputDataConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        AutoMLProblemTypeConfig = {
            type = "union",
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
            member_type = "structure",
        },
        SecurityConfig = {
            type = "structure",
        },
        AutoMLJobObjective = {
            type = "structure",
        },
        ModelDeployConfig = {
            type = "structure",
        },
        DataSplitConfig = {
            type = "structure",
        },
        AutoMLComputeConfig = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        RestrictedInstanceGroups = {
            type = "list",
            member_type = "structure",
        },
        VpcConfig = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        Orchestrator = {
            type = "structure",
        },
        NodeRecovery = {
            type = "string",
        },
        TieredStorageConfig = {
            type = "structure",
        },
        NodeProvisioningMode = {
            type = "string",
        },
        ClusterRole = {
            type = "string",
        },
        AutoScaling = {
            type = "structure",
        },
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
            type = "number",
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
            member_type = "structure",
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
        SchedulerConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
        GitConfig = {
            type = "structure",
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
        TargetPlatform = {
            type = "structure",
        },
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
        Subnets = {
            type = "list",
            member_type = "string",
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
        InputConfig = {
            type = "structure",
        },
        OutputConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        VpcConfig = {
            type = "structure",
        },
        StoppingCondition = {
            type = "structure",
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
        ComputeQuotaConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ComputeQuotaTarget = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ActivationState = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
        Source = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            key_type = "string",
            value_type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
        },
        ContainerArguments = {
            type = "list",
            member_type = "string",
        },
        RecordPreprocessorSourceUri = {
            type = "string",
        },
        PostAnalyticsProcessorSourceUri = {
            type = "string",
        },
        Environment = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
        ConstraintsResource = {
            type = "structure",
        },
        StatisticsResource = {
            type = "structure",
        },
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
            type = "number",
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
        EndpointInput = {
            type = "structure",
        },
        BatchTransformInput = {
            type = "structure",
        },
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
        S3Output = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.MonitoringOutputConfig = {
    type = "structure",
    members = {
        MonitoringOutputs = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            type = "number",
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
        ClusterConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        VpcConfig = {
            type = "structure",
        },
    },
}

M.MonitoringStoppingCondition = {
    type = "structure",
    members = {
        MaxRuntimeInSeconds = {
            type = "number",
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
        DataQualityBaselineConfig = {
            type = "structure",
        },
        DataQualityAppSpecification = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        DataQualityJobInput = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        DataQualityJobOutputConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        JobResources = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        NetworkConfig = {
            type = "structure",
        },
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StoppingCondition = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
        OutputConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
        EFSFileSystemConfig = {
            type = "structure",
        },
        FSxLustreFileSystemConfig = {
            type = "structure",
        },
        S3FileSystemConfig = {
            type = "structure",
        },
    },
}

M.CustomPosixUserConfig = {
    type = "structure",
    members = {
        Uid = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Gid = {
            type = "number",
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
            member_type = "string",
        },
        ExecutionRoleArns = {
            type = "list",
            member_type = "string",
        },
    },
}

M.JupyterLabAppSettings = {
    type = "structure",
    members = {
        DefaultResourceSpec = {
            type = "structure",
        },
        CustomImages = {
            type = "list",
            member_type = "structure",
        },
        LifecycleConfigArns = {
            type = "list",
            member_type = "string",
        },
        CodeRepositories = {
            type = "list",
            member_type = "structure",
        },
        AppLifecycleManagement = {
            type = "structure",
        },
        EmrSettings = {
            type = "structure",
        },
        BuiltInLifecycleConfigArn = {
            type = "string",
        },
    },
}

M.JupyterServerAppSettings = {
    type = "structure",
    members = {
        DefaultResourceSpec = {
            type = "structure",
        },
        LifecycleConfigArns = {
            type = "list",
            member_type = "string",
        },
        CodeRepositories = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.KernelGatewayAppSettings = {
    type = "structure",
    members = {
        DefaultResourceSpec = {
            type = "structure",
        },
        CustomImages = {
            type = "list",
            member_type = "structure",
        },
        LifecycleConfigArns = {
            type = "list",
            member_type = "string",
        },
    },
}

M.DefaultEbsStorageSettings = {
    type = "structure",
    members = {
        DefaultEbsVolumeSizeInGb = {
            type = "number",
            traits = {
                required = true,
            },
        },
        MaximumEbsVolumeSizeInGb = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.DefaultSpaceStorageSettings = {
    type = "structure",
    members = {
        DefaultEbsStorageSettings = {
            type = "structure",
        },
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
            member_type = "string",
        },
        JupyterServerAppSettings = {
            type = "structure",
        },
        KernelGatewayAppSettings = {
            type = "structure",
        },
        JupyterLabAppSettings = {
            type = "structure",
        },
        SpaceStorageSettings = {
            type = "structure",
        },
        CustomPosixUserConfig = {
            type = "structure",
        },
        CustomFileSystemConfigs = {
            type = "list",
            member_type = "union",
        },
    },
}

M.RSessionAppSettings = {
    type = "structure",
    members = {
        DefaultResourceSpec = {
            type = "structure",
        },
        CustomImages = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
        },
    },
}

M.StudioWebPortalSettings = {
    type = "structure",
    members = {
        HiddenMlTools = {
            type = "list",
            member_type = "string",
        },
        HiddenAppTypes = {
            type = "list",
            member_type = "string",
        },
        HiddenInstanceTypes = {
            type = "list",
            member_type = "string",
        },
        HiddenSageMakerImageVersionAliases = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.TensorBoardAppSettings = {
    type = "structure",
    members = {
        DefaultResourceSpec = {
            type = "structure",
        },
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
            member_type = "string",
        },
        SharingSettings = {
            type = "structure",
        },
        JupyterServerAppSettings = {
            type = "structure",
        },
        KernelGatewayAppSettings = {
            type = "structure",
        },
        TensorBoardAppSettings = {
            type = "structure",
        },
        RStudioServerProAppSettings = {
            type = "structure",
        },
        RSessionAppSettings = {
            type = "structure",
        },
        CanvasAppSettings = {
            type = "structure",
        },
        CodeEditorAppSettings = {
            type = "structure",
        },
        JupyterLabAppSettings = {
            type = "structure",
        },
        SpaceStorageSettings = {
            type = "structure",
        },
        DefaultLandingUri = {
            type = "string",
        },
        StudioWebPortal = {
            type = "string",
        },
        CustomPosixUserConfig = {
            type = "structure",
        },
        CustomFileSystemConfigs = {
            type = "list",
            member_type = "union",
        },
        StudioWebPortalSettings = {
            type = "structure",
        },
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
            member_type = "string",
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
        DefaultResourceSpec = {
            type = "structure",
        },
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
            member_type = "string",
        },
        RStudioServerProDomainSettings = {
            type = "structure",
        },
        ExecutionRoleIdentityConfig = {
            type = "string",
        },
        TrustedIdentityPropagationSettings = {
            type = "structure",
        },
        DockerSettings = {
            type = "structure",
        },
        AmazonQSettings = {
            type = "structure",
        },
        UnifiedStudioSettings = {
            type = "structure",
        },
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
        DefaultUserSettings = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        DomainSettings = {
            type = "structure",
        },
        SubnetIds = {
            type = "list",
            member_type = "string",
        },
        VpcId = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
        DefaultSpaceSettings = {
            type = "structure",
        },
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
            type = "number",
        },
        DeviceNames = {
            type = "list",
            member_type = "string",
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
        DeviceSelectionConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        DeploymentConfig = {
            type = "structure",
        },
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
            member_type = "structure",
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
            member_type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
        OutputConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ResourceKey = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateEdgePackagingJobOutput = {
    type = "structure",
}

M.RollingUpdatePolicy = {
    type = "structure",
    members = {
        MaximumBatchSize = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        WaitIntervalInSeconds = {
            type = "number",
            traits = {
                required = true,
            },
        },
        MaximumExecutionTimeoutInSeconds = {
            type = "number",
        },
        RollbackMaximumBatchSize = {
            type = "structure",
        },
    },
}

M.DeploymentConfig = {
    type = "structure",
    members = {
        BlueGreenUpdatePolicy = {
            type = "structure",
        },
        RollingUpdatePolicy = {
            type = "structure",
        },
        AutoRollbackConfiguration = {
            type = "structure",
        },
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
        DeploymentConfig = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        CaptureContentTypeHeader = {
            type = "structure",
        },
    },
}

M.ExplainerConfig = {
    type = "structure",
    members = {
        ClarifyExplainerConfig = {
            type = "structure",
        },
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
            type = "number",
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
            type = "number",
        },
        CooldownInMinutes = {
            type = "number",
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
            type = "number",
        },
        MaxInstanceCount = {
            type = "number",
        },
        ScaleInPolicy = {
            type = "structure",
        },
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
            type = "number",
            traits = {
                required = true,
            },
        },
        MaxConcurrency = {
            type = "number",
            traits = {
                required = true,
            },
        },
        ProvisionedConcurrency = {
            type = "number",
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
            type = "number",
        },
        InstanceType = {
            type = "string",
        },
        InstancePools = {
            type = "list",
            member_type = "structure",
        },
        VariantInstanceProvisionTimeoutInSeconds = {
            type = "number",
        },
        InitialVariantWeight = {
            type = "number",
        },
        AcceleratorType = {
            type = "string",
        },
        CoreDumpConfig = {
            type = "structure",
        },
        ServerlessConfig = {
            type = "structure",
        },
        VolumeSizeInGB = {
            type = "number",
        },
        ModelDataDownloadTimeoutInSeconds = {
            type = "number",
        },
        ContainerStartupHealthCheckTimeoutInSeconds = {
            type = "number",
        },
        EnableSSMAccess = {
            type = "boolean",
        },
        ManagedInstanceScaling = {
            type = "structure",
        },
        RoutingConfig = {
            type = "structure",
        },
        InferenceAmiVersion = {
            type = "string",
        },
        CapacityReservationConfig = {
            type = "structure",
        },
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        DataCaptureConfig = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        KmsKeyId = {
            type = "string",
        },
        AsyncInferenceConfig = {
            type = "structure",
        },
        ExplainerConfig = {
            type = "structure",
        },
        ShadowProductionVariants = {
            type = "list",
            member_type = "structure",
        },
        ExecutionRoleArn = {
            type = "string",
        },
        VpcConfig = {
            type = "structure",
        },
        EnableNetworkIsolation = {
            type = "boolean",
        },
        MetricsConfig = {
            type = "structure",
        },
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
            member_type = "structure",
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
        CollectionConfig = {
            type = "union",
        },
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
        S3StorageConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        DisableGlueTableCreation = {
            type = "boolean",
        },
        DataCatalogConfig = {
            type = "structure",
        },
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
            type = "number",
        },
    },
}

M.OnlineStoreConfig = {
    type = "structure",
    members = {
        SecurityConfig = {
            type = "structure",
        },
        EnableOnlineStore = {
            type = "boolean",
        },
        TtlDuration = {
            type = "structure",
        },
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
            type = "number",
        },
        ProvisionedWriteCapacityUnits = {
            type = "number",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        OnlineStoreConfig = {
            type = "structure",
        },
        OfflineStoreConfig = {
            type = "structure",
        },
        ThroughputConfig = {
            type = "structure",
        },
        RoleArn = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
        HumanLoopActivationConditionsConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.USD = {
    type = "structure",
    members = {
        Dollars = {
            type = "number",
        },
        Cents = {
            type = "number",
        },
        TenthFractionsOfACent = {
            type = "number",
        },
    },
}

M.PublicWorkforceTaskPrice = {
    type = "structure",
    members = {
        AmountInUsd = {
            type = "structure",
        },
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
            type = "number",
            traits = {
                required = true,
            },
        },
        TaskAvailabilityLifetimeInSeconds = {
            type = "number",
        },
        TaskTimeLimitInSeconds = {
            type = "number",
        },
        TaskKeywords = {
            type = "list",
            member_type = "string",
        },
        PublicWorkforceTaskPrice = {
            type = "structure",
        },
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
        HumanLoopRequestSource = {
            type = "structure",
        },
        HumanLoopActivationConfig = {
            type = "structure",
        },
        HumanLoopConfig = {
            type = "structure",
        },
        OutputConfig = {
            type = "structure",
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
            member_type = "structure",
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
            member_type = "string",
        },
        S3StorageConfig = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
        AccessConfig = {
            type = "structure",
        },
        MaxResults = {
            type = "number",
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
            member_type = "structure",
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
            member_type = "structure",
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
        UiTemplate = {
            type = "structure",
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
            member_type = "structure",
        },
        ContinuousParameterRanges = {
            type = "list",
            member_type = "structure",
        },
        CategoricalParameterRanges = {
            type = "list",
            member_type = "structure",
        },
        AutoParameters = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ResourceLimits = {
    type = "structure",
    members = {
        MaxNumberOfTrainingJobs = {
            type = "number",
        },
        MaxParallelTrainingJobs = {
            type = "number",
            traits = {
                required = true,
            },
        },
        MaxRuntimeInSeconds = {
            type = "number",
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
            type = "number",
        },
        MaxResource = {
            type = "number",
        },
    },
}

M.HyperParameterTuningJobStrategyConfig = {
    type = "structure",
    members = {
        HyperbandStrategyConfig = {
            type = "structure",
        },
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
            type = "number",
        },
        BestObjectiveNotImproving = {
            type = "structure",
        },
        ConvergenceDetected = {
            type = "structure",
        },
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
        StrategyConfig = {
            type = "structure",
        },
        HyperParameterTuningJobObjective = {
            type = "structure",
        },
        ResourceLimits = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ParameterRanges = {
            type = "structure",
        },
        TrainingJobEarlyStoppingType = {
            type = "string",
        },
        TuningJobCompletionCriteria = {
            type = "structure",
        },
        RandomSeed = {
            type = "number",
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
            member_type = "structure",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        VolumeSizeInGB = {
            type = "number",
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
            type = "number",
        },
        VolumeSizeInGB = {
            type = "number",
        },
        VolumeKmsKeyId = {
            type = "string",
        },
        AllocationStrategy = {
            type = "string",
        },
        InstanceConfigs = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.RetryStrategy = {
    type = "structure",
    members = {
        MaximumRetryAttempts = {
            type = "number",
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
        TuningObjective = {
            type = "structure",
        },
        HyperParameterRanges = {
            type = "structure",
        },
        StaticHyperParameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        AlgorithmSpecification = {
            type = "structure",
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
        InputDataConfig = {
            type = "list",
            member_type = "structure",
        },
        VpcConfig = {
            type = "structure",
        },
        OutputDataConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ResourceConfig = {
            type = "structure",
        },
        HyperParameterTuningResourceConfig = {
            type = "structure",
        },
        StoppingCondition = {
            type = "structure",
            traits = {
                required = true,
            },
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
        CheckpointConfig = {
            type = "structure",
        },
        RetryStrategy = {
            type = "structure",
        },
        Environment = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            member_type = "structure",
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
        HyperParameterTuningJobConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        TrainingJobDefinition = {
            type = "structure",
        },
        TrainingJobDefinitions = {
            type = "list",
            member_type = "structure",
        },
        WarmStartConfig = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        Autotune = {
            type = "structure",
        },
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
            member_type = "structure",
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
            member_type = "string",
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
            type = "number",
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
            type = "number",
        },
        NumberOfAcceleratorDevicesRequired = {
            type = "number",
        },
        MinMemoryRequiredInMb = {
            type = "number",
            traits = {
                required = true,
            },
        },
        MaxMemoryRequiredInMb = {
            type = "number",
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
            key_type = "string",
            value_type = "string",
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
            type = "number",
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
        AvailabilityZoneBalance = {
            type = "structure",
        },
    },
}

M.InferenceComponentStartupParameters = {
    type = "structure",
    members = {
        ModelDataDownloadTimeoutInSeconds = {
            type = "number",
        },
        ContainerStartupHealthCheckTimeoutInSeconds = {
            type = "number",
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
        Container = {
            type = "structure",
        },
        StartupParameters = {
            type = "structure",
        },
        ComputeResourceRequirements = {
            type = "structure",
        },
        BaseInferenceComponentName = {
            type = "string",
        },
        DataCacheConfig = {
            type = "structure",
        },
        SchedulingConfig = {
            type = "structure",
        },
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
        Specification = {
            type = "structure",
        },
        Specifications = {
            type = "list",
            member_type = "structure",
        },
        RuntimeConfig = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
        ContentType = {
            type = "structure",
        },
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
            type = "number",
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
        RealTimeInferenceConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        InfrastructureConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            type = "number",
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
            member_type = "structure",
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
        Schedule = {
            type = "structure",
        },
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        DataStorageConfig = {
            type = "structure",
        },
        ShadowModeConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        KmsKey = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
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
        PayloadConfig = {
            type = "structure",
        },
        NearestModelName = {
            type = "string",
        },
        SupportedInstanceTypes = {
            type = "list",
            member_type = "string",
        },
        SupportedEndpointType = {
            type = "string",
        },
        DataInputConfig = {
            type = "string",
        },
        SupportedResponseMIMETypes = {
            type = "list",
            member_type = "string",
        },
    },
}

M.EnvironmentParameterRanges = {
    type = "structure",
    members = {
        CategoricalParameterRanges = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.EndpointInputConfiguration = {
    type = "structure",
    members = {
        InstanceType = {
            type = "string",
        },
        ServerlessConfig = {
            type = "structure",
        },
        InferenceSpecificationName = {
            type = "string",
        },
        EnvironmentParameterRanges = {
            type = "structure",
        },
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
            type = "number",
        },
        MaxParallelOfTests = {
            type = "number",
        },
    },
}

M.Phase = {
    type = "structure",
    members = {
        InitialNumberOfUsers = {
            type = "number",
        },
        SpawnRate = {
            type = "number",
        },
        DurationInSeconds = {
            type = "number",
        },
    },
}

M.Stairs = {
    type = "structure",
    members = {
        DurationInSeconds = {
            type = "number",
        },
        NumberOfSteps = {
            type = "number",
        },
        UsersPerStep = {
            type = "number",
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
            member_type = "structure",
        },
        Stairs = {
            type = "structure",
        },
    },
}

M.RecommendationJobVpcConfig = {
    type = "structure",
    members = {
        SecurityGroupIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        Subnets = {
            type = "list",
            member_type = "string",
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
            type = "number",
        },
        TrafficPattern = {
            type = "structure",
        },
        ResourceLimit = {
            type = "structure",
        },
        EndpointConfigurations = {
            type = "list",
            member_type = "structure",
        },
        VolumeKmsKeyId = {
            type = "string",
        },
        ContainerConfig = {
            type = "structure",
        },
        Endpoints = {
            type = "list",
            member_type = "structure",
        },
        VpcConfig = {
            type = "structure",
        },
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
        CompiledOutputConfig = {
            type = "structure",
        },
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
            type = "number",
        },
    },
}

M.RecommendationJobStoppingConditions = {
    type = "structure",
    members = {
        MaxInvocations = {
            type = "number",
        },
        ModelLatencyThresholds = {
            type = "list",
            member_type = "structure",
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
        InputConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        JobDescription = {
            type = "string",
        },
        StoppingConditions = {
            type = "structure",
        },
        OutputConfig = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
        UiConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        PreHumanTaskLambdaArn = {
            type = "string",
        },
        TaskKeywords = {
            type = "list",
            member_type = "string",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        TaskTimeLimitInSeconds = {
            type = "number",
            traits = {
                required = true,
            },
        },
        TaskAvailabilityLifetimeInSeconds = {
            type = "number",
        },
        MaxConcurrentTaskCount = {
            type = "number",
        },
        AnnotationConsolidationConfig = {
            type = "structure",
        },
        PublicWorkforceTaskPrice = {
            type = "structure",
        },
    },
}

M.LabelingJobDataAttributes = {
    type = "structure",
    members = {
        ContentClassifiers = {
            type = "list",
            member_type = "string",
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
        S3DataSource = {
            type = "structure",
        },
        SnsDataSource = {
            type = "structure",
        },
    },
}

M.LabelingJobInputConfig = {
    type = "structure",
    members = {
        DataSource = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        DataAttributes = {
            type = "structure",
        },
    },
}

M.LabelingJobResourceConfig = {
    type = "structure",
    members = {
        VolumeKmsKeyId = {
            type = "string",
        },
        VpcConfig = {
            type = "structure",
        },
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
        LabelingJobResourceConfig = {
            type = "structure",
        },
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
            type = "number",
        },
        MaxPercentageOfInputDatasetLabeled = {
            type = "number",
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
        InputConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        OutputConfig = {
            type = "structure",
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
        LabelCategoryConfigS3Uri = {
            type = "string",
        },
        StoppingConditions = {
            type = "structure",
        },
        LabelingJobAlgorithmsConfig = {
            type = "structure",
        },
        HumanTaskConfig = {
            type = "structure",
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
            member_type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
        PrimaryContainer = {
            type = "structure",
        },
        Containers = {
            type = "list",
            member_type = "structure",
        },
        InferenceExecutionConfig = {
            type = "structure",
        },
        ExecutionRoleArn = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        VpcConfig = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ModelBiasBaselineConfig = {
    type = "structure",
    members = {
        BaseliningJobName = {
            type = "string",
        },
        ConstraintsResource = {
            type = "structure",
        },
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
        EndpointInput = {
            type = "structure",
        },
        BatchTransformInput = {
            type = "structure",
        },
        GroundTruthS3Input = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        ModelBiasBaselineConfig = {
            type = "structure",
        },
        ModelBiasAppSpecification = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ModelBiasJobInput = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ModelBiasJobOutputConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        JobResources = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        NetworkConfig = {
            type = "structure",
        },
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StoppingCondition = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
        SecurityConfig = {
            type = "structure",
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
        Tags = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
        ModelCardExportJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OutputConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ModelExplainabilityBaselineConfig = {
    type = "structure",
    members = {
        BaseliningJobName = {
            type = "string",
        },
        ConstraintsResource = {
            type = "structure",
        },
    },
}

M.ModelExplainabilityJobInput = {
    type = "structure",
    members = {
        EndpointInput = {
            type = "structure",
        },
        BatchTransformInput = {
            type = "structure",
        },
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
        ModelExplainabilityBaselineConfig = {
            type = "structure",
        },
        ModelExplainabilityAppSpecification = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ModelExplainabilityJobInput = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ModelExplainabilityJobOutputConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        JobResources = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        NetworkConfig = {
            type = "structure",
        },
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StoppingCondition = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
        ConfigFile = {
            type = "structure",
        },
        PreTrainingConstraints = {
            type = "structure",
        },
        PostTrainingConstraints = {
            type = "structure",
        },
    },
}

M.DriftCheckExplainability = {
    type = "structure",
    members = {
        Constraints = {
            type = "structure",
        },
        ConfigFile = {
            type = "structure",
        },
    },
}

M.DriftCheckModelDataQuality = {
    type = "structure",
    members = {
        Statistics = {
            type = "structure",
        },
        Constraints = {
            type = "structure",
        },
    },
}

M.DriftCheckModelQuality = {
    type = "structure",
    members = {
        Statistics = {
            type = "structure",
        },
        Constraints = {
            type = "structure",
        },
    },
}

M.DriftCheckBaselines = {
    type = "structure",
    members = {
        Bias = {
            type = "structure",
        },
        Explainability = {
            type = "structure",
        },
        ModelQuality = {
            type = "structure",
        },
        ModelDataQuality = {
            type = "structure",
        },
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
        Report = {
            type = "structure",
        },
    },
}

M.ModelDataQuality = {
    type = "structure",
    members = {
        Statistics = {
            type = "structure",
        },
        Constraints = {
            type = "structure",
        },
    },
}

M.ModelQuality = {
    type = "structure",
    members = {
        Statistics = {
            type = "structure",
        },
        Constraints = {
            type = "structure",
        },
    },
}

M.ModelMetrics = {
    type = "structure",
    members = {
        ModelQuality = {
            type = "structure",
        },
        ModelDataQuality = {
            type = "structure",
        },
        Bias = {
            type = "structure",
        },
        Explainability = {
            type = "structure",
        },
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
        ModelDataSource = {
            type = "structure",
        },
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
            member_type = "structure",
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
        TransformJobDefinition = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            member_type = "structure",
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
        InferenceSpecification = {
            type = "structure",
        },
        ValidationSpecification = {
            type = "structure",
        },
        SourceAlgorithmSpecification = {
            type = "structure",
        },
        CertifyForMarketplace = {
            type = "boolean",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        ModelApprovalStatus = {
            type = "string",
        },
        MetadataProperties = {
            type = "structure",
        },
        ModelMetrics = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
        },
        DriftCheckBaselines = {
            type = "structure",
        },
        AdditionalInferenceSpecifications = {
            type = "list",
            member_type = "structure",
        },
        SkipModelValidation = {
            type = "string",
        },
        SourceUri = {
            type = "string",
        },
        SecurityConfig = {
            type = "structure",
        },
        ModelCard = {
            type = "structure",
        },
        ModelLifeCycle = {
            type = "structure",
        },
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
            member_type = "structure",
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
            member_type = "string",
        },
        ContainerArguments = {
            type = "list",
            member_type = "string",
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ModelQualityBaselineConfig = {
    type = "structure",
    members = {
        BaseliningJobName = {
            type = "string",
        },
        ConstraintsResource = {
            type = "structure",
        },
    },
}

M.ModelQualityJobInput = {
    type = "structure",
    members = {
        EndpointInput = {
            type = "structure",
        },
        BatchTransformInput = {
            type = "structure",
        },
        GroundTruthS3Input = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        ModelQualityBaselineConfig = {
            type = "structure",
        },
        ModelQualityAppSpecification = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ModelQualityJobInput = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ModelQualityJobOutputConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        JobResources = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        NetworkConfig = {
            type = "structure",
        },
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StoppingCondition = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
        ConstraintsResource = {
            type = "structure",
        },
        StatisticsResource = {
            type = "structure",
        },
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
            member_type = "string",
        },
        ContainerArguments = {
            type = "list",
            member_type = "string",
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
        EndpointInput = {
            type = "structure",
        },
        BatchTransformInput = {
            type = "structure",
        },
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
        VpcConfig = {
            type = "structure",
        },
    },
}

M.MonitoringJobDefinition = {
    type = "structure",
    members = {
        BaselineConfig = {
            type = "structure",
        },
        MonitoringInputs = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        MonitoringOutputConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        MonitoringResources = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        MonitoringAppSpecification = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        StoppingCondition = {
            type = "structure",
        },
        Environment = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        NetworkConfig = {
            type = "structure",
        },
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
        ScheduleConfig = {
            type = "structure",
        },
        MonitoringJobDefinition = {
            type = "structure",
        },
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
        MonitoringScheduleConfig = {
            type = "structure",
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
            member_type = "string",
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
            member_type = "structure",
        },
        LifecycleConfigName = {
            type = "string",
        },
        DirectInternetAccess = {
            type = "string",
        },
        VolumeSizeInGB = {
            type = "number",
        },
        AcceleratorTypes = {
            type = "list",
            member_type = "string",
        },
        DefaultCodeRepository = {
            type = "string",
        },
        AdditionalCodeRepositories = {
            type = "list",
            member_type = "string",
        },
        RootAccess = {
            type = "string",
        },
        PlatformIdentifier = {
            type = "string",
        },
        InstanceMetadataServiceConfiguration = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        OnStart = {
            type = "list",
            member_type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
        ModelAccessConfig = {
            type = "structure",
        },
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
        S3 = {
            type = "structure",
        },
        SageMakerModel = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
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
            key_type = "string",
            value_type = "string",
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
            key_type = "string",
            value_type = "string",
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
        TrainingDataSource = {
            type = "structure",
        },
    },
}

M.OptimizationConfig = {
    type = "union",
    members = {
        ModelQuantizationConfig = {
            type = "structure",
        },
        ModelCompilationConfig = {
            type = "structure",
        },
        ModelShardingConfig = {
            type = "structure",
        },
        ModelSpeculativeDecodingConfig = {
            type = "structure",
        },
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
        SageMakerModel = {
            type = "structure",
        },
    },
}

M.OptimizationVpcConfig = {
    type = "structure",
    members = {
        SecurityGroupIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        Subnets = {
            type = "list",
            member_type = "string",
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
        ModelSource = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        DeploymentInstanceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxInstanceCount = {
            type = "number",
        },
        OptimizationEnvironment = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        OptimizationConfigs = {
            type = "list",
            member_type = "union",
            traits = {
                required = true,
            },
        },
        OutputConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        StoppingCondition = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        VpcConfig = {
            type = "structure",
        },
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
            member_type = "string",
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
            member_type = "string",
        },
        Arguments = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        AssignedGroupPatterns = {
            type = "list",
            member_type = "string",
        },
        RoleGroupAssignments = {
            type = "list",
            member_type = "structure",
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
        MaintenanceConfig = {
            type = "structure",
        },
        Tier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ApplicationConfig = {
            type = "structure",
        },
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
            member_type = "structure",
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
            type = "number",
        },
        SessionExpirationDurationInSeconds = {
            type = "number",
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
            type = "number",
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
        PipelineDefinitionS3Location = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        ParallelismConfiguration = {
            type = "structure",
        },
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
            type = "number",
        },
        ExpiresInSeconds = {
            type = "number",
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
            type = "number",
        },
        SessionExpirationDurationInSeconds = {
            type = "number",
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
            type = "number",
        },
        SessionExpirationDurationInSeconds = {
            type = "number",
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
            type = "number",
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
        AthenaDatasetDefinition = {
            type = "structure",
        },
        RedshiftDatasetDefinition = {
            type = "structure",
        },
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
        S3Input = {
            type = "structure",
        },
        DatasetDefinition = {
            type = "structure",
        },
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
        S3Output = {
            type = "structure",
        },
        FeatureStoreOutput = {
            type = "structure",
        },
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
            member_type = "structure",
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
            type = "number",
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
            type = "number",
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
        ClusterConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ProcessingStoppingCondition = {
    type = "structure",
    members = {
        MaxRuntimeInSeconds = {
            type = "number",
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
            member_type = "structure",
        },
        ProcessingOutputConfig = {
            type = "structure",
        },
        ProcessingJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProcessingResources = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        StoppingCondition = {
            type = "structure",
        },
        AppSpecification = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Environment = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        NetworkConfig = {
            type = "structure",
        },
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        ExperimentConfig = {
            type = "structure",
        },
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
            member_type = "structure",
        },
    },
}

M.CreateTemplateProvider = {
    type = "structure",
    members = {
        CfnTemplateProvider = {
            type = "structure",
        },
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
        ServiceCatalogProvisioningDetails = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        TemplateProviders = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
    },
}

M.SpaceAppLifecycleManagement = {
    type = "structure",
    members = {
        IdleSettings = {
            type = "structure",
        },
    },
}

M.SpaceCodeEditorAppSettings = {
    type = "structure",
    members = {
        DefaultResourceSpec = {
            type = "structure",
        },
        AppLifecycleManagement = {
            type = "structure",
        },
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
        EFSFileSystem = {
            type = "structure",
        },
        FSxLustreFileSystem = {
            type = "structure",
        },
        S3FileSystem = {
            type = "structure",
        },
    },
}

M.SpaceJupyterLabAppSettings = {
    type = "structure",
    members = {
        DefaultResourceSpec = {
            type = "structure",
        },
        CodeRepositories = {
            type = "list",
            member_type = "structure",
        },
        AppLifecycleManagement = {
            type = "structure",
        },
    },
}

M.EbsStorageSettings = {
    type = "structure",
    members = {
        EbsVolumeSizeInGb = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.SpaceStorageSettings = {
    type = "structure",
    members = {
        EbsStorageSettings = {
            type = "structure",
        },
    },
}

M.SpaceSettings = {
    type = "structure",
    members = {
        JupyterServerAppSettings = {
            type = "structure",
        },
        KernelGatewayAppSettings = {
            type = "structure",
        },
        CodeEditorAppSettings = {
            type = "structure",
        },
        JupyterLabAppSettings = {
            type = "structure",
        },
        AppType = {
            type = "string",
        },
        SpaceStorageSettings = {
            type = "structure",
        },
        SpaceManagedResources = {
            type = "string",
        },
        CustomFileSystems = {
            type = "list",
            member_type = "union",
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
            member_type = "structure",
        },
        SpaceSettings = {
            type = "structure",
        },
        OwnershipSettings = {
            type = "structure",
        },
        SpaceSharingSettings = {
            type = "structure",
        },
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
            member_type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
        CollectionConfigurations = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
        RuleParameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            type = "number",
        },
        ProfilingParameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            type = "number",
        },
        RuleParameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            key_type = "string",
            value_type = "string",
        },
        AlgorithmSpecification = {
            type = "structure",
        },
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InputDataConfig = {
            type = "list",
            member_type = "structure",
        },
        OutputDataConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ResourceConfig = {
            type = "structure",
        },
        VpcConfig = {
            type = "structure",
        },
        StoppingCondition = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
        CheckpointConfig = {
            type = "structure",
        },
        DebugHookConfig = {
            type = "structure",
        },
        DebugRuleConfigurations = {
            type = "list",
            member_type = "structure",
        },
        TensorBoardOutputConfig = {
            type = "structure",
        },
        ExperimentConfig = {
            type = "structure",
        },
        ProfilerConfig = {
            type = "structure",
        },
        ProfilerRuleConfigurations = {
            type = "list",
            member_type = "structure",
        },
        Environment = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        RetryStrategy = {
            type = "structure",
        },
        RemoteDebugConfig = {
            type = "structure",
        },
        InfraCheckConfig = {
            type = "structure",
        },
        SessionChainingConfig = {
            type = "structure",
        },
        ServerlessJobConfig = {
            type = "structure",
        },
        MlflowConfig = {
            type = "structure",
        },
        ModelPackageConfig = {
            type = "structure",
        },
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
            type = "number",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
        InvocationsMaxRetries = {
            type = "number",
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
            type = "number",
        },
        ModelClientConfig = {
            type = "structure",
        },
        MaxPayloadInMB = {
            type = "number",
        },
        BatchStrategy = {
            type = "string",
        },
        Environment = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        TransformInput = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        TransformOutput = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        DataCaptureConfig = {
            type = "structure",
        },
        TransformResources = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        DataProcessing = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        ExperimentConfig = {
            type = "structure",
        },
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
        MetadataProperties = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
        Status = {
            type = "structure",
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        Parameters = {
            type = "map",
            key_type = "string",
            value_type = "union",
        },
        InputArtifacts = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        OutputArtifacts = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        MetadataProperties = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
        UserSettings = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.SourceIpConfig = {
    type = "structure",
    members = {
        Cidrs = {
            type = "list",
            member_type = "string",
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
            member_type = "string",
        },
        Subnets = {
            type = "list",
            member_type = "string",
        },
    },
}

M.CreateWorkforceInput = {
    type = "structure",
    members = {
        CognitoConfig = {
            type = "structure",
        },
        OidcConfig = {
            type = "structure",
        },
        SourceIpConfig = {
            type = "structure",
        },
        WorkforceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        WorkforceVpcConfig = {
            type = "structure",
        },
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
            member_type = "string",
        },
    },
}

M.MemberDefinition = {
    type = "structure",
    members = {
        CognitoMemberDefinition = {
            type = "structure",
        },
        OidcMemberDefinition = {
            type = "structure",
        },
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
        IamPolicyConstraints = {
            type = "structure",
        },
    },
}

M.WorkerAccessConfiguration = {
    type = "structure",
    members = {
        S3Presign = {
            type = "structure",
        },
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
            member_type = "structure",
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
        NotificationConfiguration = {
            type = "structure",
        },
        WorkerAccessConfiguration = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            member_type = "string",
        },
        DeepHealthChecks = {
            type = "list",
            member_type = "string",
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
        Source = {
            type = "structure",
        },
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
        RetentionPolicy = {
            type = "structure",
        },
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
            type = "number",
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
            member_type = "string",
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
            key_type = "string",
            value_type = "string",
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
            member_type = "structure",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        EdgeDeploymentPendingInStage = {
            type = "number",
            traits = {
                required = true,
            },
        },
        EdgeDeploymentFailedInStage = {
            type = "number",
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
        DeviceSelectionConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        DeploymentConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        DeploymentStatus = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            member_type = "string",
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
        Source = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        CreatedBy = {
            type = "structure",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedBy = {
            type = "structure",
        },
        MetadataProperties = {
            type = "structure",
        },
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
        BenchmarkTarget = {
            type = "union",
            traits = {
                required = true,
            },
        },
        OutputConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        NetworkConfig = {
            type = "structure",
        },
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
            member_type = "structure",
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
        ModelSource = {
            type = "union",
            traits = {
                required = true,
            },
        },
        OutputConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        InferenceSpecification = {
            type = "structure",
        },
        AIWorkloadConfigIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OptimizeModel = {
            type = "boolean",
        },
        PerformanceTarget = {
            type = "structure",
        },
        Recommendations = {
            type = "list",
            member_type = "structure",
        },
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ComputeSpec = {
            type = "structure",
        },
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
            member_type = "structure",
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
        DatasetConfig = {
            type = "union",
        },
        AIWorkloadConfigs = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
        TrainingSpecification = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        InferenceSpecification = {
            type = "structure",
        },
        ValidationSpecification = {
            type = "structure",
        },
        AlgorithmStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AlgorithmStatusDetails = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        ResourceSpec = {
            type = "structure",
        },
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
        KernelGatewayImageConfig = {
            type = "structure",
        },
        JupyterLabAppImageConfig = {
            type = "structure",
        },
        CodeEditorAppImageConfig = {
            type = "structure",
        },
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
        Source = {
            type = "structure",
        },
        ArtifactType = {
            type = "string",
        },
        Properties = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        CreatedBy = {
            type = "structure",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedBy = {
            type = "structure",
        },
        MetadataProperties = {
            type = "structure",
        },
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
        AutoMLJobObjective = {
            type = "structure",
        },
        ProblemType = {
            type = "string",
        },
        CompletionCriteria = {
            type = "structure",
        },
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        OutputDataConfig = {
            type = "structure",
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
        AutoMLJobObjective = {
            type = "structure",
        },
        ProblemType = {
            type = "string",
        },
        AutoMLJobConfig = {
            type = "structure",
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
            member_type = "structure",
        },
        BestCandidate = {
            type = "structure",
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
        GenerateCandidateDefinitionsOnly = {
            type = "boolean",
        },
        AutoMLJobArtifacts = {
            type = "structure",
        },
        ResolvedAttributes = {
            type = "structure",
        },
        ModelDeployConfig = {
            type = "structure",
        },
        ModelDeployResult = {
            type = "structure",
        },
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        OutputDataConfig = {
            type = "structure",
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
        AutoMLJobObjective = {
            type = "structure",
        },
        AutoMLProblemTypeConfig = {
            type = "union",
        },
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
            member_type = "structure",
        },
        BestCandidate = {
            type = "structure",
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
        AutoMLJobArtifacts = {
            type = "structure",
        },
        ResolvedAttributes = {
            type = "structure",
        },
        ModelDeployConfig = {
            type = "structure",
        },
        ModelDeployResult = {
            type = "structure",
        },
        DataSplitConfig = {
            type = "structure",
        },
        SecurityConfig = {
            type = "structure",
        },
        AutoMLComputeConfig = {
            type = "structure",
        },
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        RestrictedInstanceGroups = {
            type = "list",
            member_type = "structure",
        },
        VpcConfig = {
            type = "structure",
        },
        Orchestrator = {
            type = "structure",
        },
        TieredStorageConfig = {
            type = "structure",
        },
        NodeRecovery = {
            type = "string",
        },
        NodeProvisioningMode = {
            type = "string",
        },
        ClusterRole = {
            type = "string",
        },
        AutoScaling = {
            type = "structure",
        },
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
        EventDetails = {
            type = "structure",
        },
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
        NodeDetails = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            type = "number",
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
            type = "number",
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
            key_type = "string",
            value_type = "string",
        },
        ClusterArn = {
            type = "string",
        },
        SchedulerConfig = {
            type = "structure",
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
        CreatedBy = {
            type = "structure",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedBy = {
            type = "structure",
        },
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
        GitConfig = {
            type = "structure",
        },
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
        StoppingCondition = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        ModelArtifacts = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ModelDigests = {
            type = "structure",
        },
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InputConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        OutputConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        VpcConfig = {
            type = "structure",
        },
        DerivedInformation = {
            type = "structure",
        },
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
            type = "number",
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
            type = "number",
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
        ComputeQuotaConfig = {
            type = "structure",
        },
        ComputeQuotaTarget = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ActivationState = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        CreatedBy = {
            type = "structure",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedBy = {
            type = "structure",
        },
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
        Source = {
            type = "structure",
        },
        ContextType = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Properties = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        CreatedBy = {
            type = "structure",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedBy = {
            type = "structure",
        },
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
        DataQualityBaselineConfig = {
            type = "structure",
        },
        DataQualityAppSpecification = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        DataQualityJobInput = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        DataQualityJobOutputConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        JobResources = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        NetworkConfig = {
            type = "structure",
        },
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StoppingCondition = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        MaxModels = {
            type = "number",
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
        OutputConfig = {
            type = "structure",
            traits = {
                required = true,
            },
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
        DefaultUserSettings = {
            type = "structure",
        },
        DomainSettings = {
            type = "structure",
        },
        AppNetworkAccessType = {
            type = "string",
        },
        HomeEfsFileSystemKmsKeyId = {
            type = "string",
        },
        SubnetIds = {
            type = "list",
            member_type = "string",
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
        DefaultSpaceSettings = {
            type = "structure",
        },
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
        },
        EdgeDeploymentPending = {
            type = "number",
        },
        EdgeDeploymentFailed = {
            type = "number",
        },
        Stages = {
            type = "list",
            member_type = "structure",
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
        OutputConfig = {
            type = "structure",
        },
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
        PresetDeploymentOutput = {
            type = "structure",
        },
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
            type = "number",
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
            member_type = "structure",
        },
        CurrentWeight = {
            type = "number",
        },
        DesiredWeight = {
            type = "number",
        },
        CurrentInstanceCount = {
            type = "number",
        },
        DesiredInstanceCount = {
            type = "number",
        },
        InstanceType = {
            type = "string",
        },
        InstancePools = {
            type = "list",
            member_type = "structure",
        },
        AcceleratorType = {
            type = "string",
        },
        VariantStatus = {
            type = "list",
            member_type = "structure",
        },
        CurrentServerlessConfig = {
            type = "structure",
        },
        DesiredServerlessConfig = {
            type = "structure",
        },
        ManagedInstanceScaling = {
            type = "structure",
        },
        RoutingConfig = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        StartTime = {
            type = "timestamp",
        },
        ShadowProductionVariants = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
        AvailableInstanceCount = {
            type = "number",
        },
        UsedByCurrentEndpoint = {
            type = "number",
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
            type = "number",
        },
        AvailableInstanceCount = {
            type = "number",
        },
        UsedByCurrentEndpoint = {
            type = "number",
        },
        Ec2CapacityReservations = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
        CurrentWeight = {
            type = "number",
        },
        DesiredWeight = {
            type = "number",
        },
        CurrentInstanceCount = {
            type = "number",
        },
        DesiredInstanceCount = {
            type = "number",
        },
        InstancePools = {
            type = "list",
            member_type = "structure",
        },
        VariantStatus = {
            type = "list",
            member_type = "structure",
        },
        CurrentServerlessConfig = {
            type = "structure",
        },
        DesiredServerlessConfig = {
            type = "structure",
        },
        ManagedInstanceScaling = {
            type = "structure",
        },
        RoutingConfig = {
            type = "structure",
        },
        CapacityReservationConfig = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        DataCaptureConfig = {
            type = "structure",
        },
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
        LastDeploymentConfig = {
            type = "structure",
        },
        AsyncInferenceConfig = {
            type = "structure",
        },
        PendingDeploymentSummary = {
            type = "structure",
        },
        ExplainerConfig = {
            type = "structure",
        },
        ShadowProductionVariants = {
            type = "list",
            member_type = "structure",
        },
        MetricsConfig = {
            type = "structure",
        },
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        DataCaptureConfig = {
            type = "structure",
        },
        KmsKeyId = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        AsyncInferenceConfig = {
            type = "structure",
        },
        ExplainerConfig = {
            type = "structure",
        },
        ShadowProductionVariants = {
            type = "list",
            member_type = "structure",
        },
        ExecutionRoleArn = {
            type = "string",
        },
        VpcConfig = {
            type = "structure",
        },
        EnableNetworkIsolation = {
            type = "boolean",
        },
        MetricsConfig = {
            type = "structure",
        },
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
        Source = {
            type = "structure",
        },
        Description = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        CreatedBy = {
            type = "structure",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedBy = {
            type = "structure",
        },
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
            type = "number",
        },
        ProvisionedWriteCapacityUnits = {
            type = "number",
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
            member_type = "structure",
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
        OnlineStoreConfig = {
            type = "structure",
        },
        OfflineStoreConfig = {
            type = "structure",
        },
        ThroughputConfig = {
            type = "structure",
        },
        RoleArn = {
            type = "string",
        },
        FeatureGroupStatus = {
            type = "string",
        },
        OfflineStoreStatus = {
            type = "structure",
        },
        LastUpdateStatus = {
            type = "structure",
        },
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
            type = "number",
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
            member_type = "structure",
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
        HumanLoopRequestSource = {
            type = "structure",
        },
        HumanLoopActivationConfig = {
            type = "structure",
        },
        HumanLoopConfig = {
            type = "structure",
        },
        OutputConfig = {
            type = "structure",
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
            member_type = "string",
        },
        S3StorageConfig = {
            type = "structure",
        },
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
            member_type = "string",
        },
        HubContentDependencies = {
            type = "list",
            member_type = "structure",
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
        UiTemplate = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            type = "number",
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
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
        FailureReason = {
            type = "string",
        },
        FinalHyperParameterTuningJobObjectiveMetric = {
            type = "structure",
        },
        ObjectiveStatus = {
            type = "string",
        },
    },
}

M.HyperParameterTuningJobConsumedResources = {
    type = "structure",
    members = {
        RuntimeInSeconds = {
            type = "number",
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
            type = "number",
        },
        Pending = {
            type = "number",
        },
        Failed = {
            type = "number",
        },
    },
}

M.TrainingJobStatusCounters = {
    type = "structure",
    members = {
        Completed = {
            type = "number",
        },
        InProgress = {
            type = "number",
        },
        RetryableError = {
            type = "number",
        },
        NonRetryableError = {
            type = "number",
        },
        Stopped = {
            type = "number",
        },
    },
}

M.HyperParameterTuningJobCompletionDetails = {
    type = "structure",
    members = {
        NumberOfTrainingJobsObjectiveNotImproving = {
            type = "number",
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
        HyperParameterTuningJobConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        TrainingJobDefinition = {
            type = "structure",
        },
        TrainingJobDefinitions = {
            type = "list",
            member_type = "structure",
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
        TrainingJobStatusCounters = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ObjectiveStatusCounters = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        BestTrainingJob = {
            type = "structure",
        },
        OverallBestTrainingJob = {
            type = "structure",
        },
        WarmStartConfig = {
            type = "structure",
        },
        Autotune = {
            type = "structure",
        },
        FailureReason = {
            type = "string",
        },
        TuningJobCompletionDetails = {
            type = "structure",
        },
        ConsumedResources = {
            type = "structure",
        },
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
            type = "number",
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
            type = "number",
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
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.InferenceComponentRollingUpdatePolicy = {
    type = "structure",
    members = {
        MaximumBatchSize = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        WaitIntervalInSeconds = {
            type = "number",
            traits = {
                required = true,
            },
        },
        MaximumExecutionTimeoutInSeconds = {
            type = "number",
        },
        RollbackMaximumBatchSize = {
            type = "structure",
        },
    },
}

M.InferenceComponentDeploymentConfig = {
    type = "structure",
    members = {
        RollingUpdatePolicy = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        AutoRollbackConfiguration = {
            type = "structure",
        },
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
            type = "number",
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
            type = "number",
        },
        CurrentCopyCount = {
            type = "number",
        },
        PlacementStatus = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.InferenceComponentContainerSpecificationSummary = {
    type = "structure",
    members = {
        DeployedImage = {
            type = "structure",
        },
        ArtifactUrl = {
            type = "string",
        },
        Environment = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
        Container = {
            type = "structure",
        },
        StartupParameters = {
            type = "structure",
        },
        ComputeResourceRequirements = {
            type = "structure",
        },
        BaseInferenceComponentName = {
            type = "string",
        },
        DataCacheConfig = {
            type = "structure",
        },
        SchedulingConfig = {
            type = "structure",
        },
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
        Specification = {
            type = "structure",
        },
        Specifications = {
            type = "list",
            member_type = "structure",
        },
        RuntimeConfig = {
            type = "structure",
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
        InferenceComponentStatus = {
            type = "string",
        },
        LastDeploymentConfig = {
            type = "structure",
        },
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
        InfrastructureConfig = {
            type = "structure",
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
        Schedule = {
            type = "structure",
        },
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
        EndpointMetadata = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ModelVariants = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        DataStorageConfig = {
            type = "structure",
        },
        ShadowModeConfig = {
            type = "structure",
        },
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
            type = "number",
            traits = {
                required = true,
            },
        },
        ModelLatency = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.EndpointPerformance = {
    type = "structure",
    members = {
        Metrics = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        EndpointInfo = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            type = "number",
        },
        ServerlessConfig = {
            type = "structure",
        },
    },
}

M.RecommendationMetrics = {
    type = "structure",
    members = {
        CostPerHour = {
            type = "number",
        },
        CostPerInference = {
            type = "number",
        },
        MaxInvocations = {
            type = "number",
        },
        ModelLatency = {
            type = "number",
        },
        CpuUtilization = {
            type = "number",
        },
        MemoryUtilization = {
            type = "number",
        },
        ModelSetupTime = {
            type = "number",
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
            member_type = "structure",
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
        Metrics = {
            type = "structure",
        },
        EndpointConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ModelConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        InputConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        StoppingConditions = {
            type = "structure",
        },
        InferenceRecommendations = {
            type = "list",
            member_type = "structure",
        },
        EndpointPerformances = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
        HumanLabeled = {
            type = "number",
        },
        MachineLabeled = {
            type = "number",
        },
        FailedNonRetryableError = {
            type = "number",
        },
        Unlabeled = {
            type = "number",
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
        LabelCounters = {
            type = "structure",
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
        InputConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        OutputConfig = {
            type = "structure",
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
        LabelCategoryConfigS3Uri = {
            type = "string",
        },
        StoppingConditions = {
            type = "structure",
        },
        LabelingJobAlgorithmsConfig = {
            type = "structure",
        },
        HumanTaskConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        LabelingJobOutput = {
            type = "structure",
        },
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
        CreatedBy = {
            type = "structure",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedBy = {
            type = "structure",
        },
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
            member_type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        CreatedBy = {
            type = "structure",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedBy = {
            type = "structure",
        },
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
        CreatedBy = {
            type = "structure",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedBy = {
            type = "structure",
        },
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
        PrimaryContainer = {
            type = "structure",
        },
        Containers = {
            type = "list",
            member_type = "structure",
        },
        InferenceExecutionConfig = {
            type = "structure",
        },
        ExecutionRoleArn = {
            type = "string",
        },
        VpcConfig = {
            type = "structure",
        },
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
        DeploymentRecommendation = {
            type = "structure",
        },
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
        ModelBiasBaselineConfig = {
            type = "structure",
        },
        ModelBiasAppSpecification = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ModelBiasJobInput = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ModelBiasJobOutputConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        JobResources = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        NetworkConfig = {
            type = "structure",
        },
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StoppingCondition = {
            type = "structure",
        },
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
            type = "number",
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
            type = "number",
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
        SecurityConfig = {
            type = "structure",
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        CreatedBy = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedBy = {
            type = "structure",
        },
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
            type = "number",
            traits = {
                required = true,
            },
        },
        OutputConfig = {
            type = "structure",
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
        FailureReason = {
            type = "string",
        },
        ExportArtifacts = {
            type = "structure",
        },
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
        ModelExplainabilityBaselineConfig = {
            type = "structure",
        },
        ModelExplainabilityAppSpecification = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ModelExplainabilityJobInput = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ModelExplainabilityJobOutputConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        JobResources = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        NetworkConfig = {
            type = "structure",
        },
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StoppingCondition = {
            type = "structure",
        },
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        ImageScanStatuses = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
        InferenceSpecification = {
            type = "structure",
        },
        SourceAlgorithmSpecification = {
            type = "structure",
        },
        ValidationSpecification = {
            type = "structure",
        },
        ModelPackageStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ModelPackageStatusDetails = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        CertifyForMarketplace = {
            type = "boolean",
        },
        ModelApprovalStatus = {
            type = "string",
        },
        CreatedBy = {
            type = "structure",
        },
        MetadataProperties = {
            type = "structure",
        },
        ModelMetrics = {
            type = "structure",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedBy = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
        },
        DriftCheckBaselines = {
            type = "structure",
        },
        AdditionalInferenceSpecifications = {
            type = "list",
            member_type = "structure",
        },
        SkipModelValidation = {
            type = "string",
        },
        SourceUri = {
            type = "string",
        },
        SecurityConfig = {
            type = "structure",
        },
        ModelCard = {
            type = "structure",
        },
        ModelLifeCycle = {
            type = "structure",
        },
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
        CreatedBy = {
            type = "structure",
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
        ModelQualityBaselineConfig = {
            type = "structure",
        },
        ModelQualityAppSpecification = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ModelQualityJobInput = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ModelQualityJobOutputConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        JobResources = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        NetworkConfig = {
            type = "structure",
        },
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StoppingCondition = {
            type = "structure",
        },
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
        MonitoringScheduleConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        EndpointName = {
            type = "string",
        },
        LastMonitoringExecutionSummary = {
            type = "structure",
        },
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
            member_type = "string",
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
            type = "number",
        },
        AcceleratorTypes = {
            type = "list",
            member_type = "string",
        },
        DefaultCodeRepository = {
            type = "string",
        },
        AdditionalCodeRepositories = {
            type = "list",
            member_type = "string",
        },
        RootAccess = {
            type = "string",
        },
        PlatformIdentifier = {
            type = "string",
        },
        InstanceMetadataServiceConfiguration = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        OnStart = {
            type = "list",
            member_type = "structure",
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
        ModelSource = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        OptimizationEnvironment = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        DeploymentInstanceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxInstanceCount = {
            type = "number",
        },
        OptimizationConfigs = {
            type = "list",
            member_type = "union",
            traits = {
                required = true,
            },
        },
        OutputConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        OptimizationOutput = {
            type = "structure",
        },
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StoppingCondition = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        VpcConfig = {
            type = "structure",
        },
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
        MaintenanceConfig = {
            type = "structure",
        },
        Tier = {
            type = "string",
        },
        Version = {
            type = "string",
        },
        ApplicationConfig = {
            type = "structure",
        },
        AuthType = {
            type = "string",
        },
        EnableIamSessionBasedIdentity = {
            type = "boolean",
        },
        Error = {
            type = "structure",
        },
        EnableAutoMinorVersionUpgrade = {
            type = "boolean",
        },
        CurrentVersionEolDate = {
            type = "timestamp",
        },
        AvailableUpgrade = {
            type = "structure",
        },
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
            type = "number",
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
        CreatedBy = {
            type = "structure",
        },
        LastModifiedBy = {
            type = "structure",
        },
        ParallelismConfiguration = {
            type = "structure",
        },
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
            member_type = "structure",
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
        PipelineExperimentConfig = {
            type = "structure",
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
        CreatedBy = {
            type = "structure",
        },
        LastModifiedBy = {
            type = "structure",
        },
        ParallelismConfiguration = {
            type = "structure",
        },
        SelectiveExecutionConfig = {
            type = "structure",
        },
        PipelineVersionId = {
            type = "number",
        },
        MLflowConfig = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        ProcessingOutputConfig = {
            type = "structure",
        },
        ProcessingJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProcessingResources = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        StoppingCondition = {
            type = "structure",
        },
        AppSpecification = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Environment = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        NetworkConfig = {
            type = "structure",
        },
        RoleArn = {
            type = "string",
        },
        ExperimentConfig = {
            type = "structure",
        },
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
        CfnTemplateProviderDetail = {
            type = "structure",
        },
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
        ServiceCatalogProvisioningDetails = {
            type = "structure",
        },
        ServiceCatalogProvisionedProductDetails = {
            type = "structure",
        },
        ProjectStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TemplateProviderDetails = {
            type = "list",
            member_type = "structure",
        },
        CreatedBy = {
            type = "structure",
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
        LastModifiedBy = {
            type = "structure",
        },
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
            type = "number",
        },
        AvailableSpareInstanceCount = {
            type = "number",
        },
        UnhealthyInstanceCount = {
            type = "number",
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
            type = "number",
        },
        DurationMinutes = {
            type = "number",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        AvailableInstanceCount = {
            type = "number",
        },
        InUseInstanceCount = {
            type = "number",
        },
        UltraServerSummary = {
            type = "structure",
        },
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
        SpaceSettings = {
            type = "structure",
        },
        OwnershipSettings = {
            type = "structure",
        },
        SpaceSharingSettings = {
            type = "structure",
        },
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
        SubscribedWorkteam = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            type = "number",
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
            type = "number",
        },
        CurrentStep = {
            type = "number",
        },
        CurrentEpoch = {
            type = "number",
        },
        MaxEpoch = {
            type = "number",
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
            type = "number",
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
        ModelArtifacts = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            key_type = "string",
            value_type = "string",
        },
        AlgorithmSpecification = {
            type = "structure",
        },
        RoleArn = {
            type = "string",
        },
        InputDataConfig = {
            type = "list",
            member_type = "structure",
        },
        OutputDataConfig = {
            type = "structure",
        },
        ResourceConfig = {
            type = "structure",
        },
        WarmPoolStatus = {
            type = "structure",
        },
        VpcConfig = {
            type = "structure",
        },
        StoppingCondition = {
            type = "structure",
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
            member_type = "structure",
        },
        FinalMetricDataList = {
            type = "list",
            member_type = "structure",
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
        CheckpointConfig = {
            type = "structure",
        },
        TrainingTimeInSeconds = {
            type = "number",
        },
        BillableTimeInSeconds = {
            type = "number",
        },
        BillableTokenCount = {
            type = "number",
        },
        DebugHookConfig = {
            type = "structure",
        },
        ExperimentConfig = {
            type = "structure",
        },
        DebugRuleConfigurations = {
            type = "list",
            member_type = "structure",
        },
        TensorBoardOutputConfig = {
            type = "structure",
        },
        DebugRuleEvaluationStatuses = {
            type = "list",
            member_type = "structure",
        },
        ProfilerConfig = {
            type = "structure",
        },
        ProfilerRuleConfigurations = {
            type = "list",
            member_type = "structure",
        },
        ProfilerRuleEvaluationStatuses = {
            type = "list",
            member_type = "structure",
        },
        ProfilingStatus = {
            type = "string",
        },
        Environment = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        RetryStrategy = {
            type = "structure",
        },
        RemoteDebugConfig = {
            type = "structure",
        },
        InfraCheckConfig = {
            type = "structure",
        },
        ServerlessJobConfig = {
            type = "structure",
        },
        MlflowConfig = {
            type = "structure",
        },
        ModelPackageConfig = {
            type = "structure",
        },
        MlflowDetails = {
            type = "structure",
        },
        ProgressInfo = {
            type = "structure",
        },
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
            type = "number",
        },
        InstanceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TotalInstanceCount = {
            type = "number",
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
            type = "number",
        },
        DurationMinutes = {
            type = "number",
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
            type = "number",
        },
        DurationMinutes = {
            type = "number",
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
            type = "number",
        },
        AvailableInstanceCount = {
            type = "number",
        },
        InUseInstanceCount = {
            type = "number",
        },
        UnhealthyInstanceCount = {
            type = "number",
        },
        AvailableSpareInstanceCount = {
            type = "number",
        },
        TotalUltraServerCount = {
            type = "number",
        },
        TargetResources = {
            type = "list",
            member_type = "string",
        },
        ReservedCapacitySummaries = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
        },
        ModelClientConfig = {
            type = "structure",
        },
        MaxPayloadInMB = {
            type = "number",
        },
        BatchStrategy = {
            type = "string",
        },
        Environment = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        TransformInput = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        TransformOutput = {
            type = "structure",
        },
        DataCaptureConfig = {
            type = "structure",
        },
        TransformResources = {
            type = "structure",
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
        DataProcessing = {
            type = "structure",
        },
        ExperimentConfig = {
            type = "structure",
        },
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
        Source = {
            type = "structure",
        },
        CreationTime = {
            type = "timestamp",
        },
        CreatedBy = {
            type = "structure",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedBy = {
            type = "structure",
        },
        MetadataProperties = {
            type = "structure",
        },
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
            type = "number",
        },
        Min = {
            type = "number",
        },
        Last = {
            type = "number",
        },
        Count = {
            type = "number",
        },
        Avg = {
            type = "number",
        },
        StdDev = {
            type = "number",
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
        Source = {
            type = "structure",
        },
        Status = {
            type = "structure",
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        CreationTime = {
            type = "timestamp",
        },
        CreatedBy = {
            type = "structure",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedBy = {
            type = "structure",
        },
        Parameters = {
            type = "map",
            key_type = "string",
            value_type = "union",
        },
        InputArtifacts = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        OutputArtifacts = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        MetadataProperties = {
            type = "structure",
        },
        Metrics = {
            type = "list",
            member_type = "structure",
        },
        LineageGroupArn = {
            type = "string",
        },
        Sources = {
            type = "list",
            member_type = "structure",
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
        UserSettings = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
        Subnets = {
            type = "list",
            member_type = "string",
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
        SourceIpConfig = {
            type = "structure",
        },
        SubDomain = {
            type = "string",
        },
        CognitoConfig = {
            type = "structure",
        },
        OidcConfig = {
            type = "structure",
        },
        CreateDate = {
            type = "timestamp",
        },
        WorkforceVpcConfig = {
            type = "structure",
        },
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
        Workforce = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            member_type = "structure",
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
            member_type = "string",
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
        NotificationConfiguration = {
            type = "structure",
        },
        WorkerAccessConfiguration = {
            type = "structure",
        },
    },
}

M.DescribeWorkteamOutput = {
    type = "structure",
    members = {
        Workteam = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ProductionVariantServerlessUpdateConfig = {
    type = "structure",
    members = {
        MaxConcurrency = {
            type = "number",
        },
        ProvisionedConcurrency = {
            type = "number",
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
            type = "number",
        },
        DesiredInstanceCount = {
            type = "number",
        },
        ServerlessUpdateConfig = {
            type = "structure",
        },
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
            type = "number",
            traits = {
                required = true,
            },
        },
        RegisteredDeviceCount = {
            type = "number",
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
            member_type = "structure",
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
        DefaultResourceSpec = {
            type = "structure",
        },
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
        RStudioServerProDomainSettingsForUpdate = {
            type = "structure",
        },
        ExecutionRoleIdentityConfig = {
            type = "string",
        },
        SecurityGroupIds = {
            type = "list",
            member_type = "string",
        },
        TrustedIdentityPropagationSettings = {
            type = "structure",
        },
        DockerSettings = {
            type = "structure",
        },
        AmazonQSettings = {
            type = "structure",
        },
        UnifiedStudioSettings = {
            type = "structure",
        },
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
        Predefined = {
            type = "structure",
        },
        Customized = {
            type = "structure",
        },
    },
}

M.TargetTrackingScalingPolicyConfiguration = {
    type = "structure",
    members = {
        MetricSpecification = {
            type = "union",
        },
        TargetValue = {
            type = "number",
        },
    },
}

M.ScalingPolicy = {
    type = "union",
    members = {
        TargetTracking = {
            type = "structure",
        },
    },
}

M.DynamicScalingConfiguration = {
    type = "structure",
    members = {
        MinCapacity = {
            type = "number",
        },
        MaxCapacity = {
            type = "number",
        },
        ScaleInCooldown = {
            type = "number",
        },
        ScaleOutCooldown = {
            type = "number",
        },
        ScalingPolicies = {
            type = "list",
            member_type = "union",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        EdgeDeploymentPending = {
            type = "number",
            traits = {
                required = true,
            },
        },
        EdgeDeploymentFailed = {
            type = "number",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        ConnectedDeviceCount = {
            type = "number",
            traits = {
                required = true,
            },
        },
        ActiveDeviceCount = {
            type = "number",
            traits = {
                required = true,
            },
        },
        SamplingDeviceCount = {
            type = "number",
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
        MonitoringScheduleConfig = {
            type = "structure",
        },
        EndpointName = {
            type = "string",
        },
        LastMonitoringExecutionSummary = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
        DataCaptureConfig = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        ShadowProductionVariants = {
            type = "list",
            member_type = "structure",
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
        Source = {
            type = "structure",
        },
        Description = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        CreatedBy = {
            type = "structure",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedBy = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
        ExperimentSource = {
            type = "structure",
        },
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
            member_type = "structure",
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
            member_type = "structure",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        OnlineStoreConfig = {
            type = "structure",
        },
        OfflineStoreConfig = {
            type = "structure",
        },
        RoleArn = {
            type = "string",
        },
        FeatureGroupStatus = {
            type = "string",
        },
        OfflineStoreStatus = {
            type = "structure",
        },
        LastUpdateStatus = {
            type = "structure",
        },
        FailureReason = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
        OfflineStoreStatus = {
            type = "structure",
        },
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
            member_type = "structure",
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
        OutputConfig = {
            type = "structure",
        },
        Description = {
            type = "string",
        },
        ReportGenerated = {
            type = "timestamp",
        },
        DeviceStats = {
            type = "structure",
        },
        AgentVersions = {
            type = "list",
            member_type = "structure",
        },
        ModelStats = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
        MaxInvocationsPerMinute = {
            type = "number",
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
            type = "number",
        },
        ScalingPolicyObjective = {
            type = "structure",
        },
    },
}

M.ScalingPolicyMetric = {
    type = "structure",
    members = {
        InvocationsPerInstance = {
            type = "number",
        },
        ModelLatency = {
            type = "number",
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
            type = "number",
        },
        ScalingPolicyObjective = {
            type = "structure",
        },
        Metric = {
            type = "structure",
        },
        DynamicScalingConfiguration = {
            type = "structure",
        },
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
        PropertyNameQuery = {
            type = "structure",
        },
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
        SuggestionQuery = {
            type = "structure",
        },
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
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "string",
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
        HyperParameterTuningJobConfig = {
            type = "structure",
        },
        TrainingJobDefinition = {
            type = "structure",
        },
        TrainingJobDefinitions = {
            type = "list",
            member_type = "structure",
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
        TrainingJobStatusCounters = {
            type = "structure",
        },
        ObjectiveStatusCounters = {
            type = "structure",
        },
        BestTrainingJob = {
            type = "structure",
        },
        OverallBestTrainingJob = {
            type = "structure",
        },
        WarmStartConfig = {
            type = "structure",
        },
        FailureReason = {
            type = "string",
        },
        TuningJobCompletionDetails = {
            type = "structure",
        },
        ConsumedResources = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
        TrainingJobStatusCounters = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ObjectiveStatusCounters = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ResourceLimits = {
            type = "structure",
        },
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
            type = "number",
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
            member_type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
        Schedule = {
            type = "structure",
        },
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
        Metrics = {
            type = "structure",
        },
        EndpointMetrics = {
            type = "structure",
        },
        EndpointConfiguration = {
            type = "structure",
        },
        ModelConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        InferenceBenchmark = {
            type = "structure",
        },
    },
}

M.LabelCountersForWorkteam = {
    type = "structure",
    members = {
        HumanLabeled = {
            type = "number",
        },
        PendingHuman = {
            type = "number",
        },
        Total = {
            type = "number",
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
        LabelCounters = {
            type = "structure",
        },
        NumberOfHumanWorkersPerDataObject = {
            type = "number",
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
        LabelCounters = {
            type = "structure",
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
        PreHumanTaskLambdaArn = {
            type = "string",
        },
        AnnotationConsolidationLambdaArn = {
            type = "string",
        },
        FailureReason = {
            type = "string",
        },
        LabelingJobOutput = {
            type = "structure",
        },
        InputConfig = {
            type = "structure",
        },
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
            member_type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
        ArtifactArns = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        ContextArns = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        Associations = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
    },
}

M.ListActionsOutput = {
    type = "structure",
    members = {
        ActionSummaries = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
        },
        MaxResults = {
            type = "number",
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
            member_type = "string",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
        },
    },
}

M.ListArtifactsOutput = {
    type = "structure",
    members = {
        ArtifactSummaries = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
    },
}

M.ListAssociationsOutput = {
    type = "structure",
    members = {
        AssociationSummaries = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
        },
    },
}

M.ListClusterSchedulerConfigsOutput = {
    type = "structure",
    members = {
        ClusterSchedulerConfigSummaries = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
        },
    },
}

M.ListComputeQuotasOutput = {
    type = "structure",
    members = {
        ComputeQuotaSummaries = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
    },
}

M.ListContextsOutput = {
    type = "structure",
    members = {
        ContextSummaries = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
        },
    },
}

M.ListDomainsOutput = {
    type = "structure",
    members = {
        Domains = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
        },
    },
}

M.ListExperimentsOutput = {
    type = "structure",
    members = {
        ExperimentSummaries = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
        },
    },
}

M.ListFlowDefinitionsOutput = {
    type = "structure",
    members = {
        FlowDefinitionSummaries = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
        },
    },
}

M.ListHumanTaskUisOutput = {
    type = "structure",
    members = {
        HumanTaskUiSummaries = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
        },
    },
}

M.ListInferenceExperimentsOutput = {
    type = "structure",
    members = {
        InferenceExperiments = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
        },
    },
}

M.ListLineageGroupsOutput = {
    type = "structure",
    members = {
        LineageGroupSummaries = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            type = "number",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            member_type = "structure",
        },
    },
}

M.ListModelMetadataInput = {
    type = "structure",
    members = {
        SearchExpression = {
            type = "structure",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            type = "number",
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
        ModelLifeCycle = {
            type = "structure",
        },
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
        ModelDashboardIndicator = {
            type = "structure",
        },
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
            type = "number",
            traits = {
                required = true,
            },
        },
        EvaluationPeriod = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Actions = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListMonitoringAlertsOutput = {
    type = "structure",
    members = {
        MonitoringAlertSummaries = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "string",
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
            member_type = "structure",
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
            type = "number",
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
            type = "number",
        },
        OptimizationTypes = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
        TrainingJob = {
            type = "structure",
        },
        ProcessingJob = {
            type = "structure",
        },
        TransformJob = {
            type = "structure",
        },
        TuningJob = {
            type = "structure",
        },
        Model = {
            type = "structure",
        },
        RegisterModel = {
            type = "structure",
        },
        Condition = {
            type = "structure",
        },
        Callback = {
            type = "structure",
        },
        Lambda = {
            type = "structure",
        },
        EMR = {
            type = "structure",
        },
        QualityCheck = {
            type = "structure",
        },
        ClarifyCheck = {
            type = "structure",
        },
        Fail = {
            type = "structure",
        },
        AutoMLJob = {
            type = "structure",
        },
        Endpoint = {
            type = "structure",
        },
        EndpointConfig = {
            type = "structure",
        },
        BedrockCustomModel = {
            type = "structure",
        },
        BedrockCustomModelDeployment = {
            type = "structure",
        },
        BedrockProvisionedModelThroughput = {
            type = "structure",
        },
        BedrockModelImport = {
            type = "structure",
        },
        InferenceComponent = {
            type = "structure",
        },
        Lineage = {
            type = "structure",
        },
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
        CacheHitResult = {
            type = "structure",
        },
        FailureReason = {
            type = "string",
        },
        Metadata = {
            type = "structure",
        },
        AttemptCount = {
            type = "number",
        },
        SelectiveExecutionResult = {
            type = "structure",
        },
    },
}

M.ListPipelineExecutionStepsOutput = {
    type = "structure",
    members = {
        PipelineExecutionSteps = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
        SpaceStorageSettings = {
            type = "structure",
        },
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
        SpaceSettingsSummary = {
            type = "structure",
        },
        SpaceSharingSettingsSummary = {
            type = "structure",
        },
        OwnershipSettingsSummary = {
            type = "structure",
        },
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
        },
    },
}

M.ListSubscribedWorkteamsOutput = {
    type = "structure",
    members = {
        SubscribedWorkteams = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
    },
}

M.ListTagsOutput = {
    type = "structure",
    members = {
        Tags = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
        WarmPoolStatus = {
            type = "structure",
        },
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
        },
        DurationMinutes = {
            type = "number",
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
            type = "number",
        },
        AvailableInstanceCount = {
            type = "number",
        },
        InUseInstanceCount = {
            type = "number",
        },
        TotalUltraServerCount = {
            type = "number",
        },
        TargetResources = {
            type = "list",
            member_type = "string",
        },
        ReservedCapacitySummaries = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
        TrialComponentSource = {
            type = "structure",
        },
        Status = {
            type = "structure",
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        CreationTime = {
            type = "timestamp",
        },
        CreatedBy = {
            type = "structure",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedBy = {
            type = "structure",
        },
    },
}

M.ListTrialComponentsOutput = {
    type = "structure",
    members = {
        TrialComponentSummaries = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
        TrialSource = {
            type = "structure",
        },
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
            member_type = "structure",
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
            type = "number",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        ConfiguredSpareInstanceCount = {
            type = "number",
        },
        AvailableInstanceCount = {
            type = "number",
        },
        InUseInstanceCount = {
            type = "number",
        },
        AvailableSpareInstanceCount = {
            type = "number",
        },
        UnhealthyInstanceCount = {
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
        },
    },
}

M.ListWorkforcesOutput = {
    type = "structure",
    members = {
        Workforces = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
    },
}

M.ListWorkteamsOutput = {
    type = "structure",
    members = {
        Workteams = {
            type = "list",
            member_type = "structure",
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
        PrimaryContainer = {
            type = "structure",
        },
        Containers = {
            type = "list",
            member_type = "structure",
        },
        InferenceExecutionConfig = {
            type = "structure",
        },
        ExecutionRoleArn = {
            type = "string",
        },
        VpcConfig = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        DeploymentRecommendation = {
            type = "structure",
        },
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
            type = "number",
        },
        Content = {
            type = "string",
        },
        ModelCardStatus = {
            type = "string",
        },
        SecurityConfig = {
            type = "structure",
        },
        CreationTime = {
            type = "timestamp",
        },
        CreatedBy = {
            type = "structure",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedBy = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
        ModelClientConfig = {
            type = "structure",
        },
        MaxPayloadInMB = {
            type = "number",
        },
        BatchStrategy = {
            type = "string",
        },
        Environment = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        TransformInput = {
            type = "structure",
        },
        TransformOutput = {
            type = "structure",
        },
        DataCaptureConfig = {
            type = "structure",
        },
        TransformResources = {
            type = "structure",
        },
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
        DataProcessing = {
            type = "structure",
        },
        ExperimentConfig = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
        ModelCardStatus = {
            type = "string",
        },
        SecurityConfig = {
            type = "structure",
        },
        CreationTime = {
            type = "timestamp",
        },
        CreatedBy = {
            type = "structure",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedBy = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
        MonitoringScheduleConfig = {
            type = "structure",
        },
        EndpointName = {
            type = "string",
        },
        MonitoringAlertSummaries = {
            type = "list",
            member_type = "structure",
        },
        LastMonitoringExecutionSummary = {
            type = "structure",
        },
        BatchTransformInput = {
            type = "structure",
        },
    },
}

M.ModelDashboardModel = {
    type = "structure",
    members = {
        Model = {
            type = "structure",
        },
        Endpoints = {
            type = "list",
            member_type = "structure",
        },
        LastBatchTransformJob = {
            type = "structure",
        },
        MonitoringSchedules = {
            type = "list",
            member_type = "structure",
        },
        ModelCard = {
            type = "structure",
        },
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
            type = "number",
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
        InferenceSpecification = {
            type = "structure",
        },
        SourceAlgorithmSpecification = {
            type = "structure",
        },
        ValidationSpecification = {
            type = "structure",
        },
        ModelPackageStatus = {
            type = "string",
        },
        ModelPackageStatusDetails = {
            type = "structure",
        },
        CertifyForMarketplace = {
            type = "boolean",
        },
        ModelApprovalStatus = {
            type = "string",
        },
        CreatedBy = {
            type = "structure",
        },
        MetadataProperties = {
            type = "structure",
        },
        ModelMetrics = {
            type = "structure",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedBy = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        SourceUri = {
            type = "string",
        },
        SecurityConfig = {
            type = "structure",
        },
        ModelCard = {
            type = "structure",
        },
        ModelLifeCycle = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        CustomerMetadataProperties = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        DriftCheckBaselines = {
            type = "structure",
        },
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
        CreatedBy = {
            type = "structure",
        },
        ModelPackageGroupStatus = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.OnlineStoreConfigUpdate = {
    type = "structure",
    members = {
        TtlDuration = {
            type = "structure",
        },
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
        CreatedBy = {
            type = "structure",
        },
        LastModifiedBy = {
            type = "structure",
        },
        ParallelismConfiguration = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
        PipelineExperimentConfig = {
            type = "structure",
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
        CreatedBy = {
            type = "structure",
        },
        LastModifiedBy = {
            type = "structure",
        },
        ParallelismConfiguration = {
            type = "structure",
        },
        SelectiveExecutionConfig = {
            type = "structure",
        },
        PipelineParameters = {
            type = "list",
            member_type = "structure",
        },
        PipelineVersionId = {
            type = "number",
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
            type = "number",
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
        CreatedBy = {
            type = "structure",
        },
        LastModifiedBy = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        ProcessingOutputConfig = {
            type = "structure",
        },
        ProcessingJobName = {
            type = "string",
        },
        ProcessingResources = {
            type = "structure",
        },
        StoppingCondition = {
            type = "structure",
        },
        AppSpecification = {
            type = "structure",
        },
        Environment = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        NetworkConfig = {
            type = "structure",
        },
        RoleArn = {
            type = "string",
        },
        ExperimentConfig = {
            type = "structure",
        },
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
            member_type = "structure",
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
            type = "number",
        },
        ProfilingParameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
        ServiceCatalogProvisioningDetails = {
            type = "structure",
        },
        ServiceCatalogProvisionedProductDetails = {
            type = "structure",
        },
        ProjectStatus = {
            type = "string",
        },
        CreatedBy = {
            type = "structure",
        },
        CreationTime = {
            type = "timestamp",
        },
        TemplateProviderDetails = {
            type = "list",
            member_type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedBy = {
            type = "structure",
        },
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
            member_type = "string",
        },
        LineageTypes = {
            type = "list",
            member_type = "string",
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.QueryLineageInput = {
    type = "structure",
    members = {
        StartArns = {
            type = "list",
            member_type = "string",
        },
        Direction = {
            type = "string",
        },
        IncludeEdges = {
            type = "boolean",
        },
        Filters = {
            type = "structure",
        },
        MaxDepth = {
            type = "number",
        },
        MaxResults = {
            type = "number",
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
            member_type = "structure",
        },
        Edges = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
        UiTemplate = {
            type = "structure",
        },
        Task = {
            type = "structure",
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
            member_type = "structure",
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
            type = "number",
        },
        InstanceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstanceCount = {
            type = "number",
            traits = {
                required = true,
            },
        },
        AvailabilityZone = {
            type = "string",
        },
        DurationHours = {
            type = "number",
        },
        DurationMinutes = {
            type = "number",
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
            type = "number",
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
        ParallelismConfiguration = {
            type = "structure",
        },
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
        ModelArtifacts = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
        },
        AlgorithmSpecification = {
            type = "structure",
        },
        RoleArn = {
            type = "string",
        },
        InputDataConfig = {
            type = "list",
            member_type = "structure",
        },
        OutputDataConfig = {
            type = "structure",
        },
        ResourceConfig = {
            type = "structure",
        },
        VpcConfig = {
            type = "structure",
        },
        StoppingCondition = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        FinalMetricDataList = {
            type = "list",
            member_type = "structure",
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
        CheckpointConfig = {
            type = "structure",
        },
        TrainingTimeInSeconds = {
            type = "number",
        },
        BillableTimeInSeconds = {
            type = "number",
        },
        DebugHookConfig = {
            type = "structure",
        },
        ExperimentConfig = {
            type = "structure",
        },
        DebugRuleConfigurations = {
            type = "list",
            member_type = "structure",
        },
        TensorBoardOutputConfig = {
            type = "structure",
        },
        DebugRuleEvaluationStatuses = {
            type = "list",
            member_type = "structure",
        },
        OutputModelPackageArn = {
            type = "string",
        },
        ModelPackageConfig = {
            type = "structure",
        },
        ProfilerConfig = {
            type = "structure",
        },
        Environment = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        RetryStrategy = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
        TrialComponentSource = {
            type = "structure",
        },
        CreationTime = {
            type = "timestamp",
        },
        CreatedBy = {
            type = "structure",
        },
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
        Source = {
            type = "structure",
        },
        CreationTime = {
            type = "timestamp",
        },
        CreatedBy = {
            type = "structure",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedBy = {
            type = "structure",
        },
        MetadataProperties = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        TrialComponentSummaries = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.TrialComponentSourceDetail = {
    type = "structure",
    members = {
        SourceArn = {
            type = "string",
        },
        TrainingJob = {
            type = "structure",
        },
        ProcessingJob = {
            type = "structure",
        },
        TransformJob = {
            type = "structure",
        },
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
        Source = {
            type = "structure",
        },
        Status = {
            type = "structure",
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        CreationTime = {
            type = "timestamp",
        },
        CreatedBy = {
            type = "structure",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedBy = {
            type = "structure",
        },
        Parameters = {
            type = "map",
            key_type = "string",
            value_type = "union",
        },
        InputArtifacts = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        OutputArtifacts = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        Metrics = {
            type = "list",
            member_type = "structure",
        },
        MetadataProperties = {
            type = "structure",
        },
        SourceDetail = {
            type = "structure",
        },
        LineageGroupArn = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        Parents = {
            type = "list",
            member_type = "structure",
        },
        RunName = {
            type = "string",
        },
    },
}

M.SearchRecord = {
    type = "structure",
    members = {
        TrainingJob = {
            type = "structure",
        },
        Experiment = {
            type = "structure",
        },
        Trial = {
            type = "structure",
        },
        TrialComponent = {
            type = "structure",
        },
        Endpoint = {
            type = "structure",
        },
        ModelPackage = {
            type = "structure",
        },
        ModelPackageGroup = {
            type = "structure",
        },
        Pipeline = {
            type = "structure",
        },
        PipelineExecution = {
            type = "structure",
        },
        PipelineVersion = {
            type = "structure",
        },
        FeatureGroup = {
            type = "structure",
        },
        FeatureMetadata = {
            type = "structure",
        },
        Project = {
            type = "structure",
        },
        HyperParameterTuningJob = {
            type = "structure",
        },
        ModelCard = {
            type = "structure",
        },
        Model = {
            type = "structure",
        },
    },
}

M.TotalHits = {
    type = "structure",
    members = {
        Value = {
            type = "number",
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
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        TotalHits = {
            type = "structure",
        },
    },
}

M.SearchTrainingPlanOfferingsInput = {
    type = "structure",
    members = {
        InstanceType = {
            type = "string",
        },
        InstanceCount = {
            type = "number",
        },
        UltraServerType = {
            type = "string",
        },
        UltraServerCount = {
            type = "number",
        },
        StartTimeAfter = {
            type = "timestamp",
        },
        EndTimeBefore = {
            type = "timestamp",
        },
        DurationHours = {
            type = "number",
        },
        TargetResources = {
            type = "list",
            member_type = "string",
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
            type = "number",
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
            member_type = "string",
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
            type = "number",
        },
        DurationMinutes = {
            type = "number",
        },
        UpfrontFee = {
            type = "string",
        },
        CurrencyCode = {
            type = "string",
        },
        ReservedCapacityOfferings = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.SearchTrainingPlanOfferingsOutput = {
    type = "structure",
    members = {
        TrainingPlanOfferings = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        TrainingPlanExtensionOfferings = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
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
        ParallelismConfiguration = {
            type = "structure",
        },
        SelectiveExecutionConfig = {
            type = "structure",
        },
        PipelineVersionId = {
            type = "number",
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
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
        DesiredModelVariants = {
            type = "list",
            member_type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
        PropertiesToRemove = {
            type = "list",
            member_type = "string",
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
        KernelGatewayImageConfig = {
            type = "structure",
        },
        JupyterLabAppImageConfig = {
            type = "structure",
        },
        CodeEditorAppImageConfig = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
        },
        PropertiesToRemove = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
        },
        RestrictedInstanceGroups = {
            type = "list",
            member_type = "structure",
        },
        TieredStorageConfig = {
            type = "structure",
        },
        NodeRecovery = {
            type = "string",
        },
        InstanceGroupsToDelete = {
            type = "list",
            member_type = "string",
        },
        NodeProvisioningMode = {
            type = "string",
        },
        ClusterRole = {
            type = "string",
        },
        AutoScaling = {
            type = "structure",
        },
        Orchestrator = {
            type = "structure",
        },
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
            type = "number",
            traits = {
                required = true,
            },
        },
        SchedulerConfig = {
            type = "structure",
        },
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
            type = "number",
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
            member_type = "structure",
        },
        DeploymentConfig = {
            type = "structure",
        },
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
        GitConfig = {
            type = "structure",
        },
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
            type = "number",
            traits = {
                required = true,
            },
        },
        ComputeQuotaConfig = {
            type = "structure",
        },
        ComputeQuotaTarget = {
            type = "structure",
        },
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
            type = "number",
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
            key_type = "string",
            value_type = "string",
        },
        PropertiesToRemove = {
            type = "list",
            member_type = "string",
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
        OutputConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            member_type = "structure",
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
        DefaultUserSettings = {
            type = "structure",
        },
        DomainSettingsForUpdate = {
            type = "structure",
        },
        AppSecurityGroupManagement = {
            type = "string",
        },
        DefaultSpaceSettings = {
            type = "structure",
        },
        SubnetIds = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
        },
        DeploymentConfig = {
            type = "structure",
        },
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
            member_type = "structure",
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
            type = "number",
        },
        ProvisionedWriteCapacityUnits = {
            type = "number",
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
            member_type = "structure",
        },
        OnlineStoreConfig = {
            type = "structure",
        },
        ThroughputConfig = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        ParameterRemovals = {
            type = "list",
            member_type = "string",
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
            member_type = "string",
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
            member_type = "string",
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
            member_type = "string",
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
            type = "number",
        },
        AliasesToAdd = {
            type = "list",
            member_type = "string",
        },
        AliasesToDelete = {
            type = "list",
            member_type = "string",
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
        Specification = {
            type = "structure",
        },
        Specifications = {
            type = "list",
            member_type = "structure",
        },
        RuntimeConfig = {
            type = "structure",
        },
        DeploymentConfig = {
            type = "structure",
        },
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
        DesiredRuntimeConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        Schedule = {
            type = "structure",
        },
        Description = {
            type = "string",
        },
        ModelVariants = {
            type = "list",
            member_type = "structure",
        },
        DataStorageConfig = {
            type = "structure",
        },
        ShadowModeConfig = {
            type = "structure",
        },
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
            member_type = "string",
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
            key_type = "string",
            value_type = "string",
        },
        CustomerMetadataPropertiesToRemove = {
            type = "list",
            member_type = "string",
        },
        AdditionalInferenceSpecificationsToAdd = {
            type = "list",
            member_type = "structure",
        },
        InferenceSpecification = {
            type = "structure",
        },
        SourceUri = {
            type = "string",
        },
        ModelCard = {
            type = "structure",
        },
        ModelLifeCycle = {
            type = "structure",
        },
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
            type = "number",
            traits = {
                required = true,
            },
        },
        EvaluationPeriod = {
            type = "number",
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
        MonitoringScheduleConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            type = "number",
        },
        DefaultCodeRepository = {
            type = "string",
        },
        AdditionalCodeRepositories = {
            type = "list",
            member_type = "string",
        },
        AcceleratorTypes = {
            type = "list",
            member_type = "string",
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
        InstanceMetadataServiceConfiguration = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        OnStart = {
            type = "list",
            member_type = "structure",
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
        MaintenanceConfig = {
            type = "structure",
        },
        Tier = {
            type = "string",
        },
        ApplicationConfig = {
            type = "structure",
        },
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
            member_type = "structure",
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
        PipelineDefinitionS3Location = {
            type = "structure",
        },
        PipelineDescription = {
            type = "string",
        },
        RoleArn = {
            type = "string",
        },
        ParallelismConfiguration = {
            type = "structure",
        },
    },
}

M.UpdatePipelineOutput = {
    type = "structure",
    members = {
        PipelineArn = {
            type = "string",
        },
        PipelineVersionId = {
            type = "number",
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
        ParallelismConfiguration = {
            type = "structure",
        },
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
            type = "number",
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
            type = "number",
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
            member_type = "structure",
        },
    },
}

M.UpdateTemplateProvider = {
    type = "structure",
    members = {
        CfnTemplateProvider = {
            type = "structure",
        },
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
        ServiceCatalogProvisioningUpdateDetails = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        TemplateProvidersToUpdate = {
            type = "list",
            member_type = "structure",
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
        SpaceSettings = {
            type = "structure",
        },
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
        ProfilerConfig = {
            type = "structure",
        },
        ProfilerRuleConfigurations = {
            type = "list",
            member_type = "structure",
        },
        ResourceConfig = {
            type = "structure",
        },
        RemoteDebugConfig = {
            type = "structure",
        },
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
        Status = {
            type = "structure",
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        Parameters = {
            type = "map",
            key_type = "string",
            value_type = "union",
        },
        ParametersToRemove = {
            type = "list",
            member_type = "string",
        },
        InputArtifacts = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        InputArtifactsToRemove = {
            type = "list",
            member_type = "string",
        },
        OutputArtifacts = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        OutputArtifactsToRemove = {
            type = "list",
            member_type = "string",
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
        UserSettings = {
            type = "structure",
        },
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
        SourceIpConfig = {
            type = "structure",
        },
        OidcConfig = {
            type = "structure",
        },
        WorkforceVpcConfig = {
            type = "structure",
        },
        IpAddressType = {
            type = "string",
        },
    },
}

M.UpdateWorkforceOutput = {
    type = "structure",
    members = {
        Workforce = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            member_type = "structure",
        },
        Description = {
            type = "string",
        },
        NotificationConfiguration = {
            type = "structure",
        },
        WorkerAccessConfiguration = {
            type = "structure",
        },
    },
}

M.UpdateWorkteamOutput = {
    type = "structure",
    members = {
        Workteam = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.SearchExpression = {
    type = "structure",
    members = {
        Filters = {
            type = "list",
            member_type = "structure",
        },
        NestedFilters = {
            type = "list",
            member_type = "structure",
        },
        SubExpressions = {
            type = "list",
            member_type = "structure",
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
        SearchExpression = {
            type = "structure",
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
            type = "number",
        },
        CrossAccountFilterOption = {
            type = "string",
        },
        VisibilityConditions = {
            type = "list",
            member_type = "structure",
        },
    },
}

return M
