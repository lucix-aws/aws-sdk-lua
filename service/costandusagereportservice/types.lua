local M = {}

M.AdditionalArtifact = {
    REDSHIFT = "REDSHIFT",
    QUICKSIGHT = "QUICKSIGHT",
    ATHENA = "ATHENA",
}

M.SchemaElement = {
    RESOURCES = "RESOURCES",
    SPLIT_COST_ALLOCATION_DATA = "SPLIT_COST_ALLOCATION_DATA",
    MANUAL_DISCOUNT_COMPATIBILITY = "MANUAL_DISCOUNT_COMPATIBILITY",
}

M.CompressionFormat = {
    ZIP = "ZIP",
    GZIP = "GZIP",
    Parquet = "Parquet",
}

M.ReportFormat = {
    CSV = "textORcsv",
    Parquet = "Parquet",
}

M.LastStatus = {
    SUCCESS = "SUCCESS",
    ERROR_PERMISSIONS = "ERROR_PERMISSIONS",
    ERROR_NO_BUCKET = "ERROR_NO_BUCKET",
}

M.ReportVersioning = {
    CREATE_NEW_REPORT = "CREATE_NEW_REPORT",
    OVERWRITE_REPORT = "OVERWRITE_REPORT",
}

M.AWSRegion = {
    CAPE_TOWN = "af-south-1",
    HONG_KONG = "ap-east-1",
    MUMBAI = "ap-south-1",
    HYDERABAD = "ap-south-2",
    SINGAPORE = "ap-southeast-1",
    SYDNEY = "ap-southeast-2",
    JAKARTA = "ap-southeast-3",
    TOKYO = "ap-northeast-1",
    SEOUL = "ap-northeast-2",
    OSAKA = "ap-northeast-3",
    CANADA_CENTRAL = "ca-central-1",
    FRANKFURT = "eu-central-1",
    ZURICH = "eu-central-2",
    IRELAND = "eu-west-1",
    LONDON = "eu-west-2",
    PARIS = "eu-west-3",
    STOCKHOLM = "eu-north-1",
    MILANO = "eu-south-1",
    SPAIN = "eu-south-2",
    UAE = "me-central-1",
    BAHRAIN = "me-south-1",
    SAO_PAULO = "sa-east-1",
    US_STANDARD = "us-east-1",
    OHIO = "us-east-2",
    NORTHERN_CALIFORNIA = "us-west-1",
    OREGON = "us-west-2",
    BEIJING = "cn-north-1",
    NINGXIA = "cn-northwest-1",
}

M.TimeUnit = {
    HOURLY = "HOURLY",
    DAILY = "DAILY",
    MONTHLY = "MONTHLY",
}

return M
