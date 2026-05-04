local types = require("acmpca.types")

local record Client
    createCertificateAuthority: function(Client, types.CreateCertificateAuthorityInput): types.CreateCertificateAuthorityOutput, table
    createCertificateAuthorityAuditReport: function(Client, types.CreateCertificateAuthorityAuditReportInput): types.CreateCertificateAuthorityAuditReportOutput, table
    createPermission: function(Client, types.CreatePermissionInput): types.CreatePermissionOutput, table
    deleteCertificateAuthority: function(Client, types.DeleteCertificateAuthorityInput): types.DeleteCertificateAuthorityOutput, table
    deletePermission: function(Client, types.DeletePermissionInput): types.DeletePermissionOutput, table
    deletePolicy: function(Client, types.DeletePolicyInput): types.DeletePolicyOutput, table
    describeCertificateAuthority: function(Client, types.DescribeCertificateAuthorityInput): types.DescribeCertificateAuthorityOutput, table
    describeCertificateAuthorityAuditReport: function(Client, types.DescribeCertificateAuthorityAuditReportInput): types.DescribeCertificateAuthorityAuditReportOutput, table
    getCertificate: function(Client, types.GetCertificateInput): types.GetCertificateOutput, table
    getCertificateAuthorityCertificate: function(Client, types.GetCertificateAuthorityCertificateInput): types.GetCertificateAuthorityCertificateOutput, table
    getCertificateAuthorityCsr: function(Client, types.GetCertificateAuthorityCsrInput): types.GetCertificateAuthorityCsrOutput, table
    getPolicy: function(Client, types.GetPolicyInput): types.GetPolicyOutput, table
    importCertificateAuthorityCertificate: function(Client, types.ImportCertificateAuthorityCertificateInput): types.ImportCertificateAuthorityCertificateOutput, table
    issueCertificate: function(Client, types.IssueCertificateInput): types.IssueCertificateOutput, table
    listCertificateAuthorities: function(Client, types.ListCertificateAuthoritiesInput): types.ListCertificateAuthoritiesOutput, table
    listPermissions: function(Client, types.ListPermissionsInput): types.ListPermissionsOutput, table
    listTags: function(Client, types.ListTagsInput): types.ListTagsOutput, table
    putPolicy: function(Client, types.PutPolicyInput): types.PutPolicyOutput, table
    restoreCertificateAuthority: function(Client, types.RestoreCertificateAuthorityInput): types.RestoreCertificateAuthorityOutput, table
    revokeCertificate: function(Client, types.RevokeCertificateInput): types.RevokeCertificateOutput, table
    tagCertificateAuthority: function(Client, types.TagCertificateAuthorityInput): types.TagCertificateAuthorityOutput, table
    untagCertificateAuthority: function(Client, types.UntagCertificateAuthorityInput): types.UntagCertificateAuthorityOutput, table
    updateCertificateAuthority: function(Client, types.UpdateCertificateAuthorityInput): types.UpdateCertificateAuthorityOutput, table
end

local record M
    new: function(table): Client
end

return M
