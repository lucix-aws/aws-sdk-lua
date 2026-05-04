local types = require("cloudhsm.types")

local record Client
    addTagsToResource: function(Client, types.AddTagsToResourceInput): types.AddTagsToResourceOutput, table
    createHapg: function(Client, types.CreateHapgInput): types.CreateHapgOutput, table
    createHsm: function(Client, types.CreateHsmInput): types.CreateHsmOutput, table
    createLunaClient: function(Client, types.CreateLunaClientInput): types.CreateLunaClientOutput, table
    deleteHapg: function(Client, types.DeleteHapgInput): types.DeleteHapgOutput, table
    deleteHsm: function(Client, types.DeleteHsmInput): types.DeleteHsmOutput, table
    deleteLunaClient: function(Client, types.DeleteLunaClientInput): types.DeleteLunaClientOutput, table
    describeHapg: function(Client, types.DescribeHapgInput): types.DescribeHapgOutput, table
    describeHsm: function(Client, types.DescribeHsmInput): types.DescribeHsmOutput, table
    describeLunaClient: function(Client, types.DescribeLunaClientInput): types.DescribeLunaClientOutput, table
    getConfig: function(Client, types.GetConfigInput): types.GetConfigOutput, table
    listAvailableZones: function(Client, types.ListAvailableZonesInput): types.ListAvailableZonesOutput, table
    listHapgs: function(Client, types.ListHapgsInput): types.ListHapgsOutput, table
    listHsms: function(Client, types.ListHsmsInput): types.ListHsmsOutput, table
    listLunaClients: function(Client, types.ListLunaClientsInput): types.ListLunaClientsOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    modifyHapg: function(Client, types.ModifyHapgInput): types.ModifyHapgOutput, table
    modifyHsm: function(Client, types.ModifyHsmInput): types.ModifyHsmOutput, table
    modifyLunaClient: function(Client, types.ModifyLunaClientInput): types.ModifyLunaClientOutput, table
    removeTagsFromResource: function(Client, types.RemoveTagsFromResourceInput): types.RemoveTagsFromResourceOutput, table
end

local record M
    new: function(table): Client
end

return M
