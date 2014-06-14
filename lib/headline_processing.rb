module HeadlineProcessing
  class Windows
    @@client_id    = Rails.application.secrets.windows_client_id
    @@client_secret = Rails.application.secrets.windows_client_secret
  end
end
