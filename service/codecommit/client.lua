local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("codecommit.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("codecommit.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "CodeCommit_20150413"
    cfg.signing_name = "codecommit_20150413"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new("1.1")
    end
    if not cfg.endpoint_provider then
        cfg.endpoint_provider = function(params)
            return endpoint.resolve(endpoint_rules, params)
        end
    end
    defaults.resolve_signer(cfg)
    defaults.resolve_http_client(cfg)
    defaults.resolve_retry_strategy(cfg)
    sdk_defaults.resolve_identity_resolver(cfg)
    local self = setmetatable(base_client.new(cfg), Client)
    return self
end

function Client:associateApprovalRuleTemplateWithRepository(input, options)
    return self:invokeOperation(input, {
        name = "AssociateApprovalRuleTemplateWithRepository",
        input_schema = types.AssociateApprovalRuleTemplateWithRepositoryInput,
        output_schema = types.AssociateApprovalRuleTemplateWithRepositoryOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:batchAssociateApprovalRuleTemplateWithRepositories(input, options)
    return self:invokeOperation(input, {
        name = "BatchAssociateApprovalRuleTemplateWithRepositories",
        input_schema = types.BatchAssociateApprovalRuleTemplateWithRepositoriesInput,
        output_schema = types.BatchAssociateApprovalRuleTemplateWithRepositoriesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:batchDescribeMergeConflicts(input, options)
    return self:invokeOperation(input, {
        name = "BatchDescribeMergeConflicts",
        input_schema = types.BatchDescribeMergeConflictsInput,
        output_schema = types.BatchDescribeMergeConflictsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:batchDisassociateApprovalRuleTemplateFromRepositories(input, options)
    return self:invokeOperation(input, {
        name = "BatchDisassociateApprovalRuleTemplateFromRepositories",
        input_schema = types.BatchDisassociateApprovalRuleTemplateFromRepositoriesInput,
        output_schema = types.BatchDisassociateApprovalRuleTemplateFromRepositoriesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:batchGetCommits(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetCommits",
        input_schema = types.BatchGetCommitsInput,
        output_schema = types.BatchGetCommitsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:batchGetRepositories(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetRepositories",
        input_schema = types.BatchGetRepositoriesInput,
        output_schema = types.BatchGetRepositoriesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createApprovalRuleTemplate(input, options)
    return self:invokeOperation(input, {
        name = "CreateApprovalRuleTemplate",
        input_schema = types.CreateApprovalRuleTemplateInput,
        output_schema = types.CreateApprovalRuleTemplateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createBranch(input, options)
    return self:invokeOperation(input, {
        name = "CreateBranch",
        input_schema = types.CreateBranchInput,
        output_schema = types.CreateBranchOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createCommit(input, options)
    return self:invokeOperation(input, {
        name = "CreateCommit",
        input_schema = types.CreateCommitInput,
        output_schema = types.CreateCommitOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createPullRequest(input, options)
    return self:invokeOperation(input, {
        name = "CreatePullRequest",
        input_schema = types.CreatePullRequestInput,
        output_schema = types.CreatePullRequestOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createPullRequestApprovalRule(input, options)
    return self:invokeOperation(input, {
        name = "CreatePullRequestApprovalRule",
        input_schema = types.CreatePullRequestApprovalRuleInput,
        output_schema = types.CreatePullRequestApprovalRuleOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createRepository(input, options)
    return self:invokeOperation(input, {
        name = "CreateRepository",
        input_schema = types.CreateRepositoryInput,
        output_schema = types.CreateRepositoryOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createUnreferencedMergeCommit(input, options)
    return self:invokeOperation(input, {
        name = "CreateUnreferencedMergeCommit",
        input_schema = types.CreateUnreferencedMergeCommitInput,
        output_schema = types.CreateUnreferencedMergeCommitOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteApprovalRuleTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteApprovalRuleTemplate",
        input_schema = types.DeleteApprovalRuleTemplateInput,
        output_schema = types.DeleteApprovalRuleTemplateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteBranch(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBranch",
        input_schema = types.DeleteBranchInput,
        output_schema = types.DeleteBranchOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteCommentContent(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCommentContent",
        input_schema = types.DeleteCommentContentInput,
        output_schema = types.DeleteCommentContentOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteFile(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFile",
        input_schema = types.DeleteFileInput,
        output_schema = types.DeleteFileOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deletePullRequestApprovalRule(input, options)
    return self:invokeOperation(input, {
        name = "DeletePullRequestApprovalRule",
        input_schema = types.DeletePullRequestApprovalRuleInput,
        output_schema = types.DeletePullRequestApprovalRuleOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteRepository(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRepository",
        input_schema = types.DeleteRepositoryInput,
        output_schema = types.DeleteRepositoryOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeMergeConflicts(input, options)
    return self:invokeOperation(input, {
        name = "DescribeMergeConflicts",
        input_schema = types.DescribeMergeConflictsInput,
        output_schema = types.DescribeMergeConflictsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describePullRequestEvents(input, options)
    return self:invokeOperation(input, {
        name = "DescribePullRequestEvents",
        input_schema = types.DescribePullRequestEventsInput,
        output_schema = types.DescribePullRequestEventsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:disassociateApprovalRuleTemplateFromRepository(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateApprovalRuleTemplateFromRepository",
        input_schema = types.DisassociateApprovalRuleTemplateFromRepositoryInput,
        output_schema = types.DisassociateApprovalRuleTemplateFromRepositoryOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:evaluatePullRequestApprovalRules(input, options)
    return self:invokeOperation(input, {
        name = "EvaluatePullRequestApprovalRules",
        input_schema = types.EvaluatePullRequestApprovalRulesInput,
        output_schema = types.EvaluatePullRequestApprovalRulesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getApprovalRuleTemplate(input, options)
    return self:invokeOperation(input, {
        name = "GetApprovalRuleTemplate",
        input_schema = types.GetApprovalRuleTemplateInput,
        output_schema = types.GetApprovalRuleTemplateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getBlob(input, options)
    return self:invokeOperation(input, {
        name = "GetBlob",
        input_schema = types.GetBlobInput,
        output_schema = types.GetBlobOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getBranch(input, options)
    return self:invokeOperation(input, {
        name = "GetBranch",
        input_schema = types.GetBranchInput,
        output_schema = types.GetBranchOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getComment(input, options)
    return self:invokeOperation(input, {
        name = "GetComment",
        input_schema = types.GetCommentInput,
        output_schema = types.GetCommentOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getCommentReactions(input, options)
    return self:invokeOperation(input, {
        name = "GetCommentReactions",
        input_schema = types.GetCommentReactionsInput,
        output_schema = types.GetCommentReactionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getCommentsForComparedCommit(input, options)
    return self:invokeOperation(input, {
        name = "GetCommentsForComparedCommit",
        input_schema = types.GetCommentsForComparedCommitInput,
        output_schema = types.GetCommentsForComparedCommitOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getCommentsForPullRequest(input, options)
    return self:invokeOperation(input, {
        name = "GetCommentsForPullRequest",
        input_schema = types.GetCommentsForPullRequestInput,
        output_schema = types.GetCommentsForPullRequestOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getCommit(input, options)
    return self:invokeOperation(input, {
        name = "GetCommit",
        input_schema = types.GetCommitInput,
        output_schema = types.GetCommitOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getDifferences(input, options)
    return self:invokeOperation(input, {
        name = "GetDifferences",
        input_schema = types.GetDifferencesInput,
        output_schema = types.GetDifferencesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getFile(input, options)
    return self:invokeOperation(input, {
        name = "GetFile",
        input_schema = types.GetFileInput,
        output_schema = types.GetFileOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getFolder(input, options)
    return self:invokeOperation(input, {
        name = "GetFolder",
        input_schema = types.GetFolderInput,
        output_schema = types.GetFolderOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getMergeCommit(input, options)
    return self:invokeOperation(input, {
        name = "GetMergeCommit",
        input_schema = types.GetMergeCommitInput,
        output_schema = types.GetMergeCommitOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getMergeConflicts(input, options)
    return self:invokeOperation(input, {
        name = "GetMergeConflicts",
        input_schema = types.GetMergeConflictsInput,
        output_schema = types.GetMergeConflictsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getMergeOptions(input, options)
    return self:invokeOperation(input, {
        name = "GetMergeOptions",
        input_schema = types.GetMergeOptionsInput,
        output_schema = types.GetMergeOptionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getPullRequest(input, options)
    return self:invokeOperation(input, {
        name = "GetPullRequest",
        input_schema = types.GetPullRequestInput,
        output_schema = types.GetPullRequestOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getPullRequestApprovalStates(input, options)
    return self:invokeOperation(input, {
        name = "GetPullRequestApprovalStates",
        input_schema = types.GetPullRequestApprovalStatesInput,
        output_schema = types.GetPullRequestApprovalStatesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getPullRequestOverrideState(input, options)
    return self:invokeOperation(input, {
        name = "GetPullRequestOverrideState",
        input_schema = types.GetPullRequestOverrideStateInput,
        output_schema = types.GetPullRequestOverrideStateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getRepository(input, options)
    return self:invokeOperation(input, {
        name = "GetRepository",
        input_schema = types.GetRepositoryInput,
        output_schema = types.GetRepositoryOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getRepositoryTriggers(input, options)
    return self:invokeOperation(input, {
        name = "GetRepositoryTriggers",
        input_schema = types.GetRepositoryTriggersInput,
        output_schema = types.GetRepositoryTriggersOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listApprovalRuleTemplates(input, options)
    return self:invokeOperation(input, {
        name = "ListApprovalRuleTemplates",
        input_schema = types.ListApprovalRuleTemplatesInput,
        output_schema = types.ListApprovalRuleTemplatesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listAssociatedApprovalRuleTemplatesForRepository(input, options)
    return self:invokeOperation(input, {
        name = "ListAssociatedApprovalRuleTemplatesForRepository",
        input_schema = types.ListAssociatedApprovalRuleTemplatesForRepositoryInput,
        output_schema = types.ListAssociatedApprovalRuleTemplatesForRepositoryOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listBranches(input, options)
    return self:invokeOperation(input, {
        name = "ListBranches",
        input_schema = types.ListBranchesInput,
        output_schema = types.ListBranchesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listFileCommitHistory(input, options)
    return self:invokeOperation(input, {
        name = "ListFileCommitHistory",
        input_schema = types.ListFileCommitHistoryInput,
        output_schema = types.ListFileCommitHistoryOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listPullRequests(input, options)
    return self:invokeOperation(input, {
        name = "ListPullRequests",
        input_schema = types.ListPullRequestsInput,
        output_schema = types.ListPullRequestsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listRepositories(input, options)
    return self:invokeOperation(input, {
        name = "ListRepositories",
        input_schema = types.ListRepositoriesInput,
        output_schema = types.ListRepositoriesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listRepositoriesForApprovalRuleTemplate(input, options)
    return self:invokeOperation(input, {
        name = "ListRepositoriesForApprovalRuleTemplate",
        input_schema = types.ListRepositoriesForApprovalRuleTemplateInput,
        output_schema = types.ListRepositoriesForApprovalRuleTemplateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:mergeBranchesByFastForward(input, options)
    return self:invokeOperation(input, {
        name = "MergeBranchesByFastForward",
        input_schema = types.MergeBranchesByFastForwardInput,
        output_schema = types.MergeBranchesByFastForwardOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:mergeBranchesBySquash(input, options)
    return self:invokeOperation(input, {
        name = "MergeBranchesBySquash",
        input_schema = types.MergeBranchesBySquashInput,
        output_schema = types.MergeBranchesBySquashOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:mergeBranchesByThreeWay(input, options)
    return self:invokeOperation(input, {
        name = "MergeBranchesByThreeWay",
        input_schema = types.MergeBranchesByThreeWayInput,
        output_schema = types.MergeBranchesByThreeWayOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:mergePullRequestByFastForward(input, options)
    return self:invokeOperation(input, {
        name = "MergePullRequestByFastForward",
        input_schema = types.MergePullRequestByFastForwardInput,
        output_schema = types.MergePullRequestByFastForwardOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:mergePullRequestBySquash(input, options)
    return self:invokeOperation(input, {
        name = "MergePullRequestBySquash",
        input_schema = types.MergePullRequestBySquashInput,
        output_schema = types.MergePullRequestBySquashOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:mergePullRequestByThreeWay(input, options)
    return self:invokeOperation(input, {
        name = "MergePullRequestByThreeWay",
        input_schema = types.MergePullRequestByThreeWayInput,
        output_schema = types.MergePullRequestByThreeWayOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:overridePullRequestApprovalRules(input, options)
    return self:invokeOperation(input, {
        name = "OverridePullRequestApprovalRules",
        input_schema = types.OverridePullRequestApprovalRulesInput,
        output_schema = types.OverridePullRequestApprovalRulesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:postCommentForComparedCommit(input, options)
    return self:invokeOperation(input, {
        name = "PostCommentForComparedCommit",
        input_schema = types.PostCommentForComparedCommitInput,
        output_schema = types.PostCommentForComparedCommitOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:postCommentForPullRequest(input, options)
    return self:invokeOperation(input, {
        name = "PostCommentForPullRequest",
        input_schema = types.PostCommentForPullRequestInput,
        output_schema = types.PostCommentForPullRequestOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:postCommentReply(input, options)
    return self:invokeOperation(input, {
        name = "PostCommentReply",
        input_schema = types.PostCommentReplyInput,
        output_schema = types.PostCommentReplyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putCommentReaction(input, options)
    return self:invokeOperation(input, {
        name = "PutCommentReaction",
        input_schema = types.PutCommentReactionInput,
        output_schema = types.PutCommentReactionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putFile(input, options)
    return self:invokeOperation(input, {
        name = "PutFile",
        input_schema = types.PutFileInput,
        output_schema = types.PutFileOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putRepositoryTriggers(input, options)
    return self:invokeOperation(input, {
        name = "PutRepositoryTriggers",
        input_schema = types.PutRepositoryTriggersInput,
        output_schema = types.PutRepositoryTriggersOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:testRepositoryTriggers(input, options)
    return self:invokeOperation(input, {
        name = "TestRepositoryTriggers",
        input_schema = types.TestRepositoryTriggersInput,
        output_schema = types.TestRepositoryTriggersOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateApprovalRuleTemplateContent(input, options)
    return self:invokeOperation(input, {
        name = "UpdateApprovalRuleTemplateContent",
        input_schema = types.UpdateApprovalRuleTemplateContentInput,
        output_schema = types.UpdateApprovalRuleTemplateContentOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateApprovalRuleTemplateDescription(input, options)
    return self:invokeOperation(input, {
        name = "UpdateApprovalRuleTemplateDescription",
        input_schema = types.UpdateApprovalRuleTemplateDescriptionInput,
        output_schema = types.UpdateApprovalRuleTemplateDescriptionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateApprovalRuleTemplateName(input, options)
    return self:invokeOperation(input, {
        name = "UpdateApprovalRuleTemplateName",
        input_schema = types.UpdateApprovalRuleTemplateNameInput,
        output_schema = types.UpdateApprovalRuleTemplateNameOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateComment(input, options)
    return self:invokeOperation(input, {
        name = "UpdateComment",
        input_schema = types.UpdateCommentInput,
        output_schema = types.UpdateCommentOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateDefaultBranch(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDefaultBranch",
        input_schema = types.UpdateDefaultBranchInput,
        output_schema = types.UpdateDefaultBranchOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updatePullRequestApprovalRuleContent(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePullRequestApprovalRuleContent",
        input_schema = types.UpdatePullRequestApprovalRuleContentInput,
        output_schema = types.UpdatePullRequestApprovalRuleContentOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updatePullRequestApprovalState(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePullRequestApprovalState",
        input_schema = types.UpdatePullRequestApprovalStateInput,
        output_schema = types.UpdatePullRequestApprovalStateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updatePullRequestDescription(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePullRequestDescription",
        input_schema = types.UpdatePullRequestDescriptionInput,
        output_schema = types.UpdatePullRequestDescriptionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updatePullRequestStatus(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePullRequestStatus",
        input_schema = types.UpdatePullRequestStatusInput,
        output_schema = types.UpdatePullRequestStatusOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updatePullRequestTitle(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePullRequestTitle",
        input_schema = types.UpdatePullRequestTitleInput,
        output_schema = types.UpdatePullRequestTitleOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateRepositoryDescription(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRepositoryDescription",
        input_schema = types.UpdateRepositoryDescriptionInput,
        output_schema = types.UpdateRepositoryDescriptionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateRepositoryEncryptionKey(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRepositoryEncryptionKey",
        input_schema = types.UpdateRepositoryEncryptionKeyInput,
        output_schema = types.UpdateRepositoryEncryptionKeyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateRepositoryName(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRepositoryName",
        input_schema = types.UpdateRepositoryNameInput,
        output_schema = types.UpdateRepositoryNameOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

return M
