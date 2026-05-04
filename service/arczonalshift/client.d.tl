local types = require("arczonalshift.types")

local record Client
    cancelPracticeRun: function(Client, types.CancelPracticeRunInput): types.CancelPracticeRunOutput, table
    cancelZonalShift: function(Client, types.CancelZonalShiftInput): types.CancelZonalShiftOutput, table
    createPracticeRunConfiguration: function(Client, types.CreatePracticeRunConfigurationInput): types.CreatePracticeRunConfigurationOutput, table
    deletePracticeRunConfiguration: function(Client, types.DeletePracticeRunConfigurationInput): types.DeletePracticeRunConfigurationOutput, table
    getAutoshiftObserverNotificationStatus: function(Client, types.GetAutoshiftObserverNotificationStatusInput): types.GetAutoshiftObserverNotificationStatusOutput, table
    getManagedResource: function(Client, types.GetManagedResourceInput): types.GetManagedResourceOutput, table
    listAutoshifts: function(Client, types.ListAutoshiftsInput): types.ListAutoshiftsOutput, table
    listManagedResources: function(Client, types.ListManagedResourcesInput): types.ListManagedResourcesOutput, table
    listZonalShifts: function(Client, types.ListZonalShiftsInput): types.ListZonalShiftsOutput, table
    startPracticeRun: function(Client, types.StartPracticeRunInput): types.StartPracticeRunOutput, table
    startZonalShift: function(Client, types.StartZonalShiftInput): types.StartZonalShiftOutput, table
    updateAutoshiftObserverNotificationStatus: function(Client, types.UpdateAutoshiftObserverNotificationStatusInput): types.UpdateAutoshiftObserverNotificationStatusOutput, table
    updatePracticeRunConfiguration: function(Client, types.UpdatePracticeRunConfigurationInput): types.UpdatePracticeRunConfigurationOutput, table
    updateZonalAutoshiftConfiguration: function(Client, types.UpdateZonalAutoshiftConfigurationInput): types.UpdateZonalAutoshiftConfigurationOutput, table
    updateZonalShift: function(Client, types.UpdateZonalShiftInput): types.UpdateZonalShiftOutput, table
end

local record M
    new: function(table): Client
end

return M
