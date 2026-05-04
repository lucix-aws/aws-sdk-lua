local types = require("taxsettings.types")

local record Client
    batchDeleteTaxRegistration: function(Client, types.BatchDeleteTaxRegistrationInput): types.BatchDeleteTaxRegistrationOutput, table
    batchGetTaxExemptions: function(Client, types.BatchGetTaxExemptionsInput): types.BatchGetTaxExemptionsOutput, table
    batchPutTaxRegistration: function(Client, types.BatchPutTaxRegistrationInput): types.BatchPutTaxRegistrationOutput, table
    deleteSupplementalTaxRegistration: function(Client, types.DeleteSupplementalTaxRegistrationInput): types.DeleteSupplementalTaxRegistrationOutput, table
    deleteTaxRegistration: function(Client, types.DeleteTaxRegistrationInput): types.DeleteTaxRegistrationOutput, table
    getTaxExemptionTypes: function(Client, types.GetTaxExemptionTypesInput): types.GetTaxExemptionTypesOutput, table
    getTaxInheritance: function(Client, types.GetTaxInheritanceInput): types.GetTaxInheritanceOutput, table
    getTaxRegistration: function(Client, types.GetTaxRegistrationInput): types.GetTaxRegistrationOutput, table
    getTaxRegistrationDocument: function(Client, types.GetTaxRegistrationDocumentInput): types.GetTaxRegistrationDocumentOutput, table
    listSupplementalTaxRegistrations: function(Client, types.ListSupplementalTaxRegistrationsInput): types.ListSupplementalTaxRegistrationsOutput, table
    listTaxExemptions: function(Client, types.ListTaxExemptionsInput): types.ListTaxExemptionsOutput, table
    listTaxRegistrations: function(Client, types.ListTaxRegistrationsInput): types.ListTaxRegistrationsOutput, table
    putSupplementalTaxRegistration: function(Client, types.PutSupplementalTaxRegistrationInput): types.PutSupplementalTaxRegistrationOutput, table
    putTaxExemption: function(Client, types.PutTaxExemptionInput): types.PutTaxExemptionOutput, table
    putTaxInheritance: function(Client, types.PutTaxInheritanceInput): types.PutTaxInheritanceOutput, table
    putTaxRegistration: function(Client, types.PutTaxRegistrationInput): types.PutTaxRegistrationOutput, table
end

local record M
    new: function(table): Client
end

return M
