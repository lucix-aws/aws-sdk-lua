local record AssumeRoleForPodIdentityInput
    clusterName: string
    token: string
end

local record AssumeRoleForPodIdentityOutput
    subject: Subject
    audience: string
    podIdentityAssociation: PodIdentityAssociation
    assumedRoleUser: AssumedRoleUser
    credentials: Credentials
end

local record AccessDeniedException
    message: string
end

local record ExpiredTokenException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterException
    message: string
end

local record InvalidRequestException
    message: string
end

local record InvalidTokenException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record M
    AssumeRoleForPodIdentityInput: AssumeRoleForPodIdentityInput
    AssumeRoleForPodIdentityOutput: AssumeRoleForPodIdentityOutput
end

return M
