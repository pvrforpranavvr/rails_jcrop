class AvatarUploadersController < ApplicationController


  def index
  end

  def new
    uploaded_io = params[:avatar]
    crop_x=params[:cropx]
    crop_y=params[:cropy]
    crop_w=params[:cropw]
    crop_h=params[:croph]
    image = MiniMagick::Image.open(uploaded_io.path)
    dir = Rails.root.join('public', 'uploads')
    FileUtils.mkdir_p(dir) unless File.directory?(dir)
    # image.crop(crop_w+'x'+crop_h+'+'+crop_x+'+'+crop_y)
    image.crop("#{crop_w}x#{crop_h}+#{crop_x}+#{crop_y}")
    image.write(dir.join(uploaded_io.original_filename))
  end

end
