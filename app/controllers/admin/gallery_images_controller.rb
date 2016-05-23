class Admin::GalleryImagesController < AdminController

  def index
    @gallery_images = GalleryImage.all
    @gallery = GalleryImage.new
  end

  def destroy
    @gallery_image = GalleryImage.find(params[:id])
    @gallery_image.destroy
    redirect_to admin_gallery_images_path
  end

  def create
    params["images"].each do |image|
      GalleryImage.create(image: image) unless image.blank?
    end
    redirect_to admin_gallery_images_path
  end

end
