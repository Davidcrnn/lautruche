class LphotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
end
