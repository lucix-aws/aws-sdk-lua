local types = require("rdsdata.types")

local record Client
    batchExecuteStatement: function(Client, types.BatchExecuteStatementInput): types.BatchExecuteStatementOutput, table
    beginTransaction: function(Client, types.BeginTransactionInput): types.BeginTransactionOutput, table
    commitTransaction: function(Client, types.CommitTransactionInput): types.CommitTransactionOutput, table
    executeSql: function(Client, types.ExecuteSqlInput): types.ExecuteSqlOutput, table
    executeStatement: function(Client, types.ExecuteStatementInput): types.ExecuteStatementOutput, table
    rollbackTransaction: function(Client, types.RollbackTransactionInput): types.RollbackTransactionOutput, table
end

local record M
    new: function(table): Client
end

return M
