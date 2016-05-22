class GalleryImagesController < ApplicationController

  def index
    @page = Page.find_by(machine_name: 'gallery')
    @gallery_images = GalleryImage.all
  end

end
