if Rails.env.production?
  Paperclip::Attachment.default_options[:storage] = :s3
  Paperclip::Attachment.default_options[:s3_credentials] = {
    bucket: 'cp-portfolio',
    access_key_id: ENV['AWS_ACCESS_ID'],
    secret_access_key: ENV['AWS_SECRET_KEY']
  }
end
