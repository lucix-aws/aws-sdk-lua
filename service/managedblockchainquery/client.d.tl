local types = require("managedblockchainquery.types")

local record Client
    batchGetTokenBalance: function(Client, types.BatchGetTokenBalanceInput): types.BatchGetTokenBalanceOutput, table
    getAssetContract: function(Client, types.GetAssetContractInput): types.GetAssetContractOutput, table
    getTokenBalance: function(Client, types.GetTokenBalanceInput): types.GetTokenBalanceOutput, table
    getTransaction: function(Client, types.GetTransactionInput): types.GetTransactionOutput, table
    listAssetContracts: function(Client, types.ListAssetContractsInput): types.ListAssetContractsOutput, table
    listFilteredTransactionEvents: function(Client, types.ListFilteredTransactionEventsInput): types.ListFilteredTransactionEventsOutput, table
    listTokenBalances: function(Client, types.ListTokenBalancesInput): types.ListTokenBalancesOutput, table
    listTransactionEvents: function(Client, types.ListTransactionEventsInput): types.ListTransactionEventsOutput, table
    listTransactions: function(Client, types.ListTransactionsInput): types.ListTransactionsOutput, table
end

local record M
    new: function(table): Client
end

return M
