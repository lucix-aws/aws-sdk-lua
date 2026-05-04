local types = require("ec2instanceconnect.types")

local record Client
    sendSerialConsoleSSHPublicKey: function(Client, types.SendSerialConsoleSSHPublicKeyInput): types.SendSerialConsoleSSHPublicKeyOutput, table
    sendSSHPublicKey: function(Client, types.SendSSHPublicKeyInput): types.SendSSHPublicKeyOutput, table
end

local record M
    new: function(table): Client
end

return M
