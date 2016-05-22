class BannerImagesController < ApplicationController
  before_action :set_banner_image, only: [:show, :edit, :update, :destroy]

  # GET /banner_images
  def index
    @banner_images = BannerImage.all
  end

  # GET /banner_images/1
  def show
  end

  # GET /banner_images/new
  def new
    @banner_image = BannerImage.new
  end

  # GET /banner_images/1/edit
  def edit
  end

  # POST /banner_images
  def create
    @banner_image = BannerImage.new(banner_image_params)

    if @banner_image.save
      redirect_to @banner_image, notice: 'Banner image was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /banner_images/1
  def update
    if @banner_image.update(banner_image_params)
      redirect_to @banner_image, notice: 'Banner image was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /banner_images/1
  def destroy
    @banner_image.destroy
    redirect_to banner_images_url, notice: 'Banner image was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_banner_image
      @banner_image = BannerImage.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def banner_image_params
      params.require(:banner_image).permit(:image, :page_id)
    end
end
