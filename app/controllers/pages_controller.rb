class PagesController < ApplicationController
  before_action :set_page, except: :sitemap

  def home
  end

  def show
    redirect_to root_path if @page.machine_name == 'home'
    redirect_to contact_us_path if @page.machine_name == 'contact_us'
    redirect_to gallery_images_path if @page.machine_name == 'gallery'
    redirect_to events_path if @page.machine_name == 'whats_on_events'
  end

  def sitemap
    @pages = Page.regular_page
    respond_to do |format|
      format.xml
    end
  end

  private

    def set_page
      @page = Page.find_by(machine_name: action_name) || Page.friendly.find(params[:id])
    end

end
