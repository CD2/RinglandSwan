class Admin::PagesController < AdminController
  before_action :set_page, only: [:edit, :update, :destroy]

  def index
    @pages = Page.all
  end

  def new
    @page = Page.new
  end

  def edit
  end

  def create
    @page = Page.new(page_params)

    if @page.save
      redirect_to @page
    else
      render :new
    end
  end

  def update
    if @page.update(page_params)
      redirect_to @page
    else
      render :edit
    end
  end

  def destroy
    @page.destroy
    redirect_to admin_pages_url
  end

  private

    def set_page
      @page = Page.friendly.find(params[:id])
    end

    def page_params
      params.require(:page).permit(:name, :body, :summary, :page_title, :banner_caption, :meta_description, :menu_name, :include_in_menu, :featured, :sidebar)
    end

end
