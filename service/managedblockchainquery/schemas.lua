

local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.managedblockchainquery"

local M = {}

M.GetTokenBalanceInputList = schema.new({ type = "list", list_member = M.BatchGetTokenBalanceInputItem })

M.BatchGetTokenBalanceOutputList = schema.new({ type = "list", list_member = M.BatchGetTokenBalanceOutputItem })

M.BatchGetTokenBalanceErrors = schema.new({ type = "list", list_member = M.BatchGetTokenBalanceErrorItem })

M.ValidationExceptionFieldList = schema.new({ type = "list", list_member = M.ValidationExceptionField })

M.AssetContractList = schema.new({ type = "list", list_member = M.AssetContract })

M.TransactionEventList = schema.new({ type = "list", list_member = M.TransactionEvent })

M.TokenBalanceList = schema.new({ type = "list", list_member = M.TokenBalance })

M.TransactionOutputList = schema.new({ type = "list", list_member = M.TransactionOutputItem })

M.ChainAddresses = schema.new({ type = "list", list_member = prelude.String })

M.ConfirmationStatusIncludeList = schema.new({ type = "list", list_member = prelude.String })

M.AccessDeniedException = schema.new({
   id = id.from(_N, "AccessDeniedException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "AccessDeniedException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AddressIdentifierFilter = schema.new({
   id = id.from(_N, "AddressIdentifierFilter"),
   type = "structure",
   members = {
      transactionEventToAddress = schema.new({
         id = id.from(_N, "AddressIdentifierFilter", "transactionEventToAddress"),
         type = "list",
         name = "transactionEventToAddress",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ContractIdentifier = schema.new({
   id = id.from(_N, "ContractIdentifier"),
   type = "structure",
   members = {
      network = schema.new({
         id = id.from(_N, "ContractIdentifier", "network"),
         type = "string",
         name = "network",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      contractAddress = schema.new({
         id = id.from(_N, "ContractIdentifier", "contractAddress"),
         type = "string",
         name = "contractAddress",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AssetContract = schema.new({
   id = id.from(_N, "AssetContract"),
   type = "structure",
   members = {
      contractIdentifier = schema.new({
         id = id.from(_N, "AssetContract", "contractIdentifier"),
         type = "structure",
         name = "contractIdentifier",
         target_id = id.from(_N, "ContractIdentifier"),
         target = M.ContractIdentifier,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      tokenStandard = schema.new({
         id = id.from(_N, "AssetContract", "tokenStandard"),
         type = "string",
         name = "tokenStandard",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      deployerAddress = schema.new({
         id = id.from(_N, "AssetContract", "deployerAddress"),
         type = "string",
         name = "deployerAddress",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.BlockchainInstant = schema.new({
   id = id.from(_N, "BlockchainInstant"),
   type = "structure",
   members = {
      time = schema.new({
         id = id.from(_N, "BlockchainInstant", "time"),
         type = "timestamp",
         name = "time",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.OwnerIdentifier = schema.new({
   id = id.from(_N, "OwnerIdentifier"),
   type = "structure",
   members = {
      address = schema.new({
         id = id.from(_N, "OwnerIdentifier", "address"),
         type = "string",
         name = "address",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.TokenIdentifier = schema.new({
   id = id.from(_N, "TokenIdentifier"),
   type = "structure",
   members = {
      network = schema.new({
         id = id.from(_N, "TokenIdentifier", "network"),
         type = "string",
         name = "network",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      contractAddress = schema.new({
         id = id.from(_N, "TokenIdentifier", "contractAddress"),
         type = "string",
         name = "contractAddress",
         target_id = prelude.String.id,
      }),
      tokenId = schema.new({
         id = id.from(_N, "TokenIdentifier", "tokenId"),
         type = "string",
         name = "tokenId",
         target_id = prelude.String.id,
      }),
   },
})

M.BatchGetTokenBalanceInputItem = schema.new({
   id = id.from(_N, "BatchGetTokenBalanceInputItem"),
   type = "structure",
   members = {
      tokenIdentifier = schema.new({
         id = id.from(_N, "BatchGetTokenBalanceInputItem", "tokenIdentifier"),
         type = "structure",
         name = "tokenIdentifier",
         target_id = id.from(_N, "TokenIdentifier"),
         target = M.TokenIdentifier,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ownerIdentifier = schema.new({
         id = id.from(_N, "BatchGetTokenBalanceInputItem", "ownerIdentifier"),
         type = "structure",
         name = "ownerIdentifier",
         target_id = id.from(_N, "OwnerIdentifier"),
         target = M.OwnerIdentifier,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      atBlockchainInstant = schema.new({
         id = id.from(_N, "BatchGetTokenBalanceInputItem", "atBlockchainInstant"),
         type = "structure",
         name = "atBlockchainInstant",
         target_id = id.from(_N, "BlockchainInstant"),
         target = M.BlockchainInstant,
      }),
   },
})

M.BatchGetTokenBalanceInput = schema.new({
   id = id.from(_N, "BatchGetTokenBalanceInput"),
   type = "structure",
   members = {
      getTokenBalanceInputs = schema.new({
         id = id.from(_N, "BatchGetTokenBalanceInput", "getTokenBalanceInputs"),
         type = "list",
         name = "getTokenBalanceInputs",
         target_id = prelude.Document.id,
         list_member = M.BatchGetTokenBalanceInputItem,
      }),
   },
})

M.BatchGetTokenBalanceErrorItem = schema.new({
   id = id.from(_N, "BatchGetTokenBalanceErrorItem"),
   type = "structure",
   members = {
      tokenIdentifier = schema.new({
         id = id.from(_N, "BatchGetTokenBalanceErrorItem", "tokenIdentifier"),
         type = "structure",
         name = "tokenIdentifier",
         target_id = id.from(_N, "TokenIdentifier"),
         target = M.TokenIdentifier,
      }),
      ownerIdentifier = schema.new({
         id = id.from(_N, "BatchGetTokenBalanceErrorItem", "ownerIdentifier"),
         type = "structure",
         name = "ownerIdentifier",
         target_id = id.from(_N, "OwnerIdentifier"),
         target = M.OwnerIdentifier,
      }),
      atBlockchainInstant = schema.new({
         id = id.from(_N, "BatchGetTokenBalanceErrorItem", "atBlockchainInstant"),
         type = "structure",
         name = "atBlockchainInstant",
         target_id = id.from(_N, "BlockchainInstant"),
         target = M.BlockchainInstant,
      }),
      errorCode = schema.new({
         id = id.from(_N, "BatchGetTokenBalanceErrorItem", "errorCode"),
         type = "string",
         name = "errorCode",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      errorMessage = schema.new({
         id = id.from(_N, "BatchGetTokenBalanceErrorItem", "errorMessage"),
         type = "string",
         name = "errorMessage",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      errorType = schema.new({
         id = id.from(_N, "BatchGetTokenBalanceErrorItem", "errorType"),
         type = "string",
         name = "errorType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.BatchGetTokenBalanceOutputItem = schema.new({
   id = id.from(_N, "BatchGetTokenBalanceOutputItem"),
   type = "structure",
   members = {
      ownerIdentifier = schema.new({
         id = id.from(_N, "BatchGetTokenBalanceOutputItem", "ownerIdentifier"),
         type = "structure",
         name = "ownerIdentifier",
         target_id = id.from(_N, "OwnerIdentifier"),
         target = M.OwnerIdentifier,
      }),
      tokenIdentifier = schema.new({
         id = id.from(_N, "BatchGetTokenBalanceOutputItem", "tokenIdentifier"),
         type = "structure",
         name = "tokenIdentifier",
         target_id = id.from(_N, "TokenIdentifier"),
         target = M.TokenIdentifier,
      }),
      balance = schema.new({
         id = id.from(_N, "BatchGetTokenBalanceOutputItem", "balance"),
         type = "string",
         name = "balance",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      atBlockchainInstant = schema.new({
         id = id.from(_N, "BatchGetTokenBalanceOutputItem", "atBlockchainInstant"),
         type = "structure",
         name = "atBlockchainInstant",
         target_id = id.from(_N, "BlockchainInstant"),
         target = M.BlockchainInstant,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      lastUpdatedTime = schema.new({
         id = id.from(_N, "BatchGetTokenBalanceOutputItem", "lastUpdatedTime"),
         type = "structure",
         name = "lastUpdatedTime",
         target_id = id.from(_N, "BlockchainInstant"),
         target = M.BlockchainInstant,
      }),
   },
})

M.BatchGetTokenBalanceOutput = schema.new({
   id = id.from(_N, "BatchGetTokenBalanceOutput"),
   type = "structure",
   members = {
      tokenBalances = schema.new({
         id = id.from(_N, "BatchGetTokenBalanceOutput", "tokenBalances"),
         type = "list",
         name = "tokenBalances",
         target_id = prelude.Document.id,
         list_member = M.BatchGetTokenBalanceOutputItem,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      errors = schema.new({
         id = id.from(_N, "BatchGetTokenBalanceOutput", "errors"),
         type = "list",
         name = "errors",
         target_id = prelude.Document.id,
         list_member = M.BatchGetTokenBalanceErrorItem,
         traits = {
            [traits.REQUIRED] = {},
         },
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
      message = schema.new({
         id = id.from(_N, "InternalServerException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      retryAfterSeconds = schema.new({
         id = id.from(_N, "InternalServerException", "retryAfterSeconds"),
         type = "integer",
         name = "retryAfterSeconds",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Retry-After" },
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
      message = schema.new({
         id = id.from(_N, "ResourceNotFoundException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      resourceId = schema.new({
         id = id.from(_N, "ResourceNotFoundException", "resourceId"),
         type = "string",
         name = "resourceId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      resourceType = schema.new({
         id = id.from(_N, "ResourceNotFoundException", "resourceType"),
         type = "string",
         name = "resourceType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ServiceQuotaExceededException = schema.new({
   id = id.from(_N, "ServiceQuotaExceededException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "ServiceQuotaExceededException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      resourceId = schema.new({
         id = id.from(_N, "ServiceQuotaExceededException", "resourceId"),
         type = "string",
         name = "resourceId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      resourceType = schema.new({
         id = id.from(_N, "ServiceQuotaExceededException", "resourceType"),
         type = "string",
         name = "resourceType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      serviceCode = schema.new({
         id = id.from(_N, "ServiceQuotaExceededException", "serviceCode"),
         type = "string",
         name = "serviceCode",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      quotaCode = schema.new({
         id = id.from(_N, "ServiceQuotaExceededException", "quotaCode"),
         type = "string",
         name = "quotaCode",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ThrottlingException = schema.new({
   id = id.from(_N, "ThrottlingException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "ThrottlingException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      serviceCode = schema.new({
         id = id.from(_N, "ThrottlingException", "serviceCode"),
         type = "string",
         name = "serviceCode",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      quotaCode = schema.new({
         id = id.from(_N, "ThrottlingException", "quotaCode"),
         type = "string",
         name = "quotaCode",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      retryAfterSeconds = schema.new({
         id = id.from(_N, "ThrottlingException", "retryAfterSeconds"),
         type = "integer",
         name = "retryAfterSeconds",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Retry-After" },
         },
      }),
   },
})

M.ValidationExceptionField = schema.new({
   id = id.from(_N, "ValidationExceptionField"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "ValidationExceptionField", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      message = schema.new({
         id = id.from(_N, "ValidationExceptionField", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ValidationException = schema.new({
   id = id.from(_N, "ValidationException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "ValidationException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      reason = schema.new({
         id = id.from(_N, "ValidationException", "reason"),
         type = "string",
         name = "reason",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      fieldList = schema.new({
         id = id.from(_N, "ValidationException", "fieldList"),
         type = "list",
         name = "fieldList",
         target_id = prelude.Document.id,
         list_member = M.ValidationExceptionField,
      }),
   },
})

M.ConfirmationStatusFilter = schema.new({
   id = id.from(_N, "ConfirmationStatusFilter"),
   type = "structure",
   members = {
      include = schema.new({
         id = id.from(_N, "ConfirmationStatusFilter", "include"),
         type = "list",
         name = "include",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ContractFilter = schema.new({
   id = id.from(_N, "ContractFilter"),
   type = "structure",
   members = {
      network = schema.new({
         id = id.from(_N, "ContractFilter", "network"),
         type = "string",
         name = "network",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      tokenStandard = schema.new({
         id = id.from(_N, "ContractFilter", "tokenStandard"),
         type = "string",
         name = "tokenStandard",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      deployerAddress = schema.new({
         id = id.from(_N, "ContractFilter", "deployerAddress"),
         type = "string",
         name = "deployerAddress",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ContractMetadata = schema.new({
   id = id.from(_N, "ContractMetadata"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "ContractMetadata", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      symbol = schema.new({
         id = id.from(_N, "ContractMetadata", "symbol"),
         type = "string",
         name = "symbol",
         target_id = prelude.String.id,
      }),
      decimals = schema.new({
         id = id.from(_N, "ContractMetadata", "decimals"),
         type = "integer",
         name = "decimals",
         target_id = prelude.Integer.id,
      }),
   },
})

M.GetAssetContractInput = schema.new({
   id = id.from(_N, "GetAssetContractInput"),
   type = "structure",
   members = {
      contractIdentifier = schema.new({
         id = id.from(_N, "GetAssetContractInput", "contractIdentifier"),
         type = "structure",
         name = "contractIdentifier",
         target_id = id.from(_N, "ContractIdentifier"),
         target = M.ContractIdentifier,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetAssetContractOutput = schema.new({
   id = id.from(_N, "GetAssetContractOutput"),
   type = "structure",
   members = {
      contractIdentifier = schema.new({
         id = id.from(_N, "GetAssetContractOutput", "contractIdentifier"),
         type = "structure",
         name = "contractIdentifier",
         target_id = id.from(_N, "ContractIdentifier"),
         target = M.ContractIdentifier,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      tokenStandard = schema.new({
         id = id.from(_N, "GetAssetContractOutput", "tokenStandard"),
         type = "string",
         name = "tokenStandard",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      deployerAddress = schema.new({
         id = id.from(_N, "GetAssetContractOutput", "deployerAddress"),
         type = "string",
         name = "deployerAddress",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      metadata = schema.new({
         id = id.from(_N, "GetAssetContractOutput", "metadata"),
         type = "structure",
         name = "metadata",
         target_id = id.from(_N, "ContractMetadata"),
         target = M.ContractMetadata,
      }),
   },
})

M.GetTokenBalanceInput = schema.new({
   id = id.from(_N, "GetTokenBalanceInput"),
   type = "structure",
   members = {
      tokenIdentifier = schema.new({
         id = id.from(_N, "GetTokenBalanceInput", "tokenIdentifier"),
         type = "structure",
         name = "tokenIdentifier",
         target_id = id.from(_N, "TokenIdentifier"),
         target = M.TokenIdentifier,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ownerIdentifier = schema.new({
         id = id.from(_N, "GetTokenBalanceInput", "ownerIdentifier"),
         type = "structure",
         name = "ownerIdentifier",
         target_id = id.from(_N, "OwnerIdentifier"),
         target = M.OwnerIdentifier,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      atBlockchainInstant = schema.new({
         id = id.from(_N, "GetTokenBalanceInput", "atBlockchainInstant"),
         type = "structure",
         name = "atBlockchainInstant",
         target_id = id.from(_N, "BlockchainInstant"),
         target = M.BlockchainInstant,
      }),
   },
})

M.GetTokenBalanceOutput = schema.new({
   id = id.from(_N, "GetTokenBalanceOutput"),
   type = "structure",
   members = {
      ownerIdentifier = schema.new({
         id = id.from(_N, "GetTokenBalanceOutput", "ownerIdentifier"),
         type = "structure",
         name = "ownerIdentifier",
         target_id = id.from(_N, "OwnerIdentifier"),
         target = M.OwnerIdentifier,
      }),
      tokenIdentifier = schema.new({
         id = id.from(_N, "GetTokenBalanceOutput", "tokenIdentifier"),
         type = "structure",
         name = "tokenIdentifier",
         target_id = id.from(_N, "TokenIdentifier"),
         target = M.TokenIdentifier,
      }),
      balance = schema.new({
         id = id.from(_N, "GetTokenBalanceOutput", "balance"),
         type = "string",
         name = "balance",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      atBlockchainInstant = schema.new({
         id = id.from(_N, "GetTokenBalanceOutput", "atBlockchainInstant"),
         type = "structure",
         name = "atBlockchainInstant",
         target_id = id.from(_N, "BlockchainInstant"),
         target = M.BlockchainInstant,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      lastUpdatedTime = schema.new({
         id = id.from(_N, "GetTokenBalanceOutput", "lastUpdatedTime"),
         type = "structure",
         name = "lastUpdatedTime",
         target_id = id.from(_N, "BlockchainInstant"),
         target = M.BlockchainInstant,
      }),
   },
})

M.GetTransactionInput = schema.new({
   id = id.from(_N, "GetTransactionInput"),
   type = "structure",
   members = {
      transactionHash = schema.new({
         id = id.from(_N, "GetTransactionInput", "transactionHash"),
         type = "string",
         name = "transactionHash",
         target_id = prelude.String.id,
      }),
      transactionId = schema.new({
         id = id.from(_N, "GetTransactionInput", "transactionId"),
         type = "string",
         name = "transactionId",
         target_id = prelude.String.id,
      }),
      network = schema.new({
         id = id.from(_N, "GetTransactionInput", "network"),
         type = "string",
         name = "network",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.Transaction = schema.new({
   id = id.from(_N, "Transaction"),
   type = "structure",
   members = {
      network = schema.new({
         id = id.from(_N, "Transaction", "network"),
         type = "string",
         name = "network",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      blockHash = schema.new({
         id = id.from(_N, "Transaction", "blockHash"),
         type = "string",
         name = "blockHash",
         target_id = prelude.String.id,
      }),
      transactionHash = schema.new({
         id = id.from(_N, "Transaction", "transactionHash"),
         type = "string",
         name = "transactionHash",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      blockNumber = schema.new({
         id = id.from(_N, "Transaction", "blockNumber"),
         type = "string",
         name = "blockNumber",
         target_id = prelude.String.id,
      }),
      transactionTimestamp = schema.new({
         id = id.from(_N, "Transaction", "transactionTimestamp"),
         type = "timestamp",
         name = "transactionTimestamp",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      transactionIndex = schema.new({
         id = id.from(_N, "Transaction", "transactionIndex"),
         type = "long",
         name = "transactionIndex",
         target_id = prelude.Long.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      numberOfTransactions = schema.new({
         id = id.from(_N, "Transaction", "numberOfTransactions"),
         type = "long",
         name = "numberOfTransactions",
         target_id = prelude.Long.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      to = schema.new({
         id = id.from(_N, "Transaction", "to"),
         type = "string",
         name = "to",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      from = schema.new({
         id = id.from(_N, "Transaction", "from"),
         type = "string",
         name = "from",
         target_id = prelude.String.id,
      }),
      contractAddress = schema.new({
         id = id.from(_N, "Transaction", "contractAddress"),
         type = "string",
         name = "contractAddress",
         target_id = prelude.String.id,
      }),
      gasUsed = schema.new({
         id = id.from(_N, "Transaction", "gasUsed"),
         type = "string",
         name = "gasUsed",
         target_id = prelude.String.id,
      }),
      cumulativeGasUsed = schema.new({
         id = id.from(_N, "Transaction", "cumulativeGasUsed"),
         type = "string",
         name = "cumulativeGasUsed",
         target_id = prelude.String.id,
      }),
      effectiveGasPrice = schema.new({
         id = id.from(_N, "Transaction", "effectiveGasPrice"),
         type = "string",
         name = "effectiveGasPrice",
         target_id = prelude.String.id,
      }),
      signatureV = schema.new({
         id = id.from(_N, "Transaction", "signatureV"),
         type = "integer",
         name = "signatureV",
         target_id = prelude.Integer.id,
      }),
      signatureR = schema.new({
         id = id.from(_N, "Transaction", "signatureR"),
         type = "string",
         name = "signatureR",
         target_id = prelude.String.id,
      }),
      signatureS = schema.new({
         id = id.from(_N, "Transaction", "signatureS"),
         type = "string",
         name = "signatureS",
         target_id = prelude.String.id,
      }),
      transactionFee = schema.new({
         id = id.from(_N, "Transaction", "transactionFee"),
         type = "string",
         name = "transactionFee",
         target_id = prelude.String.id,
      }),
      transactionId = schema.new({
         id = id.from(_N, "Transaction", "transactionId"),
         type = "string",
         name = "transactionId",
         target_id = prelude.String.id,
      }),
      confirmationStatus = schema.new({
         id = id.from(_N, "Transaction", "confirmationStatus"),
         type = "string",
         name = "confirmationStatus",
         target_id = prelude.String.id,
      }),
      executionStatus = schema.new({
         id = id.from(_N, "Transaction", "executionStatus"),
         type = "string",
         name = "executionStatus",
         target_id = prelude.String.id,
      }),
   },
})

M.GetTransactionOutput = schema.new({
   id = id.from(_N, "GetTransactionOutput"),
   type = "structure",
   members = {
      transaction = schema.new({
         id = id.from(_N, "GetTransactionOutput", "transaction"),
         type = "structure",
         name = "transaction",
         target_id = id.from(_N, "Transaction"),
         target = M.Transaction,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ListAssetContractsInput = schema.new({
   id = id.from(_N, "ListAssetContractsInput"),
   type = "structure",
   members = {
      contractFilter = schema.new({
         id = id.from(_N, "ListAssetContractsInput", "contractFilter"),
         type = "structure",
         name = "contractFilter",
         target_id = id.from(_N, "ContractFilter"),
         target = M.ContractFilter,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListAssetContractsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListAssetContractsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
      }),
   },
})

M.ListAssetContractsOutput = schema.new({
   id = id.from(_N, "ListAssetContractsOutput"),
   type = "structure",
   members = {
      contracts = schema.new({
         id = id.from(_N, "ListAssetContractsOutput", "contracts"),
         type = "list",
         name = "contracts",
         target_id = prelude.Document.id,
         list_member = M.AssetContract,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListAssetContractsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListFilteredTransactionEventsSort = schema.new({
   id = id.from(_N, "ListFilteredTransactionEventsSort"),
   type = "structure",
   members = {
      sortBy = schema.new({
         id = id.from(_N, "ListFilteredTransactionEventsSort", "sortBy"),
         type = "string",
         name = "sortBy",
         target_id = prelude.String.id,
      }),
      sortOrder = schema.new({
         id = id.from(_N, "ListFilteredTransactionEventsSort", "sortOrder"),
         type = "string",
         name = "sortOrder",
         target_id = prelude.String.id,
      }),
   },
})

M.TimeFilter = schema.new({
   id = id.from(_N, "TimeFilter"),
   type = "structure",
   members = {
      from = schema.new({
         id = id.from(_N, "TimeFilter", "from"),
         type = "structure",
         name = "from",
         target_id = id.from(_N, "BlockchainInstant"),
         target = M.BlockchainInstant,
      }),
      to = schema.new({
         id = id.from(_N, "TimeFilter", "to"),
         type = "structure",
         name = "to",
         target_id = id.from(_N, "BlockchainInstant"),
         target = M.BlockchainInstant,
      }),
   },
})

M.VoutFilter = schema.new({
   id = id.from(_N, "VoutFilter"),
   type = "structure",
   members = {
      voutSpent = schema.new({
         id = id.from(_N, "VoutFilter", "voutSpent"),
         type = "boolean",
         name = "voutSpent",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ListFilteredTransactionEventsInput = schema.new({
   id = id.from(_N, "ListFilteredTransactionEventsInput"),
   type = "structure",
   members = {
      network = schema.new({
         id = id.from(_N, "ListFilteredTransactionEventsInput", "network"),
         type = "string",
         name = "network",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      addressIdentifierFilter = schema.new({
         id = id.from(_N, "ListFilteredTransactionEventsInput", "addressIdentifierFilter"),
         type = "structure",
         name = "addressIdentifierFilter",
         target_id = id.from(_N, "AddressIdentifierFilter"),
         target = M.AddressIdentifierFilter,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      timeFilter = schema.new({
         id = id.from(_N, "ListFilteredTransactionEventsInput", "timeFilter"),
         type = "structure",
         name = "timeFilter",
         target_id = id.from(_N, "TimeFilter"),
         target = M.TimeFilter,
      }),
      voutFilter = schema.new({
         id = id.from(_N, "ListFilteredTransactionEventsInput", "voutFilter"),
         type = "structure",
         name = "voutFilter",
         target_id = id.from(_N, "VoutFilter"),
         target = M.VoutFilter,
      }),
      confirmationStatusFilter = schema.new({
         id = id.from(_N, "ListFilteredTransactionEventsInput", "confirmationStatusFilter"),
         type = "structure",
         name = "confirmationStatusFilter",
         target_id = id.from(_N, "ConfirmationStatusFilter"),
         target = M.ConfirmationStatusFilter,
      }),
      sort = schema.new({
         id = id.from(_N, "ListFilteredTransactionEventsInput", "sort"),
         type = "structure",
         name = "sort",
         target_id = id.from(_N, "ListFilteredTransactionEventsSort"),
         target = M.ListFilteredTransactionEventsSort,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListFilteredTransactionEventsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListFilteredTransactionEventsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
      }),
   },
})

M.TransactionEvent = schema.new({
   id = id.from(_N, "TransactionEvent"),
   type = "structure",
   members = {
      network = schema.new({
         id = id.from(_N, "TransactionEvent", "network"),
         type = "string",
         name = "network",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      transactionHash = schema.new({
         id = id.from(_N, "TransactionEvent", "transactionHash"),
         type = "string",
         name = "transactionHash",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      eventType = schema.new({
         id = id.from(_N, "TransactionEvent", "eventType"),
         type = "string",
         name = "eventType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      from = schema.new({
         id = id.from(_N, "TransactionEvent", "from"),
         type = "string",
         name = "from",
         target_id = prelude.String.id,
      }),
      to = schema.new({
         id = id.from(_N, "TransactionEvent", "to"),
         type = "string",
         name = "to",
         target_id = prelude.String.id,
      }),
      value = schema.new({
         id = id.from(_N, "TransactionEvent", "value"),
         type = "string",
         name = "value",
         target_id = prelude.String.id,
      }),
      contractAddress = schema.new({
         id = id.from(_N, "TransactionEvent", "contractAddress"),
         type = "string",
         name = "contractAddress",
         target_id = prelude.String.id,
      }),
      tokenId = schema.new({
         id = id.from(_N, "TransactionEvent", "tokenId"),
         type = "string",
         name = "tokenId",
         target_id = prelude.String.id,
      }),
      transactionId = schema.new({
         id = id.from(_N, "TransactionEvent", "transactionId"),
         type = "string",
         name = "transactionId",
         target_id = prelude.String.id,
      }),
      voutIndex = schema.new({
         id = id.from(_N, "TransactionEvent", "voutIndex"),
         type = "integer",
         name = "voutIndex",
         target_id = prelude.Integer.id,
      }),
      voutSpent = schema.new({
         id = id.from(_N, "TransactionEvent", "voutSpent"),
         type = "boolean",
         name = "voutSpent",
         target_id = prelude.Boolean.id,
      }),
      spentVoutTransactionId = schema.new({
         id = id.from(_N, "TransactionEvent", "spentVoutTransactionId"),
         type = "string",
         name = "spentVoutTransactionId",
         target_id = prelude.String.id,
      }),
      spentVoutTransactionHash = schema.new({
         id = id.from(_N, "TransactionEvent", "spentVoutTransactionHash"),
         type = "string",
         name = "spentVoutTransactionHash",
         target_id = prelude.String.id,
      }),
      spentVoutIndex = schema.new({
         id = id.from(_N, "TransactionEvent", "spentVoutIndex"),
         type = "integer",
         name = "spentVoutIndex",
         target_id = prelude.Integer.id,
      }),
      blockchainInstant = schema.new({
         id = id.from(_N, "TransactionEvent", "blockchainInstant"),
         type = "structure",
         name = "blockchainInstant",
         target_id = id.from(_N, "BlockchainInstant"),
         target = M.BlockchainInstant,
      }),
      confirmationStatus = schema.new({
         id = id.from(_N, "TransactionEvent", "confirmationStatus"),
         type = "string",
         name = "confirmationStatus",
         target_id = prelude.String.id,
      }),
   },
})

M.ListFilteredTransactionEventsOutput = schema.new({
   id = id.from(_N, "ListFilteredTransactionEventsOutput"),
   type = "structure",
   members = {
      events = schema.new({
         id = id.from(_N, "ListFilteredTransactionEventsOutput", "events"),
         type = "list",
         name = "events",
         target_id = prelude.Document.id,
         list_member = M.TransactionEvent,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListFilteredTransactionEventsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.OwnerFilter = schema.new({
   id = id.from(_N, "OwnerFilter"),
   type = "structure",
   members = {
      address = schema.new({
         id = id.from(_N, "OwnerFilter", "address"),
         type = "string",
         name = "address",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.TokenFilter = schema.new({
   id = id.from(_N, "TokenFilter"),
   type = "structure",
   members = {
      network = schema.new({
         id = id.from(_N, "TokenFilter", "network"),
         type = "string",
         name = "network",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      contractAddress = schema.new({
         id = id.from(_N, "TokenFilter", "contractAddress"),
         type = "string",
         name = "contractAddress",
         target_id = prelude.String.id,
      }),
      tokenId = schema.new({
         id = id.from(_N, "TokenFilter", "tokenId"),
         type = "string",
         name = "tokenId",
         target_id = prelude.String.id,
      }),
   },
})

M.ListTokenBalancesInput = schema.new({
   id = id.from(_N, "ListTokenBalancesInput"),
   type = "structure",
   members = {
      ownerFilter = schema.new({
         id = id.from(_N, "ListTokenBalancesInput", "ownerFilter"),
         type = "structure",
         name = "ownerFilter",
         target_id = id.from(_N, "OwnerFilter"),
         target = M.OwnerFilter,
      }),
      tokenFilter = schema.new({
         id = id.from(_N, "ListTokenBalancesInput", "tokenFilter"),
         type = "structure",
         name = "tokenFilter",
         target_id = id.from(_N, "TokenFilter"),
         target = M.TokenFilter,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListTokenBalancesInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListTokenBalancesInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
      }),
   },
})

M.TokenBalance = schema.new({
   id = id.from(_N, "TokenBalance"),
   type = "structure",
   members = {
      ownerIdentifier = schema.new({
         id = id.from(_N, "TokenBalance", "ownerIdentifier"),
         type = "structure",
         name = "ownerIdentifier",
         target_id = id.from(_N, "OwnerIdentifier"),
         target = M.OwnerIdentifier,
      }),
      tokenIdentifier = schema.new({
         id = id.from(_N, "TokenBalance", "tokenIdentifier"),
         type = "structure",
         name = "tokenIdentifier",
         target_id = id.from(_N, "TokenIdentifier"),
         target = M.TokenIdentifier,
      }),
      balance = schema.new({
         id = id.from(_N, "TokenBalance", "balance"),
         type = "string",
         name = "balance",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      atBlockchainInstant = schema.new({
         id = id.from(_N, "TokenBalance", "atBlockchainInstant"),
         type = "structure",
         name = "atBlockchainInstant",
         target_id = id.from(_N, "BlockchainInstant"),
         target = M.BlockchainInstant,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      lastUpdatedTime = schema.new({
         id = id.from(_N, "TokenBalance", "lastUpdatedTime"),
         type = "structure",
         name = "lastUpdatedTime",
         target_id = id.from(_N, "BlockchainInstant"),
         target = M.BlockchainInstant,
      }),
   },
})

M.ListTokenBalancesOutput = schema.new({
   id = id.from(_N, "ListTokenBalancesOutput"),
   type = "structure",
   members = {
      tokenBalances = schema.new({
         id = id.from(_N, "ListTokenBalancesOutput", "tokenBalances"),
         type = "list",
         name = "tokenBalances",
         target_id = prelude.Document.id,
         list_member = M.TokenBalance,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListTokenBalancesOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListTransactionEventsInput = schema.new({
   id = id.from(_N, "ListTransactionEventsInput"),
   type = "structure",
   members = {
      transactionHash = schema.new({
         id = id.from(_N, "ListTransactionEventsInput", "transactionHash"),
         type = "string",
         name = "transactionHash",
         target_id = prelude.String.id,
      }),
      transactionId = schema.new({
         id = id.from(_N, "ListTransactionEventsInput", "transactionId"),
         type = "string",
         name = "transactionId",
         target_id = prelude.String.id,
      }),
      network = schema.new({
         id = id.from(_N, "ListTransactionEventsInput", "network"),
         type = "string",
         name = "network",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListTransactionEventsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListTransactionEventsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
      }),
   },
})

M.ListTransactionEventsOutput = schema.new({
   id = id.from(_N, "ListTransactionEventsOutput"),
   type = "structure",
   members = {
      events = schema.new({
         id = id.from(_N, "ListTransactionEventsOutput", "events"),
         type = "list",
         name = "events",
         target_id = prelude.Document.id,
         list_member = M.TransactionEvent,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListTransactionEventsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListTransactionsSort = schema.new({
   id = id.from(_N, "ListTransactionsSort"),
   type = "structure",
   members = {
      sortBy = schema.new({
         id = id.from(_N, "ListTransactionsSort", "sortBy"),
         type = "string",
         name = "sortBy",
         target_id = prelude.String.id,
      }),
      sortOrder = schema.new({
         id = id.from(_N, "ListTransactionsSort", "sortOrder"),
         type = "string",
         name = "sortOrder",
         target_id = prelude.String.id,
      }),
   },
})

M.ListTransactionsInput = schema.new({
   id = id.from(_N, "ListTransactionsInput"),
   type = "structure",
   members = {
      address = schema.new({
         id = id.from(_N, "ListTransactionsInput", "address"),
         type = "string",
         name = "address",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      network = schema.new({
         id = id.from(_N, "ListTransactionsInput", "network"),
         type = "string",
         name = "network",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      fromBlockchainInstant = schema.new({
         id = id.from(_N, "ListTransactionsInput", "fromBlockchainInstant"),
         type = "structure",
         name = "fromBlockchainInstant",
         target_id = id.from(_N, "BlockchainInstant"),
         target = M.BlockchainInstant,
      }),
      toBlockchainInstant = schema.new({
         id = id.from(_N, "ListTransactionsInput", "toBlockchainInstant"),
         type = "structure",
         name = "toBlockchainInstant",
         target_id = id.from(_N, "BlockchainInstant"),
         target = M.BlockchainInstant,
      }),
      sort = schema.new({
         id = id.from(_N, "ListTransactionsInput", "sort"),
         type = "structure",
         name = "sort",
         target_id = id.from(_N, "ListTransactionsSort"),
         target = M.ListTransactionsSort,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListTransactionsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListTransactionsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
      }),
      confirmationStatusFilter = schema.new({
         id = id.from(_N, "ListTransactionsInput", "confirmationStatusFilter"),
         type = "structure",
         name = "confirmationStatusFilter",
         target_id = id.from(_N, "ConfirmationStatusFilter"),
         target = M.ConfirmationStatusFilter,
      }),
   },
})

M.TransactionOutputItem = schema.new({
   id = id.from(_N, "TransactionOutputItem"),
   type = "structure",
   members = {
      transactionHash = schema.new({
         id = id.from(_N, "TransactionOutputItem", "transactionHash"),
         type = "string",
         name = "transactionHash",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      transactionId = schema.new({
         id = id.from(_N, "TransactionOutputItem", "transactionId"),
         type = "string",
         name = "transactionId",
         target_id = prelude.String.id,
      }),
      network = schema.new({
         id = id.from(_N, "TransactionOutputItem", "network"),
         type = "string",
         name = "network",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      transactionTimestamp = schema.new({
         id = id.from(_N, "TransactionOutputItem", "transactionTimestamp"),
         type = "timestamp",
         name = "transactionTimestamp",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      confirmationStatus = schema.new({
         id = id.from(_N, "TransactionOutputItem", "confirmationStatus"),
         type = "string",
         name = "confirmationStatus",
         target_id = prelude.String.id,
      }),
   },
})

M.ListTransactionsOutput = schema.new({
   id = id.from(_N, "ListTransactionsOutput"),
   type = "structure",
   members = {
      transactions = schema.new({
         id = id.from(_N, "ListTransactionsOutput", "transactions"),
         type = "list",
         name = "transactions",
         target_id = prelude.Document.id,
         list_member = M.TransactionOutputItem,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListTransactionsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
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
   id = id.from("com.amazonaws.managedblockchainquery", "TietonChainQueryService"),
   version = "2023-05-04",
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.BatchGetTokenBalance = schema.operation({
   id = id.from("com.amazonaws.managedblockchainquery", "BatchGetTokenBalance"),
   input = M.BatchGetTokenBalanceInput,
   output = M.BatchGetTokenBalanceOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/batch-get-token-balance" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetAssetContract = schema.operation({
   id = id.from("com.amazonaws.managedblockchainquery", "GetAssetContract"),
   input = M.GetAssetContractInput,
   output = M.GetAssetContractOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/get-asset-contract" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetTokenBalance = schema.operation({
   id = id.from("com.amazonaws.managedblockchainquery", "GetTokenBalance"),
   input = M.GetTokenBalanceInput,
   output = M.GetTokenBalanceOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/get-token-balance" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetTransaction = schema.operation({
   id = id.from("com.amazonaws.managedblockchainquery", "GetTransaction"),
   input = M.GetTransactionInput,
   output = M.GetTransactionOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/get-transaction" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListAssetContracts = schema.operation({
   id = id.from("com.amazonaws.managedblockchainquery", "ListAssetContracts"),
   input = M.ListAssetContractsInput,
   output = M.ListAssetContractsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/list-asset-contracts" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListFilteredTransactionEvents = schema.operation({
   id = id.from("com.amazonaws.managedblockchainquery", "ListFilteredTransactionEvents"),
   input = M.ListFilteredTransactionEventsInput,
   output = M.ListFilteredTransactionEventsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/list-filtered-transaction-events" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListTokenBalances = schema.operation({
   id = id.from("com.amazonaws.managedblockchainquery", "ListTokenBalances"),
   input = M.ListTokenBalancesInput,
   output = M.ListTokenBalancesOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/list-token-balances" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListTransactionEvents = schema.operation({
   id = id.from("com.amazonaws.managedblockchainquery", "ListTransactionEvents"),
   input = M.ListTransactionEventsInput,
   output = M.ListTransactionEventsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/list-transaction-events" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListTransactions = schema.operation({
   id = id.from("com.amazonaws.managedblockchainquery", "ListTransactions"),
   input = M.ListTransactionsInput,
   output = M.ListTransactionsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/list-transactions" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

return M
