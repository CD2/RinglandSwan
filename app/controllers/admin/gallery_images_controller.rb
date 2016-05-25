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

  def edit
    @gallery = GalleryImage.find(params[:id])
  end

  def update
    @gallery = GalleryImage.find(params[:id])
    if @gallery.update(gallery_params)
      if (tags = params[:gallery_image][:tags])
        tags.split(',').each do |tag|
          t = Tag.find_or_create_by(tag: tag.strip)
          @gallery.gallery_tags.create(tag_id: t.id)
        end
      end
      redirect_to admin_gallery_images_path
    else
      render :edit
    end
  end

  private

    def gallery_params
      params.require(:gallery_image).permit(:id, :image, :tags)
    end

end
