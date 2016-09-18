class Admin::BannerImageController < AdminController

  def destroy
    @page = Page.friendly.find(params[:page_id])
    @image = @page.banner_images.find(params[:id])
    @image.destroy
    redirect_to edit_admin_page_path(@page)
  end

end
