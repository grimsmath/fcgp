require 'test_helper'

class IndividualsControllerTest < ActionController::TestCase
  setup do
    @individual = individuals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:members)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create individual" do
    assert_difference('Individual.count') do
      post :create, individual: { city: @individual.city, first_name: @individual.first_name, last_name: @individual.last_name, postalcode: @individual.postalcode, state: @individual.state, street1: @individual.street1, street2: @individual.street2 }
    end

    assert_redirected_to individual_path(assigns(:individual))
  end

  test "should show individual" do
    get :show, id: @individual
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @individual
    assert_response :success
  end

  test "should update individual" do
    patch :update, id: @individual, individual: { city: @individual.city, first_name: @individual.first_name, last_name: @individual.last_name, postalcode: @individual.postalcode, state: @individual.state, street1: @individual.street1, street2: @individual.street2 }
    assert_redirected_to individual_path(assigns(:individual))
  end

  test "should destroy individual" do
    assert_difference('Individual.count', -1) do
      delete :destroy, id: @individual
    end

    assert_redirected_to individuals_path
  end
end