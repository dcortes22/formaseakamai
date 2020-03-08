CarrierWave.configure do |config|
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     ENV['AWS_ACCESS_KEY_ID'],                        # required unless using use_iam_profile
    aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],    # required unless using use_iam_profile
    region:                ENV["REGION"]                  # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = ENV['FOG_DIRECTORY']                                      # required
  config.fog_public     =  false 
  config.fog_attributes = { cache_control: "public, max-age=#{365.days.to_i}" }
end