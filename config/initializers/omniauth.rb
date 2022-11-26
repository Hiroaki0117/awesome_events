Rails.application.config.middleware.use OmniAuth::Builder do
    if Rails.env.development? ||Rails.env.test?
        provider :github, "dc92494564113e5a894c", "2dfd33f0ec20968757a4a900cdedec797880d04d"
    else
        # provider :github,
        #     Rails.application.credentials.github[:client_id]
        #     Rails.application.credentials.github[:client_secret]
    end
end
    