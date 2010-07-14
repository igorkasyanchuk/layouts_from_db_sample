require 'test_helper'

class SiteTemplatesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:site_templates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create site_template" do
    assert_difference('SiteTemplate.count') do
      post :create, :site_template => { }
    end

    assert_redirected_to site_template_path(assigns(:site_template))
  end

  test "should show site_template" do
    get :show, :id => site_templates(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => site_templates(:one).to_param
    assert_response :success
  end

  test "should update site_template" do
    put :update, :id => site_templates(:one).to_param, :site_template => { }
    assert_redirected_to site_template_path(assigns(:site_template))
  end

  test "should destroy site_template" do
    assert_difference('SiteTemplate.count', -1) do
      delete :destroy, :id => site_templates(:one).to_param
    end

    assert_redirected_to site_templates_path
  end
end
