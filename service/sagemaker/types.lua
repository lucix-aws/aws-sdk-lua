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

M.AccountDefaultStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.ActionStatus = {
    UNKNOWN = "Unknown",
    IN_PROGRESS = "InProgress",
    COMPLETED = "Completed",
    FAILED = "Failed",
    STOPPING = "Stopping",
    STOPPED = "Stopped",
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

M.ModelCompressionType = {
    None = "None",
    Gzip = "Gzip",
}

M.S3ModelDataType = {
    S3Prefix = "S3Prefix",
    S3Object = "S3Object",
}

M.CompressionType = {
    NONE = "None",
    GZIP = "Gzip",
}

M.AdditionalS3DataSourceDataType = {
    S3OBJECT = "S3Object",
    S3PREFIX = "S3Prefix",
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

M.AggregationTransformationValue = {
    Sum = "sum",
    Avg = "avg",
    First = "first",
    Min = "min",
    Max = "max",
}

M.AIBenchmarkJobStatus = {
    IN_PROGRESS = "InProgress",
    COMPLETED = "Completed",
    FAILED = "Failed",
    STOPPING = "Stopping",
    STOPPED = "Stopped",
}

M.AICapacityReservationPreference = {
    CAPACITY_RESERVATIONS_ONLY = "capacity-reservations-only",
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

M.AIRecommendationOptimizationType = {
    SPECULATIVE_DECODING = "SpeculativeDecoding",
    KERNEL_TUNING = "KernelTuning",
}

M.AIRecommendationMetric = {
    TTFT_MS = "ttft-ms",
    THROUGHPUT = "throughput",
    COST = "cost",
}

M.AIRecommendationInferenceFramework = {
    LMI = "LMI",
    VLLM = "VLLM",
}

M.AIRecommendationJobStatus = {
    IN_PROGRESS = "InProgress",
    COMPLETED = "Completed",
    FAILED = "Failed",
    STOPPING = "Stopping",
    STOPPED = "Stopped",
}

M.AlgorithmSortBy = {
    NAME = "Name",
    CREATION_TIME = "CreationTime",
}

M.TrainingRepositoryAccessMode = {
    PLATFORM = "Platform",
    VPC = "Vpc",
}

M.TrainingInputMode = {
    PIPE = "Pipe",
    FILE = "File",
    FASTFILE = "FastFile",
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

M.FileSystemAccessMode = {
    RW = "rw",
    RO = "ro",
}

M.FileSystemType = {
    EFS = "EFS",
    FSXLUSTRE = "FSxLustre",
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

M.RecordWrapper = {
    NONE = "None",
    RECORDIO = "RecordIO",
}

M.OutputCompressionType = {
    GZIP = "GZIP",
    NONE = "NONE",
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

M.BatchStrategy = {
    MULTI_RECORD = "MultiRecord",
    SINGLE_RECORD = "SingleRecord",
}

M.SplitType = {
    NONE = "None",
    LINE = "Line",
    RECORDIO = "RecordIO",
    TFRECORD = "TFRecord",
}

M.AssemblyType = {
    NONE = "None",
    LINE = "Line",
}

M.FeatureStatus = {
    Enabled = "ENABLED",
    Disabled = "DISABLED",
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

M.AppStatus = {
    Deleted = "Deleted",
    Deleting = "Deleting",
    Failed = "Failed",
    InService = "InService",
    Pending = "Pending",
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

M.ArtifactSourceIdType = {
    MD5_HASH = "MD5Hash",
    S3_ETAG = "S3ETag",
    S3_VERSION = "S3Version",
    CUSTOM = "Custom",
}

M.AsyncNotificationTopicTypes = {
    SUCCESS_NOTIFICATION_TOPIC = "SUCCESS_NOTIFICATION_TOPIC",
    ERROR_NOTIFICATION_TOPIC = "ERROR_NOTIFICATION_TOPIC",
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

M.VolumeAttachmentStatus = {
    ATTACHING = "attaching",
    ATTACHED = "attached",
    DETACHING = "detaching",
    DETACHED = "detached",
    BUSY = "busy",
}

M.AuthMode = {
    SSO = "SSO",
    IAM = "IAM",
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

M.AutoMLJobObjectiveType = {
    MAXIMIZE = "Maximize",
    MINIMIZE = "Minimize",
}

M.AutoMLProcessingUnit = {
    CPU = "CPU",
    GPU = "GPU",
}

M.ObjectiveStatus = {
    Succeeded = "Succeeded",
    Pending = "Pending",
    Failed = "Failed",
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

M.AutoMLMode = {
    AUTO = "AUTO",
    ENSEMBLING = "ENSEMBLING",
    HYPERPARAMETER_TUNING = "HYPERPARAMETER_TUNING",
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

M.ProblemType = {
    BINARY_CLASSIFICATION = "BinaryClassification",
    MULTICLASS_CLASSIFICATION = "MulticlassClassification",
    REGRESSION = "Regression",
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

M.AutoMLProblemTypeConfigName = {
    IMAGE_CLASSIFICATION = "ImageClassification",
    TEXT_CLASSIFICATION = "TextClassification",
    TIMESERIES_FORECASTING = "TimeSeriesForecasting",
    TABULAR = "Tabular",
    TEXT_GENERATION = "TextGeneration",
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

M.AutotuneMode = {
    ENABLED = "Enabled",
}

M.AvailabilityZoneBalanceEnforcementMode = {
    PERMISSIVE = "PERMISSIVE",
}

M.AwsManagedHumanLoopRequestSource = {
    REKOGNITION_DETECT_MODERATION_LABELS_IMAGE_V3 = "AWS/Rekognition/DetectModerationLabels/Image/V3",
    TEXTRACT_ANALYZE_DOCUMENT_FORMS_V1 = "AWS/Textract/AnalyzeDocument/Forms/V1",
}

M.BatchAddClusterNodesErrorCode = {
    INSTANCE_GROUP_NOT_FOUND = "InstanceGroupNotFound",
    INVALID_INSTANCE_GROUP_STATUS = "InvalidInstanceGroupStatus",
    INCOMPATIBLE_AVAILABILITY_ZONES = "IncompatibleAvailabilityZones",
    INCOMPATIBLE_INSTANCE_TYPES = "IncompatibleInstanceTypes",
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

M.BatchDeleteClusterNodesErrorCode = {
    NODE_ID_NOT_FOUND = "NodeIdNotFound",
    INVALID_NODE_STATUS = "InvalidNodeStatus",
    NODE_ID_IN_USE = "NodeIdInUse",
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

M.BatchRebootClusterNodesErrorCode = {
    INSTANCE_ID_NOT_FOUND = "InstanceIdNotFound",
    INVALID_INSTANCE_STATUS = "InvalidInstanceStatus",
    INSTANCE_ID_IN_USE = "InstanceIdInUse",
    INTERNAL_SERVER_ERROR = "InternalServerError",
}

M.BatchReplaceClusterNodesErrorCode = {
    INSTANCE_ID_NOT_FOUND = "InstanceIdNotFound",
    INVALID_INSTANCE_STATUS = "InvalidInstanceStatus",
    INSTANCE_ID_IN_USE = "InstanceIdInUse",
    INTERNAL_SERVER_ERROR = "InternalServerError",
}

M.ProcessingS3DataDistributionType = {
    FULLYREPLICATED = "FullyReplicated",
    SHARDEDBYS3KEY = "ShardedByS3Key",
}

M.ProcessingS3InputMode = {
    PIPE = "Pipe",
    FILE = "File",
}

M.CapacitySizeType = {
    INSTANCE_COUNT = "INSTANCE_COUNT",
    CAPACITY_PERCENT = "CAPACITY_PERCENT",
}

M.TrafficRoutingConfigType = {
    ALL_AT_ONCE = "ALL_AT_ONCE",
    CANARY = "CANARY",
    LINEAR = "LINEAR",
}

M.BooleanOperator = {
    AND = "And",
    OR = "Or",
}

M.CandidateSortBy = {
    CreationTime = "CreationTime",
    Status = "Status",
    FinalObjectiveMetricValue = "FinalObjectiveMetricValue",
}

M.DataSourceName = {
    SalesforceGenie = "SalesforceGenie",
    Snowflake = "Snowflake",
}

M.CapacityReservationType = {
    ODCR = "ODCR",
    CRG = "CRG",
}

M.CapacityReservationPreference = {
    CAPACITY_RESERVATIONS_ONLY = "capacity-reservations-only",
}

M.NodeUnavailabilityType = {
    INSTANCE_COUNT = "INSTANCE_COUNT",
    CAPACITY_PERCENTAGE = "CAPACITY_PERCENTAGE",
}

M.CaptureMode = {
    INPUT = "Input",
    OUTPUT = "Output",
    INPUT_AND_OUTPUT = "InputAndOutput",
}

M.CaptureStatus = {
    STARTED = "Started",
    STOPPED = "Stopped",
}

M.ClarifyFeatureType = {
    NUMERICAL = "numerical",
    CATEGORICAL = "categorical",
    TEXT = "text",
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

M.ClusterAutoScalerType = {
    KARPENTER = "Karpenter",
}

M.ClusterAutoScalingMode = {
    ENABLE = "Enable",
    DISABLE = "Disable",
}

M.ClusterAutoScalingStatus = {
    INSERVICE = "InService",
    FAILED = "Failed",
    CREATING = "Creating",
    DELETING = "Deleting",
}

M.ClusterCapacityType = {
    SPOT = "Spot",
    ON_DEMAND = "OnDemand",
}

M.ClusterConfigMode = {
    ENABLE = "Enable",
    DISABLE = "Disable",
}

M.ClusterEventResourceType = {
    CLUSTER = "Cluster",
    INSTANCE_GROUP = "InstanceGroup",
    INSTANCE = "Instance",
}

M.ClusterKubernetesTaintEffect = {
    NO_SCHEDULE = "NoSchedule",
    PREFER_NO_SCHEDULE = "PreferNoSchedule",
    NO_EXECUTE = "NoExecute",
}

M.ClusterInterfaceType = {
    EFA = "efa",
    EFA_ONLY = "efa-only",
}

M.DeepHealthCheckType = {
    INSTANCE_STRESS = "InstanceStress",
    INSTANCE_CONNECTIVITY = "InstanceConnectivity",
}

M.ClusterSlurmNodeType = {
    CONTROLLER = "Controller",
    LOGIN = "Login",
    COMPUTE = "Compute",
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

M.ClusterNodeProvisioningMode = {
    CONTINUOUS = "Continuous",
}

M.ClusterNodeRecovery = {
    AUTOMATIC = "Automatic",
    NONE = "None",
}

M.ClusterSlurmConfigStrategy = {
    OVERWRITE = "Overwrite",
    MANAGED = "Managed",
    MERGE = "Merge",
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

M.CodeRepositorySortBy = {
    NAME = "Name",
    CREATION_TIME = "CreationTime",
    LAST_MODIFIED_TIME = "LastModifiedTime",
}

M.CodeRepositorySortOrder = {
    ASCENDING = "Ascending",
    DESCENDING = "Descending",
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

M.ConditionOutcome = {
    TRUE = "True",
    FALSE = "False",
}

M.RepositoryAccessMode = {
    PLATFORM = "Platform",
    VPC = "Vpc",
}

M.ContainerMode = {
    SINGLE_MODEL = "SingleModel",
    MULTI_MODEL = "MultiModel",
}

M.ModelCacheSetting = {
    ENABLED = "Enabled",
    DISABLED = "Disabled",
}

M.ContentClassifier = {
    FREE_OF_PERSONALLY_IDENTIFIABLE_INFORMATION = "FreeOfPersonallyIdentifiableInformation",
    FREE_OF_ADULT_CONTENT = "FreeOfAdultContent",
}

M.HyperParameterScalingType = {
    AUTO = "Auto",
    LINEAR = "Linear",
    LOGARITHMIC = "Logarithmic",
    REVERSE_LOGARITHMIC = "ReverseLogarithmic",
}

M.ParameterType = {
    INTEGER = "Integer",
    CONTINUOUS = "Continuous",
    CATEGORICAL = "Categorical",
    FREE_TEXT = "FreeText",
}

M.HyperParameterTuningJobObjectiveType = {
    MAXIMIZE = "Maximize",
    MINIMIZE = "Minimize",
}

M.FairShare = {
    ENABLED = "Enabled",
    DISABLED = "Disabled",
}

M.IdleResourceSharing = {
    ENABLED = "Enabled",
    DISABLED = "Disabled",
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

M.ProcessingS3UploadMode = {
    CONTINUOUS = "Continuous",
    END_OF_JOB = "EndOfJob",
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

M.EdgePresetDeploymentType = {
    GreengrassV2Component = "GreengrassV2Component",
}

M.RStudioServerProAccessStatus = {
    Enabled = "ENABLED",
    Disabled = "DISABLED",
}

M.RStudioServerProUserGroup = {
    Admin = "R_STUDIO_ADMIN",
    User = "R_STUDIO_USER",
}

M.NotebookOutputOption = {
    Allowed = "Allowed",
    Disabled = "Disabled",
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

M.ExecutionRoleIdentityConfig = {
    USER_PROFILE_NAME = "USER_PROFILE_NAME",
    DISABLED = "DISABLED",
}

M.IPAddressType = {
    IPV4 = "ipv4",
    DUALSTACK = "dualstack",
}

M.TagPropagation = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.FailureHandlingPolicy = {
    RollbackOnFailure = "ROLLBACK_ON_FAILURE",
    DoNothing = "DO_NOTHING",
}

M.DeviceSubsetType = {
    Percentage = "PERCENTAGE",
    Selection = "SELECTION",
    NameContains = "NAMECONTAINS",
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

M.ProductionVariantAcceleratorType = {
    ML_EIA1_MEDIUM = "ml.eia1.medium",
    ML_EIA1_LARGE = "ml.eia1.large",
    ML_EIA1_XLARGE = "ml.eia1.xlarge",
    ML_EIA2_MEDIUM = "ml.eia2.medium",
    ML_EIA2_LARGE = "ml.eia2.large",
    ML_EIA2_XLARGE = "ml.eia2.xlarge",
}

M.ProductionVariantInferenceAmiVersion = {
    AL2_GPU_2 = "al2-ami-sagemaker-inference-gpu-2",
    AL2_GPU_2_1 = "al2-ami-sagemaker-inference-gpu-2-1",
    AL2_GPU_3_1 = "al2-ami-sagemaker-inference-gpu-3-1",
    AL2_NEURON_2 = "al2-ami-sagemaker-inference-neuron-2",
    AL2023_GPU_4_1 = "al2023-ami-sagemaker-inference-gpu-4-1",
}

M.ManagedInstanceScalingScaleInStrategy = {
    IDLE_RELEASE = "IDLE_RELEASE",
    CONSOLIDATION = "CONSOLIDATION",
}

M.ManagedInstanceScalingStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.RoutingStrategy = {
    LEAST_OUTSTANDING_REQUESTS = "LEAST_OUTSTANDING_REQUESTS",
    RANDOM = "RANDOM",
}

M.FeatureType = {
    INTEGRAL = "Integral",
    FRACTIONAL = "Fractional",
    STRING = "String",
}

M.TableFormat = {
    DEFAULT = "Default",
    GLUE = "Glue",
    ICEBERG = "Iceberg",
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

M.ThroughputMode = {
    ON_DEMAND = "OnDemand",
    PROVISIONED = "Provisioned",
}

M.HubContentType = {
    MODEL = "Model",
    NOTEBOOK = "Notebook",
    MODEL_REFERENCE = "ModelReference",
    DATA_SET = "DataSet",
    JSON_DOC = "JsonDoc",
}

M.HyperParameterTuningJobStrategyType = {
    BAYESIAN = "Bayesian",
    RANDOM = "Random",
    HYPERBAND = "Hyperband",
    GRID = "Grid",
}

M.TrainingJobEarlyStoppingType = {
    OFF = "Off",
    AUTO = "Auto",
}

M.HyperParameterTuningAllocationStrategy = {
    PRIORITIZED = "Prioritized",
}

M.HyperParameterTuningJobWarmStartType = {
    IDENTICAL_DATA_AND_ALGORITHM = "IdenticalDataAndAlgorithm",
    TRANSFER_LEARNING = "TransferLearning",
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

M.InferenceComponentPlacementStrategy = {
    SPREAD = "SPREAD",
    BINPACK = "BINPACK",
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

M.InferenceExperimentType = {
    SHADOW_MODE = "ShadowMode",
}

M.RecommendationJobSupportedEndpointType = {
    REALTIME = "RealTime",
    SERVERLESS = "Serverless",
}

M.TrafficType = {
    PHASES = "PHASES",
    STAIRS = "STAIRS",
}

M.RecommendationJobType = {
    DEFAULT = "Default",
    ADVANCED = "Advanced",
}

M.FlatInvocations = {
    CONTINUE = "Continue",
    STOP = "Stop",
}

M.ModelRegistrationMode = {
    AUTO_MODEL_REGISTRATION_ENABLED = "AutoModelRegistrationEnabled",
    AUTO_MODEL_REGISTRATION_DISABLED = "AutoModelRegistrationDisabled",
}

M.TrackingServerSize = {
    S = "Small",
    M = "Medium",
    L = "Large",
}

M.InferenceExecutionMode = {
    SERIAL = "Serial",
    DIRECT = "Direct",
}

M.ModelCardStatus = {
    DRAFT = "Draft",
    PENDINGREVIEW = "PendingReview",
    APPROVED = "Approved",
    ARCHIVED = "Archived",
}

M.SkipModelValidation = {
    ALL = "All",
    NONE = "None",
}

M.MonitoringProblemType = {
    BINARY_CLASSIFICATION = "BinaryClassification",
    MULTICLASS_CLASSIFICATION = "MulticlassClassification",
    REGRESSION = "Regression",
}

M.MonitoringType = {
    DATA_QUALITY = "DataQuality",
    MODEL_QUALITY = "ModelQuality",
    MODEL_BIAS = "ModelBias",
    MODEL_EXPLAINABILITY = "ModelExplainability",
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

M.RootAccess = {
    ENABLED = "Enabled",
    DISABLED = "Disabled",
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

M.ModelSpeculativeDecodingTechnique = {
    EAGLE = "EAGLE",
}

M.ModelSpeculativeDecodingS3DataType = {
    S3Prefix = "S3Prefix",
    ManifestFile = "ManifestFile",
}

M.PartnerAppAuthType = {
    IAM = "IAM",
}

M.PartnerAppType = {
    LAKERA_GUARD = "lakera-guard",
    COMET = "comet",
    DEEPCHECKS_LLM_EVALUATION = "deepchecks-llm-evaluation",
    FIDDLER = "fiddler",
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

M.ProcessingS3CompressionType = {
    NONE = "None",
    GZIP = "Gzip",
}

M.ProcessingS3DataType = {
    MANIFEST_FILE = "ManifestFile",
    S3_PREFIX = "S3Prefix",
}

M.SharingType = {
    Private = "Private",
    Shared = "Shared",
}

M.StudioLifecycleConfigAppType = {
    JupyterServer = "JupyterServer",
    KernelGateway = "KernelGateway",
    CodeEditor = "CodeEditor",
    JupyterLab = "JupyterLab",
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

M.JoinSource = {
    INPUT = "Input",
    NONE = "None",
}

M.TrialComponentPrimaryStatus = {
    IN_PROGRESS = "InProgress",
    COMPLETED = "Completed",
    FAILED = "Failed",
    STOPPING = "Stopping",
    STOPPED = "Stopped",
}

M.WorkforceIpAddressType = {
    ipv4 = "ipv4",
    dualstack = "dualstack",
}

M.EnabledOrDisabled = {
    Enabled = "Enabled",
    Disabled = "Disabled",
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

M.RuleEvaluationStatus = {
    IN_PROGRESS = "InProgress",
    NO_ISSUES_FOUND = "NoIssuesFound",
    ISSUES_FOUND = "IssuesFound",
    ERROR = "Error",
    STOPPING = "Stopping",
    STOPPED = "Stopped",
}

M.RetentionType = {
    Retain = "Retain",
    Delete = "Delete",
}

M.RecommendationStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
    NOT_APPLICABLE = "NOT_APPLICABLE",
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

M.SchedulerConfigComponent = {
    PRIORITY_CLASSES = "PriorityClasses",
    FAIR_SHARE = "FairShare",
    IDLE_RESOURCE_SHARING = "IdleResourceSharing",
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

M.VariantStatus = {
    CREATING = "Creating",
    UPDATING = "Updating",
    DELETING = "Deleting",
    ACTIVATING_TRAFFIC = "ActivatingTraffic",
    BAKING = "Baking",
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

M.OfflineStoreStatusValue = {
    ACTIVE = "Active",
    BLOCKED = "Blocked",
    DISABLED = "Disabled",
}

M.FlowDefinitionStatus = {
    INITIALIZING = "Initializing",
    ACTIVE = "Active",
    FAILED = "Failed",
    DELETING = "Deleting",
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

M.HumanTaskUiStatus = {
    ACTIVE = "Active",
    DELETING = "Deleting",
}

M.TrainingJobStatus = {
    IN_PROGRESS = "InProgress",
    COMPLETED = "Completed",
    FAILED = "Failed",
    STOPPING = "Stopping",
    STOPPED = "Stopped",
    DELETING = "Deleting",
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

M.ImageStatus = {
    CREATING = "CREATING",
    CREATED = "CREATED",
    CREATE_FAILED = "CREATE_FAILED",
    UPDATING = "UPDATING",
    UPDATE_FAILED = "UPDATE_FAILED",
    DELETING = "DELETING",
    DELETE_FAILED = "DELETE_FAILED",
}

M.ImageVersionStatus = {
    CREATING = "CREATING",
    CREATED = "CREATED",
    CREATE_FAILED = "CREATE_FAILED",
    DELETING = "DELETING",
    DELETE_FAILED = "DELETE_FAILED",
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

M.ModelVariantStatus = {
    CREATING = "Creating",
    UPDATING = "Updating",
    IN_SERVICE = "InService",
    DELETING = "Deleting",
    DELETED = "Deleted",
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

M.LabelingJobStatus = {
    INITIALIZING = "Initializing",
    IN_PROGRESS = "InProgress",
    COMPLETED = "Completed",
    FAILED = "Failed",
    STOPPING = "Stopping",
    STOPPED = "Stopped",
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

M.ModelCardProcessingStatus = {
    DELETE_INPROGRESS = "DeleteInProgress",
    DELETE_PENDING = "DeletePending",
    CONTENT_DELETED = "ContentDeleted",
    EXPORTJOBS_DELETED = "ExportJobsDeleted",
    DELETE_COMPLETED = "DeleteCompleted",
    DELETE_FAILED = "DeleteFailed",
}

M.ModelCardExportJobStatus = {
    IN_PROGRESS = "InProgress",
    COMPLETED = "Completed",
    FAILED = "Failed",
}

M.DetailedModelPackageStatus = {
    NOT_STARTED = "NotStarted",
    IN_PROGRESS = "InProgress",
    COMPLETED = "Completed",
    FAILED = "Failed",
}

M.ModelPackageGroupStatus = {
    PENDING = "Pending",
    IN_PROGRESS = "InProgress",
    COMPLETED = "Completed",
    FAILED = "Failed",
    DELETING = "Deleting",
    DELETE_FAILED = "DeleteFailed",
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

M.ScheduleStatus = {
    PENDING = "Pending",
    FAILED = "Failed",
    SCHEDULED = "Scheduled",
    STOPPED = "Stopped",
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

M.OptimizationJobStatus = {
    INPROGRESS = "INPROGRESS",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
    STARTING = "STARTING",
    STOPPING = "STOPPING",
    STOPPED = "STOPPED",
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

M.PipelineStatus = {
    ACTIVE = "Active",
    DELETING = "Deleting",
}

M.PipelineExecutionStatus = {
    EXECUTING = "Executing",
    STOPPING = "Stopping",
    STOPPED = "Stopped",
    FAILED = "Failed",
    SUCCEEDED = "Succeeded",
}

M.ProcessingJobStatus = {
    IN_PROGRESS = "InProgress",
    COMPLETED = "Completed",
    FAILED = "Failed",
    STOPPING = "Stopping",
    STOPPED = "Stopped",
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

M.SpaceStatus = {
    Deleting = "Deleting",
    Failed = "Failed",
    InService = "InService",
    Pending = "Pending",
    Updating = "Updating",
    Update_Failed = "Update_Failed",
    Delete_Failed = "Delete_Failed",
}

M.ProfilingStatus = {
    ENABLED = "Enabled",
    DISABLED = "Disabled",
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

M.WarmPoolResourceStatus = {
    AVAILABLE = "Available",
    TERMINATED = "Terminated",
    REUSED = "Reused",
    INUSE = "InUse",
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

M.TransformJobStatus = {
    IN_PROGRESS = "InProgress",
    COMPLETED = "Completed",
    FAILED = "Failed",
    STOPPING = "Stopping",
    STOPPED = "Stopped",
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

M.WorkforceStatus = {
    INITIALIZING = "Initializing",
    UPDATING = "Updating",
    DELETING = "Deleting",
    FAILED = "Failed",
    ACTIVE = "Active",
}

M.DeviceDeploymentStatus = {
    ReadyToDeploy = "READYTODEPLOY",
    InProgress = "INPROGRESS",
    Deployed = "DEPLOYED",
    Failed = "FAILED",
    Stopping = "STOPPING",
    Stopped = "STOPPED",
}

M.Direction = {
    BOTH = "Both",
    ASCENDANTS = "Ascendants",
    DESCENDANTS = "Descendants",
}

M.EndpointConfigSortKey = {
    Name = "Name",
    CreationTime = "CreationTime",
}

M.EndpointSortKey = {
    Name = "Name",
    CreationTime = "CreationTime",
    Status = "Status",
}

M.EventSortBy = {
    EVENT_TIME = "EventTime",
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

M.SagemakerServicecatalogStatus = {
    ENABLED = "Enabled",
    DISABLED = "Disabled",
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

M.HubContentSortBy = {
    HUB_CONTENT_NAME = "HubContentName",
    CREATION_TIME = "CreationTime",
    HUB_CONTENT_STATUS = "HubContentStatus",
}

M.HubSortBy = {
    HUB_NAME = "HubName",
    CREATION_TIME = "CreationTime",
    HUB_STATUS = "HubStatus",
    ACCOUNT_ID_OWNER = "AccountIdOwner",
}

M.HyperParameterTuningJobSortByOptions = {
    Name = "Name",
    Status = "Status",
    CreationTime = "CreationTime",
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

M.ImageVersionSortBy = {
    CREATION_TIME = "CREATION_TIME",
    LAST_MODIFIED_TIME = "LAST_MODIFIED_TIME",
    VERSION = "VERSION",
}

M.ImageVersionSortOrder = {
    ASCENDING = "ASCENDING",
    DESCENDING = "DESCENDING",
}

M.InferenceComponentSortKey = {
    Name = "Name",
    CreationTime = "CreationTime",
    Status = "Status",
}

M.InferenceExperimentStopDesiredState = {
    COMPLETED = "Completed",
    CANCELLED = "Cancelled",
}

M.RecommendationStepType = {
    BENCHMARK = "BENCHMARK",
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

M.ListAIBenchmarkJobsSortBy = {
    NAME = "Name",
    CREATION_TIME = "CreationTime",
    STATUS = "Status",
}

M.ListAIRecommendationJobsSortBy = {
    NAME = "Name",
    CREATION_TIME = "CreationTime",
    STATUS = "Status",
}

M.ListAIWorkloadConfigsSortBy = {
    NAME = "Name",
    CREATION_TIME = "CreationTime",
}

M.SortArtifactsBy = {
    CREATION_TIME = "CreationTime",
}

M.SortAssociationsBy = {
    SOURCE_ARN = "SourceArn",
    DESTINATION_ARN = "DestinationArn",
    SOURCE_TYPE = "SourceType",
    DESTINATION_TYPE = "DestinationType",
    CREATION_TIME = "CreationTime",
}

M.SortClusterSchedulerConfigBy = {
    NAME = "Name",
    CREATION_TIME = "CreationTime",
    STATUS = "Status",
}

M.ListCompilationJobsSortBy = {
    NAME = "Name",
    CREATION_TIME = "CreationTime",
    STATUS = "Status",
}

M.SortQuotaBy = {
    NAME = "Name",
    CREATION_TIME = "CreationTime",
    STATUS = "Status",
    CLUSTER_ARN = "ClusterArn",
}

M.SortContextsBy = {
    NAME = "Name",
    CREATION_TIME = "CreationTime",
}

M.MonitoringJobDefinitionSortKey = {
    NAME = "Name",
    CREATION_TIME = "CreationTime",
}

M.ListDeviceFleetsSortBy = {
    Name = "NAME",
    CreationTime = "CREATION_TIME",
    LastModifiedTime = "LAST_MODIFIED_TIME",
}

M.ListEdgeDeploymentPlansSortBy = {
    Name = "NAME",
    DeviceFleetName = "DEVICE_FLEET_NAME",
    CreationTime = "CREATION_TIME",
    LastModifiedTime = "LAST_MODIFIED_TIME",
}

M.ListEdgePackagingJobsSortBy = {
    Name = "NAME",
    ModelName = "MODEL_NAME",
    CreationTime = "CREATION_TIME",
    LastModifiedTime = "LAST_MODIFIED_TIME",
    EdgePackagingJobStatus = "STATUS",
}

M.OrderKey = {
    Ascending = "Ascending",
    Descending = "Descending",
}

M.SortExperimentsBy = {
    NAME = "Name",
    CREATION_TIME = "CreationTime",
}

M.SortInferenceExperimentsBy = {
    NAME = "Name",
    CREATION_TIME = "CreationTime",
    STATUS = "Status",
}

M.ListInferenceRecommendationsJobsSortBy = {
    NAME = "Name",
    CREATION_TIME = "CreationTime",
    STATUS = "Status",
}

M.SortBy = {
    NAME = "Name",
    CREATION_TIME = "CreationTime",
    STATUS = "Status",
}

M.ListLabelingJobsForWorkteamSortByOptions = {
    CREATION_TIME = "CreationTime",
}

M.SortLineageGroupsBy = {
    NAME = "Name",
    CREATION_TIME = "CreationTime",
}

M.SortMlflowAppBy = {
    NAME = "Name",
    CREATION_TIME = "CreationTime",
    STATUS = "Status",
}

M.SortTrackingServerBy = {
    NAME = "Name",
    CREATION_TIME = "CreationTime",
    STATUS = "Status",
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

M.ModelCardSortBy = {
    NAME = "Name",
    CREATION_TIME = "CreationTime",
}

M.ModelCardSortOrder = {
    ASCENDING = "Ascending",
    DESCENDING = "Descending",
}

M.ModelCardVersionSortBy = {
    VERSION = "Version",
}

M.ModelMetadataFilterType = {
    DOMAIN = "Domain",
    FRAMEWORK = "Framework",
    TASK = "Task",
    FRAMEWORKVERSION = "FrameworkVersion",
}

M.ModelPackageGroupSortBy = {
    NAME = "Name",
    CREATION_TIME = "CreationTime",
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

M.ModelSortKey = {
    Name = "Name",
    CreationTime = "CreationTime",
}

M.MonitoringAlertHistorySortKey = {
    CreationTime = "CreationTime",
    Status = "Status",
}

M.MonitoringAlertStatus = {
    IN_ALERT = "InAlert",
    OK = "OK",
}

M.MonitoringExecutionSortKey = {
    CREATION_TIME = "CreationTime",
    SCHEDULED_TIME = "ScheduledTime",
    STATUS = "Status",
}

M.MonitoringScheduleSortKey = {
    NAME = "Name",
    CREATION_TIME = "CreationTime",
    STATUS = "Status",
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

M.NotebookInstanceSortKey = {
    NAME = "Name",
    CREATION_TIME = "CreationTime",
    STATUS = "Status",
}

M.NotebookInstanceSortOrder = {
    ASCENDING = "Ascending",
    DESCENDING = "Descending",
}

M.ListOptimizationJobsSortBy = {
    NAME = "Name",
    CREATION_TIME = "CreationTime",
    STATUS = "Status",
}

M.SortPipelineExecutionsBy = {
    CREATION_TIME = "CreationTime",
    PIPELINE_EXECUTION_ARN = "PipelineExecutionArn",
}

M.StepStatus = {
    STARTING = "Starting",
    EXECUTING = "Executing",
    STOPPING = "Stopping",
    STOPPED = "Stopped",
    FAILED = "Failed",
    SUCCEEDED = "Succeeded",
}

M.SortPipelinesBy = {
    NAME = "Name",
    CREATION_TIME = "CreationTime",
}

M.ProjectSortBy = {
    NAME = "Name",
    CREATION_TIME = "CreationTime",
}

M.ProjectSortOrder = {
    ASCENDING = "Ascending",
    DESCENDING = "Descending",
}

M.ResourceCatalogSortBy = {
    CREATION_TIME = "CreationTime",
}

M.ResourceCatalogSortOrder = {
    ASCENDING = "Ascending",
    DESCENDING = "Descending",
}

M.SpaceSortKey = {
    CreationTime = "CreationTime",
    LastModifiedTime = "LastModifiedTime",
}

M.StudioLifecycleConfigSortKey = {
    CreationTime = "CreationTime",
    LastModifiedTime = "LastModifiedTime",
    Name = "Name",
}

M.TrainingJobSortByOptions = {
    Name = "Name",
    CreationTime = "CreationTime",
    Status = "Status",
    FinalObjectiveMetricValue = "FinalObjectiveMetricValue",
}

M.TrainingPlanFilterName = {
    STATUS = "Status",
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

M.SortTrialComponentsBy = {
    NAME = "Name",
    CREATION_TIME = "CreationTime",
}

M.SortTrialsBy = {
    NAME = "Name",
    CREATION_TIME = "CreationTime",
}

M.UltraServerHealthStatus = {
    OK = "OK",
    IMPAIRED = "Impaired",
    INSUFFICIENT_DATA = "Insufficient-Data",
}

M.UserProfileSortKey = {
    CreationTime = "CreationTime",
    LastModifiedTime = "LastModifiedTime",
}

M.ListWorkforcesSortByOptions = {
    Name = "Name",
    CreateDate = "CreateDate",
}

M.ListWorkteamsSortByOptions = {
    Name = "Name",
    CreateDate = "CreateDate",
}

M.ModelVariantAction = {
    RETAIN = "Retain",
    REMOVE = "Remove",
    PROMOTE = "Promote",
}

M.Relation = {
    EQUAL_TO = "EqualTo",
    GREATER_THAN_OR_EQUAL_TO = "GreaterThanOrEqualTo",
}

M.SearchSortOrder = {
    ASCENDING = "Ascending",
    DESCENDING = "Descending",
}

M.VariantPropertyType = {
    DesiredInstanceCount = "DesiredInstanceCount",
    DesiredWeight = "DesiredWeight",
    DataCaptureConfig = "DataCaptureConfig",
}

return M
