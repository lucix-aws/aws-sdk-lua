local types = require("cloudfrontkeyvaluestore.types")

local record Client
    deleteKey: function(Client, types.DeleteKeyInput): types.DeleteKeyOutput, table
    describeKeyValueStore: function(Client, types.DescribeKeyValueStoreInput): types.DescribeKeyValueStoreOutput, table
    getKey: function(Client, types.GetKeyInput): types.GetKeyOutput, table
    listKeys: function(Client, types.ListKeysInput): types.ListKeysOutput, table
    putKey: function(Client, types.PutKeyInput): types.PutKeyOutput, table
    updateKeys: function(Client, types.UpdateKeysInput): types.UpdateKeysOutput, table
end

local record M
    new: function(table): Client
end

return M
