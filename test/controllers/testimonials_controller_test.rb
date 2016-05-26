require 'test_helper'

class TestimonialsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @testimonial = testimonials(:one)
  end

  test "should get index" do
    get testimonials_url
    assert_response :success
  end

  test "should get new" do
    get new_testimonial_url
    assert_response :success
  end

  test "should create testimonial" do
    assert_difference('Testimonial.count') do
      post testimonials_url, params: { testimonial: { author: @testimonial.author, body: @testimonial.body, name: @testimonial.name } }
    end

    assert_redirected_to testimonial_path(Testimonial.last)
  end

  test "should show testimonial" do
    get testimonial_url(@testimonial)
    assert_response :success
  end

  test "should get edit" do
    get edit_testimonial_url(@testimonial)
    assert_response :success
  end

  test "should update testimonial" do
    patch testimonial_url(@testimonial), params: { testimonial: { author: @testimonial.author, body: @testimonial.body, name: @testimonial.name } }
    assert_redirected_to testimonial_path(@testimonial)
  end

  test "should destroy testimonial" do
    assert_difference('Testimonial.count', -1) do
      delete testimonial_url(@testimonial)
    end

    assert_redirected_to testimonials_path
  end
end
