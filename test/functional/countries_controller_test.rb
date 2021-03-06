require 'test_helper'

class CountriesControllerTest < ActionController::TestCase
  should_not_respond_to_actions new: :get, destroy: :get

  setup do
    @country = countries(:one)
    @controller = CountriesController.new
  end

  test 'should get index' do
    get :index
    assert_response :success
    assert_not_nil assigns(:countries)
  end

  test 'should create country' do
    assert_difference('Country.count') do
      post :create, country: @country.attributes.merge(code: Time.now.to_s)
    end

    assert_redirected_to country_path(assigns(:country))
  end

  test 'should not create duplicate currency' do
    assert_no_difference('Currency.count') do
      post :create, country: @country.attributes
    end

    assert !assigns[:country].errors[:code].empty?
  end

  test 'should show country' do
    get :show, id: @country.to_param
    assert_response :success
  end

  test 'should get edit' do
    get :edit, id: @country.to_param
    assert_response :success
  end

  test 'should update country' do
    put :update, id: @country.to_param, country: @country.attributes
    assert_redirected_to country_path(assigns(:country))
  end
end
