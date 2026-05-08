

local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.athena"

local M = {}

M.NamedQueryIdList = schema.new({ type = "list", list_member = prelude.String })

M.NamedQueryList = schema.new({ type = "list", list_member = M.NamedQuery })

M.UnprocessedNamedQueryIdList = schema.new({ type = "list", list_member = M.UnprocessedNamedQueryId })

M.PreparedStatementNameList = schema.new({ type = "list", list_member = prelude.String })

M.PreparedStatementDetailsList = schema.new({ type = "list", list_member = M.PreparedStatement })

M.UnprocessedPreparedStatementNameList = schema.new({ type = "list", list_member = M.UnprocessedPreparedStatementName })

M.QueryExecutionIdList = schema.new({ type = "list", list_member = prelude.String })

M.QueryExecutionList = schema.new({ type = "list", list_member = M.QueryExecution })

M.UnprocessedQueryExecutionIdList = schema.new({ type = "list", list_member = M.UnprocessedQueryExecutionId })

M.TagList = schema.new({ type = "list", list_member = M.Tag })

M.ParametersMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.ApplicationDPUSizesList = schema.new({ type = "list", list_member = M.ApplicationDPUSizes })

M.CalculationsList = schema.new({ type = "list", list_member = M.CalculationSummary })

M.CapacityReservationsList = schema.new({ type = "list", list_member = M.CapacityReservation })

M.DatabaseList = schema.new({ type = "list", list_member = M.Database })

M.DataCatalogSummaryList = schema.new({ type = "list", list_member = M.DataCatalogSummary })

M.EngineVersionsList = schema.new({ type = "list", list_member = M.EngineVersion })

M.ExecutorsSummaryList = schema.new({ type = "list", list_member = M.ExecutorsSummary })

M.NotebookMetadataArray = schema.new({ type = "list", list_member = M.NotebookMetadata })

M.NotebookSessionsList = schema.new({ type = "list", list_member = M.NotebookSessionSummary })

M.PreparedStatementsList = schema.new({ type = "list", list_member = M.PreparedStatementSummary })

M.SessionsList = schema.new({ type = "list", list_member = M.SessionSummary })

M.TableMetadataList = schema.new({ type = "list", list_member = M.TableMetadata })

M.WorkGroupsList = schema.new({ type = "list", list_member = M.WorkGroupSummary })

M.CapacityAssignmentsList = schema.new({ type = "list", list_member = M.CapacityAssignment })

M.ExecutionParameters = schema.new({ type = "list", list_member = prelude.String })

M.TagKeyList = schema.new({ type = "list", list_member = prelude.String })

M.RowList = schema.new({ type = "list", list_member = M.Row })

M.ClassificationList = schema.new({ type = "list", list_member = M.Classification })

M.ColumnList = schema.new({ type = "list", list_member = M.Column })

M.ColumnInfoList = schema.new({ type = "list", list_member = M.ColumnInfo })

M.QueryStages = schema.new({ type = "list", list_member = M.QueryStage })

M.LogTypesMap = schema.new({ type = "map", map_key = prelude.String, map_value = M.LogTypeValuesList })

M.SupportedDPUSizeList = schema.new({ type = "list", list_member = prelude.Integer })

M.WorkGroupNamesList = schema.new({ type = "list", list_member = prelude.String })

M.datumList = schema.new({ type = "list", list_member = M.Datum })

M.QueryStagePlanNodes = schema.new({ type = "list", list_member = M.QueryStagePlanNode })

M.StringList = schema.new({ type = "list", list_member = prelude.String })

M.LogTypeValuesList = schema.new({ type = "list", list_member = prelude.String })

