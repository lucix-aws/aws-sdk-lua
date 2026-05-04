local types = require("paymentcryptographydata.types")

local record Client
    decryptData: function(Client, types.DecryptDataInput): types.DecryptDataOutput, table
    encryptData: function(Client, types.EncryptDataInput): types.EncryptDataOutput, table
    generateAs2805KekValidation: function(Client, types.GenerateAs2805KekValidationInput): types.GenerateAs2805KekValidationOutput, table
    generateCardValidationData: function(Client, types.GenerateCardValidationDataInput): types.GenerateCardValidationDataOutput, table
    generateMac: function(Client, types.GenerateMacInput): types.GenerateMacOutput, table
    generateMacEmvPinChange: function(Client, types.GenerateMacEmvPinChangeInput): types.GenerateMacEmvPinChangeOutput, table
    generatePinData: function(Client, types.GeneratePinDataInput): types.GeneratePinDataOutput, table
    reEncryptData: function(Client, types.ReEncryptDataInput): types.ReEncryptDataOutput, table
    translateKeyMaterial: function(Client, types.TranslateKeyMaterialInput): types.TranslateKeyMaterialOutput, table
    translatePinData: function(Client, types.TranslatePinDataInput): types.TranslatePinDataOutput, table
    verifyAuthRequestCryptogram: function(Client, types.VerifyAuthRequestCryptogramInput): types.VerifyAuthRequestCryptogramOutput, table
    verifyCardValidationData: function(Client, types.VerifyCardValidationDataInput): types.VerifyCardValidationDataOutput, table
    verifyMac: function(Client, types.VerifyMacInput): types.VerifyMacOutput, table
    verifyPinData: function(Client, types.VerifyPinDataInput): types.VerifyPinDataOutput, table
end

local record M
    new: function(table): Client
end

return M
