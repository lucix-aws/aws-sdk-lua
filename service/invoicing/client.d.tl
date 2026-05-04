local types = require("invoicing.types")

local record Client
    batchGetInvoiceProfile: function(Client, types.BatchGetInvoiceProfileInput): types.BatchGetInvoiceProfileOutput, table
    createInvoiceUnit: function(Client, types.CreateInvoiceUnitInput): types.CreateInvoiceUnitOutput, table
    createProcurementPortalPreference: function(Client, types.CreateProcurementPortalPreferenceInput): types.CreateProcurementPortalPreferenceOutput, table
    deleteInvoiceUnit: function(Client, types.DeleteInvoiceUnitInput): types.DeleteInvoiceUnitOutput, table
    deleteProcurementPortalPreference: function(Client, types.DeleteProcurementPortalPreferenceInput): types.DeleteProcurementPortalPreferenceOutput, table
    getInvoicePDF: function(Client, types.GetInvoicePDFInput): types.GetInvoicePDFOutput, table
    getInvoiceUnit: function(Client, types.GetInvoiceUnitInput): types.GetInvoiceUnitOutput, table
    getProcurementPortalPreference: function(Client, types.GetProcurementPortalPreferenceInput): types.GetProcurementPortalPreferenceOutput, table
    listInvoiceSummaries: function(Client, types.ListInvoiceSummariesInput): types.ListInvoiceSummariesOutput, table
    listInvoiceUnits: function(Client, types.ListInvoiceUnitsInput): types.ListInvoiceUnitsOutput, table
    listProcurementPortalPreferences: function(Client, types.ListProcurementPortalPreferencesInput): types.ListProcurementPortalPreferencesOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    putProcurementPortalPreference: function(Client, types.PutProcurementPortalPreferenceInput): types.PutProcurementPortalPreferenceOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateInvoiceUnit: function(Client, types.UpdateInvoiceUnitInput): types.UpdateInvoiceUnitOutput, table
    updateProcurementPortalPreferenceStatus: function(Client, types.UpdateProcurementPortalPreferenceStatusInput): types.UpdateProcurementPortalPreferenceStatusOutput, table
end

local record M
    new: function(table): Client
end

return M
