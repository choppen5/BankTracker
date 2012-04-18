CarrierWave.configure do |config|
  config.cache_dir = "#{Rails.root}/tmp/uploads"

  if Rails.env.production?
    config.fog_credentials = {
      :provider               => 'AWS',                                      # required
      :aws_access_key_id      => 'AKIAJATKGAWCCDNFZN6Q',                     # required
      :aws_secret_access_key  => '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', # required
      :region                 => 'us-east-1'                                 # optional, defaults to 'us-east-1'
    }
    config.storage         = :fog
    config.permissions     = 0666
    config.fog_directory   = 'assets-banktracker'  # required
    config.fog_public      = true # optional, defaults to true

  elsif Rails.env.development?
    config.storage = :file
  end
end


