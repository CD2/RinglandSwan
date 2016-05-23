class Admin::GalleryImagesController < AdminController

  def index
    @gallery_images = GalleryImage.all
  end

end
