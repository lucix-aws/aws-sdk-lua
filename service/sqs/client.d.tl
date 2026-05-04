local types = require("sqs.types")

local record Client
    addPermission: function(Client, types.AddPermissionInput): types.AddPermissionOutput, table
    cancelMessageMoveTask: function(Client, types.CancelMessageMoveTaskInput): types.CancelMessageMoveTaskOutput, table
    changeMessageVisibility: function(Client, types.ChangeMessageVisibilityInput): types.ChangeMessageVisibilityOutput, table
    changeMessageVisibilityBatch: function(Client, types.ChangeMessageVisibilityBatchInput): types.ChangeMessageVisibilityBatchOutput, table
    createQueue: function(Client, types.CreateQueueInput): types.CreateQueueOutput, table
    deleteMessage: function(Client, types.DeleteMessageInput): types.DeleteMessageOutput, table
    deleteMessageBatch: function(Client, types.DeleteMessageBatchInput): types.DeleteMessageBatchOutput, table
    deleteQueue: function(Client, types.DeleteQueueInput): types.DeleteQueueOutput, table
    getQueueAttributes: function(Client, types.GetQueueAttributesInput): types.GetQueueAttributesOutput, table
    getQueueUrl: function(Client, types.GetQueueUrlInput): types.GetQueueUrlOutput, table
    listDeadLetterSourceQueues: function(Client, types.ListDeadLetterSourceQueuesInput): types.ListDeadLetterSourceQueuesOutput, table
    listMessageMoveTasks: function(Client, types.ListMessageMoveTasksInput): types.ListMessageMoveTasksOutput, table
    listQueues: function(Client, types.ListQueuesInput): types.ListQueuesOutput, table
    listQueueTags: function(Client, types.ListQueueTagsInput): types.ListQueueTagsOutput, table
    purgeQueue: function(Client, types.PurgeQueueInput): types.PurgeQueueOutput, table
    receiveMessage: function(Client, types.ReceiveMessageInput): types.ReceiveMessageOutput, table
    removePermission: function(Client, types.RemovePermissionInput): types.RemovePermissionOutput, table
    sendMessage: function(Client, types.SendMessageInput): types.SendMessageOutput, table
    sendMessageBatch: function(Client, types.SendMessageBatchInput): types.SendMessageBatchOutput, table
    setQueueAttributes: function(Client, types.SetQueueAttributesInput): types.SetQueueAttributesOutput, table
    startMessageMoveTask: function(Client, types.StartMessageMoveTaskInput): types.StartMessageMoveTaskOutput, table
    tagQueue: function(Client, types.TagQueueInput): types.TagQueueOutput, table
    untagQueue: function(Client, types.UntagQueueInput): types.UntagQueueOutput, table
end

local record M
    new: function(table): Client
end

return M
