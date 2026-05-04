local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("managedblockchainquery.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("managedblockchainquery.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "TietonChainQueryService"
    cfg.signing_name = "tietonchainqueryservice"
    if not cfg.protocol then
        cfg.protocol = restjson_protocol.new()
    end
    if not cfg.endpoint_provider then
        cfg.endpoint_provider = function(params)
            return endpoint.resolve(endpoint_rules, params)
        end
    end
    defaults.resolve_signer(cfg)
    defaults.resolve_http_client(cfg)
    defaults.resolve_retry_strategy(cfg)
    sdk_defaults.resolve_identity_resolver(cfg)
    local self = setmetatable(base_client.new(cfg), Client)
    return self
end

function Client:batchGetTokenBalance(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetTokenBalance",
        input_schema = types.BatchGetTokenBalanceInput,
        output_schema = types.BatchGetTokenBalanceOutput,
        http_method = "POST",
        http_path = "/batch-get-token-balance",
    }, options)
end

function Client:getAssetContract(input, options)
    return self:invokeOperation(input, {
        name = "GetAssetContract",
        input_schema = types.GetAssetContractInput,
        output_schema = types.GetAssetContractOutput,
        http_method = "POST",
        http_path = "/get-asset-contract",
    }, options)
end

function Client:getTokenBalance(input, options)
    return self:invokeOperation(input, {
        name = "GetTokenBalance",
        input_schema = types.GetTokenBalanceInput,
        output_schema = types.GetTokenBalanceOutput,
        http_method = "POST",
        http_path = "/get-token-balance",
    }, options)
end

function Client:getTransaction(input, options)
    return self:invokeOperation(input, {
        name = "GetTransaction",
        input_schema = types.GetTransactionInput,
        output_schema = types.GetTransactionOutput,
        http_method = "POST",
        http_path = "/get-transaction",
    }, options)
end

function Client:listAssetContracts(input, options)
    return self:invokeOperation(input, {
        name = "ListAssetContracts",
        input_schema = types.ListAssetContractsInput,
        output_schema = types.ListAssetContractsOutput,
        http_method = "POST",
        http_path = "/list-asset-contracts",
    }, options)
end

function Client:listFilteredTransactionEvents(input, options)
    return self:invokeOperation(input, {
        name = "ListFilteredTransactionEvents",
        input_schema = types.ListFilteredTransactionEventsInput,
        output_schema = types.ListFilteredTransactionEventsOutput,
        http_method = "POST",
        http_path = "/list-filtered-transaction-events",
    }, options)
end

function Client:listTokenBalances(input, options)
    return self:invokeOperation(input, {
        name = "ListTokenBalances",
        input_schema = types.ListTokenBalancesInput,
        output_schema = types.ListTokenBalancesOutput,
        http_method = "POST",
        http_path = "/list-token-balances",
    }, options)
end

function Client:listTransactionEvents(input, options)
    return self:invokeOperation(input, {
        name = "ListTransactionEvents",
        input_schema = types.ListTransactionEventsInput,
        output_schema = types.ListTransactionEventsOutput,
        http_method = "POST",
        http_path = "/list-transaction-events",
    }, options)
end

function Client:listTransactions(input, options)
    return self:invokeOperation(input, {
        name = "ListTransactions",
        input_schema = types.ListTransactionsInput,
        output_schema = types.ListTransactionsOutput,
        http_method = "POST",
        http_path = "/list-transactions",
    }, options)
end

return M
