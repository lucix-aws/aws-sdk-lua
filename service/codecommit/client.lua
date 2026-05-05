local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("codecommit.endpoint_rules")
local schemas = require("codecommit.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "CodeCommit_20150413"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new({ version = "1.1", service_id = cfg.service_id })
    end
    if not cfg.endpoint_provider then
        cfg.endpoint_provider = function(params)
            return endpoint.resolve(endpoint_rules, params)
        end
    end
    if not cfg.auth_scheme_resolver then
        cfg.auth_scheme_resolver = function(operation)
            local options = {}
            for _, scheme_id in ipairs(operation.effective_auth_schemes) do
                if scheme_id == "aws.auth#sigv4" or scheme_id == "aws.auth#sigv4a" then
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "codecommit", signing_region = cfg.region } }
                else
                    options[#options + 1] = { scheme_id = scheme_id }
                end
            end
            return options
        end
    end
    defaults.resolve_auth_schemes(cfg)
    defaults.resolve_identity_resolvers(cfg)
    defaults.resolve_http_client(cfg)
    defaults.resolve_retry_strategy(cfg)
    sdk_defaults.resolve_identity_resolver(cfg)
    local self = setmetatable(base_client.new(cfg), Client)
    return self
end

function Client:associateApprovalRuleTemplateWithRepository(input, options)
    return self:invokeOperation(input, {
        name = "AssociateApprovalRuleTemplateWithRepository",
        input_schema = schemas.AssociateApprovalRuleTemplateWithRepositoryInput,
        output_schema = schemas.AssociateApprovalRuleTemplateWithRepositoryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchAssociateApprovalRuleTemplateWithRepositories(input, options)
    return self:invokeOperation(input, {
        name = "BatchAssociateApprovalRuleTemplateWithRepositories",
        input_schema = schemas.BatchAssociateApprovalRuleTemplateWithRepositoriesInput,
        output_schema = schemas.BatchAssociateApprovalRuleTemplateWithRepositoriesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchDescribeMergeConflicts(input, options)
    return self:invokeOperation(input, {
        name = "BatchDescribeMergeConflicts",
        input_schema = schemas.BatchDescribeMergeConflictsInput,
        output_schema = schemas.BatchDescribeMergeConflictsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchDisassociateApprovalRuleTemplateFromRepositories(input, options)
    return self:invokeOperation(input, {
        name = "BatchDisassociateApprovalRuleTemplateFromRepositories",
        input_schema = schemas.BatchDisassociateApprovalRuleTemplateFromRepositoriesInput,
        output_schema = schemas.BatchDisassociateApprovalRuleTemplateFromRepositoriesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchGetCommits(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetCommits",
        input_schema = schemas.BatchGetCommitsInput,
        output_schema = schemas.BatchGetCommitsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchGetRepositories(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetRepositories",
        input_schema = schemas.BatchGetRepositoriesInput,
        output_schema = schemas.BatchGetRepositoriesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createApprovalRuleTemplate(input, options)
    return self:invokeOperation(input, {
        name = "CreateApprovalRuleTemplate",
        input_schema = schemas.CreateApprovalRuleTemplateInput,
        output_schema = schemas.CreateApprovalRuleTemplateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createBranch(input, options)
    return self:invokeOperation(input, {
        name = "CreateBranch",
        input_schema = schemas.CreateBranchInput,
        output_schema = schemas.CreateBranchOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createCommit(input, options)
    return self:invokeOperation(input, {
        name = "CreateCommit",
        input_schema = schemas.CreateCommitInput,
        output_schema = schemas.CreateCommitOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPullRequest(input, options)
    return self:invokeOperation(input, {
        name = "CreatePullRequest",
        input_schema = schemas.CreatePullRequestInput,
        output_schema = schemas.CreatePullRequestOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPullRequestApprovalRule(input, options)
    return self:invokeOperation(input, {
        name = "CreatePullRequestApprovalRule",
        input_schema = schemas.CreatePullRequestApprovalRuleInput,
        output_schema = schemas.CreatePullRequestApprovalRuleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createRepository(input, options)
    return self:invokeOperation(input, {
        name = "CreateRepository",
        input_schema = schemas.CreateRepositoryInput,
        output_schema = schemas.CreateRepositoryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createUnreferencedMergeCommit(input, options)
    return self:invokeOperation(input, {
        name = "CreateUnreferencedMergeCommit",
        input_schema = schemas.CreateUnreferencedMergeCommitInput,
        output_schema = schemas.CreateUnreferencedMergeCommitOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteApprovalRuleTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteApprovalRuleTemplate",
        input_schema = schemas.DeleteApprovalRuleTemplateInput,
        output_schema = schemas.DeleteApprovalRuleTemplateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteBranch(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBranch",
        input_schema = schemas.DeleteBranchInput,
        output_schema = schemas.DeleteBranchOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCommentContent(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCommentContent",
        input_schema = schemas.DeleteCommentContentInput,
        output_schema = schemas.DeleteCommentContentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteFile(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFile",
        input_schema = schemas.DeleteFileInput,
        output_schema = schemas.DeleteFileOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePullRequestApprovalRule(input, options)
    return self:invokeOperation(input, {
        name = "DeletePullRequestApprovalRule",
        input_schema = schemas.DeletePullRequestApprovalRuleInput,
        output_schema = schemas.DeletePullRequestApprovalRuleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRepository(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRepository",
        input_schema = schemas.DeleteRepositoryInput,
        output_schema = schemas.DeleteRepositoryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeMergeConflicts(input, options)
    return self:invokeOperation(input, {
        name = "DescribeMergeConflicts",
        input_schema = schemas.DescribeMergeConflictsInput,
        output_schema = schemas.DescribeMergeConflictsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describePullRequestEvents(input, options)
    return self:invokeOperation(input, {
        name = "DescribePullRequestEvents",
        input_schema = schemas.DescribePullRequestEventsInput,
        output_schema = schemas.DescribePullRequestEventsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateApprovalRuleTemplateFromRepository(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateApprovalRuleTemplateFromRepository",
        input_schema = schemas.DisassociateApprovalRuleTemplateFromRepositoryInput,
        output_schema = schemas.DisassociateApprovalRuleTemplateFromRepositoryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:evaluatePullRequestApprovalRules(input, options)
    return self:invokeOperation(input, {
        name = "EvaluatePullRequestApprovalRules",
        input_schema = schemas.EvaluatePullRequestApprovalRulesInput,
        output_schema = schemas.EvaluatePullRequestApprovalRulesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getApprovalRuleTemplate(input, options)
    return self:invokeOperation(input, {
        name = "GetApprovalRuleTemplate",
        input_schema = schemas.GetApprovalRuleTemplateInput,
        output_schema = schemas.GetApprovalRuleTemplateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getBlob(input, options)
    return self:invokeOperation(input, {
        name = "GetBlob",
        input_schema = schemas.GetBlobInput,
        output_schema = schemas.GetBlobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getBranch(input, options)
    return self:invokeOperation(input, {
        name = "GetBranch",
        input_schema = schemas.GetBranchInput,
        output_schema = schemas.GetBranchOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getComment(input, options)
    return self:invokeOperation(input, {
        name = "GetComment",
        input_schema = schemas.GetCommentInput,
        output_schema = schemas.GetCommentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCommentReactions(input, options)
    return self:invokeOperation(input, {
        name = "GetCommentReactions",
        input_schema = schemas.GetCommentReactionsInput,
        output_schema = schemas.GetCommentReactionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCommentsForComparedCommit(input, options)
    return self:invokeOperation(input, {
        name = "GetCommentsForComparedCommit",
        input_schema = schemas.GetCommentsForComparedCommitInput,
        output_schema = schemas.GetCommentsForComparedCommitOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCommentsForPullRequest(input, options)
    return self:invokeOperation(input, {
        name = "GetCommentsForPullRequest",
        input_schema = schemas.GetCommentsForPullRequestInput,
        output_schema = schemas.GetCommentsForPullRequestOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCommit(input, options)
    return self:invokeOperation(input, {
        name = "GetCommit",
        input_schema = schemas.GetCommitInput,
        output_schema = schemas.GetCommitOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDifferences(input, options)
    return self:invokeOperation(input, {
        name = "GetDifferences",
        input_schema = schemas.GetDifferencesInput,
        output_schema = schemas.GetDifferencesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getFile(input, options)
    return self:invokeOperation(input, {
        name = "GetFile",
        input_schema = schemas.GetFileInput,
        output_schema = schemas.GetFileOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getFolder(input, options)
    return self:invokeOperation(input, {
        name = "GetFolder",
        input_schema = schemas.GetFolderInput,
        output_schema = schemas.GetFolderOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMergeCommit(input, options)
    return self:invokeOperation(input, {
        name = "GetMergeCommit",
        input_schema = schemas.GetMergeCommitInput,
        output_schema = schemas.GetMergeCommitOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMergeConflicts(input, options)
    return self:invokeOperation(input, {
        name = "GetMergeConflicts",
        input_schema = schemas.GetMergeConflictsInput,
        output_schema = schemas.GetMergeConflictsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMergeOptions(input, options)
    return self:invokeOperation(input, {
        name = "GetMergeOptions",
        input_schema = schemas.GetMergeOptionsInput,
        output_schema = schemas.GetMergeOptionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPullRequest(input, options)
    return self:invokeOperation(input, {
        name = "GetPullRequest",
        input_schema = schemas.GetPullRequestInput,
        output_schema = schemas.GetPullRequestOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPullRequestApprovalStates(input, options)
    return self:invokeOperation(input, {
        name = "GetPullRequestApprovalStates",
        input_schema = schemas.GetPullRequestApprovalStatesInput,
        output_schema = schemas.GetPullRequestApprovalStatesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPullRequestOverrideState(input, options)
    return self:invokeOperation(input, {
        name = "GetPullRequestOverrideState",
        input_schema = schemas.GetPullRequestOverrideStateInput,
        output_schema = schemas.GetPullRequestOverrideStateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRepository(input, options)
    return self:invokeOperation(input, {
        name = "GetRepository",
        input_schema = schemas.GetRepositoryInput,
        output_schema = schemas.GetRepositoryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRepositoryTriggers(input, options)
    return self:invokeOperation(input, {
        name = "GetRepositoryTriggers",
        input_schema = schemas.GetRepositoryTriggersInput,
        output_schema = schemas.GetRepositoryTriggersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listApprovalRuleTemplates(input, options)
    return self:invokeOperation(input, {
        name = "ListApprovalRuleTemplates",
        input_schema = schemas.ListApprovalRuleTemplatesInput,
        output_schema = schemas.ListApprovalRuleTemplatesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAssociatedApprovalRuleTemplatesForRepository(input, options)
    return self:invokeOperation(input, {
        name = "ListAssociatedApprovalRuleTemplatesForRepository",
        input_schema = schemas.ListAssociatedApprovalRuleTemplatesForRepositoryInput,
        output_schema = schemas.ListAssociatedApprovalRuleTemplatesForRepositoryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listBranches(input, options)
    return self:invokeOperation(input, {
        name = "ListBranches",
        input_schema = schemas.ListBranchesInput,
        output_schema = schemas.ListBranchesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listFileCommitHistory(input, options)
    return self:invokeOperation(input, {
        name = "ListFileCommitHistory",
        input_schema = schemas.ListFileCommitHistoryInput,
        output_schema = schemas.ListFileCommitHistoryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPullRequests(input, options)
    return self:invokeOperation(input, {
        name = "ListPullRequests",
        input_schema = schemas.ListPullRequestsInput,
        output_schema = schemas.ListPullRequestsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRepositories(input, options)
    return self:invokeOperation(input, {
        name = "ListRepositories",
        input_schema = schemas.ListRepositoriesInput,
        output_schema = schemas.ListRepositoriesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRepositoriesForApprovalRuleTemplate(input, options)
    return self:invokeOperation(input, {
        name = "ListRepositoriesForApprovalRuleTemplate",
        input_schema = schemas.ListRepositoriesForApprovalRuleTemplateInput,
        output_schema = schemas.ListRepositoriesForApprovalRuleTemplateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = schemas.ListTagsForResourceInput,
        output_schema = schemas.ListTagsForResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:mergeBranchesByFastForward(input, options)
    return self:invokeOperation(input, {
        name = "MergeBranchesByFastForward",
        input_schema = schemas.MergeBranchesByFastForwardInput,
        output_schema = schemas.MergeBranchesByFastForwardOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:mergeBranchesBySquash(input, options)
    return self:invokeOperation(input, {
        name = "MergeBranchesBySquash",
        input_schema = schemas.MergeBranchesBySquashInput,
        output_schema = schemas.MergeBranchesBySquashOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:mergeBranchesByThreeWay(input, options)
    return self:invokeOperation(input, {
        name = "MergeBranchesByThreeWay",
        input_schema = schemas.MergeBranchesByThreeWayInput,
        output_schema = schemas.MergeBranchesByThreeWayOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:mergePullRequestByFastForward(input, options)
    return self:invokeOperation(input, {
        name = "MergePullRequestByFastForward",
        input_schema = schemas.MergePullRequestByFastForwardInput,
        output_schema = schemas.MergePullRequestByFastForwardOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:mergePullRequestBySquash(input, options)
    return self:invokeOperation(input, {
        name = "MergePullRequestBySquash",
        input_schema = schemas.MergePullRequestBySquashInput,
        output_schema = schemas.MergePullRequestBySquashOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:mergePullRequestByThreeWay(input, options)
    return self:invokeOperation(input, {
        name = "MergePullRequestByThreeWay",
        input_schema = schemas.MergePullRequestByThreeWayInput,
        output_schema = schemas.MergePullRequestByThreeWayOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:overridePullRequestApprovalRules(input, options)
    return self:invokeOperation(input, {
        name = "OverridePullRequestApprovalRules",
        input_schema = schemas.OverridePullRequestApprovalRulesInput,
        output_schema = schemas.OverridePullRequestApprovalRulesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:postCommentForComparedCommit(input, options)
    return self:invokeOperation(input, {
        name = "PostCommentForComparedCommit",
        input_schema = schemas.PostCommentForComparedCommitInput,
        output_schema = schemas.PostCommentForComparedCommitOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:postCommentForPullRequest(input, options)
    return self:invokeOperation(input, {
        name = "PostCommentForPullRequest",
        input_schema = schemas.PostCommentForPullRequestInput,
        output_schema = schemas.PostCommentForPullRequestOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:postCommentReply(input, options)
    return self:invokeOperation(input, {
        name = "PostCommentReply",
        input_schema = schemas.PostCommentReplyInput,
        output_schema = schemas.PostCommentReplyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putCommentReaction(input, options)
    return self:invokeOperation(input, {
        name = "PutCommentReaction",
        input_schema = schemas.PutCommentReactionInput,
        output_schema = schemas.PutCommentReactionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putFile(input, options)
    return self:invokeOperation(input, {
        name = "PutFile",
        input_schema = schemas.PutFileInput,
        output_schema = schemas.PutFileOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putRepositoryTriggers(input, options)
    return self:invokeOperation(input, {
        name = "PutRepositoryTriggers",
        input_schema = schemas.PutRepositoryTriggersInput,
        output_schema = schemas.PutRepositoryTriggersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = schemas.TagResourceInput,
        output_schema = schemas.TagResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:testRepositoryTriggers(input, options)
    return self:invokeOperation(input, {
        name = "TestRepositoryTriggers",
        input_schema = schemas.TestRepositoryTriggersInput,
        output_schema = schemas.TestRepositoryTriggersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = schemas.UntagResourceInput,
        output_schema = schemas.UntagResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateApprovalRuleTemplateContent(input, options)
    return self:invokeOperation(input, {
        name = "UpdateApprovalRuleTemplateContent",
        input_schema = schemas.UpdateApprovalRuleTemplateContentInput,
        output_schema = schemas.UpdateApprovalRuleTemplateContentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateApprovalRuleTemplateDescription(input, options)
    return self:invokeOperation(input, {
        name = "UpdateApprovalRuleTemplateDescription",
        input_schema = schemas.UpdateApprovalRuleTemplateDescriptionInput,
        output_schema = schemas.UpdateApprovalRuleTemplateDescriptionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateApprovalRuleTemplateName(input, options)
    return self:invokeOperation(input, {
        name = "UpdateApprovalRuleTemplateName",
        input_schema = schemas.UpdateApprovalRuleTemplateNameInput,
        output_schema = schemas.UpdateApprovalRuleTemplateNameOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateComment(input, options)
    return self:invokeOperation(input, {
        name = "UpdateComment",
        input_schema = schemas.UpdateCommentInput,
        output_schema = schemas.UpdateCommentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDefaultBranch(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDefaultBranch",
        input_schema = schemas.UpdateDefaultBranchInput,
        output_schema = schemas.UpdateDefaultBranchOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updatePullRequestApprovalRuleContent(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePullRequestApprovalRuleContent",
        input_schema = schemas.UpdatePullRequestApprovalRuleContentInput,
        output_schema = schemas.UpdatePullRequestApprovalRuleContentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updatePullRequestApprovalState(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePullRequestApprovalState",
        input_schema = schemas.UpdatePullRequestApprovalStateInput,
        output_schema = schemas.UpdatePullRequestApprovalStateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updatePullRequestDescription(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePullRequestDescription",
        input_schema = schemas.UpdatePullRequestDescriptionInput,
        output_schema = schemas.UpdatePullRequestDescriptionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updatePullRequestStatus(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePullRequestStatus",
        input_schema = schemas.UpdatePullRequestStatusInput,
        output_schema = schemas.UpdatePullRequestStatusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updatePullRequestTitle(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePullRequestTitle",
        input_schema = schemas.UpdatePullRequestTitleInput,
        output_schema = schemas.UpdatePullRequestTitleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateRepositoryDescription(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRepositoryDescription",
        input_schema = schemas.UpdateRepositoryDescriptionInput,
        output_schema = schemas.UpdateRepositoryDescriptionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateRepositoryEncryptionKey(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRepositoryEncryptionKey",
        input_schema = schemas.UpdateRepositoryEncryptionKeyInput,
        output_schema = schemas.UpdateRepositoryEncryptionKeyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateRepositoryName(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRepositoryName",
        input_schema = schemas.UpdateRepositoryNameInput,
        output_schema = schemas.UpdateRepositoryNameOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
