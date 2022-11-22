Rails.application.config.middleware.use OmniAuth::Builder do
    if Rails.env.devepmet? ||Rails.env.test?
        provider :github, Rails.application.credentials.github[:client_id], Rails.application.credentials.github[:client_secret]
    else
        provider :github,
            Rails.application.credentials.github[:client_id]
            Rails.application.credentials.github[:client_secret]
    end
end
    