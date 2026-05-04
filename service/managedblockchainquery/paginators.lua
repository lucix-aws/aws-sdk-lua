local paginator = require("paginator")

local M = {}

--- Returns a page iterator for listAssetContracts.
function M.pages_list_asset_contracts(client, input)
    return paginator.pages(client, "listAssetContracts", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "contracts",
    })
end

--- Returns an item iterator for listAssetContracts.
function M.items_list_asset_contracts(client, input)
    return paginator.items(client, "listAssetContracts", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "contracts",
    })
end

--- Returns a page iterator for listFilteredTransactionEvents.
function M.pages_list_filtered_transaction_events(client, input)
    return paginator.pages(client, "listFilteredTransactionEvents", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "events",
    })
end

--- Returns an item iterator for listFilteredTransactionEvents.
function M.items_list_filtered_transaction_events(client, input)
    return paginator.items(client, "listFilteredTransactionEvents", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "events",
    })
end

--- Returns a page iterator for listTokenBalances.
function M.pages_list_token_balances(client, input)
    return paginator.pages(client, "listTokenBalances", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "tokenBalances",
    })
end

--- Returns an item iterator for listTokenBalances.
function M.items_list_token_balances(client, input)
    return paginator.items(client, "listTokenBalances", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "tokenBalances",
    })
end

--- Returns a page iterator for listTransactionEvents.
function M.pages_list_transaction_events(client, input)
    return paginator.pages(client, "listTransactionEvents", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "events",
    })
end

--- Returns an item iterator for listTransactionEvents.
function M.items_list_transaction_events(client, input)
    return paginator.items(client, "listTransactionEvents", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "events",
    })
end

--- Returns a page iterator for listTransactions.
function M.pages_list_transactions(client, input)
    return paginator.pages(client, "listTransactions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "transactions",
    })
end

--- Returns an item iterator for listTransactions.
function M.items_list_transactions(client, input)
    return paginator.items(client, "listTransactions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "transactions",
    })
end

return M
