class BpictureUploader < CarrierWave::Uploader::Base
   include Cloudinary::CarrierWave
version :bijous_image do
    process :resize_to_fill => [600, 400]
  end

version :bijous_show do
    process :resize_to_fill => [600, 400]
  end

version :bijous_thumbnail do
    process :resize_to_fill => [200, 250]
  end
  def extension_white_list
    %w(jpg jpeg gif png)
  end
end
