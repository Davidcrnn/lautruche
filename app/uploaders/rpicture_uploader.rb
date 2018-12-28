class RpictureUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
version :realisations_image do
    process :resize_to_fill => [600, 400]
  end

version :realisations_show do
    process :resize_to_fill => [600, 400]
  end

version :realisations_thumbnail do
    process :resize_to_fill => [200, 250]
  end
  def extension_white_list
    %w(jpg jpeg gif png)
  end
end
