



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("codecommit.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("codecommit.schemas")
local traits = require("smithy.traits")
local types = require("codecommit.types")
local sdk_defaults = require("aws.sdk_defaults")





















































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "CodeCommit_20150413"
   if not c.protocol then c.protocol = awsjson_protocol.new({ version = "1.1", service_id = c.service_id }) end
   if not c.endpoint_provider then
      c.endpoint_provider = function(params)
         return endpoint.resolve(endpoint_rules, params)
      end
   end
   if not c.auth_scheme_resolver then
      c.auth_scheme_resolver = function(_service, operation)
         local auth_trait = operation:trait(traits.AUTH) or _service:trait(traits.AUTH)
         local options = {}
         for _, scheme in ipairs(auth_trait or {}) do
            local scheme_id = scheme.scheme_id or scheme
            if scheme_id == "aws.auth#sigv4" or scheme_id == "aws.auth#sigv4a" then
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "codecommit", signing_region = c.region } }
            else
               options[#options + 1] = { scheme_id = scheme_id }
            end
         end
         return options
      end
   end
   defaults.resolve_auth_schemes(c)
   defaults.resolve_identity_resolvers(c)
   defaults.resolve_http_client(c)
   defaults.resolve_retry_strategy(c)
   sdk_defaults.resolve_identity_resolver(c)
   local self = setmetatable(base_client.new(c), Client_mt)
   return self
end

function C:associateApprovalRuleTemplateWithRepository(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateApprovalRuleTemplateWithRepository, input, options)
end

function C:batchAssociateApprovalRuleTemplateWithRepositories(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchAssociateApprovalRuleTemplateWithRepositories, input, options)
end

function C:batchDescribeMergeConflicts(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchDescribeMergeConflicts, input, options)
end

function C:batchDisassociateApprovalRuleTemplateFromRepositories(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchDisassociateApprovalRuleTemplateFromRepositories, input, options)
end

function C:batchGetCommits(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetCommits, input, options)
end

function C:batchGetRepositories(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetRepositories, input, options)
end

function C:createApprovalRuleTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateApprovalRuleTemplate, input, options)
end

function C:createBranch(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateBranch, input, options)
end

function C:createCommit(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCommit, input, options)
end

function C:createPullRequest(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePullRequest, input, options)
end

function C:createPullRequestApprovalRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePullRequestApprovalRule, input, options)
end

function C:createRepository(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRepository, input, options)
end

function C:createUnreferencedMergeCommit(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateUnreferencedMergeCommit, input, options)
end

function C:deleteApprovalRuleTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteApprovalRuleTemplate, input, options)
end

function C:deleteBranch(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteBranch, input, options)
end

function C:deleteCommentContent(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCommentContent, input, options)
end

function C:deleteFile(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteFile, input, options)
end

function C:deletePullRequestApprovalRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePullRequestApprovalRule, input, options)
end

function C:deleteRepository(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRepository, input, options)
end

function C:describeMergeConflicts(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeMergeConflicts, input, options)
end

function C:describePullRequestEvents(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribePullRequestEvents, input, options)
end

function C:disassociateApprovalRuleTemplateFromRepository(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateApprovalRuleTemplateFromRepository, input, options)
end

function C:evaluatePullRequestApprovalRules(input, options)
   return self:invokeOperation(schemas.Service, schemas.EvaluatePullRequestApprovalRules, input, options)
end

function C:getApprovalRuleTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetApprovalRuleTemplate, input, options)
end

function C:getBlob(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBlob, input, options)
end

function C:getBranch(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBranch, input, options)
end

function C:getComment(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetComment, input, options)
end

function C:getCommentReactions(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCommentReactions, input, options)
end

function C:getCommentsForComparedCommit(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCommentsForComparedCommit, input, options)
end

function C:getCommentsForPullRequest(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCommentsForPullRequest, input, options)
end

function C:getCommit(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCommit, input, options)
end

function C:getDifferences(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDifferences, input, options)
end

function C:getFile(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetFile, input, options)
end

function C:getFolder(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetFolder, input, options)
end

function C:getMergeCommit(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMergeCommit, input, options)
end

