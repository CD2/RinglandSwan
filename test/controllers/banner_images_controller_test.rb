require 'test_helper'

class BannerImagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @banner_image = banner_images(:one)
  end

  test "should get index" do
    get banner_images_url
    assert_response :success
  end

  test "should get new" do
    get new_banner_image_url
    assert_response :success
  end

  test "should create banner_image" do
    assert_difference('BannerImage.count') do
      post banner_images_url, params: { banner_image: { image: @banner_image.image, page_id: @banner_image.page_id } }
    end

    assert_redirected_to banner_image_path(BannerImage.last)
  end

  test "should show banner_image" do
    get banner_image_url(@banner_image)
    assert_response :success
  end

  test "should get edit" do
    get edit_banner_image_url(@banner_image)
    assert_response :success
  end

  test "should update banner_image" do
    patch banner_image_url(@banner_image), params: { banner_image: { image: @banner_image.image, page_id: @banner_image.page_id } }
    assert_redirected_to banner_image_path(@banner_image)
  end

  test "should destroy banner_image" do
    assert_difference('BannerImage.count', -1) do
      delete banner_image_url(@banner_image)
    end

    assert_redirected_to banner_images_path
  end
end
