local types = require("marketplacemetering.types")

local record Client
    batchMeterUsage: function(Client, types.BatchMeterUsageInput): types.BatchMeterUsageOutput, table
    meterUsage: function(Client, types.MeterUsageInput): types.MeterUsageOutput, table
    registerUsage: function(Client, types.RegisterUsageInput): types.RegisterUsageOutput, table
    resolveCustomer: function(Client, types.ResolveCustomerInput): types.ResolveCustomerOutput, table
end

local record M
    new: function(table): Client
end

return M
