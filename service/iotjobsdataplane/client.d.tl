local types = require("iotjobsdataplane.types")

local record Client
    describeJobExecution: function(Client, types.DescribeJobExecutionInput): types.DescribeJobExecutionOutput, table
    getPendingJobExecutions: function(Client, types.GetPendingJobExecutionsInput): types.GetPendingJobExecutionsOutput, table
    startCommandExecution: function(Client, types.StartCommandExecutionInput): types.StartCommandExecutionOutput, table
    startNextPendingJobExecution: function(Client, types.StartNextPendingJobExecutionInput): types.StartNextPendingJobExecutionOutput, table
    updateJobExecution: function(Client, types.UpdateJobExecutionInput): types.UpdateJobExecutionOutput, table
end

local record M
    new: function(table): Client
end

return M