function C:getMergeConflicts(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMergeConflicts, input, options)
end

function C:getMergeOptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMergeOptions, input, options)
end

function C:getPullRequest(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPullRequest, input, options)
end

function C:getPullRequestApprovalStates(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPullRequestApprovalStates, input, options)
end

function C:getPullRequestOverrideState(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPullRequestOverrideState, input, options)
end

function C:getRepository(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRepository, input, options)
end

function C:getRepositoryTriggers(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRepositoryTriggers, input, options)
end

function C:listApprovalRuleTemplates(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListApprovalRuleTemplates, input, options)
end

function C:listAssociatedApprovalRuleTemplatesForRepository(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAssociatedApprovalRuleTemplatesForRepository, input, options)
end

function C:listBranches(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBranches, input, options)
end

function C:listFileCommitHistory(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFileCommitHistory, input, options)
end

function C:listPullRequests(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPullRequests, input, options)
end

function C:listRepositories(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRepositories, input, options)
end

function C:listRepositoriesForApprovalRuleTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRepositoriesForApprovalRuleTemplate, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:mergeBranchesByFastForward(input, options)
   return self:invokeOperation(schemas.Service, schemas.MergeBranchesByFastForward, input, options)
end

function C:mergeBranchesBySquash(input, options)
   return self:invokeOperation(schemas.Service, schemas.MergeBranchesBySquash, input, options)
end

function C:mergeBranchesByThreeWay(input, options)
   return self:invokeOperation(schemas.Service, schemas.MergeBranchesByThreeWay, input, options)
end

function C:mergePullRequestByFastForward(input, options)
   return self:invokeOperation(schemas.Service, schemas.MergePullRequestByFastForward, input, options)
end

function C:mergePullRequestBySquash(input, options)
   return self:invokeOperation(schemas.Service, schemas.MergePullRequestBySquash, input, options)
end

function C:mergePullRequestByThreeWay(input, options)
   return self:invokeOperation(schemas.Service, schemas.MergePullRequestByThreeWay, input, options)
end

function C:overridePullRequestApprovalRules(input, options)
   return self:invokeOperation(schemas.Service, schemas.OverridePullRequestApprovalRules, input, options)
end

function C:postCommentForComparedCommit(input, options)
   return self:invokeOperation(schemas.Service, schemas.PostCommentForComparedCommit, input, options)
end

function C:postCommentForPullRequest(input, options)
   return self:invokeOperation(schemas.Service, schemas.PostCommentForPullRequest, input, options)
end

function C:postCommentReply(input, options)
   return self:invokeOperation(schemas.Service, schemas.PostCommentReply, input, options)
end

function C:putCommentReaction(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutCommentReaction, input, options)
end

function C:putFile(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutFile, input, options)
end

function C:putRepositoryTriggers(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutRepositoryTriggers, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:testRepositoryTriggers(input, options)
   return self:invokeOperation(schemas.Service, schemas.TestRepositoryTriggers, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateApprovalRuleTemplateContent(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateApprovalRuleTemplateContent, input, options)
end

function C:updateApprovalRuleTemplateDescription(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateApprovalRuleTemplateDescription, input, options)
end

function C:updateApprovalRuleTemplateName(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateApprovalRuleTemplateName, input, options)
end

function C:updateComment(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateComment, input, options)
end

function C:updateDefaultBranch(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDefaultBranch, input, options)
end

function C:updatePullRequestApprovalRuleContent(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePullRequestApprovalRuleContent, input, options)
end

function C:updatePullRequestApprovalState(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePullRequestApprovalState, input, options)
end

function C:updatePullRequestDescription(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePullRequestDescription, input, options)
end

function C:updatePullRequestStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePullRequestStatus, input, options)
end

function C:updatePullRequestTitle(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePullRequestTitle, input, options)
end

function C:updateRepositoryDescription(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRepositoryDescription, input, options)
end

function C:updateRepositoryEncryptionKey(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRepositoryEncryptionKey, input, options)
end

function C:updateRepositoryName(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRepositoryName, input, options)
end

return M
