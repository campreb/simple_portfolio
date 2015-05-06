if Rails.env.production?
  Paperclip::Attachment.default_options[:storage] = :fog
  Paperclip::Attachment.default_options[:fog_directory] = 'cp-portfolio'
  Paperclip::Attachment.default_options[:fog_credentials] = {
    provider: 'AWS',
    region: 'eu-central-1',
    scheme: 'https',
    aws_access_key_id: ENV['AWS_ACCESS_ID'],
    aws_secret_access_key: ENV['AWS_SECRET_KEY']
  }
end