M.AclConfiguration = schema.new({
   id = id.from(_N, "AclConfiguration"),
   type = "structure",
   members = {
      S3AclOption = schema.new({
         id = id.from(_N, "AclConfiguration", "S3AclOption"),
         type = "string",
         name = "S3AclOption",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.BatchGetNamedQueryInput = schema.new({
   id = id.from(_N, "BatchGetNamedQueryInput"),
   type = "structure",
   members = {
      NamedQueryIds = schema.new({
         id = id.from(_N, "BatchGetNamedQueryInput", "NamedQueryIds"),
         type = "list",
         name = "NamedQueryIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.NamedQuery = schema.new({
   id = id.from(_N, "NamedQuery"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "NamedQuery", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Description = schema.new({
         id = id.from(_N, "NamedQuery", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      Database = schema.new({
         id = id.from(_N, "NamedQuery", "Database"),
         type = "string",
         name = "Database",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      QueryString = schema.new({
         id = id.from(_N, "NamedQuery", "QueryString"),
         type = "string",
         name = "QueryString",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      NamedQueryId = schema.new({
         id = id.from(_N, "NamedQuery", "NamedQueryId"),
         type = "string",
         name = "NamedQueryId",
         target_id = prelude.String.id,
      }),
      WorkGroup = schema.new({
         id = id.from(_N, "NamedQuery", "WorkGroup"),
         type = "string",
         name = "WorkGroup",
         target_id = prelude.String.id,
      }),
   },
})

M.UnprocessedNamedQueryId = schema.new({
   id = id.from(_N, "UnprocessedNamedQueryId"),
   type = "structure",
   members = {
      NamedQueryId = schema.new({
         id = id.from(_N, "UnprocessedNamedQueryId", "NamedQueryId"),
         type = "string",
         name = "NamedQueryId",
         target_id = prelude.String.id,
      }),
      ErrorCode = schema.new({
         id = id.from(_N, "UnprocessedNamedQueryId", "ErrorCode"),
         type = "string",
         name = "ErrorCode",
         target_id = prelude.String.id,
      }),
      ErrorMessage = schema.new({
         id = id.from(_N, "UnprocessedNamedQueryId", "ErrorMessage"),
         type = "string",
         name = "ErrorMessage",
         target_id = prelude.String.id,
      }),
   },
})

M.BatchGetNamedQueryOutput = schema.new({
   id = id.from(_N, "BatchGetNamedQueryOutput"),
   type = "structure",
   members = {
      NamedQueries = schema.new({
         id = id.from(_N, "BatchGetNamedQueryOutput", "NamedQueries"),
         type = "list",
         name = "NamedQueries",
         target_id = prelude.Document.id,
         list_member = M.NamedQuery,
      }),
      UnprocessedNamedQueryIds = schema.new({
         id = id.from(_N, "BatchGetNamedQueryOutput", "UnprocessedNamedQueryIds"),
         type = "list",
         name = "UnprocessedNamedQueryIds",
         target_id = prelude.Document.id,
         list_member = M.UnprocessedNamedQueryId,
      }),
   },
})

M.InternalServerException = schema.new({
   id = id.from(_N, "InternalServerException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "server" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "InternalServerException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.InvalidRequestException = schema.new({
   id = id.from(_N, "InvalidRequestException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      AthenaErrorCode = schema.new({
         id = id.from(_N, "InvalidRequestException", "AthenaErrorCode"),
         type = "string",
         name = "AthenaErrorCode",
         target_id = prelude.String.id,
      }),
      Message = schema.new({
         id = id.from(_N, "InvalidRequestException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.BatchGetPreparedStatementInput = schema.new({
   id = id.from(_N, "BatchGetPreparedStatementInput"),
   type = "structure",
   members = {
      PreparedStatementNames = schema.new({
         id = id.from(_N, "BatchGetPreparedStatementInput", "PreparedStatementNames"),
         type = "list",
         name = "PreparedStatementNames",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      WorkGroup = schema.new({
         id = id.from(_N, "BatchGetPreparedStatementInput", "WorkGroup"),
         type = "string",
         name = "WorkGroup",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.PreparedStatement = schema.new({
   id = id.from(_N, "PreparedStatement"),
   type = "structure",
   members = {
      StatementName = schema.new({
         id = id.from(_N, "PreparedStatement", "StatementName"),
         type = "string",
         name = "StatementName",
         target_id = prelude.String.id,
      }),
      QueryStatement = schema.new({
         id = id.from(_N, "PreparedStatement", "QueryStatement"),
         type = "string",
         name = "QueryStatement",
         target_id = prelude.String.id,
      }),
      WorkGroupName = schema.new({
         id = id.from(_N, "PreparedStatement", "WorkGroupName"),
         type = "string",
         name = "WorkGroupName",
         target_id = prelude.String.id,
      }),
      Description = schema.new({
         id = id.from(_N, "PreparedStatement", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      LastModifiedTime = schema.new({
         id = id.from(_N, "PreparedStatement", "LastModifiedTime"),
         type = "timestamp",
         name = "LastModifiedTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.UnprocessedPreparedStatementName = schema.new({
   id = id.from(_N, "UnprocessedPreparedStatementName"),
   type = "structure",
   members = {
      StatementName = schema.new({
         id = id.from(_N, "UnprocessedPreparedStatementName", "StatementName"),
         type = "string",
         name = "StatementName",
         target_id = prelude.String.id,
      }),
      ErrorCode = schema.new({
         id = id.from(_N, "UnprocessedPreparedStatementName", "ErrorCode"),
         type = "string",
         name = "ErrorCode",
         target_id = prelude.String.id,
      }),
      ErrorMessage = schema.new({
         id = id.from(_N, "UnprocessedPreparedStatementName", "ErrorMessage"),
         type = "string",
         name = "ErrorMessage",
         target_id = prelude.String.id,
      }),
   },
})

M.BatchGetPreparedStatementOutput = schema.new({
   id = id.from(_N, "BatchGetPreparedStatementOutput"),
   type = "structure",
   members = {
      PreparedStatements = schema.new({
         id = id.from(_N, "BatchGetPreparedStatementOutput", "PreparedStatements"),
         type = "list",
         name = "PreparedStatements",
         target_id = prelude.Document.id,
         list_member = M.PreparedStatement,
      }),
      UnprocessedPreparedStatementNames = schema.new({
         id = id.from(_N, "BatchGetPreparedStatementOutput", "UnprocessedPreparedStatementNames"),
         type = "list",
         name = "UnprocessedPreparedStatementNames",
         target_id = prelude.Document.id,
         list_member = M.UnprocessedPreparedStatementName,
      }),
   },
})

M.BatchGetQueryExecutionInput = schema.new({
   id = id.from(_N, "BatchGetQueryExecutionInput"),
   type = "structure",
   members = {
      QueryExecutionIds = schema.new({
         id = id.from(_N, "BatchGetQueryExecutionInput", "QueryExecutionIds"),
         type = "list",
         name = "QueryExecutionIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.EngineVersion = schema.new({
   id = id.from(_N, "EngineVersion"),
   type = "structure",
   members = {
      SelectedEngineVersion = schema.new({
         id = id.from(_N, "EngineVersion", "SelectedEngineVersion"),
         type = "string",
         name = "SelectedEngineVersion",
         target_id = prelude.String.id,
      }),
      EffectiveEngineVersion = schema.new({
         id = id.from(_N, "EngineVersion", "EffectiveEngineVersion"),
         type = "string",
         name = "EffectiveEngineVersion",
         target_id = prelude.String.id,
      }),
   },
})

M.ManagedQueryResultsEncryptionConfiguration = schema.new({
   id = id.from(_N, "ManagedQueryResultsEncryptionConfiguration"),
   type = "structure",
   members = {
      KmsKey = schema.new({
         id = id.from(_N, "ManagedQueryResultsEncryptionConfiguration", "KmsKey"),
         type = "string",
         name = "KmsKey",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ManagedQueryResultsConfiguration = schema.new({
   id = id.from(_N, "ManagedQueryResultsConfiguration"),
   type = "structure",
   members = {
      Enabled = schema.new({
         id = id.from(_N, "ManagedQueryResultsConfiguration", "Enabled"),
         type = "boolean",
         name = "Enabled",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = false },
         },
      }),
      EncryptionConfiguration = schema.new({
         id = id.from(_N, "ManagedQueryResultsConfiguration", "EncryptionConfiguration"),
         type = "structure",
         name = "EncryptionConfiguration",
         target_id = id.from(_N, "ManagedQueryResultsEncryptionConfiguration"),
         target = M.ManagedQueryResultsEncryptionConfiguration,
      }),
   },
})

M.QueryExecutionContext = schema.new({
   id = id.from(_N, "QueryExecutionContext"),
   type = "structure",
   members = {
      Database = schema.new({
         id = id.from(_N, "QueryExecutionContext", "Database"),
         type = "string",
         name = "Database",
         target_id = prelude.String.id,
      }),
      Catalog = schema.new({
         id = id.from(_N, "QueryExecutionContext", "Catalog"),
         type = "string",
         name = "Catalog",
         target_id = prelude.String.id,
      }),
   },
})

M.QueryResultsS3AccessGrantsConfiguration = schema.new({
   id = id.from(_N, "QueryResultsS3AccessGrantsConfiguration"),
   type = "structure",
   members = {
      EnableS3AccessGrants = schema.new({
         id = id.from(_N, "QueryResultsS3AccessGrantsConfiguration", "EnableS3AccessGrants"),
         type = "boolean",
         name = "EnableS3AccessGrants",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      CreateUserLevelPrefix = schema.new({
         id = id.from(_N, "QueryResultsS3AccessGrantsConfiguration", "CreateUserLevelPrefix"),
         type = "boolean",
         name = "CreateUserLevelPrefix",
         target_id = prelude.Boolean.id,
      }),
      AuthenticationType = schema.new({
         id = id.from(_N, "QueryResultsS3AccessGrantsConfiguration", "AuthenticationType"),
         type = "string",
         name = "AuthenticationType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.EncryptionConfiguration = schema.new({
   id = id.from(_N, "EncryptionConfiguration"),
   type = "structure",
   members = {
      EncryptionOption = schema.new({
         id = id.from(_N, "EncryptionConfiguration", "EncryptionOption"),
         type = "string",
         name = "EncryptionOption",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      KmsKey = schema.new({
         id = id.from(_N, "EncryptionConfiguration", "KmsKey"),
         type = "string",
         name = "KmsKey",
         target_id = prelude.String.id,
      }),
   },
})

M.ResultConfiguration = schema.new({
   id = id.from(_N, "ResultConfiguration"),
   type = "structure",
   members = {
      OutputLocation = schema.new({
         id = id.from(_N, "ResultConfiguration", "OutputLocation"),
         type = "string",
         name = "OutputLocation",
         target_id = prelude.String.id,
      }),
      EncryptionConfiguration = schema.new({
         id = id.from(_N, "ResultConfiguration", "EncryptionConfiguration"),
         type = "structure",
         name = "EncryptionConfiguration",
         target_id = id.from(_N, "EncryptionConfiguration"),
         target = M.EncryptionConfiguration,
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "ResultConfiguration", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
      }),
      AclConfiguration = schema.new({
         id = id.from(_N, "ResultConfiguration", "AclConfiguration"),
         type = "structure",
         name = "AclConfiguration",
         target_id = id.from(_N, "AclConfiguration"),
         target = M.AclConfiguration,
      }),
   },
})

M.ResultReuseByAgeConfiguration = schema.new({
   id = id.from(_N, "ResultReuseByAgeConfiguration"),
   type = "structure",
   members = {
      Enabled = schema.new({
         id = id.from(_N, "ResultReuseByAgeConfiguration", "Enabled"),
         type = "boolean",
         name = "Enabled",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = false },
         },
      }),
      MaxAgeInMinutes = schema.new({
         id = id.from(_N, "ResultReuseByAgeConfiguration", "MaxAgeInMinutes"),
         type = "integer",
         name = "MaxAgeInMinutes",
         target_id = prelude.Integer.id,
      }),
   },
})

M.ResultReuseConfiguration = schema.new({
   id = id.from(_N, "ResultReuseConfiguration"),
   type = "structure",
   members = {
      ResultReuseByAgeConfiguration = schema.new({
         id = id.from(_N, "ResultReuseConfiguration", "ResultReuseByAgeConfiguration"),
         type = "structure",
         name = "ResultReuseByAgeConfiguration",
         target_id = id.from(_N, "ResultReuseByAgeConfiguration"),
         target = M.ResultReuseByAgeConfiguration,
      }),
   },
})

M.ResultReuseInformation = schema.new({
   id = id.from(_N, "ResultReuseInformation"),
   type = "structure",
   members = {
      ReusedPreviousResult = schema.new({
         id = id.from(_N, "ResultReuseInformation", "ReusedPreviousResult"),
         type = "boolean",
         name = "ReusedPreviousResult",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = false },
         },
      }),
   },
})

M.QueryExecutionStatistics = schema.new({
   id = id.from(_N, "QueryExecutionStatistics"),
   type = "structure",
   members = {
      EngineExecutionTimeInMillis = schema.new({
         id = id.from(_N, "QueryExecutionStatistics", "EngineExecutionTimeInMillis"),
         type = "long",
         name = "EngineExecutionTimeInMillis",
         target_id = prelude.Long.id,
      }),
      DataScannedInBytes = schema.new({
         id = id.from(_N, "QueryExecutionStatistics", "DataScannedInBytes"),
         type = "long",
         name = "DataScannedInBytes",
         target_id = prelude.Long.id,
      }),
      DataManifestLocation = schema.new({
         id = id.from(_N, "QueryExecutionStatistics", "DataManifestLocation"),
         type = "string",
         name = "DataManifestLocation",
         target_id = prelude.String.id,
      }),
      TotalExecutionTimeInMillis = schema.new({
         id = id.from(_N, "QueryExecutionStatistics", "TotalExecutionTimeInMillis"),
         type = "long",
         name = "TotalExecutionTimeInMillis",
         target_id = prelude.Long.id,
      }),
      QueryQueueTimeInMillis = schema.new({
         id = id.from(_N, "QueryExecutionStatistics", "QueryQueueTimeInMillis"),
         type = "long",
         name = "QueryQueueTimeInMillis",
         target_id = prelude.Long.id,
      }),
      ServicePreProcessingTimeInMillis = schema.new({
         id = id.from(_N, "QueryExecutionStatistics", "ServicePreProcessingTimeInMillis"),
         type = "long",
         name = "ServicePreProcessingTimeInMillis",
         target_id = prelude.Long.id,
      }),
      QueryPlanningTimeInMillis = schema.new({
         id = id.from(_N, "QueryExecutionStatistics", "QueryPlanningTimeInMillis"),
         type = "long",
         name = "QueryPlanningTimeInMillis",
         target_id = prelude.Long.id,
      }),
      ServiceProcessingTimeInMillis = schema.new({
         id = id.from(_N, "QueryExecutionStatistics", "ServiceProcessingTimeInMillis"),
         type = "long",
         name = "ServiceProcessingTimeInMillis",
         target_id = prelude.Long.id,
      }),
      ResultReuseInformation = schema.new({
         id = id.from(_N, "QueryExecutionStatistics", "ResultReuseInformation"),
         type = "structure",
         name = "ResultReuseInformation",
         target_id = id.from(_N, "ResultReuseInformation"),
         target = M.ResultReuseInformation,
      }),
      DpuCount = schema.new({
         id = id.from(_N, "QueryExecutionStatistics", "DpuCount"),
         type = "double",
         name = "DpuCount",
         target_id = prelude.Double.id,
      }),
   },
})

M.AthenaError = schema.new({
   id = id.from(_N, "AthenaError"),
   type = "structure",
   members = {
      ErrorCategory = schema.new({
         id = id.from(_N, "AthenaError", "ErrorCategory"),
         type = "integer",
         name = "ErrorCategory",
         target_id = prelude.Integer.id,
      }),
      ErrorType = schema.new({
         id = id.from(_N, "AthenaError", "ErrorType"),
         type = "integer",
         name = "ErrorType",
         target_id = prelude.Integer.id,
      }),
      Retryable = schema.new({
         id = id.from(_N, "AthenaError", "Retryable"),
         type = "boolean",
         name = "Retryable",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      ErrorMessage = schema.new({
         id = id.from(_N, "AthenaError", "ErrorMessage"),
         type = "string",
         name = "ErrorMessage",
         target_id = prelude.String.id,
      }),
   },
})

M.QueryExecutionStatus = schema.new({
   id = id.from(_N, "QueryExecutionStatus"),
   type = "structure",
   members = {
      State = schema.new({
         id = id.from(_N, "QueryExecutionStatus", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
      }),
      StateChangeReason = schema.new({
         id = id.from(_N, "QueryExecutionStatus", "StateChangeReason"),
         type = "string",
         name = "StateChangeReason",
         target_id = prelude.String.id,
      }),
      SubmissionDateTime = schema.new({
         id = id.from(_N, "QueryExecutionStatus", "SubmissionDateTime"),
         type = "timestamp",
         name = "SubmissionDateTime",
         target_id = prelude.Timestamp.id,
      }),
      CompletionDateTime = schema.new({
         id = id.from(_N, "QueryExecutionStatus", "CompletionDateTime"),
         type = "timestamp",
         name = "CompletionDateTime",
         target_id = prelude.Timestamp.id,
      }),
      AthenaError = schema.new({
         id = id.from(_N, "QueryExecutionStatus", "AthenaError"),
         type = "structure",
         name = "AthenaError",
         target_id = id.from(_N, "AthenaError"),
         target = M.AthenaError,
      }),
   },
})

M.QueryExecution = schema.new({
   id = id.from(_N, "QueryExecution"),
   type = "structure",
   members = {
      QueryExecutionId = schema.new({
         id = id.from(_N, "QueryExecution", "QueryExecutionId"),
         type = "string",
         name = "QueryExecutionId",
         target_id = prelude.String.id,
      }),
      Query = schema.new({
         id = id.from(_N, "QueryExecution", "Query"),
         type = "string",
         name = "Query",
         target_id = prelude.String.id,
      }),
      StatementType = schema.new({
         id = id.from(_N, "QueryExecution", "StatementType"),
         type = "string",
         name = "StatementType",
         target_id = prelude.String.id,
      }),
      ManagedQueryResultsConfiguration = schema.new({
         id = id.from(_N, "QueryExecution", "ManagedQueryResultsConfiguration"),
         type = "structure",
         name = "ManagedQueryResultsConfiguration",
         target_id = id.from(_N, "ManagedQueryResultsConfiguration"),
         target = M.ManagedQueryResultsConfiguration,
      }),
      ResultConfiguration = schema.new({
         id = id.from(_N, "QueryExecution", "ResultConfiguration"),
         type = "structure",
         name = "ResultConfiguration",
         target_id = id.from(_N, "ResultConfiguration"),
         target = M.ResultConfiguration,
      }),
      ResultReuseConfiguration = schema.new({
         id = id.from(_N, "QueryExecution", "ResultReuseConfiguration"),
         type = "structure",
         name = "ResultReuseConfiguration",
         target_id = id.from(_N, "ResultReuseConfiguration"),
         target = M.ResultReuseConfiguration,
      }),
      QueryExecutionContext = schema.new({
         id = id.from(_N, "QueryExecution", "QueryExecutionContext"),
         type = "structure",
         name = "QueryExecutionContext",
         target_id = id.from(_N, "QueryExecutionContext"),
         target = M.QueryExecutionContext,
      }),
      Status = schema.new({
         id = id.from(_N, "QueryExecution", "Status"),
         type = "structure",
         name = "Status",
         target_id = id.from(_N, "QueryExecutionStatus"),
         target = M.QueryExecutionStatus,
      }),
      Statistics = schema.new({
         id = id.from(_N, "QueryExecution", "Statistics"),
         type = "structure",
         name = "Statistics",
         target_id = id.from(_N, "QueryExecutionStatistics"),
         target = M.QueryExecutionStatistics,
      }),
      WorkGroup = schema.new({
         id = id.from(_N, "QueryExecution", "WorkGroup"),
         type = "string",
         name = "WorkGroup",
         target_id = prelude.String.id,
      }),
      EngineVersion = schema.new({
         id = id.from(_N, "QueryExecution", "EngineVersion"),
         type = "structure",
         name = "EngineVersion",
         target_id = id.from(_N, "EngineVersion"),
         target = M.EngineVersion,
      }),
      ExecutionParameters = schema.new({
         id = id.from(_N, "QueryExecution", "ExecutionParameters"),
         type = "list",
         name = "ExecutionParameters",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      SubstatementType = schema.new({
         id = id.from(_N, "QueryExecution", "SubstatementType"),
         type = "string",
         name = "SubstatementType",
         target_id = prelude.String.id,
      }),
      QueryResultsS3AccessGrantsConfiguration = schema.new({
         id = id.from(_N, "QueryExecution", "QueryResultsS3AccessGrantsConfiguration"),
         type = "structure",
         name = "QueryResultsS3AccessGrantsConfiguration",
         target_id = id.from(_N, "QueryResultsS3AccessGrantsConfiguration"),
         target = M.QueryResultsS3AccessGrantsConfiguration,
      }),
   },
})

M.UnprocessedQueryExecutionId = schema.new({
   id = id.from(_N, "UnprocessedQueryExecutionId"),
   type = "structure",
   members = {
      QueryExecutionId = schema.new({
         id = id.from(_N, "UnprocessedQueryExecutionId", "QueryExecutionId"),
         type = "string",
         name = "QueryExecutionId",
         target_id = prelude.String.id,
      }),
      ErrorCode = schema.new({
         id = id.from(_N, "UnprocessedQueryExecutionId", "ErrorCode"),
         type = "string",
         name = "ErrorCode",
         target_id = prelude.String.id,
      }),
      ErrorMessage = schema.new({
         id = id.from(_N, "UnprocessedQueryExecutionId", "ErrorMessage"),
         type = "string",
         name = "ErrorMessage",
         target_id = prelude.String.id,
      }),
   },
})

M.BatchGetQueryExecutionOutput = schema.new({
   id = id.from(_N, "BatchGetQueryExecutionOutput"),
   type = "structure",
   members = {
      QueryExecutions = schema.new({
         id = id.from(_N, "BatchGetQueryExecutionOutput", "QueryExecutions"),
         type = "list",
         name = "QueryExecutions",
         target_id = prelude.Document.id,
         list_member = M.QueryExecution,
      }),
      UnprocessedQueryExecutionIds = schema.new({
         id = id.from(_N, "BatchGetQueryExecutionOutput", "UnprocessedQueryExecutionIds"),
         type = "list",
         name = "UnprocessedQueryExecutionIds",
         target_id = prelude.Document.id,
         list_member = M.UnprocessedQueryExecutionId,
      }),
   },
})

M.CancelCapacityReservationInput = schema.new({
   id = id.from(_N, "CancelCapacityReservationInput"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "CancelCapacityReservationInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CancelCapacityReservationOutput = schema.new({
   id = id.from(_N, "CancelCapacityReservationOutput"),
   type = "structure",
})

M.Tag = schema.new({
   id = id.from(_N, "Tag"),
   type = "structure",
   members = {
      Key = schema.new({
         id = id.from(_N, "Tag", "Key"),
         type = "string",
         name = "Key",
         target_id = prelude.String.id,
      }),
      Value = schema.new({
         id = id.from(_N, "Tag", "Value"),
         type = "string",
         name = "Value",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateCapacityReservationInput = schema.new({
   id = id.from(_N, "CreateCapacityReservationInput"),
   type = "structure",
   members = {
      TargetDpus = schema.new({
         id = id.from(_N, "CreateCapacityReservationInput", "TargetDpus"),
         type = "integer",
         name = "TargetDpus",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Name = schema.new({
         id = id.from(_N, "CreateCapacityReservationInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Tags = schema.new({
         id = id.from(_N, "CreateCapacityReservationInput", "Tags"),
         type = "list",
         name = "Tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
   },
})

M.CreateCapacityReservationOutput = schema.new({
   id = id.from(_N, "CreateCapacityReservationOutput"),
   type = "structure",
})

M.CreateDataCatalogInput = schema.new({
   id = id.from(_N, "CreateDataCatalogInput"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "CreateDataCatalogInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Type = schema.new({
         id = id.from(_N, "CreateDataCatalogInput", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Description = schema.new({
         id = id.from(_N, "CreateDataCatalogInput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      Parameters = schema.new({
         id = id.from(_N, "CreateDataCatalogInput", "Parameters"),
         type = "map",
         name = "Parameters",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      Tags = schema.new({
         id = id.from(_N, "CreateDataCatalogInput", "Tags"),
         type = "list",
         name = "Tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
   },
})

M.DataCatalog = schema.new({
   id = id.from(_N, "DataCatalog"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "DataCatalog", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Description = schema.new({
         id = id.from(_N, "DataCatalog", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      Type = schema.new({
         id = id.from(_N, "DataCatalog", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Parameters = schema.new({
         id = id.from(_N, "DataCatalog", "Parameters"),
         type = "map",
         name = "Parameters",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      Status = schema.new({
         id = id.from(_N, "DataCatalog", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      ConnectionType = schema.new({
         id = id.from(_N, "DataCatalog", "ConnectionType"),
         type = "string",
         name = "ConnectionType",
         target_id = prelude.String.id,
      }),
      Error = schema.new({
         id = id.from(_N, "DataCatalog", "Error"),
         type = "string",
         name = "Error",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateDataCatalogOutput = schema.new({
   id = id.from(_N, "CreateDataCatalogOutput"),
   type = "structure",
   members = {
      DataCatalog = schema.new({
         id = id.from(_N, "CreateDataCatalogOutput", "DataCatalog"),
         type = "structure",
         name = "DataCatalog",
         target_id = id.from(_N, "DataCatalog"),
         target = M.DataCatalog,
      }),
   },
})

M.CreateNamedQueryInput = schema.new({
   id = id.from(_N, "CreateNamedQueryInput"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "CreateNamedQueryInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Description = schema.new({
         id = id.from(_N, "CreateNamedQueryInput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      Database = schema.new({
         id = id.from(_N, "CreateNamedQueryInput", "Database"),
         type = "string",
         name = "Database",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      QueryString = schema.new({
         id = id.from(_N, "CreateNamedQueryInput", "QueryString"),
         type = "string",
         name = "QueryString",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ClientRequestToken = schema.new({
         id = id.from(_N, "CreateNamedQueryInput", "ClientRequestToken"),
         type = "string",
         name = "ClientRequestToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      WorkGroup = schema.new({
         id = id.from(_N, "CreateNamedQueryInput", "WorkGroup"),
         type = "string",
         name = "WorkGroup",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateNamedQueryOutput = schema.new({
   id = id.from(_N, "CreateNamedQueryOutput"),
   type = "structure",
   members = {
      NamedQueryId = schema.new({
         id = id.from(_N, "CreateNamedQueryOutput", "NamedQueryId"),
         type = "string",
         name = "NamedQueryId",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateNotebookInput = schema.new({
   id = id.from(_N, "CreateNotebookInput"),
   type = "structure",
   members = {
      WorkGroup = schema.new({
         id = id.from(_N, "CreateNotebookInput", "WorkGroup"),
         type = "string",
         name = "WorkGroup",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Name = schema.new({
         id = id.from(_N, "CreateNotebookInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ClientRequestToken = schema.new({
         id = id.from(_N, "CreateNotebookInput", "ClientRequestToken"),
         type = "string",
         name = "ClientRequestToken",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateNotebookOutput = schema.new({
   id = id.from(_N, "CreateNotebookOutput"),
   type = "structure",
   members = {
      NotebookId = schema.new({
         id = id.from(_N, "CreateNotebookOutput", "NotebookId"),
         type = "string",
         name = "NotebookId",
         target_id = prelude.String.id,
      }),
   },
})

M.TooManyRequestsException = schema.new({
   id = id.from(_N, "TooManyRequestsException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "TooManyRequestsException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
      Reason = schema.new({
         id = id.from(_N, "TooManyRequestsException", "Reason"),
         type = "string",
         name = "Reason",
         target_id = prelude.String.id,
      }),
   },
})

M.CreatePreparedStatementInput = schema.new({
   id = id.from(_N, "CreatePreparedStatementInput"),
   type = "structure",
   members = {
      StatementName = schema.new({
         id = id.from(_N, "CreatePreparedStatementInput", "StatementName"),
         type = "string",
         name = "StatementName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      WorkGroup = schema.new({
         id = id.from(_N, "CreatePreparedStatementInput", "WorkGroup"),
         type = "string",
         name = "WorkGroup",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      QueryStatement = schema.new({
         id = id.from(_N, "CreatePreparedStatementInput", "QueryStatement"),
         type = "string",
         name = "QueryStatement",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Description = schema.new({
         id = id.from(_N, "CreatePreparedStatementInput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
   },
})

M.CreatePreparedStatementOutput = schema.new({
   id = id.from(_N, "CreatePreparedStatementOutput"),
   type = "structure",
})

M.CreatePresignedNotebookUrlInput = schema.new({
   id = id.from(_N, "CreatePresignedNotebookUrlRequest"),
   type = "structure",
   members = {
      SessionId = schema.new({
         id = id.from(_N, "CreatePresignedNotebookUrlInput", "SessionId"),
         type = "string",
         name = "SessionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CreatePresignedNotebookUrlOutput = schema.new({
   id = id.from(_N, "CreatePresignedNotebookUrlResponse"),
   type = "structure",
   members = {
      NotebookUrl = schema.new({
         id = id.from(_N, "CreatePresignedNotebookUrlOutput", "NotebookUrl"),
         type = "string",
         name = "NotebookUrl",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AuthToken = schema.new({
         id = id.from(_N, "CreatePresignedNotebookUrlOutput", "AuthToken"),
         type = "string",
         name = "AuthToken",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AuthTokenExpirationTime = schema.new({
         id = id.from(_N, "CreatePresignedNotebookUrlOutput", "AuthTokenExpirationTime"),
         type = "long",
         name = "AuthTokenExpirationTime",
         target_id = prelude.Long.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ResourceNotFoundException = schema.new({
   id = id.from(_N, "ResourceNotFoundException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "ResourceNotFoundException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
      ResourceName = schema.new({
         id = id.from(_N, "ResourceNotFoundException", "ResourceName"),
         type = "string",
         name = "ResourceName",
         target_id = prelude.String.id,
      }),
   },
})

M.CustomerContentEncryptionConfiguration = schema.new({
   id = id.from(_N, "CustomerContentEncryptionConfiguration"),
   type = "structure",
   members = {
      KmsKey = schema.new({
         id = id.from(_N, "CustomerContentEncryptionConfiguration", "KmsKey"),
         type = "string",
         name = "KmsKey",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.Classification = schema.new({
   id = id.from(_N, "Classification"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "Classification", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Properties = schema.new({
         id = id.from(_N, "Classification", "Properties"),
         type = "map",
         name = "Properties",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.EngineConfiguration = schema.new({
   id = id.from(_N, "EngineConfiguration"),
   type = "structure",
   members = {
      CoordinatorDpuSize = schema.new({
         id = id.from(_N, "EngineConfiguration", "CoordinatorDpuSize"),
         type = "integer",
         name = "CoordinatorDpuSize",
         target_id = prelude.Integer.id,
      }),
      MaxConcurrentDpus = schema.new({
         id = id.from(_N, "EngineConfiguration", "MaxConcurrentDpus"),
         type = "integer",
         name = "MaxConcurrentDpus",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 20 },
         },
      }),
      DefaultExecutorDpuSize = schema.new({
         id = id.from(_N, "EngineConfiguration", "DefaultExecutorDpuSize"),
         type = "integer",
         name = "DefaultExecutorDpuSize",
         target_id = prelude.Integer.id,
      }),
      AdditionalConfigs = schema.new({
         id = id.from(_N, "EngineConfiguration", "AdditionalConfigs"),
         type = "map",
         name = "AdditionalConfigs",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      SparkProperties = schema.new({
         id = id.from(_N, "EngineConfiguration", "SparkProperties"),
         type = "map",
         name = "SparkProperties",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      Classifications = schema.new({
         id = id.from(_N, "EngineConfiguration", "Classifications"),
         type = "list",
         name = "Classifications",
         target_id = prelude.Document.id,
         list_member = M.Classification,
      }),
   },
})

M.IdentityCenterConfiguration = schema.new({
   id = id.from(_N, "IdentityCenterConfiguration"),
   type = "structure",
   members = {
      EnableIdentityCenter = schema.new({
         id = id.from(_N, "IdentityCenterConfiguration", "EnableIdentityCenter"),
         type = "boolean",
         name = "EnableIdentityCenter",
         target_id = prelude.Boolean.id,
      }),
      IdentityCenterInstanceArn = schema.new({
         id = id.from(_N, "IdentityCenterConfiguration", "IdentityCenterInstanceArn"),
         type = "string",
         name = "IdentityCenterInstanceArn",
         target_id = prelude.String.id,
      }),
   },
})

M.CloudWatchLoggingConfiguration = schema.new({
   id = id.from(_N, "CloudWatchLoggingConfiguration"),
   type = "structure",
   members = {
      Enabled = schema.new({
         id = id.from(_N, "CloudWatchLoggingConfiguration", "Enabled"),
         type = "boolean",
         name = "Enabled",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      LogGroup = schema.new({
         id = id.from(_N, "CloudWatchLoggingConfiguration", "LogGroup"),
         type = "string",
         name = "LogGroup",
         target_id = prelude.String.id,
      }),
      LogStreamNamePrefix = schema.new({
         id = id.from(_N, "CloudWatchLoggingConfiguration", "LogStreamNamePrefix"),
         type = "string",
         name = "LogStreamNamePrefix",
         target_id = prelude.String.id,
      }),
      LogTypes = schema.new({
         id = id.from(_N, "CloudWatchLoggingConfiguration", "LogTypes"),
         type = "map",
         name = "LogTypes",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = schema.new({ type = "list", list_member = prelude.String }),
      }),
   },
})

M.ManagedLoggingConfiguration = schema.new({
   id = id.from(_N, "ManagedLoggingConfiguration"),
   type = "structure",
   members = {
      Enabled = schema.new({
         id = id.from(_N, "ManagedLoggingConfiguration", "Enabled"),
         type = "boolean",
         name = "Enabled",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      KmsKey = schema.new({
         id = id.from(_N, "ManagedLoggingConfiguration", "KmsKey"),
         type = "string",
         name = "KmsKey",
         target_id = prelude.String.id,
      }),
   },
})

M.S3LoggingConfiguration = schema.new({
   id = id.from(_N, "S3LoggingConfiguration"),
   type = "structure",
   members = {
      Enabled = schema.new({
         id = id.from(_N, "S3LoggingConfiguration", "Enabled"),
         type = "boolean",
         name = "Enabled",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      KmsKey = schema.new({
         id = id.from(_N, "S3LoggingConfiguration", "KmsKey"),
         type = "string",
         name = "KmsKey",
         target_id = prelude.String.id,
      }),
      LogLocation = schema.new({
         id = id.from(_N, "S3LoggingConfiguration", "LogLocation"),
         type = "string",
         name = "LogLocation",
         target_id = prelude.String.id,
      }),
   },
})

M.MonitoringConfiguration = schema.new({
   id = id.from(_N, "MonitoringConfiguration"),
   type = "structure",
   members = {
      CloudWatchLoggingConfiguration = schema.new({
         id = id.from(_N, "MonitoringConfiguration", "CloudWatchLoggingConfiguration"),
         type = "structure",
         name = "CloudWatchLoggingConfiguration",
         target_id = id.from(_N, "CloudWatchLoggingConfiguration"),
         target = M.CloudWatchLoggingConfiguration,
      }),
      ManagedLoggingConfiguration = schema.new({
         id = id.from(_N, "MonitoringConfiguration", "ManagedLoggingConfiguration"),
         type = "structure",
         name = "ManagedLoggingConfiguration",
         target_id = id.from(_N, "ManagedLoggingConfiguration"),
         target = M.ManagedLoggingConfiguration,
      }),
      S3LoggingConfiguration = schema.new({
         id = id.from(_N, "MonitoringConfiguration", "S3LoggingConfiguration"),
         type = "structure",
         name = "S3LoggingConfiguration",
         target_id = id.from(_N, "S3LoggingConfiguration"),
         target = M.S3LoggingConfiguration,
      }),
   },
})

M.WorkGroupConfiguration = schema.new({
   id = id.from(_N, "WorkGroupConfiguration"),
   type = "structure",
   members = {
      ResultConfiguration = schema.new({
         id = id.from(_N, "WorkGroupConfiguration", "ResultConfiguration"),
         type = "structure",
         name = "ResultConfiguration",
         target_id = id.from(_N, "ResultConfiguration"),
         target = M.ResultConfiguration,
      }),
      ManagedQueryResultsConfiguration = schema.new({
         id = id.from(_N, "WorkGroupConfiguration", "ManagedQueryResultsConfiguration"),
         type = "structure",
         name = "ManagedQueryResultsConfiguration",
         target_id = id.from(_N, "ManagedQueryResultsConfiguration"),
         target = M.ManagedQueryResultsConfiguration,
      }),
      EnforceWorkGroupConfiguration = schema.new({
         id = id.from(_N, "WorkGroupConfiguration", "EnforceWorkGroupConfiguration"),
         type = "boolean",
         name = "EnforceWorkGroupConfiguration",
         target_id = prelude.Boolean.id,
      }),
      PublishCloudWatchMetricsEnabled = schema.new({
         id = id.from(_N, "WorkGroupConfiguration", "PublishCloudWatchMetricsEnabled"),
         type = "boolean",
         name = "PublishCloudWatchMetricsEnabled",
         target_id = prelude.Boolean.id,
      }),
      BytesScannedCutoffPerQuery = schema.new({
         id = id.from(_N, "WorkGroupConfiguration", "BytesScannedCutoffPerQuery"),
         type = "long",
         name = "BytesScannedCutoffPerQuery",
         target_id = prelude.Long.id,
      }),
      RequesterPaysEnabled = schema.new({
         id = id.from(_N, "WorkGroupConfiguration", "RequesterPaysEnabled"),
         type = "boolean",
         name = "RequesterPaysEnabled",
         target_id = prelude.Boolean.id,
      }),
      EngineVersion = schema.new({
         id = id.from(_N, "WorkGroupConfiguration", "EngineVersion"),
         type = "structure",
         name = "EngineVersion",
         target_id = id.from(_N, "EngineVersion"),
         target = M.EngineVersion,
      }),
      AdditionalConfiguration = schema.new({
         id = id.from(_N, "WorkGroupConfiguration", "AdditionalConfiguration"),
         type = "string",
         name = "AdditionalConfiguration",
         target_id = prelude.String.id,
      }),
      ExecutionRole = schema.new({
         id = id.from(_N, "WorkGroupConfiguration", "ExecutionRole"),
         type = "string",
         name = "ExecutionRole",
         target_id = prelude.String.id,
      }),
      MonitoringConfiguration = schema.new({
         id = id.from(_N, "WorkGroupConfiguration", "MonitoringConfiguration"),
         type = "structure",
         name = "MonitoringConfiguration",
         target_id = id.from(_N, "MonitoringConfiguration"),
         target = M.MonitoringConfiguration,
      }),
      EngineConfiguration = schema.new({
         id = id.from(_N, "WorkGroupConfiguration", "EngineConfiguration"),
         type = "structure",
         name = "EngineConfiguration",
         target_id = id.from(_N, "EngineConfiguration"),
         target = M.EngineConfiguration,
      }),
      CustomerContentEncryptionConfiguration = schema.new({
         id = id.from(_N, "WorkGroupConfiguration", "CustomerContentEncryptionConfiguration"),
         type = "structure",
         name = "CustomerContentEncryptionConfiguration",
         target_id = id.from(_N, "CustomerContentEncryptionConfiguration"),
         target = M.CustomerContentEncryptionConfiguration,
      }),
      EnableMinimumEncryptionConfiguration = schema.new({
         id = id.from(_N, "WorkGroupConfiguration", "EnableMinimumEncryptionConfiguration"),
         type = "boolean",
         name = "EnableMinimumEncryptionConfiguration",
         target_id = prelude.Boolean.id,
      }),
      IdentityCenterConfiguration = schema.new({
         id = id.from(_N, "WorkGroupConfiguration", "IdentityCenterConfiguration"),
         type = "structure",
         name = "IdentityCenterConfiguration",
         target_id = id.from(_N, "IdentityCenterConfiguration"),
         target = M.IdentityCenterConfiguration,
      }),
      QueryResultsS3AccessGrantsConfiguration = schema.new({
         id = id.from(_N, "WorkGroupConfiguration", "QueryResultsS3AccessGrantsConfiguration"),
         type = "structure",
         name = "QueryResultsS3AccessGrantsConfiguration",
         target_id = id.from(_N, "QueryResultsS3AccessGrantsConfiguration"),
         target = M.QueryResultsS3AccessGrantsConfiguration,
      }),
   },
})

M.CreateWorkGroupInput = schema.new({
   id = id.from(_N, "CreateWorkGroupInput"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "CreateWorkGroupInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Configuration = schema.new({
         id = id.from(_N, "CreateWorkGroupInput", "Configuration"),
         type = "structure",
         name = "Configuration",
         target_id = id.from(_N, "WorkGroupConfiguration"),
         target = M.WorkGroupConfiguration,
      }),
      Description = schema.new({
         id = id.from(_N, "CreateWorkGroupInput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      Tags = schema.new({
         id = id.from(_N, "CreateWorkGroupInput", "Tags"),
         type = "list",
         name = "Tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
   },
})

M.CreateWorkGroupOutput = schema.new({
   id = id.from(_N, "CreateWorkGroupOutput"),
   type = "structure",
})

M.DeleteCapacityReservationInput = schema.new({
   id = id.from(_N, "DeleteCapacityReservationInput"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "DeleteCapacityReservationInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteCapacityReservationOutput = schema.new({
   id = id.from(_N, "DeleteCapacityReservationOutput"),
   type = "structure",
})

M.DeleteDataCatalogInput = schema.new({
   id = id.from(_N, "DeleteDataCatalogInput"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "DeleteDataCatalogInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DeleteCatalogOnly = schema.new({
         id = id.from(_N, "DeleteDataCatalogInput", "DeleteCatalogOnly"),
         type = "boolean",
         name = "DeleteCatalogOnly",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
   },
})

M.DeleteDataCatalogOutput = schema.new({
   id = id.from(_N, "DeleteDataCatalogOutput"),
   type = "structure",
   members = {
      DataCatalog = schema.new({
         id = id.from(_N, "DeleteDataCatalogOutput", "DataCatalog"),
         type = "structure",
         name = "DataCatalog",
         target_id = id.from(_N, "DataCatalog"),
         target = M.DataCatalog,
      }),
   },
})

M.DeleteNamedQueryInput = schema.new({
   id = id.from(_N, "DeleteNamedQueryInput"),
   type = "structure",
   members = {
      NamedQueryId = schema.new({
         id = id.from(_N, "DeleteNamedQueryInput", "NamedQueryId"),
         type = "string",
         name = "NamedQueryId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
   },
})

M.DeleteNamedQueryOutput = schema.new({
   id = id.from(_N, "DeleteNamedQueryOutput"),
   type = "structure",
})

M.DeleteNotebookInput = schema.new({
   id = id.from(_N, "DeleteNotebookInput"),
   type = "structure",
   members = {
      NotebookId = schema.new({
         id = id.from(_N, "DeleteNotebookInput", "NotebookId"),
         type = "string",
         name = "NotebookId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteNotebookOutput = schema.new({
   id = id.from(_N, "DeleteNotebookOutput"),
   type = "structure",
})

M.DeletePreparedStatementInput = schema.new({
   id = id.from(_N, "DeletePreparedStatementInput"),
   type = "structure",
   members = {
      StatementName = schema.new({
         id = id.from(_N, "DeletePreparedStatementInput", "StatementName"),
         type = "string",
         name = "StatementName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      WorkGroup = schema.new({
         id = id.from(_N, "DeletePreparedStatementInput", "WorkGroup"),
         type = "string",
         name = "WorkGroup",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeletePreparedStatementOutput = schema.new({
   id = id.from(_N, "DeletePreparedStatementOutput"),
   type = "structure",
})

M.DeleteWorkGroupInput = schema.new({
   id = id.from(_N, "DeleteWorkGroupInput"),
   type = "structure",
   members = {
      WorkGroup = schema.new({
         id = id.from(_N, "DeleteWorkGroupInput", "WorkGroup"),
         type = "string",
         name = "WorkGroup",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RecursiveDeleteOption = schema.new({
         id = id.from(_N, "DeleteWorkGroupInput", "RecursiveDeleteOption"),
         type = "boolean",
         name = "RecursiveDeleteOption",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.DeleteWorkGroupOutput = schema.new({
   id = id.from(_N, "DeleteWorkGroupOutput"),
   type = "structure",
})

M.ExportNotebookInput = schema.new({
   id = id.from(_N, "ExportNotebookInput"),
   type = "structure",
   members = {
      NotebookId = schema.new({
         id = id.from(_N, "ExportNotebookInput", "NotebookId"),
         type = "string",
         name = "NotebookId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.NotebookMetadata = schema.new({
   id = id.from(_N, "NotebookMetadata"),
   type = "structure",
   members = {
      NotebookId = schema.new({
         id = id.from(_N, "NotebookMetadata", "NotebookId"),
         type = "string",
         name = "NotebookId",
         target_id = prelude.String.id,
      }),
      Name = schema.new({
         id = id.from(_N, "NotebookMetadata", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      WorkGroup = schema.new({
         id = id.from(_N, "NotebookMetadata", "WorkGroup"),
         type = "string",
         name = "WorkGroup",
         target_id = prelude.String.id,
      }),
      CreationTime = schema.new({
         id = id.from(_N, "NotebookMetadata", "CreationTime"),
         type = "timestamp",
         name = "CreationTime",
         target_id = prelude.Timestamp.id,
      }),
      Type = schema.new({
         id = id.from(_N, "NotebookMetadata", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
      }),
      LastModifiedTime = schema.new({
         id = id.from(_N, "NotebookMetadata", "LastModifiedTime"),
         type = "timestamp",
         name = "LastModifiedTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.ExportNotebookOutput = schema.new({
   id = id.from(_N, "ExportNotebookOutput"),
   type = "structure",
   members = {
      NotebookMetadata = schema.new({
         id = id.from(_N, "ExportNotebookOutput", "NotebookMetadata"),
         type = "structure",
         name = "NotebookMetadata",
         target_id = id.from(_N, "NotebookMetadata"),
         target = M.NotebookMetadata,
      }),
      Payload = schema.new({
         id = id.from(_N, "ExportNotebookOutput", "Payload"),
         type = "string",
         name = "Payload",
         target_id = prelude.String.id,
      }),
   },
})

M.GetCalculationExecutionInput = schema.new({
   id = id.from(_N, "GetCalculationExecutionRequest"),
   type = "structure",
   members = {
      CalculationExecutionId = schema.new({
         id = id.from(_N, "GetCalculationExecutionInput", "CalculationExecutionId"),
         type = "string",
         name = "CalculationExecutionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CalculationResult = schema.new({
   id = id.from(_N, "CalculationResult"),
   type = "structure",
   members = {
      StdOutS3Uri = schema.new({
         id = id.from(_N, "CalculationResult", "StdOutS3Uri"),
         type = "string",
         name = "StdOutS3Uri",
         target_id = prelude.String.id,
      }),
      StdErrorS3Uri = schema.new({
         id = id.from(_N, "CalculationResult", "StdErrorS3Uri"),
         type = "string",
         name = "StdErrorS3Uri",
         target_id = prelude.String.id,
      }),
      ResultS3Uri = schema.new({
         id = id.from(_N, "CalculationResult", "ResultS3Uri"),
         type = "string",
         name = "ResultS3Uri",
         target_id = prelude.String.id,
      }),
      ResultType = schema.new({
         id = id.from(_N, "CalculationResult", "ResultType"),
         type = "string",
         name = "ResultType",
         target_id = prelude.String.id,
      }),
   },
})

M.CalculationStatistics = schema.new({
   id = id.from(_N, "CalculationStatistics"),
   type = "structure",
   members = {
      DpuExecutionInMillis = schema.new({
         id = id.from(_N, "CalculationStatistics", "DpuExecutionInMillis"),
         type = "long",
         name = "DpuExecutionInMillis",
         target_id = prelude.Long.id,
      }),
      Progress = schema.new({
         id = id.from(_N, "CalculationStatistics", "Progress"),
         type = "string",
         name = "Progress",
         target_id = prelude.String.id,
      }),
   },
})

M.CalculationStatus = schema.new({
   id = id.from(_N, "CalculationStatus"),
   type = "structure",
   members = {
      SubmissionDateTime = schema.new({
         id = id.from(_N, "CalculationStatus", "SubmissionDateTime"),
         type = "timestamp",
         name = "SubmissionDateTime",
         target_id = prelude.Timestamp.id,
      }),
      CompletionDateTime = schema.new({
         id = id.from(_N, "CalculationStatus", "CompletionDateTime"),
         type = "timestamp",
         name = "CompletionDateTime",
         target_id = prelude.Timestamp.id,
      }),
      State = schema.new({
         id = id.from(_N, "CalculationStatus", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
      }),
      StateChangeReason = schema.new({
         id = id.from(_N, "CalculationStatus", "StateChangeReason"),
         type = "string",
         name = "StateChangeReason",
         target_id = prelude.String.id,
      }),
   },
})

M.GetCalculationExecutionOutput = schema.new({
   id = id.from(_N, "GetCalculationExecutionResponse"),
   type = "structure",
   members = {
      CalculationExecutionId = schema.new({
         id = id.from(_N, "GetCalculationExecutionOutput", "CalculationExecutionId"),
         type = "string",
         name = "CalculationExecutionId",
         target_id = prelude.String.id,
      }),
      SessionId = schema.new({
         id = id.from(_N, "GetCalculationExecutionOutput", "SessionId"),
         type = "string",
         name = "SessionId",
         target_id = prelude.String.id,
      }),
      Description = schema.new({
         id = id.from(_N, "GetCalculationExecutionOutput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      WorkingDirectory = schema.new({
         id = id.from(_N, "GetCalculationExecutionOutput", "WorkingDirectory"),
         type = "string",
         name = "WorkingDirectory",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "GetCalculationExecutionOutput", "Status"),
         type = "structure",
         name = "Status",
         target_id = id.from(_N, "CalculationStatus"),
         target = M.CalculationStatus,
      }),
      Statistics = schema.new({
         id = id.from(_N, "GetCalculationExecutionOutput", "Statistics"),
         type = "structure",
         name = "Statistics",
         target_id = id.from(_N, "CalculationStatistics"),
         target = M.CalculationStatistics,
      }),
      Result = schema.new({
         id = id.from(_N, "GetCalculationExecutionOutput", "Result"),
         type = "structure",
         name = "Result",
         target_id = id.from(_N, "CalculationResult"),
         target = M.CalculationResult,
      }),
   },
})

M.GetCalculationExecutionCodeInput = schema.new({
   id = id.from(_N, "GetCalculationExecutionCodeRequest"),
   type = "structure",
   members = {
      CalculationExecutionId = schema.new({
         id = id.from(_N, "GetCalculationExecutionCodeInput", "CalculationExecutionId"),
         type = "string",
         name = "CalculationExecutionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetCalculationExecutionCodeOutput = schema.new({
   id = id.from(_N, "GetCalculationExecutionCodeResponse"),
   type = "structure",
   members = {
      CodeBlock = schema.new({
         id = id.from(_N, "GetCalculationExecutionCodeOutput", "CodeBlock"),
         type = "string",
         name = "CodeBlock",
         target_id = prelude.String.id,
      }),
   },
})

M.GetCalculationExecutionStatusInput = schema.new({
   id = id.from(_N, "GetCalculationExecutionStatusRequest"),
   type = "structure",
   members = {
      CalculationExecutionId = schema.new({
         id = id.from(_N, "GetCalculationExecutionStatusInput", "CalculationExecutionId"),
         type = "string",
         name = "CalculationExecutionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetCalculationExecutionStatusOutput = schema.new({
   id = id.from(_N, "GetCalculationExecutionStatusResponse"),
   type = "structure",
   members = {
      Status = schema.new({
         id = id.from(_N, "GetCalculationExecutionStatusOutput", "Status"),
         type = "structure",
         name = "Status",
         target_id = id.from(_N, "CalculationStatus"),
         target = M.CalculationStatus,
      }),
      Statistics = schema.new({
         id = id.from(_N, "GetCalculationExecutionStatusOutput", "Statistics"),
         type = "structure",
         name = "Statistics",
         target_id = id.from(_N, "CalculationStatistics"),
         target = M.CalculationStatistics,
      }),
   },
})

M.GetCapacityAssignmentConfigurationInput = schema.new({
   id = id.from(_N, "GetCapacityAssignmentConfigurationInput"),
   type = "structure",
   members = {
      CapacityReservationName = schema.new({
         id = id.from(_N, "GetCapacityAssignmentConfigurationInput", "CapacityReservationName"),
         type = "string",
         name = "CapacityReservationName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CapacityAssignment = schema.new({
   id = id.from(_N, "CapacityAssignment"),
   type = "structure",
   members = {
      WorkGroupNames = schema.new({
         id = id.from(_N, "CapacityAssignment", "WorkGroupNames"),
         type = "list",
         name = "WorkGroupNames",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.CapacityAssignmentConfiguration = schema.new({
   id = id.from(_N, "CapacityAssignmentConfiguration"),
   type = "structure",
   members = {
      CapacityReservationName = schema.new({
         id = id.from(_N, "CapacityAssignmentConfiguration", "CapacityReservationName"),
         type = "string",
         name = "CapacityReservationName",
         target_id = prelude.String.id,
      }),
      CapacityAssignments = schema.new({
         id = id.from(_N, "CapacityAssignmentConfiguration", "CapacityAssignments"),
         type = "list",
         name = "CapacityAssignments",
         target_id = prelude.Document.id,
         list_member = M.CapacityAssignment,
      }),
   },
})

M.GetCapacityAssignmentConfigurationOutput = schema.new({
   id = id.from(_N, "GetCapacityAssignmentConfigurationOutput"),
   type = "structure",
   members = {
      CapacityAssignmentConfiguration = schema.new({
         id = id.from(_N, "GetCapacityAssignmentConfigurationOutput", "CapacityAssignmentConfiguration"),
         type = "structure",
         name = "CapacityAssignmentConfiguration",
         target_id = id.from(_N, "CapacityAssignmentConfiguration"),
         target = M.CapacityAssignmentConfiguration,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetCapacityReservationInput = schema.new({
   id = id.from(_N, "GetCapacityReservationInput"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "GetCapacityReservationInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CapacityAllocation = schema.new({
   id = id.from(_N, "CapacityAllocation"),
   type = "structure",
   members = {
      Status = schema.new({
         id = id.from(_N, "CapacityAllocation", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      StatusMessage = schema.new({
         id = id.from(_N, "CapacityAllocation", "StatusMessage"),
         type = "string",
         name = "StatusMessage",
         target_id = prelude.String.id,
      }),
      RequestTime = schema.new({
         id = id.from(_N, "CapacityAllocation", "RequestTime"),
         type = "timestamp",
         name = "RequestTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RequestCompletionTime = schema.new({
         id = id.from(_N, "CapacityAllocation", "RequestCompletionTime"),
         type = "timestamp",
         name = "RequestCompletionTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.CapacityReservation = schema.new({
   id = id.from(_N, "CapacityReservation"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "CapacityReservation", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Status = schema.new({
         id = id.from(_N, "CapacityReservation", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      TargetDpus = schema.new({
         id = id.from(_N, "CapacityReservation", "TargetDpus"),
         type = "integer",
         name = "TargetDpus",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AllocatedDpus = schema.new({
         id = id.from(_N, "CapacityReservation", "AllocatedDpus"),
         type = "integer",
         name = "AllocatedDpus",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      LastAllocation = schema.new({
         id = id.from(_N, "CapacityReservation", "LastAllocation"),
         type = "structure",
         name = "LastAllocation",
         target_id = id.from(_N, "CapacityAllocation"),
         target = M.CapacityAllocation,
      }),
      LastSuccessfulAllocationTime = schema.new({
         id = id.from(_N, "CapacityReservation", "LastSuccessfulAllocationTime"),
         type = "timestamp",
         name = "LastSuccessfulAllocationTime",
         target_id = prelude.Timestamp.id,
      }),
      CreationTime = schema.new({
         id = id.from(_N, "CapacityReservation", "CreationTime"),
         type = "timestamp",
         name = "CreationTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetCapacityReservationOutput = schema.new({
   id = id.from(_N, "GetCapacityReservationOutput"),
   type = "structure",
   members = {
      CapacityReservation = schema.new({
         id = id.from(_N, "GetCapacityReservationOutput", "CapacityReservation"),
         type = "structure",
         name = "CapacityReservation",
         target_id = id.from(_N, "CapacityReservation"),
         target = M.CapacityReservation,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetDatabaseInput = schema.new({
   id = id.from(_N, "GetDatabaseInput"),
   type = "structure",
   members = {
      CatalogName = schema.new({
         id = id.from(_N, "GetDatabaseInput", "CatalogName"),
         type = "string",
         name = "CatalogName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DatabaseName = schema.new({
         id = id.from(_N, "GetDatabaseInput", "DatabaseName"),
         type = "string",
         name = "DatabaseName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      WorkGroup = schema.new({
         id = id.from(_N, "GetDatabaseInput", "WorkGroup"),
         type = "string",
         name = "WorkGroup",
         target_id = prelude.String.id,
      }),
   },
})

M.Database = schema.new({
   id = id.from(_N, "Database"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "Database", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Description = schema.new({
         id = id.from(_N, "Database", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      Parameters = schema.new({
         id = id.from(_N, "Database", "Parameters"),
         type = "map",
         name = "Parameters",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.GetDatabaseOutput = schema.new({
   id = id.from(_N, "GetDatabaseOutput"),
   type = "structure",
   members = {
      Database = schema.new({
         id = id.from(_N, "GetDatabaseOutput", "Database"),
         type = "structure",
         name = "Database",
         target_id = id.from(_N, "Database"),
         target = M.Database,
      }),
   },
})

M.MetadataException = schema.new({
   id = id.from(_N, "MetadataException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "MetadataException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.GetDataCatalogInput = schema.new({
   id = id.from(_N, "GetDataCatalogInput"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "GetDataCatalogInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      WorkGroup = schema.new({
         id = id.from(_N, "GetDataCatalogInput", "WorkGroup"),
         type = "string",
         name = "WorkGroup",
         target_id = prelude.String.id,
      }),
   },
})

M.GetDataCatalogOutput = schema.new({
   id = id.from(_N, "GetDataCatalogOutput"),
   type = "structure",
   members = {
      DataCatalog = schema.new({
         id = id.from(_N, "GetDataCatalogOutput", "DataCatalog"),
         type = "structure",
         name = "DataCatalog",
         target_id = id.from(_N, "DataCatalog"),
         target = M.DataCatalog,
      }),
   },
})

M.GetNamedQueryInput = schema.new({
   id = id.from(_N, "GetNamedQueryInput"),
   type = "structure",
   members = {
      NamedQueryId = schema.new({
         id = id.from(_N, "GetNamedQueryInput", "NamedQueryId"),
         type = "string",
         name = "NamedQueryId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetNamedQueryOutput = schema.new({
   id = id.from(_N, "GetNamedQueryOutput"),
   type = "structure",
   members = {
      NamedQuery = schema.new({
         id = id.from(_N, "GetNamedQueryOutput", "NamedQuery"),
         type = "structure",
         name = "NamedQuery",
         target_id = id.from(_N, "NamedQuery"),
         target = M.NamedQuery,
      }),
   },
})

M.GetNotebookMetadataInput = schema.new({
   id = id.from(_N, "GetNotebookMetadataInput"),
   type = "structure",
   members = {
      NotebookId = schema.new({
         id = id.from(_N, "GetNotebookMetadataInput", "NotebookId"),
         type = "string",
         name = "NotebookId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetNotebookMetadataOutput = schema.new({
   id = id.from(_N, "GetNotebookMetadataOutput"),
   type = "structure",
   members = {
      NotebookMetadata = schema.new({
         id = id.from(_N, "GetNotebookMetadataOutput", "NotebookMetadata"),
         type = "structure",
         name = "NotebookMetadata",
         target_id = id.from(_N, "NotebookMetadata"),
         target = M.NotebookMetadata,
      }),
   },
})

M.GetPreparedStatementInput = schema.new({
   id = id.from(_N, "GetPreparedStatementInput"),
   type = "structure",
   members = {
      StatementName = schema.new({
         id = id.from(_N, "GetPreparedStatementInput", "StatementName"),
         type = "string",
         name = "StatementName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      WorkGroup = schema.new({
         id = id.from(_N, "GetPreparedStatementInput", "WorkGroup"),
         type = "string",
         name = "WorkGroup",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetPreparedStatementOutput = schema.new({
   id = id.from(_N, "GetPreparedStatementOutput"),
   type = "structure",
   members = {
      PreparedStatement = schema.new({
         id = id.from(_N, "GetPreparedStatementOutput", "PreparedStatement"),
         type = "structure",
         name = "PreparedStatement",
         target_id = id.from(_N, "PreparedStatement"),
         target = M.PreparedStatement,
      }),
   },
})

M.GetQueryExecutionInput = schema.new({
   id = id.from(_N, "GetQueryExecutionInput"),
   type = "structure",
   members = {
      QueryExecutionId = schema.new({
         id = id.from(_N, "GetQueryExecutionInput", "QueryExecutionId"),
         type = "string",
         name = "QueryExecutionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetQueryExecutionOutput = schema.new({
   id = id.from(_N, "GetQueryExecutionOutput"),
   type = "structure",
   members = {
      QueryExecution = schema.new({
         id = id.from(_N, "GetQueryExecutionOutput", "QueryExecution"),
         type = "structure",
         name = "QueryExecution",
         target_id = id.from(_N, "QueryExecution"),
         target = M.QueryExecution,
      }),
   },
})

M.GetQueryResultsInput = schema.new({
   id = id.from(_N, "GetQueryResultsInput"),
   type = "structure",
   members = {
      QueryExecutionId = schema.new({
         id = id.from(_N, "GetQueryResultsInput", "QueryExecutionId"),
         type = "string",
         name = "QueryExecutionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "GetQueryResultsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      MaxResults = schema.new({
         id = id.from(_N, "GetQueryResultsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
      QueryResultType = schema.new({
         id = id.from(_N, "GetQueryResultsInput", "QueryResultType"),
         type = "string",
         name = "QueryResultType",
         target_id = prelude.String.id,
      }),
   },
})

M.ColumnInfo = schema.new({
   id = id.from(_N, "ColumnInfo"),
   type = "structure",
   members = {
      CatalogName = schema.new({
         id = id.from(_N, "ColumnInfo", "CatalogName"),
         type = "string",
         name = "CatalogName",
         target_id = prelude.String.id,
      }),
      SchemaName = schema.new({
         id = id.from(_N, "ColumnInfo", "SchemaName"),
         type = "string",
         name = "SchemaName",
         target_id = prelude.String.id,
      }),
      TableName = schema.new({
         id = id.from(_N, "ColumnInfo", "TableName"),
         type = "string",
         name = "TableName",
         target_id = prelude.String.id,
      }),
      Name = schema.new({
         id = id.from(_N, "ColumnInfo", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Label = schema.new({
         id = id.from(_N, "ColumnInfo", "Label"),
         type = "string",
         name = "Label",
         target_id = prelude.String.id,
      }),
      Type = schema.new({
         id = id.from(_N, "ColumnInfo", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Precision = schema.new({
         id = id.from(_N, "ColumnInfo", "Precision"),
         type = "integer",
         name = "Precision",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      Scale = schema.new({
         id = id.from(_N, "ColumnInfo", "Scale"),
         type = "integer",
         name = "Scale",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      Nullable = schema.new({
         id = id.from(_N, "ColumnInfo", "Nullable"),
         type = "string",
         name = "Nullable",
         target_id = prelude.String.id,
      }),
      CaseSensitive = schema.new({
         id = id.from(_N, "ColumnInfo", "CaseSensitive"),
         type = "boolean",
         name = "CaseSensitive",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
   },
})

M.ResultSetMetadata = schema.new({
   id = id.from(_N, "ResultSetMetadata"),
   type = "structure",
   members = {
      ColumnInfo = schema.new({
         id = id.from(_N, "ResultSetMetadata", "ColumnInfo"),
         type = "list",
         name = "ColumnInfo",
         target_id = prelude.Document.id,
         list_member = M.ColumnInfo,
      }),
   },
})

M.Datum = schema.new({
   id = id.from(_N, "Datum"),
   type = "structure",
   members = {
      VarCharValue = schema.new({
         id = id.from(_N, "Datum", "VarCharValue"),
         type = "string",
         name = "VarCharValue",
         target_id = prelude.String.id,
      }),
   },
})

M.Row = schema.new({
   id = id.from(_N, "Row"),
   type = "structure",
   members = {
      Data = schema.new({
         id = id.from(_N, "Row", "Data"),
         type = "list",
         name = "Data",
         target_id = prelude.Document.id,
         list_member = M.Datum,
      }),
   },
})

M.ResultSet = schema.new({
   id = id.from(_N, "ResultSet"),
   type = "structure",
   members = {
      Rows = schema.new({
         id = id.from(_N, "ResultSet", "Rows"),
         type = "list",
         name = "Rows",
         target_id = prelude.Document.id,
         list_member = M.Row,
      }),
      ResultSetMetadata = schema.new({
         id = id.from(_N, "ResultSet", "ResultSetMetadata"),
         type = "structure",
         name = "ResultSetMetadata",
         target_id = id.from(_N, "ResultSetMetadata"),
         target = M.ResultSetMetadata,
      }),
   },
})

M.GetQueryResultsOutput = schema.new({
   id = id.from(_N, "GetQueryResultsOutput"),
   type = "structure",
   members = {
      UpdateCount = schema.new({
         id = id.from(_N, "GetQueryResultsOutput", "UpdateCount"),
         type = "long",
         name = "UpdateCount",
         target_id = prelude.Long.id,
      }),
      ResultSet = schema.new({
         id = id.from(_N, "GetQueryResultsOutput", "ResultSet"),
         type = "structure",
         name = "ResultSet",
         target_id = id.from(_N, "ResultSet"),
         target = M.ResultSet,
      }),
      NextToken = schema.new({
         id = id.from(_N, "GetQueryResultsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.GetQueryRuntimeStatisticsInput = schema.new({
   id = id.from(_N, "GetQueryRuntimeStatisticsInput"),
   type = "structure",
   members = {
      QueryExecutionId = schema.new({
         id = id.from(_N, "GetQueryRuntimeStatisticsInput", "QueryExecutionId"),
         type = "string",
         name = "QueryExecutionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.QueryRuntimeStatisticsRows = schema.new({
   id = id.from(_N, "QueryRuntimeStatisticsRows"),
   type = "structure",
   members = {
      InputRows = schema.new({
         id = id.from(_N, "QueryRuntimeStatisticsRows", "InputRows"),
         type = "long",
         name = "InputRows",
         target_id = prelude.Long.id,
      }),
      InputBytes = schema.new({
         id = id.from(_N, "QueryRuntimeStatisticsRows", "InputBytes"),
         type = "long",
         name = "InputBytes",
         target_id = prelude.Long.id,
      }),
      OutputBytes = schema.new({
         id = id.from(_N, "QueryRuntimeStatisticsRows", "OutputBytes"),
         type = "long",
         name = "OutputBytes",
         target_id = prelude.Long.id,
      }),
      OutputRows = schema.new({
         id = id.from(_N, "QueryRuntimeStatisticsRows", "OutputRows"),
         type = "long",
         name = "OutputRows",
         target_id = prelude.Long.id,
      }),
   },
})

M.QueryRuntimeStatisticsTimeline = schema.new({
   id = id.from(_N, "QueryRuntimeStatisticsTimeline"),
   type = "structure",
   members = {
      QueryQueueTimeInMillis = schema.new({
         id = id.from(_N, "QueryRuntimeStatisticsTimeline", "QueryQueueTimeInMillis"),
         type = "long",
         name = "QueryQueueTimeInMillis",
         target_id = prelude.Long.id,
      }),
      ServicePreProcessingTimeInMillis = schema.new({
         id = id.from(_N, "QueryRuntimeStatisticsTimeline", "ServicePreProcessingTimeInMillis"),
         type = "long",
         name = "ServicePreProcessingTimeInMillis",
         target_id = prelude.Long.id,
      }),
      QueryPlanningTimeInMillis = schema.new({
         id = id.from(_N, "QueryRuntimeStatisticsTimeline", "QueryPlanningTimeInMillis"),
         type = "long",
         name = "QueryPlanningTimeInMillis",
         target_id = prelude.Long.id,
      }),
      EngineExecutionTimeInMillis = schema.new({
         id = id.from(_N, "QueryRuntimeStatisticsTimeline", "EngineExecutionTimeInMillis"),
         type = "long",
         name = "EngineExecutionTimeInMillis",
         target_id = prelude.Long.id,
      }),
      ServiceProcessingTimeInMillis = schema.new({
         id = id.from(_N, "QueryRuntimeStatisticsTimeline", "ServiceProcessingTimeInMillis"),
         type = "long",
         name = "ServiceProcessingTimeInMillis",
         target_id = prelude.Long.id,
      }),
      TotalExecutionTimeInMillis = schema.new({
         id = id.from(_N, "QueryRuntimeStatisticsTimeline", "TotalExecutionTimeInMillis"),
         type = "long",
         name = "TotalExecutionTimeInMillis",
         target_id = prelude.Long.id,
      }),
   },
})

M.GetResourceDashboardInput = schema.new({
   id = id.from(_N, "GetResourceDashboardRequest"),
   type = "structure",
   members = {
      ResourceARN = schema.new({
         id = id.from(_N, "GetResourceDashboardInput", "ResourceARN"),
         type = "string",
         name = "ResourceARN",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetResourceDashboardOutput = schema.new({
   id = id.from(_N, "GetResourceDashboardResponse"),
   type = "structure",
   members = {
      Url = schema.new({
         id = id.from(_N, "GetResourceDashboardOutput", "Url"),
         type = "string",
         name = "Url",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetSessionInput = schema.new({
   id = id.from(_N, "GetSessionRequest"),
   type = "structure",
   members = {
      SessionId = schema.new({
         id = id.from(_N, "GetSessionInput", "SessionId"),
         type = "string",
         name = "SessionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.SessionConfiguration = schema.new({
   id = id.from(_N, "SessionConfiguration"),
   type = "structure",
   members = {
      ExecutionRole = schema.new({
         id = id.from(_N, "SessionConfiguration", "ExecutionRole"),
         type = "string",
         name = "ExecutionRole",
         target_id = prelude.String.id,
      }),
      WorkingDirectory = schema.new({
         id = id.from(_N, "SessionConfiguration", "WorkingDirectory"),
         type = "string",
         name = "WorkingDirectory",
         target_id = prelude.String.id,
      }),
      IdleTimeoutSeconds = schema.new({
         id = id.from(_N, "SessionConfiguration", "IdleTimeoutSeconds"),
         type = "long",
         name = "IdleTimeoutSeconds",
         target_id = prelude.Long.id,
      }),
      SessionIdleTimeoutInMinutes = schema.new({
         id = id.from(_N, "SessionConfiguration", "SessionIdleTimeoutInMinutes"),
         type = "integer",
         name = "SessionIdleTimeoutInMinutes",
         target_id = prelude.Integer.id,
      }),
      EncryptionConfiguration = schema.new({
         id = id.from(_N, "SessionConfiguration", "EncryptionConfiguration"),
         type = "structure",
         name = "EncryptionConfiguration",
         target_id = id.from(_N, "EncryptionConfiguration"),
         target = M.EncryptionConfiguration,
      }),
   },
})

M.SessionStatistics = schema.new({
   id = id.from(_N, "SessionStatistics"),
   type = "structure",
   members = {
      DpuExecutionInMillis = schema.new({
         id = id.from(_N, "SessionStatistics", "DpuExecutionInMillis"),
         type = "long",
         name = "DpuExecutionInMillis",
         target_id = prelude.Long.id,
      }),
   },
})

M.SessionStatus = schema.new({
   id = id.from(_N, "SessionStatus"),
   type = "structure",
   members = {
      StartDateTime = schema.new({
         id = id.from(_N, "SessionStatus", "StartDateTime"),
         type = "timestamp",
         name = "StartDateTime",
         target_id = prelude.Timestamp.id,
      }),
      LastModifiedDateTime = schema.new({
         id = id.from(_N, "SessionStatus", "LastModifiedDateTime"),
         type = "timestamp",
         name = "LastModifiedDateTime",
         target_id = prelude.Timestamp.id,
      }),
      EndDateTime = schema.new({
         id = id.from(_N, "SessionStatus", "EndDateTime"),
         type = "timestamp",
         name = "EndDateTime",
         target_id = prelude.Timestamp.id,
      }),
      IdleSinceDateTime = schema.new({
         id = id.from(_N, "SessionStatus", "IdleSinceDateTime"),
         type = "timestamp",
         name = "IdleSinceDateTime",
         target_id = prelude.Timestamp.id,
      }),
      State = schema.new({
         id = id.from(_N, "SessionStatus", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
      }),
      StateChangeReason = schema.new({
         id = id.from(_N, "SessionStatus", "StateChangeReason"),
         type = "string",
         name = "StateChangeReason",
         target_id = prelude.String.id,
      }),
   },
})

M.GetSessionOutput = schema.new({
   id = id.from(_N, "GetSessionResponse"),
   type = "structure",
   members = {
      SessionId = schema.new({
         id = id.from(_N, "GetSessionOutput", "SessionId"),
         type = "string",
         name = "SessionId",
         target_id = prelude.String.id,
      }),
      Description = schema.new({
         id = id.from(_N, "GetSessionOutput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      WorkGroup = schema.new({
         id = id.from(_N, "GetSessionOutput", "WorkGroup"),
         type = "string",
         name = "WorkGroup",
         target_id = prelude.String.id,
      }),
      EngineVersion = schema.new({
         id = id.from(_N, "GetSessionOutput", "EngineVersion"),
         type = "string",
         name = "EngineVersion",
         target_id = prelude.String.id,
      }),
      EngineConfiguration = schema.new({
         id = id.from(_N, "GetSessionOutput", "EngineConfiguration"),
         type = "structure",
         name = "EngineConfiguration",
         target_id = id.from(_N, "EngineConfiguration"),
         target = M.EngineConfiguration,
      }),
      NotebookVersion = schema.new({
         id = id.from(_N, "GetSessionOutput", "NotebookVersion"),
         type = "string",
         name = "NotebookVersion",
         target_id = prelude.String.id,
      }),
      MonitoringConfiguration = schema.new({
         id = id.from(_N, "GetSessionOutput", "MonitoringConfiguration"),
         type = "structure",
         name = "MonitoringConfiguration",
         target_id = id.from(_N, "MonitoringConfiguration"),
         target = M.MonitoringConfiguration,
      }),
      SessionConfiguration = schema.new({
         id = id.from(_N, "GetSessionOutput", "SessionConfiguration"),
         type = "structure",
         name = "SessionConfiguration",
         target_id = id.from(_N, "SessionConfiguration"),
         target = M.SessionConfiguration,
      }),
      Status = schema.new({
         id = id.from(_N, "GetSessionOutput", "Status"),
         type = "structure",
         name = "Status",
         target_id = id.from(_N, "SessionStatus"),
         target = M.SessionStatus,
      }),
      Statistics = schema.new({
         id = id.from(_N, "GetSessionOutput", "Statistics"),
         type = "structure",
         name = "Statistics",
         target_id = id.from(_N, "SessionStatistics"),
         target = M.SessionStatistics,
      }),
   },
})

M.GetSessionEndpointInput = schema.new({
   id = id.from(_N, "GetSessionEndpointRequest"),
   type = "structure",
   members = {
      SessionId = schema.new({
         id = id.from(_N, "GetSessionEndpointInput", "SessionId"),
         type = "string",
         name = "SessionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetSessionEndpointOutput = schema.new({
   id = id.from(_N, "GetSessionEndpointResponse"),
   type = "structure",
   members = {
      EndpointUrl = schema.new({
         id = id.from(_N, "GetSessionEndpointOutput", "EndpointUrl"),
         type = "string",
         name = "EndpointUrl",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AuthToken = schema.new({
         id = id.from(_N, "GetSessionEndpointOutput", "AuthToken"),
         type = "string",
         name = "AuthToken",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AuthTokenExpirationTime = schema.new({
         id = id.from(_N, "GetSessionEndpointOutput", "AuthTokenExpirationTime"),
         type = "timestamp",
         name = "AuthTokenExpirationTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetSessionStatusInput = schema.new({
   id = id.from(_N, "GetSessionStatusRequest"),
   type = "structure",
   members = {
      SessionId = schema.new({
         id = id.from(_N, "GetSessionStatusInput", "SessionId"),
         type = "string",
         name = "SessionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetSessionStatusOutput = schema.new({
   id = id.from(_N, "GetSessionStatusResponse"),
   type = "structure",
   members = {
      SessionId = schema.new({
         id = id.from(_N, "GetSessionStatusOutput", "SessionId"),
         type = "string",
         name = "SessionId",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "GetSessionStatusOutput", "Status"),
         type = "structure",
         name = "Status",
         target_id = id.from(_N, "SessionStatus"),
         target = M.SessionStatus,
      }),
   },
})

M.GetTableMetadataInput = schema.new({
   id = id.from(_N, "GetTableMetadataInput"),
   type = "structure",
   members = {
      CatalogName = schema.new({
         id = id.from(_N, "GetTableMetadataInput", "CatalogName"),
         type = "string",
         name = "CatalogName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DatabaseName = schema.new({
         id = id.from(_N, "GetTableMetadataInput", "DatabaseName"),
         type = "string",
         name = "DatabaseName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      TableName = schema.new({
         id = id.from(_N, "GetTableMetadataInput", "TableName"),
         type = "string",
         name = "TableName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      WorkGroup = schema.new({
         id = id.from(_N, "GetTableMetadataInput", "WorkGroup"),
         type = "string",
         name = "WorkGroup",
         target_id = prelude.String.id,
      }),
   },
})

M.Column = schema.new({
   id = id.from(_N, "Column"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "Column", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Type = schema.new({
         id = id.from(_N, "Column", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
      }),
      Comment = schema.new({
         id = id.from(_N, "Column", "Comment"),
         type = "string",
         name = "Comment",
         target_id = prelude.String.id,
      }),
   },
})

M.TableMetadata = schema.new({
   id = id.from(_N, "TableMetadata"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "TableMetadata", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      CreateTime = schema.new({
         id = id.from(_N, "TableMetadata", "CreateTime"),
         type = "timestamp",
         name = "CreateTime",
         target_id = prelude.Timestamp.id,
      }),
      LastAccessTime = schema.new({
         id = id.from(_N, "TableMetadata", "LastAccessTime"),
         type = "timestamp",
         name = "LastAccessTime",
         target_id = prelude.Timestamp.id,
      }),
      TableType = schema.new({
         id = id.from(_N, "TableMetadata", "TableType"),
         type = "string",
         name = "TableType",
         target_id = prelude.String.id,
      }),
      Columns = schema.new({
         id = id.from(_N, "TableMetadata", "Columns"),
         type = "list",
         name = "Columns",
         target_id = prelude.Document.id,
         list_member = M.Column,
      }),
      PartitionKeys = schema.new({
         id = id.from(_N, "TableMetadata", "PartitionKeys"),
         type = "list",
         name = "PartitionKeys",
         target_id = prelude.Document.id,
         list_member = M.Column,
      }),
      Parameters = schema.new({
         id = id.from(_N, "TableMetadata", "Parameters"),
         type = "map",
         name = "Parameters",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.GetTableMetadataOutput = schema.new({
   id = id.from(_N, "GetTableMetadataOutput"),
   type = "structure",
   members = {
      TableMetadata = schema.new({
         id = id.from(_N, "GetTableMetadataOutput", "TableMetadata"),
         type = "structure",
         name = "TableMetadata",
         target_id = id.from(_N, "TableMetadata"),
         target = M.TableMetadata,
      }),
   },
})

M.GetWorkGroupInput = schema.new({
   id = id.from(_N, "GetWorkGroupInput"),
   type = "structure",
   members = {
      WorkGroup = schema.new({
         id = id.from(_N, "GetWorkGroupInput", "WorkGroup"),
         type = "string",
         name = "WorkGroup",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.WorkGroup = schema.new({
   id = id.from(_N, "WorkGroup"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "WorkGroup", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      State = schema.new({
         id = id.from(_N, "WorkGroup", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
      }),
      Configuration = schema.new({
         id = id.from(_N, "WorkGroup", "Configuration"),
         type = "structure",
         name = "Configuration",
         target_id = id.from(_N, "WorkGroupConfiguration"),
         target = M.WorkGroupConfiguration,
      }),
      Description = schema.new({
         id = id.from(_N, "WorkGroup", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      CreationTime = schema.new({
         id = id.from(_N, "WorkGroup", "CreationTime"),
         type = "timestamp",
         name = "CreationTime",
         target_id = prelude.Timestamp.id,
      }),
      IdentityCenterApplicationArn = schema.new({
         id = id.from(_N, "WorkGroup", "IdentityCenterApplicationArn"),
         type = "string",
         name = "IdentityCenterApplicationArn",
         target_id = prelude.String.id,
      }),
   },
})

M.GetWorkGroupOutput = schema.new({
   id = id.from(_N, "GetWorkGroupOutput"),
   type = "structure",
   members = {
      WorkGroup = schema.new({
         id = id.from(_N, "GetWorkGroupOutput", "WorkGroup"),
         type = "structure",
         name = "WorkGroup",
         target_id = id.from(_N, "WorkGroup"),
         target = M.WorkGroup,
      }),
   },
})

M.ImportNotebookInput = schema.new({
   id = id.from(_N, "ImportNotebookInput"),
   type = "structure",
   members = {
      WorkGroup = schema.new({
         id = id.from(_N, "ImportNotebookInput", "WorkGroup"),
         type = "string",
         name = "WorkGroup",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Name = schema.new({
         id = id.from(_N, "ImportNotebookInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Payload = schema.new({
         id = id.from(_N, "ImportNotebookInput", "Payload"),
         type = "string",
         name = "Payload",
         target_id = prelude.String.id,
      }),
      Type = schema.new({
         id = id.from(_N, "ImportNotebookInput", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      NotebookS3LocationUri = schema.new({
         id = id.from(_N, "ImportNotebookInput", "NotebookS3LocationUri"),
         type = "string",
         name = "NotebookS3LocationUri",
         target_id = prelude.String.id,
      }),
      ClientRequestToken = schema.new({
         id = id.from(_N, "ImportNotebookInput", "ClientRequestToken"),
         type = "string",
         name = "ClientRequestToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ImportNotebookOutput = schema.new({
   id = id.from(_N, "ImportNotebookOutput"),
   type = "structure",
   members = {
      NotebookId = schema.new({
         id = id.from(_N, "ImportNotebookOutput", "NotebookId"),
         type = "string",
         name = "NotebookId",
         target_id = prelude.String.id,
      }),
   },
})

M.ListApplicationDPUSizesInput = schema.new({
   id = id.from(_N, "ListApplicationDPUSizesInput"),
   type = "structure",
   members = {
      MaxResults = schema.new({
         id = id.from(_N, "ListApplicationDPUSizesInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListApplicationDPUSizesInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ApplicationDPUSizes = schema.new({
   id = id.from(_N, "ApplicationDPUSizes"),
   type = "structure",
   members = {
      ApplicationRuntimeId = schema.new({
         id = id.from(_N, "ApplicationDPUSizes", "ApplicationRuntimeId"),
         type = "string",
         name = "ApplicationRuntimeId",
         target_id = prelude.String.id,
      }),
      SupportedDPUSizes = schema.new({
         id = id.from(_N, "ApplicationDPUSizes", "SupportedDPUSizes"),
         type = "list",
         name = "SupportedDPUSizes",
         target_id = prelude.Document.id,
         list_member = prelude.Integer,
      }),
   },
})

M.ListApplicationDPUSizesOutput = schema.new({
   id = id.from(_N, "ListApplicationDPUSizesOutput"),
   type = "structure",
   members = {
      ApplicationDPUSizes = schema.new({
         id = id.from(_N, "ListApplicationDPUSizesOutput", "ApplicationDPUSizes"),
         type = "list",
         name = "ApplicationDPUSizes",
         target_id = prelude.Document.id,
         list_member = M.ApplicationDPUSizes,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListApplicationDPUSizesOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListCalculationExecutionsInput = schema.new({
   id = id.from(_N, "ListCalculationExecutionsRequest"),
   type = "structure",
   members = {
      SessionId = schema.new({
         id = id.from(_N, "ListCalculationExecutionsInput", "SessionId"),
         type = "string",
         name = "SessionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      StateFilter = schema.new({
         id = id.from(_N, "ListCalculationExecutionsInput", "StateFilter"),
         type = "string",
         name = "StateFilter",
         target_id = prelude.String.id,
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListCalculationExecutionsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListCalculationExecutionsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.CalculationSummary = schema.new({
   id = id.from(_N, "CalculationSummary"),
   type = "structure",
   members = {
      CalculationExecutionId = schema.new({
         id = id.from(_N, "CalculationSummary", "CalculationExecutionId"),
         type = "string",
         name = "CalculationExecutionId",
         target_id = prelude.String.id,
      }),
      Description = schema.new({
         id = id.from(_N, "CalculationSummary", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "CalculationSummary", "Status"),
         type = "structure",
         name = "Status",
         target_id = id.from(_N, "CalculationStatus"),
         target = M.CalculationStatus,
      }),
   },
})

M.ListCalculationExecutionsOutput = schema.new({
   id = id.from(_N, "ListCalculationExecutionsResponse"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListCalculationExecutionsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      Calculations = schema.new({
         id = id.from(_N, "ListCalculationExecutionsOutput", "Calculations"),
         type = "list",
         name = "Calculations",
         target_id = prelude.Document.id,
         list_member = M.CalculationSummary,
      }),
   },
})

M.ListCapacityReservationsInput = schema.new({
   id = id.from(_N, "ListCapacityReservationsInput"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListCapacityReservationsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListCapacityReservationsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
   },
})

M.ListCapacityReservationsOutput = schema.new({
   id = id.from(_N, "ListCapacityReservationsOutput"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListCapacityReservationsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      CapacityReservations = schema.new({
         id = id.from(_N, "ListCapacityReservationsOutput", "CapacityReservations"),
         type = "list",
         name = "CapacityReservations",
         target_id = prelude.Document.id,
         list_member = M.CapacityReservation,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ListDatabasesInput = schema.new({
   id = id.from(_N, "ListDatabasesInput"),
   type = "structure",
   members = {
      CatalogName = schema.new({
         id = id.from(_N, "ListDatabasesInput", "CatalogName"),
         type = "string",
         name = "CatalogName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListDatabasesInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListDatabasesInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
      WorkGroup = schema.new({
         id = id.from(_N, "ListDatabasesInput", "WorkGroup"),
         type = "string",
         name = "WorkGroup",
         target_id = prelude.String.id,
      }),
   },
})

M.ListDatabasesOutput = schema.new({
   id = id.from(_N, "ListDatabasesOutput"),
   type = "structure",
   members = {
      DatabaseList = schema.new({
         id = id.from(_N, "ListDatabasesOutput", "DatabaseList"),
         type = "list",
         name = "DatabaseList",
         target_id = prelude.Document.id,
         list_member = M.Database,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListDatabasesOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListDataCatalogsInput = schema.new({
   id = id.from(_N, "ListDataCatalogsInput"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListDataCatalogsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListDataCatalogsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
      WorkGroup = schema.new({
         id = id.from(_N, "ListDataCatalogsInput", "WorkGroup"),
         type = "string",
         name = "WorkGroup",
         target_id = prelude.String.id,
      }),
   },
})

M.DataCatalogSummary = schema.new({
   id = id.from(_N, "DataCatalogSummary"),
   type = "structure",
   members = {
      CatalogName = schema.new({
         id = id.from(_N, "DataCatalogSummary", "CatalogName"),
         type = "string",
         name = "CatalogName",
         target_id = prelude.String.id,
      }),
      Type = schema.new({
         id = id.from(_N, "DataCatalogSummary", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "DataCatalogSummary", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      ConnectionType = schema.new({
         id = id.from(_N, "DataCatalogSummary", "ConnectionType"),
         type = "string",
         name = "ConnectionType",
         target_id = prelude.String.id,
      }),
      Error = schema.new({
         id = id.from(_N, "DataCatalogSummary", "Error"),
         type = "string",
         name = "Error",
         target_id = prelude.String.id,
      }),
   },
})

M.ListDataCatalogsOutput = schema.new({
   id = id.from(_N, "ListDataCatalogsOutput"),
   type = "structure",
   members = {
      DataCatalogsSummary = schema.new({
         id = id.from(_N, "ListDataCatalogsOutput", "DataCatalogsSummary"),
         type = "list",
         name = "DataCatalogsSummary",
         target_id = prelude.Document.id,
         list_member = M.DataCatalogSummary,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListDataCatalogsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListEngineVersionsInput = schema.new({
   id = id.from(_N, "ListEngineVersionsInput"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListEngineVersionsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListEngineVersionsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
   },
})

M.ListEngineVersionsOutput = schema.new({
   id = id.from(_N, "ListEngineVersionsOutput"),
   type = "structure",
   members = {
      EngineVersions = schema.new({
         id = id.from(_N, "ListEngineVersionsOutput", "EngineVersions"),
         type = "list",
         name = "EngineVersions",
         target_id = prelude.Document.id,
         list_member = M.EngineVersion,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListEngineVersionsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListExecutorsInput = schema.new({
   id = id.from(_N, "ListExecutorsRequest"),
   type = "structure",
   members = {
      SessionId = schema.new({
         id = id.from(_N, "ListExecutorsInput", "SessionId"),
         type = "string",
         name = "SessionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ExecutorStateFilter = schema.new({
         id = id.from(_N, "ListExecutorsInput", "ExecutorStateFilter"),
         type = "string",
         name = "ExecutorStateFilter",
         target_id = prelude.String.id,
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListExecutorsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListExecutorsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ExecutorsSummary = schema.new({
   id = id.from(_N, "ExecutorsSummary"),
   type = "structure",
   members = {
      ExecutorId = schema.new({
         id = id.from(_N, "ExecutorsSummary", "ExecutorId"),
         type = "string",
         name = "ExecutorId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ExecutorType = schema.new({
         id = id.from(_N, "ExecutorsSummary", "ExecutorType"),
         type = "string",
         name = "ExecutorType",
         target_id = prelude.String.id,
      }),
      StartDateTime = schema.new({
         id = id.from(_N, "ExecutorsSummary", "StartDateTime"),
         type = "long",
         name = "StartDateTime",
         target_id = prelude.Long.id,
      }),
      TerminationDateTime = schema.new({
         id = id.from(_N, "ExecutorsSummary", "TerminationDateTime"),
         type = "long",
         name = "TerminationDateTime",
         target_id = prelude.Long.id,
      }),
      ExecutorState = schema.new({
         id = id.from(_N, "ExecutorsSummary", "ExecutorState"),
         type = "string",
         name = "ExecutorState",
         target_id = prelude.String.id,
      }),
      ExecutorSize = schema.new({
         id = id.from(_N, "ExecutorsSummary", "ExecutorSize"),
         type = "long",
         name = "ExecutorSize",
         target_id = prelude.Long.id,
      }),
   },
})

M.ListExecutorsOutput = schema.new({
   id = id.from(_N, "ListExecutorsResponse"),
   type = "structure",
   members = {
      SessionId = schema.new({
         id = id.from(_N, "ListExecutorsOutput", "SessionId"),
         type = "string",
         name = "SessionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListExecutorsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      ExecutorsSummary = schema.new({
         id = id.from(_N, "ListExecutorsOutput", "ExecutorsSummary"),
         type = "list",
         name = "ExecutorsSummary",
         target_id = prelude.Document.id,
         list_member = M.ExecutorsSummary,
      }),
   },
})

M.ListNamedQueriesInput = schema.new({
   id = id.from(_N, "ListNamedQueriesInput"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListNamedQueriesInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListNamedQueriesInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
      WorkGroup = schema.new({
         id = id.from(_N, "ListNamedQueriesInput", "WorkGroup"),
         type = "string",
         name = "WorkGroup",
         target_id = prelude.String.id,
      }),
   },
})

M.ListNamedQueriesOutput = schema.new({
   id = id.from(_N, "ListNamedQueriesOutput"),
   type = "structure",
   members = {
      NamedQueryIds = schema.new({
         id = id.from(_N, "ListNamedQueriesOutput", "NamedQueryIds"),
         type = "list",
         name = "NamedQueryIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListNamedQueriesOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.FilterDefinition = schema.new({
   id = id.from(_N, "FilterDefinition"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "FilterDefinition", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
   },
})

M.ListNotebookMetadataInput = schema.new({
   id = id.from(_N, "ListNotebookMetadataInput"),
   type = "structure",
   members = {
      Filters = schema.new({
         id = id.from(_N, "ListNotebookMetadataInput", "Filters"),
         type = "structure",
         name = "Filters",
         target_id = id.from(_N, "FilterDefinition"),
         target = M.FilterDefinition,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListNotebookMetadataInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListNotebookMetadataInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
      WorkGroup = schema.new({
         id = id.from(_N, "ListNotebookMetadataInput", "WorkGroup"),
         type = "string",
         name = "WorkGroup",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ListNotebookMetadataOutput = schema.new({
   id = id.from(_N, "ListNotebookMetadataOutput"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListNotebookMetadataOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      NotebookMetadataList = schema.new({
         id = id.from(_N, "ListNotebookMetadataOutput", "NotebookMetadataList"),
         type = "list",
         name = "NotebookMetadataList",
         target_id = prelude.Document.id,
         list_member = M.NotebookMetadata,
      }),
   },
})

M.ListNotebookSessionsInput = schema.new({
   id = id.from(_N, "ListNotebookSessionsRequest"),
   type = "structure",
   members = {
      NotebookId = schema.new({
         id = id.from(_N, "ListNotebookSessionsInput", "NotebookId"),
         type = "string",
         name = "NotebookId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListNotebookSessionsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListNotebookSessionsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.NotebookSessionSummary = schema.new({
   id = id.from(_N, "NotebookSessionSummary"),
   type = "structure",
   members = {
      SessionId = schema.new({
         id = id.from(_N, "NotebookSessionSummary", "SessionId"),
         type = "string",
         name = "SessionId",
         target_id = prelude.String.id,
      }),
      CreationTime = schema.new({
         id = id.from(_N, "NotebookSessionSummary", "CreationTime"),
         type = "timestamp",
         name = "CreationTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.ListNotebookSessionsOutput = schema.new({
   id = id.from(_N, "ListNotebookSessionsResponse"),
   type = "structure",
   members = {
      NotebookSessionsList = schema.new({
         id = id.from(_N, "ListNotebookSessionsOutput", "NotebookSessionsList"),
         type = "list",
         name = "NotebookSessionsList",
         target_id = prelude.Document.id,
         list_member = M.NotebookSessionSummary,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListNotebookSessionsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListPreparedStatementsInput = schema.new({
   id = id.from(_N, "ListPreparedStatementsInput"),
   type = "structure",
   members = {
      WorkGroup = schema.new({
         id = id.from(_N, "ListPreparedStatementsInput", "WorkGroup"),
         type = "string",
         name = "WorkGroup",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListPreparedStatementsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListPreparedStatementsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
   },
})

M.PreparedStatementSummary = schema.new({
   id = id.from(_N, "PreparedStatementSummary"),
   type = "structure",
   members = {
      StatementName = schema.new({
         id = id.from(_N, "PreparedStatementSummary", "StatementName"),
         type = "string",
         name = "StatementName",
         target_id = prelude.String.id,
      }),
      LastModifiedTime = schema.new({
         id = id.from(_N, "PreparedStatementSummary", "LastModifiedTime"),
         type = "timestamp",
         name = "LastModifiedTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.ListPreparedStatementsOutput = schema.new({
   id = id.from(_N, "ListPreparedStatementsOutput"),
   type = "structure",
   members = {
      PreparedStatements = schema.new({
         id = id.from(_N, "ListPreparedStatementsOutput", "PreparedStatements"),
         type = "list",
         name = "PreparedStatements",
         target_id = prelude.Document.id,
         list_member = M.PreparedStatementSummary,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListPreparedStatementsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListQueryExecutionsInput = schema.new({
   id = id.from(_N, "ListQueryExecutionsInput"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListQueryExecutionsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListQueryExecutionsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
      WorkGroup = schema.new({
         id = id.from(_N, "ListQueryExecutionsInput", "WorkGroup"),
         type = "string",
         name = "WorkGroup",
         target_id = prelude.String.id,
      }),
   },
})

M.ListQueryExecutionsOutput = schema.new({
   id = id.from(_N, "ListQueryExecutionsOutput"),
   type = "structure",
   members = {
      QueryExecutionIds = schema.new({
         id = id.from(_N, "ListQueryExecutionsOutput", "QueryExecutionIds"),
         type = "list",
         name = "QueryExecutionIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListQueryExecutionsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListSessionsInput = schema.new({
   id = id.from(_N, "ListSessionsRequest"),
   type = "structure",
   members = {
      WorkGroup = schema.new({
         id = id.from(_N, "ListSessionsInput", "WorkGroup"),
         type = "string",
         name = "WorkGroup",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      StateFilter = schema.new({
         id = id.from(_N, "ListSessionsInput", "StateFilter"),
         type = "string",
         name = "StateFilter",
         target_id = prelude.String.id,
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListSessionsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListSessionsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.SessionSummary = schema.new({
   id = id.from(_N, "SessionSummary"),
   type = "structure",
   members = {
      SessionId = schema.new({
         id = id.from(_N, "SessionSummary", "SessionId"),
         type = "string",
         name = "SessionId",
         target_id = prelude.String.id,
      }),
      Description = schema.new({
         id = id.from(_N, "SessionSummary", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      EngineVersion = schema.new({
         id = id.from(_N, "SessionSummary", "EngineVersion"),
         type = "structure",
         name = "EngineVersion",
         target_id = id.from(_N, "EngineVersion"),
         target = M.EngineVersion,
      }),
      NotebookVersion = schema.new({
         id = id.from(_N, "SessionSummary", "NotebookVersion"),
         type = "string",
         name = "NotebookVersion",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "SessionSummary", "Status"),
         type = "structure",
         name = "Status",
         target_id = id.from(_N, "SessionStatus"),
         target = M.SessionStatus,
      }),
   },
})

M.ListSessionsOutput = schema.new({
   id = id.from(_N, "ListSessionsResponse"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListSessionsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      Sessions = schema.new({
         id = id.from(_N, "ListSessionsOutput", "Sessions"),
         type = "list",
         name = "Sessions",
         target_id = prelude.Document.id,
         list_member = M.SessionSummary,
      }),
   },
})

M.ListTableMetadataInput = schema.new({
   id = id.from(_N, "ListTableMetadataInput"),
   type = "structure",
   members = {
      CatalogName = schema.new({
         id = id.from(_N, "ListTableMetadataInput", "CatalogName"),
         type = "string",
         name = "CatalogName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DatabaseName = schema.new({
         id = id.from(_N, "ListTableMetadataInput", "DatabaseName"),
         type = "string",
         name = "DatabaseName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Expression = schema.new({
         id = id.from(_N, "ListTableMetadataInput", "Expression"),
         type = "string",
         name = "Expression",
         target_id = prelude.String.id,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListTableMetadataInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListTableMetadataInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
      WorkGroup = schema.new({
         id = id.from(_N, "ListTableMetadataInput", "WorkGroup"),
         type = "string",
         name = "WorkGroup",
         target_id = prelude.String.id,
      }),
   },
})

M.ListTableMetadataOutput = schema.new({
   id = id.from(_N, "ListTableMetadataOutput"),
   type = "structure",
   members = {
      TableMetadataList = schema.new({
         id = id.from(_N, "ListTableMetadataOutput", "TableMetadataList"),
         type = "list",
         name = "TableMetadataList",
         target_id = prelude.Document.id,
         list_member = M.TableMetadata,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListTableMetadataOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListTagsForResourceInput = schema.new({
   id = id.from(_N, "ListTagsForResourceInput"),
   type = "structure",
   members = {
      ResourceARN = schema.new({
         id = id.from(_N, "ListTagsForResourceInput", "ResourceARN"),
         type = "string",
         name = "ResourceARN",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListTagsForResourceInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListTagsForResourceInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
   },
})

M.ListTagsForResourceOutput = schema.new({
   id = id.from(_N, "ListTagsForResourceOutput"),
   type = "structure",
   members = {
      Tags = schema.new({
         id = id.from(_N, "ListTagsForResourceOutput", "Tags"),
         type = "list",
         name = "Tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListTagsForResourceOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListWorkGroupsInput = schema.new({
   id = id.from(_N, "ListWorkGroupsInput"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListWorkGroupsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListWorkGroupsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
   },
})

M.WorkGroupSummary = schema.new({
   id = id.from(_N, "WorkGroupSummary"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "WorkGroupSummary", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      State = schema.new({
         id = id.from(_N, "WorkGroupSummary", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
      }),
      Description = schema.new({
         id = id.from(_N, "WorkGroupSummary", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      CreationTime = schema.new({
         id = id.from(_N, "WorkGroupSummary", "CreationTime"),
         type = "timestamp",
         name = "CreationTime",
         target_id = prelude.Timestamp.id,
      }),
      EngineVersion = schema.new({
         id = id.from(_N, "WorkGroupSummary", "EngineVersion"),
         type = "structure",
         name = "EngineVersion",
         target_id = id.from(_N, "EngineVersion"),
         target = M.EngineVersion,
      }),
      IdentityCenterApplicationArn = schema.new({
         id = id.from(_N, "WorkGroupSummary", "IdentityCenterApplicationArn"),
         type = "string",
         name = "IdentityCenterApplicationArn",
         target_id = prelude.String.id,
      }),
   },
})

M.ListWorkGroupsOutput = schema.new({
   id = id.from(_N, "ListWorkGroupsOutput"),
   type = "structure",
   members = {
      WorkGroups = schema.new({
         id = id.from(_N, "ListWorkGroupsOutput", "WorkGroups"),
         type = "list",
         name = "WorkGroups",
         target_id = prelude.Document.id,
         list_member = M.WorkGroupSummary,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListWorkGroupsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.PutCapacityAssignmentConfigurationInput = schema.new({
   id = id.from(_N, "PutCapacityAssignmentConfigurationInput"),
   type = "structure",
   members = {
      CapacityReservationName = schema.new({
         id = id.from(_N, "PutCapacityAssignmentConfigurationInput", "CapacityReservationName"),
         type = "string",
         name = "CapacityReservationName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      CapacityAssignments = schema.new({
         id = id.from(_N, "PutCapacityAssignmentConfigurationInput", "CapacityAssignments"),
         type = "list",
         name = "CapacityAssignments",
         target_id = prelude.Document.id,
         list_member = M.CapacityAssignment,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.PutCapacityAssignmentConfigurationOutput = schema.new({
   id = id.from(_N, "PutCapacityAssignmentConfigurationOutput"),
   type = "structure",
})

M.CalculationConfiguration = schema.new({
   id = id.from(_N, "CalculationConfiguration"),
   type = "structure",
   members = {
      CodeBlock = schema.new({
         id = id.from(_N, "CalculationConfiguration", "CodeBlock"),
         type = "string",
         name = "CodeBlock",
         target_id = prelude.String.id,
      }),
   },
})

M.StartCalculationExecutionInput = schema.new({
   id = id.from(_N, "StartCalculationExecutionRequest"),
   type = "structure",
   members = {
      SessionId = schema.new({
         id = id.from(_N, "StartCalculationExecutionInput", "SessionId"),
         type = "string",
         name = "SessionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Description = schema.new({
         id = id.from(_N, "StartCalculationExecutionInput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      CalculationConfiguration = schema.new({
         id = id.from(_N, "StartCalculationExecutionInput", "CalculationConfiguration"),
         type = "structure",
         name = "CalculationConfiguration",
         target_id = id.from(_N, "CalculationConfiguration"),
         target = M.CalculationConfiguration,
      }),
      CodeBlock = schema.new({
         id = id.from(_N, "StartCalculationExecutionInput", "CodeBlock"),
         type = "string",
         name = "CodeBlock",
         target_id = prelude.String.id,
      }),
      ClientRequestToken = schema.new({
         id = id.from(_N, "StartCalculationExecutionInput", "ClientRequestToken"),
         type = "string",
         name = "ClientRequestToken",
         target_id = prelude.String.id,
      }),
   },
})

M.StartCalculationExecutionOutput = schema.new({
   id = id.from(_N, "StartCalculationExecutionResponse"),
   type = "structure",
   members = {
      CalculationExecutionId = schema.new({
         id = id.from(_N, "StartCalculationExecutionOutput", "CalculationExecutionId"),
         type = "string",
         name = "CalculationExecutionId",
         target_id = prelude.String.id,
      }),
      State = schema.new({
         id = id.from(_N, "StartCalculationExecutionOutput", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
      }),
   },
})

M.StartQueryExecutionInput = schema.new({
   id = id.from(_N, "StartQueryExecutionInput"),
   type = "structure",
   members = {
      QueryString = schema.new({
         id = id.from(_N, "StartQueryExecutionInput", "QueryString"),
         type = "string",
         name = "QueryString",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ClientRequestToken = schema.new({
         id = id.from(_N, "StartQueryExecutionInput", "ClientRequestToken"),
         type = "string",
         name = "ClientRequestToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      QueryExecutionContext = schema.new({
         id = id.from(_N, "StartQueryExecutionInput", "QueryExecutionContext"),
         type = "structure",
         name = "QueryExecutionContext",
         target_id = id.from(_N, "QueryExecutionContext"),
         target = M.QueryExecutionContext,
      }),
      ResultConfiguration = schema.new({
         id = id.from(_N, "StartQueryExecutionInput", "ResultConfiguration"),
         type = "structure",
         name = "ResultConfiguration",
         target_id = id.from(_N, "ResultConfiguration"),
         target = M.ResultConfiguration,
      }),
      WorkGroup = schema.new({
         id = id.from(_N, "StartQueryExecutionInput", "WorkGroup"),
         type = "string",
         name = "WorkGroup",
         target_id = prelude.String.id,
      }),
      ExecutionParameters = schema.new({
         id = id.from(_N, "StartQueryExecutionInput", "ExecutionParameters"),
         type = "list",
         name = "ExecutionParameters",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      ResultReuseConfiguration = schema.new({
         id = id.from(_N, "StartQueryExecutionInput", "ResultReuseConfiguration"),
         type = "structure",
         name = "ResultReuseConfiguration",
         target_id = id.from(_N, "ResultReuseConfiguration"),
         target = M.ResultReuseConfiguration,
      }),
      EngineConfiguration = schema.new({
         id = id.from(_N, "StartQueryExecutionInput", "EngineConfiguration"),
         type = "structure",
         name = "EngineConfiguration",
         target_id = id.from(_N, "EngineConfiguration"),
         target = M.EngineConfiguration,
      }),
   },
})

M.StartQueryExecutionOutput = schema.new({
   id = id.from(_N, "StartQueryExecutionOutput"),
   type = "structure",
   members = {
      QueryExecutionId = schema.new({
         id = id.from(_N, "StartQueryExecutionOutput", "QueryExecutionId"),
         type = "string",
         name = "QueryExecutionId",
         target_id = prelude.String.id,
      }),
   },
})

M.SessionAlreadyExistsException = schema.new({
   id = id.from(_N, "SessionAlreadyExistsException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "SessionAlreadyExistsException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.StartSessionInput = schema.new({
   id = id.from(_N, "StartSessionRequest"),
   type = "structure",
   members = {
      Description = schema.new({
         id = id.from(_N, "StartSessionInput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      WorkGroup = schema.new({
         id = id.from(_N, "StartSessionInput", "WorkGroup"),
         type = "string",
         name = "WorkGroup",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      EngineConfiguration = schema.new({
         id = id.from(_N, "StartSessionInput", "EngineConfiguration"),
         type = "structure",
         name = "EngineConfiguration",
         target_id = id.from(_N, "EngineConfiguration"),
         target = M.EngineConfiguration,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ExecutionRole = schema.new({
         id = id.from(_N, "StartSessionInput", "ExecutionRole"),
         type = "string",
         name = "ExecutionRole",
         target_id = prelude.String.id,
      }),
      MonitoringConfiguration = schema.new({
         id = id.from(_N, "StartSessionInput", "MonitoringConfiguration"),
         type = "structure",
         name = "MonitoringConfiguration",
         target_id = id.from(_N, "MonitoringConfiguration"),
         target = M.MonitoringConfiguration,
      }),
      NotebookVersion = schema.new({
         id = id.from(_N, "StartSessionInput", "NotebookVersion"),
         type = "string",
         name = "NotebookVersion",
         target_id = prelude.String.id,
      }),
      SessionIdleTimeoutInMinutes = schema.new({
         id = id.from(_N, "StartSessionInput", "SessionIdleTimeoutInMinutes"),
         type = "integer",
         name = "SessionIdleTimeoutInMinutes",
         target_id = prelude.Integer.id,
      }),
      ClientRequestToken = schema.new({
         id = id.from(_N, "StartSessionInput", "ClientRequestToken"),
         type = "string",
         name = "ClientRequestToken",
         target_id = prelude.String.id,
      }),
      Tags = schema.new({
         id = id.from(_N, "StartSessionInput", "Tags"),
         type = "list",
         name = "Tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
      CopyWorkGroupTags = schema.new({
         id = id.from(_N, "StartSessionInput", "CopyWorkGroupTags"),
         type = "boolean",
         name = "CopyWorkGroupTags",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.StartSessionOutput = schema.new({
   id = id.from(_N, "StartSessionResponse"),
   type = "structure",
   members = {
      SessionId = schema.new({
         id = id.from(_N, "StartSessionOutput", "SessionId"),
         type = "string",
         name = "SessionId",
         target_id = prelude.String.id,
      }),
      State = schema.new({
         id = id.from(_N, "StartSessionOutput", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
      }),
   },
})

M.StopCalculationExecutionInput = schema.new({
   id = id.from(_N, "StopCalculationExecutionRequest"),
   type = "structure",
   members = {
      CalculationExecutionId = schema.new({
         id = id.from(_N, "StopCalculationExecutionInput", "CalculationExecutionId"),
         type = "string",
         name = "CalculationExecutionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.StopCalculationExecutionOutput = schema.new({
   id = id.from(_N, "StopCalculationExecutionResponse"),
   type = "structure",
   members = {
      State = schema.new({
         id = id.from(_N, "StopCalculationExecutionOutput", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
      }),
   },
})

M.StopQueryExecutionInput = schema.new({
   id = id.from(_N, "StopQueryExecutionInput"),
   type = "structure",
   members = {
      QueryExecutionId = schema.new({
         id = id.from(_N, "StopQueryExecutionInput", "QueryExecutionId"),
         type = "string",
         name = "QueryExecutionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
   },
})

M.StopQueryExecutionOutput = schema.new({
   id = id.from(_N, "StopQueryExecutionOutput"),
   type = "structure",
})

M.TagResourceInput = schema.new({
   id = id.from(_N, "TagResourceInput"),
   type = "structure",
   members = {
      ResourceARN = schema.new({
         id = id.from(_N, "TagResourceInput", "ResourceARN"),
         type = "string",
         name = "ResourceARN",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Tags = schema.new({
         id = id.from(_N, "TagResourceInput", "Tags"),
         type = "list",
         name = "Tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.TagResourceOutput = schema.new({
   id = id.from(_N, "TagResourceOutput"),
   type = "structure",
})

M.TerminateSessionInput = schema.new({
   id = id.from(_N, "TerminateSessionRequest"),
   type = "structure",
   members = {
      SessionId = schema.new({
         id = id.from(_N, "TerminateSessionInput", "SessionId"),
         type = "string",
         name = "SessionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.TerminateSessionOutput = schema.new({
   id = id.from(_N, "TerminateSessionResponse"),
   type = "structure",
   members = {
      State = schema.new({
         id = id.from(_N, "TerminateSessionOutput", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
      }),
   },
})

M.UntagResourceInput = schema.new({
   id = id.from(_N, "UntagResourceInput"),
   type = "structure",
   members = {
      ResourceARN = schema.new({
         id = id.from(_N, "UntagResourceInput", "ResourceARN"),
         type = "string",
         name = "ResourceARN",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      TagKeys = schema.new({
         id = id.from(_N, "UntagResourceInput", "TagKeys"),
         type = "list",
         name = "TagKeys",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UntagResourceOutput = schema.new({
   id = id.from(_N, "UntagResourceOutput"),
   type = "structure",
})

M.UpdateCapacityReservationInput = schema.new({
   id = id.from(_N, "UpdateCapacityReservationInput"),
   type = "structure",
   members = {
      TargetDpus = schema.new({
         id = id.from(_N, "UpdateCapacityReservationInput", "TargetDpus"),
         type = "integer",
         name = "TargetDpus",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Name = schema.new({
         id = id.from(_N, "UpdateCapacityReservationInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UpdateCapacityReservationOutput = schema.new({
   id = id.from(_N, "UpdateCapacityReservationOutput"),
   type = "structure",
})

M.UpdateDataCatalogInput = schema.new({
   id = id.from(_N, "UpdateDataCatalogInput"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "UpdateDataCatalogInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Type = schema.new({
         id = id.from(_N, "UpdateDataCatalogInput", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Description = schema.new({
         id = id.from(_N, "UpdateDataCatalogInput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      Parameters = schema.new({
         id = id.from(_N, "UpdateDataCatalogInput", "Parameters"),
         type = "map",
         name = "Parameters",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.UpdateDataCatalogOutput = schema.new({
   id = id.from(_N, "UpdateDataCatalogOutput"),
   type = "structure",
})

M.UpdateNamedQueryInput = schema.new({
   id = id.from(_N, "UpdateNamedQueryInput"),
   type = "structure",
   members = {
      NamedQueryId = schema.new({
         id = id.from(_N, "UpdateNamedQueryInput", "NamedQueryId"),
         type = "string",
         name = "NamedQueryId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Name = schema.new({
         id = id.from(_N, "UpdateNamedQueryInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Description = schema.new({
         id = id.from(_N, "UpdateNamedQueryInput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      QueryString = schema.new({
         id = id.from(_N, "UpdateNamedQueryInput", "QueryString"),
         type = "string",
         name = "QueryString",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UpdateNamedQueryOutput = schema.new({
   id = id.from(_N, "UpdateNamedQueryOutput"),
   type = "structure",
})

M.UpdateNotebookInput = schema.new({
   id = id.from(_N, "UpdateNotebookInput"),
   type = "structure",
   members = {
      NotebookId = schema.new({
         id = id.from(_N, "UpdateNotebookInput", "NotebookId"),
         type = "string",
         name = "NotebookId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Payload = schema.new({
         id = id.from(_N, "UpdateNotebookInput", "Payload"),
         type = "string",
         name = "Payload",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Type = schema.new({
         id = id.from(_N, "UpdateNotebookInput", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      SessionId = schema.new({
         id = id.from(_N, "UpdateNotebookInput", "SessionId"),
         type = "string",
         name = "SessionId",
         target_id = prelude.String.id,
      }),
      ClientRequestToken = schema.new({
         id = id.from(_N, "UpdateNotebookInput", "ClientRequestToken"),
         type = "string",
         name = "ClientRequestToken",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateNotebookOutput = schema.new({
   id = id.from(_N, "UpdateNotebookOutput"),
   type = "structure",
})

M.UpdateNotebookMetadataInput = schema.new({
   id = id.from(_N, "UpdateNotebookMetadataInput"),
   type = "structure",
   members = {
      NotebookId = schema.new({
         id = id.from(_N, "UpdateNotebookMetadataInput", "NotebookId"),
         type = "string",
         name = "NotebookId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ClientRequestToken = schema.new({
         id = id.from(_N, "UpdateNotebookMetadataInput", "ClientRequestToken"),
         type = "string",
         name = "ClientRequestToken",
         target_id = prelude.String.id,
      }),
      Name = schema.new({
         id = id.from(_N, "UpdateNotebookMetadataInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UpdateNotebookMetadataOutput = schema.new({
   id = id.from(_N, "UpdateNotebookMetadataOutput"),
   type = "structure",
})

M.UpdatePreparedStatementInput = schema.new({
   id = id.from(_N, "UpdatePreparedStatementInput"),
   type = "structure",
   members = {
      StatementName = schema.new({
         id = id.from(_N, "UpdatePreparedStatementInput", "StatementName"),
         type = "string",
         name = "StatementName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      WorkGroup = schema.new({
         id = id.from(_N, "UpdatePreparedStatementInput", "WorkGroup"),
         type = "string",
         name = "WorkGroup",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      QueryStatement = schema.new({
         id = id.from(_N, "UpdatePreparedStatementInput", "QueryStatement"),
         type = "string",
         name = "QueryStatement",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Description = schema.new({
         id = id.from(_N, "UpdatePreparedStatementInput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdatePreparedStatementOutput = schema.new({
   id = id.from(_N, "UpdatePreparedStatementOutput"),
   type = "structure",
})

M.ManagedQueryResultsConfigurationUpdates = schema.new({
   id = id.from(_N, "ManagedQueryResultsConfigurationUpdates"),
   type = "structure",
   members = {
      Enabled = schema.new({
         id = id.from(_N, "ManagedQueryResultsConfigurationUpdates", "Enabled"),
         type = "boolean",
         name = "Enabled",
         target_id = prelude.Boolean.id,
      }),
      EncryptionConfiguration = schema.new({
         id = id.from(_N, "ManagedQueryResultsConfigurationUpdates", "EncryptionConfiguration"),
         type = "structure",
         name = "EncryptionConfiguration",
         target_id = id.from(_N, "ManagedQueryResultsEncryptionConfiguration"),
         target = M.ManagedQueryResultsEncryptionConfiguration,
      }),
      RemoveEncryptionConfiguration = schema.new({
         id = id.from(_N, "ManagedQueryResultsConfigurationUpdates", "RemoveEncryptionConfiguration"),
         type = "boolean",
         name = "RemoveEncryptionConfiguration",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.ResultConfigurationUpdates = schema.new({
   id = id.from(_N, "ResultConfigurationUpdates"),
   type = "structure",
   members = {
      OutputLocation = schema.new({
         id = id.from(_N, "ResultConfigurationUpdates", "OutputLocation"),
         type = "string",
         name = "OutputLocation",
         target_id = prelude.String.id,
      }),
      RemoveOutputLocation = schema.new({
         id = id.from(_N, "ResultConfigurationUpdates", "RemoveOutputLocation"),
         type = "boolean",
         name = "RemoveOutputLocation",
         target_id = prelude.Boolean.id,
      }),
      EncryptionConfiguration = schema.new({
         id = id.from(_N, "ResultConfigurationUpdates", "EncryptionConfiguration"),
         type = "structure",
         name = "EncryptionConfiguration",
         target_id = id.from(_N, "EncryptionConfiguration"),
         target = M.EncryptionConfiguration,
      }),
      RemoveEncryptionConfiguration = schema.new({
         id = id.from(_N, "ResultConfigurationUpdates", "RemoveEncryptionConfiguration"),
         type = "boolean",
         name = "RemoveEncryptionConfiguration",
         target_id = prelude.Boolean.id,
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "ResultConfigurationUpdates", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
      }),
      RemoveExpectedBucketOwner = schema.new({
         id = id.from(_N, "ResultConfigurationUpdates", "RemoveExpectedBucketOwner"),
         type = "boolean",
         name = "RemoveExpectedBucketOwner",
         target_id = prelude.Boolean.id,
      }),
      AclConfiguration = schema.new({
         id = id.from(_N, "ResultConfigurationUpdates", "AclConfiguration"),
         type = "structure",
         name = "AclConfiguration",
         target_id = id.from(_N, "AclConfiguration"),
         target = M.AclConfiguration,
      }),
      RemoveAclConfiguration = schema.new({
         id = id.from(_N, "ResultConfigurationUpdates", "RemoveAclConfiguration"),
         type = "boolean",
         name = "RemoveAclConfiguration",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.WorkGroupConfigurationUpdates = schema.new({
   id = id.from(_N, "WorkGroupConfigurationUpdates"),
   type = "structure",
   members = {
      EnforceWorkGroupConfiguration = schema.new({
         id = id.from(_N, "WorkGroupConfigurationUpdates", "EnforceWorkGroupConfiguration"),
         type = "boolean",
         name = "EnforceWorkGroupConfiguration",
         target_id = prelude.Boolean.id,
      }),
      ResultConfigurationUpdates = schema.new({
         id = id.from(_N, "WorkGroupConfigurationUpdates", "ResultConfigurationUpdates"),
         type = "structure",
         name = "ResultConfigurationUpdates",
         target_id = id.from(_N, "ResultConfigurationUpdates"),
         target = M.ResultConfigurationUpdates,
      }),
      ManagedQueryResultsConfigurationUpdates = schema.new({
         id = id.from(_N, "WorkGroupConfigurationUpdates", "ManagedQueryResultsConfigurationUpdates"),
         type = "structure",
         name = "ManagedQueryResultsConfigurationUpdates",
         target_id = id.from(_N, "ManagedQueryResultsConfigurationUpdates"),
         target = M.ManagedQueryResultsConfigurationUpdates,
      }),
      PublishCloudWatchMetricsEnabled = schema.new({
         id = id.from(_N, "WorkGroupConfigurationUpdates", "PublishCloudWatchMetricsEnabled"),
         type = "boolean",
         name = "PublishCloudWatchMetricsEnabled",
         target_id = prelude.Boolean.id,
      }),
      BytesScannedCutoffPerQuery = schema.new({
         id = id.from(_N, "WorkGroupConfigurationUpdates", "BytesScannedCutoffPerQuery"),
         type = "long",
         name = "BytesScannedCutoffPerQuery",
         target_id = prelude.Long.id,
      }),
      RemoveBytesScannedCutoffPerQuery = schema.new({
         id = id.from(_N, "WorkGroupConfigurationUpdates", "RemoveBytesScannedCutoffPerQuery"),
         type = "boolean",
         name = "RemoveBytesScannedCutoffPerQuery",
         target_id = prelude.Boolean.id,
      }),
      RequesterPaysEnabled = schema.new({
         id = id.from(_N, "WorkGroupConfigurationUpdates", "RequesterPaysEnabled"),
         type = "boolean",
         name = "RequesterPaysEnabled",
         target_id = prelude.Boolean.id,
      }),
      EngineVersion = schema.new({
         id = id.from(_N, "WorkGroupConfigurationUpdates", "EngineVersion"),
         type = "structure",
         name = "EngineVersion",
         target_id = id.from(_N, "EngineVersion"),
         target = M.EngineVersion,
      }),
      RemoveCustomerContentEncryptionConfiguration = schema.new({
         id = id.from(_N, "WorkGroupConfigurationUpdates", "RemoveCustomerContentEncryptionConfiguration"),
         type = "boolean",
         name = "RemoveCustomerContentEncryptionConfiguration",
         target_id = prelude.Boolean.id,
      }),
      AdditionalConfiguration = schema.new({
         id = id.from(_N, "WorkGroupConfigurationUpdates", "AdditionalConfiguration"),
         type = "string",
         name = "AdditionalConfiguration",
         target_id = prelude.String.id,
      }),
      ExecutionRole = schema.new({
         id = id.from(_N, "WorkGroupConfigurationUpdates", "ExecutionRole"),
         type = "string",
         name = "ExecutionRole",
         target_id = prelude.String.id,
      }),
      CustomerContentEncryptionConfiguration = schema.new({
         id = id.from(_N, "WorkGroupConfigurationUpdates", "CustomerContentEncryptionConfiguration"),
         type = "structure",
         name = "CustomerContentEncryptionConfiguration",
         target_id = id.from(_N, "CustomerContentEncryptionConfiguration"),
         target = M.CustomerContentEncryptionConfiguration,
      }),
      EnableMinimumEncryptionConfiguration = schema.new({
         id = id.from(_N, "WorkGroupConfigurationUpdates", "EnableMinimumEncryptionConfiguration"),
         type = "boolean",
         name = "EnableMinimumEncryptionConfiguration",
         target_id = prelude.Boolean.id,
      }),
      QueryResultsS3AccessGrantsConfiguration = schema.new({
         id = id.from(_N, "WorkGroupConfigurationUpdates", "QueryResultsS3AccessGrantsConfiguration"),
         type = "structure",
         name = "QueryResultsS3AccessGrantsConfiguration",
         target_id = id.from(_N, "QueryResultsS3AccessGrantsConfiguration"),
         target = M.QueryResultsS3AccessGrantsConfiguration,
      }),
      MonitoringConfiguration = schema.new({
         id = id.from(_N, "WorkGroupConfigurationUpdates", "MonitoringConfiguration"),
         type = "structure",
         name = "MonitoringConfiguration",
         target_id = id.from(_N, "MonitoringConfiguration"),
         target = M.MonitoringConfiguration,
      }),
      EngineConfiguration = schema.new({
         id = id.from(_N, "WorkGroupConfigurationUpdates", "EngineConfiguration"),
         type = "structure",
         name = "EngineConfiguration",
         target_id = id.from(_N, "EngineConfiguration"),
         target = M.EngineConfiguration,
      }),
   },
})

M.UpdateWorkGroupInput = schema.new({
   id = id.from(_N, "UpdateWorkGroupInput"),
   type = "structure",
   members = {
      WorkGroup = schema.new({
         id = id.from(_N, "UpdateWorkGroupInput", "WorkGroup"),
         type = "string",
         name = "WorkGroup",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Description = schema.new({
         id = id.from(_N, "UpdateWorkGroupInput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      ConfigurationUpdates = schema.new({
         id = id.from(_N, "UpdateWorkGroupInput", "ConfigurationUpdates"),
         type = "structure",
         name = "ConfigurationUpdates",
         target_id = id.from(_N, "WorkGroupConfigurationUpdates"),
         target = M.WorkGroupConfigurationUpdates,
      }),
      State = schema.new({
         id = id.from(_N, "UpdateWorkGroupInput", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateWorkGroupOutput = schema.new({
   id = id.from(_N, "UpdateWorkGroupOutput"),
   type = "structure",
})

M.QueryStagePlanNode = schema.new({
   id = id.from(_N, "QueryStagePlanNode"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "QueryStagePlanNode", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Identifier = schema.new({
         id = id.from(_N, "QueryStagePlanNode", "Identifier"),
         type = "string",
         name = "Identifier",
         target_id = prelude.String.id,
      }),
      Children = schema.new({
         id = id.from(_N, "QueryStagePlanNode", "Children"),
         type = "list",
         name = "Children",
         target_id = prelude.Document.id,
         list_member = M.QueryStagePlanNode,
      }),
      RemoteSources = schema.new({
         id = id.from(_N, "QueryStagePlanNode", "RemoteSources"),
         type = "list",
         name = "RemoteSources",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.QueryStage = schema.new({
   id = id.from(_N, "QueryStage"),
   type = "structure",
   members = {
      StageId = schema.new({
         id = id.from(_N, "QueryStage", "StageId"),
         type = "long",
         name = "StageId",
         target_id = prelude.Long.id,
      }),
      State = schema.new({
         id = id.from(_N, "QueryStage", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
      }),
      OutputBytes = schema.new({
         id = id.from(_N, "QueryStage", "OutputBytes"),
         type = "long",
         name = "OutputBytes",
         target_id = prelude.Long.id,
      }),
      OutputRows = schema.new({
         id = id.from(_N, "QueryStage", "OutputRows"),
         type = "long",
         name = "OutputRows",
         target_id = prelude.Long.id,
      }),
      InputBytes = schema.new({
         id = id.from(_N, "QueryStage", "InputBytes"),
         type = "long",
         name = "InputBytes",
         target_id = prelude.Long.id,
      }),
      InputRows = schema.new({
         id = id.from(_N, "QueryStage", "InputRows"),
         type = "long",
         name = "InputRows",
         target_id = prelude.Long.id,
      }),
      ExecutionTime = schema.new({
         id = id.from(_N, "QueryStage", "ExecutionTime"),
         type = "long",
         name = "ExecutionTime",
         target_id = prelude.Long.id,
      }),
      QueryStagePlan = schema.new({
         id = id.from(_N, "QueryStage", "QueryStagePlan"),
         type = "structure",
         name = "QueryStagePlan",
         target_id = id.from(_N, "QueryStagePlanNode"),
         target = M.QueryStagePlanNode,
      }),
      SubStages = schema.new({
         id = id.from(_N, "QueryStage", "SubStages"),
         type = "list",
         name = "SubStages",
         target_id = prelude.Document.id,
         list_member = M.QueryStage,
      }),
   },
})

M.QueryRuntimeStatistics = schema.new({
   id = id.from(_N, "QueryRuntimeStatistics"),
   type = "structure",
   members = {
      Timeline = schema.new({
         id = id.from(_N, "QueryRuntimeStatistics", "Timeline"),
         type = "structure",
         name = "Timeline",
         target_id = id.from(_N, "QueryRuntimeStatisticsTimeline"),
         target = M.QueryRuntimeStatisticsTimeline,
      }),
      Rows = schema.new({
         id = id.from(_N, "QueryRuntimeStatistics", "Rows"),
         type = "structure",
         name = "Rows",
         target_id = id.from(_N, "QueryRuntimeStatisticsRows"),
         target = M.QueryRuntimeStatisticsRows,
      }),
      OutputStage = schema.new({
         id = id.from(_N, "QueryRuntimeStatistics", "OutputStage"),
         type = "structure",
         name = "OutputStage",
         target_id = id.from(_N, "QueryStage"),
         target = M.QueryStage,
      }),
   },
})

M.GetQueryRuntimeStatisticsOutput = schema.new({
   id = id.from(_N, "GetQueryRuntimeStatisticsOutput"),
   type = "structure",
   members = {
      QueryRuntimeStatistics = schema.new({
         id = id.from(_N, "GetQueryRuntimeStatisticsOutput", "QueryRuntimeStatistics"),
         type = "structure",
         name = "QueryRuntimeStatistics",
         target_id = id.from(_N, "QueryRuntimeStatistics"),
         target = M.QueryRuntimeStatistics,
      }),
   },
})


for _, s in pairs(M) do
   if type(s) == "table" and (s.type == "structure" or s.type == "union") then
      local members = rawget(s, "_members")
      if members then
         for _, ms in pairs(members) do
            if (ms.type == "structure" or ms.type == "union") and not rawget(ms, "_target") and ms.target_id then
               rawset(ms, "_target", M[ms.target_id.name])
            end
         end
      end
   end
end

M.Service = schema.service({
   id = id.from("com.amazonaws.athena", "AmazonAthena"),
   version = "2017-05-18",
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.BatchGetNamedQuery = schema.operation({
   id = id.from("com.amazonaws.athena", "BatchGetNamedQuery"),
   input = M.BatchGetNamedQueryInput,
   output = M.BatchGetNamedQueryOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.BatchGetPreparedStatement = schema.operation({
   id = id.from("com.amazonaws.athena", "BatchGetPreparedStatement"),
   input = M.BatchGetPreparedStatementInput,
   output = M.BatchGetPreparedStatementOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.BatchGetQueryExecution = schema.operation({
   id = id.from("com.amazonaws.athena", "BatchGetQueryExecution"),
   input = M.BatchGetQueryExecutionInput,
   output = M.BatchGetQueryExecutionOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CancelCapacityReservation = schema.operation({
   id = id.from("com.amazonaws.athena", "CancelCapacityReservation"),
   input = M.CancelCapacityReservationInput,
   output = M.CancelCapacityReservationOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateCapacityReservation = schema.operation({
   id = id.from("com.amazonaws.athena", "CreateCapacityReservation"),
   input = M.CreateCapacityReservationInput,
   output = M.CreateCapacityReservationOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateDataCatalog = schema.operation({
   id = id.from("com.amazonaws.athena", "CreateDataCatalog"),
   input = M.CreateDataCatalogInput,
   output = M.CreateDataCatalogOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateNamedQuery = schema.operation({
   id = id.from("com.amazonaws.athena", "CreateNamedQuery"),
   input = M.CreateNamedQueryInput,
   output = M.CreateNamedQueryOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateNotebook = schema.operation({
   id = id.from("com.amazonaws.athena", "CreateNotebook"),
   input = M.CreateNotebookInput,
   output = M.CreateNotebookOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreatePreparedStatement = schema.operation({
   id = id.from("com.amazonaws.athena", "CreatePreparedStatement"),
   input = M.CreatePreparedStatementInput,
   output = M.CreatePreparedStatementOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreatePresignedNotebookUrl = schema.operation({
   id = id.from("com.amazonaws.athena", "CreatePresignedNotebookUrl"),
   input = M.CreatePresignedNotebookUrlInput,
   output = M.CreatePresignedNotebookUrlOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateWorkGroup = schema.operation({
   id = id.from("com.amazonaws.athena", "CreateWorkGroup"),
   input = M.CreateWorkGroupInput,
   output = M.CreateWorkGroupOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteCapacityReservation = schema.operation({
   id = id.from("com.amazonaws.athena", "DeleteCapacityReservation"),
   input = M.DeleteCapacityReservationInput,
   output = M.DeleteCapacityReservationOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteDataCatalog = schema.operation({
   id = id.from("com.amazonaws.athena", "DeleteDataCatalog"),
   input = M.DeleteDataCatalogInput,
   output = M.DeleteDataCatalogOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteNamedQuery = schema.operation({
   id = id.from("com.amazonaws.athena", "DeleteNamedQuery"),
   input = M.DeleteNamedQueryInput,
   output = M.DeleteNamedQueryOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteNotebook = schema.operation({
   id = id.from("com.amazonaws.athena", "DeleteNotebook"),
   input = M.DeleteNotebookInput,
   output = M.DeleteNotebookOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeletePreparedStatement = schema.operation({
   id = id.from("com.amazonaws.athena", "DeletePreparedStatement"),
   input = M.DeletePreparedStatementInput,
   output = M.DeletePreparedStatementOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteWorkGroup = schema.operation({
   id = id.from("com.amazonaws.athena", "DeleteWorkGroup"),
   input = M.DeleteWorkGroupInput,
   output = M.DeleteWorkGroupOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ExportNotebook = schema.operation({
   id = id.from("com.amazonaws.athena", "ExportNotebook"),
   input = M.ExportNotebookInput,
   output = M.ExportNotebookOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetCalculationExecution = schema.operation({
   id = id.from("com.amazonaws.athena", "GetCalculationExecution"),
   input = M.GetCalculationExecutionInput,
   output = M.GetCalculationExecutionOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetCalculationExecutionCode = schema.operation({
   id = id.from("com.amazonaws.athena", "GetCalculationExecutionCode"),
   input = M.GetCalculationExecutionCodeInput,
   output = M.GetCalculationExecutionCodeOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetCalculationExecutionStatus = schema.operation({
   id = id.from("com.amazonaws.athena", "GetCalculationExecutionStatus"),
   input = M.GetCalculationExecutionStatusInput,
   output = M.GetCalculationExecutionStatusOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetCapacityAssignmentConfiguration = schema.operation({
   id = id.from("com.amazonaws.athena", "GetCapacityAssignmentConfiguration"),
   input = M.GetCapacityAssignmentConfigurationInput,
   output = M.GetCapacityAssignmentConfigurationOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetCapacityReservation = schema.operation({
   id = id.from("com.amazonaws.athena", "GetCapacityReservation"),
   input = M.GetCapacityReservationInput,
   output = M.GetCapacityReservationOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetDatabase = schema.operation({
   id = id.from("com.amazonaws.athena", "GetDatabase"),
   input = M.GetDatabaseInput,
   output = M.GetDatabaseOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetDataCatalog = schema.operation({
   id = id.from("com.amazonaws.athena", "GetDataCatalog"),
   input = M.GetDataCatalogInput,
   output = M.GetDataCatalogOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetNamedQuery = schema.operation({
   id = id.from("com.amazonaws.athena", "GetNamedQuery"),
   input = M.GetNamedQueryInput,
   output = M.GetNamedQueryOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetNotebookMetadata = schema.operation({
   id = id.from("com.amazonaws.athena", "GetNotebookMetadata"),
   input = M.GetNotebookMetadataInput,
   output = M.GetNotebookMetadataOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetPreparedStatement = schema.operation({
   id = id.from("com.amazonaws.athena", "GetPreparedStatement"),
   input = M.GetPreparedStatementInput,
   output = M.GetPreparedStatementOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetQueryExecution = schema.operation({
   id = id.from("com.amazonaws.athena", "GetQueryExecution"),
   input = M.GetQueryExecutionInput,
   output = M.GetQueryExecutionOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetQueryResults = schema.operation({
   id = id.from("com.amazonaws.athena", "GetQueryResults"),
   input = M.GetQueryResultsInput,
   output = M.GetQueryResultsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetQueryRuntimeStatistics = schema.operation({
   id = id.from("com.amazonaws.athena", "GetQueryRuntimeStatistics"),
   input = M.GetQueryRuntimeStatisticsInput,
   output = M.GetQueryRuntimeStatisticsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetResourceDashboard = schema.operation({
   id = id.from("com.amazonaws.athena", "GetResourceDashboard"),
   input = M.GetResourceDashboardInput,
   output = M.GetResourceDashboardOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetSession = schema.operation({
   id = id.from("com.amazonaws.athena", "GetSession"),
   input = M.GetSessionInput,
   output = M.GetSessionOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetSessionEndpoint = schema.operation({
   id = id.from("com.amazonaws.athena", "GetSessionEndpoint"),
   input = M.GetSessionEndpointInput,
   output = M.GetSessionEndpointOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetSessionStatus = schema.operation({
   id = id.from("com.amazonaws.athena", "GetSessionStatus"),
   input = M.GetSessionStatusInput,
   output = M.GetSessionStatusOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetTableMetadata = schema.operation({
   id = id.from("com.amazonaws.athena", "GetTableMetadata"),
   input = M.GetTableMetadataInput,
   output = M.GetTableMetadataOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetWorkGroup = schema.operation({
   id = id.from("com.amazonaws.athena", "GetWorkGroup"),
   input = M.GetWorkGroupInput,
   output = M.GetWorkGroupOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ImportNotebook = schema.operation({
   id = id.from("com.amazonaws.athena", "ImportNotebook"),
   input = M.ImportNotebookInput,
   output = M.ImportNotebookOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListApplicationDPUSizes = schema.operation({
   id = id.from("com.amazonaws.athena", "ListApplicationDPUSizes"),
   input = M.ListApplicationDPUSizesInput,
   output = M.ListApplicationDPUSizesOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListCalculationExecutions = schema.operation({
   id = id.from("com.amazonaws.athena", "ListCalculationExecutions"),
   input = M.ListCalculationExecutionsInput,
   output = M.ListCalculationExecutionsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListCapacityReservations = schema.operation({
   id = id.from("com.amazonaws.athena", "ListCapacityReservations"),
   input = M.ListCapacityReservationsInput,
   output = M.ListCapacityReservationsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListDatabases = schema.operation({
   id = id.from("com.amazonaws.athena", "ListDatabases"),
   input = M.ListDatabasesInput,
   output = M.ListDatabasesOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListDataCatalogs = schema.operation({
   id = id.from("com.amazonaws.athena", "ListDataCatalogs"),
   input = M.ListDataCatalogsInput,
   output = M.ListDataCatalogsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListEngineVersions = schema.operation({
   id = id.from("com.amazonaws.athena", "ListEngineVersions"),
   input = M.ListEngineVersionsInput,
   output = M.ListEngineVersionsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListExecutors = schema.operation({
   id = id.from("com.amazonaws.athena", "ListExecutors"),
   input = M.ListExecutorsInput,
   output = M.ListExecutorsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListNamedQueries = schema.operation({
   id = id.from("com.amazonaws.athena", "ListNamedQueries"),
   input = M.ListNamedQueriesInput,
   output = M.ListNamedQueriesOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListNotebookMetadata = schema.operation({
   id = id.from("com.amazonaws.athena", "ListNotebookMetadata"),
   input = M.ListNotebookMetadataInput,
   output = M.ListNotebookMetadataOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListNotebookSessions = schema.operation({
   id = id.from("com.amazonaws.athena", "ListNotebookSessions"),
   input = M.ListNotebookSessionsInput,
   output = M.ListNotebookSessionsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListPreparedStatements = schema.operation({
   id = id.from("com.amazonaws.athena", "ListPreparedStatements"),
   input = M.ListPreparedStatementsInput,
   output = M.ListPreparedStatementsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListQueryExecutions = schema.operation({
   id = id.from("com.amazonaws.athena", "ListQueryExecutions"),
   input = M.ListQueryExecutionsInput,
   output = M.ListQueryExecutionsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListSessions = schema.operation({
   id = id.from("com.amazonaws.athena", "ListSessions"),
   input = M.ListSessionsInput,
   output = M.ListSessionsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListTableMetadata = schema.operation({
   id = id.from("com.amazonaws.athena", "ListTableMetadata"),
   input = M.ListTableMetadataInput,
   output = M.ListTableMetadataOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListTagsForResource = schema.operation({
   id = id.from("com.amazonaws.athena", "ListTagsForResource"),
   input = M.ListTagsForResourceInput,
   output = M.ListTagsForResourceOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListWorkGroups = schema.operation({
   id = id.from("com.amazonaws.athena", "ListWorkGroups"),
   input = M.ListWorkGroupsInput,
   output = M.ListWorkGroupsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.PutCapacityAssignmentConfiguration = schema.operation({
   id = id.from("com.amazonaws.athena", "PutCapacityAssignmentConfiguration"),
   input = M.PutCapacityAssignmentConfigurationInput,
   output = M.PutCapacityAssignmentConfigurationOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StartCalculationExecution = schema.operation({
   id = id.from("com.amazonaws.athena", "StartCalculationExecution"),
   input = M.StartCalculationExecutionInput,
   output = M.StartCalculationExecutionOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StartQueryExecution = schema.operation({
   id = id.from("com.amazonaws.athena", "StartQueryExecution"),
   input = M.StartQueryExecutionInput,
   output = M.StartQueryExecutionOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StartSession = schema.operation({
   id = id.from("com.amazonaws.athena", "StartSession"),
   input = M.StartSessionInput,
   output = M.StartSessionOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StopCalculationExecution = schema.operation({
   id = id.from("com.amazonaws.athena", "StopCalculationExecution"),
   input = M.StopCalculationExecutionInput,
   output = M.StopCalculationExecutionOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StopQueryExecution = schema.operation({
   id = id.from("com.amazonaws.athena", "StopQueryExecution"),
   input = M.StopQueryExecutionInput,
   output = M.StopQueryExecutionOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.TagResource = schema.operation({
   id = id.from("com.amazonaws.athena", "TagResource"),
   input = M.TagResourceInput,
   output = M.TagResourceOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.TerminateSession = schema.operation({
   id = id.from("com.amazonaws.athena", "TerminateSession"),
   input = M.TerminateSessionInput,
   output = M.TerminateSessionOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UntagResource = schema.operation({
   id = id.from("com.amazonaws.athena", "UntagResource"),
   input = M.UntagResourceInput,
   output = M.UntagResourceOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateCapacityReservation = schema.operation({
   id = id.from("com.amazonaws.athena", "UpdateCapacityReservation"),
   input = M.UpdateCapacityReservationInput,
   output = M.UpdateCapacityReservationOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateDataCatalog = schema.operation({
   id = id.from("com.amazonaws.athena", "UpdateDataCatalog"),
   input = M.UpdateDataCatalogInput,
   output = M.UpdateDataCatalogOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateNamedQuery = schema.operation({
   id = id.from("com.amazonaws.athena", "UpdateNamedQuery"),
   input = M.UpdateNamedQueryInput,
   output = M.UpdateNamedQueryOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateNotebook = schema.operation({
   id = id.from("com.amazonaws.athena", "UpdateNotebook"),
   input = M.UpdateNotebookInput,
   output = M.UpdateNotebookOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateNotebookMetadata = schema.operation({
   id = id.from("com.amazonaws.athena", "UpdateNotebookMetadata"),
   input = M.UpdateNotebookMetadataInput,
   output = M.UpdateNotebookMetadataOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdatePreparedStatement = schema.operation({
   id = id.from("com.amazonaws.athena", "UpdatePreparedStatement"),
   input = M.UpdatePreparedStatementInput,
   output = M.UpdatePreparedStatementOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateWorkGroup = schema.operation({
   id = id.from("com.amazonaws.athena", "UpdateWorkGroup"),
   input = M.UpdateWorkGroupInput,
   output = M.UpdateWorkGroupOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

return M
