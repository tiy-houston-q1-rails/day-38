require 'test_helper'

class StockPurchasesControllerTest < ActionController::TestCase
  setup do
    @stock_purchase = stock_purchases(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stock_purchases)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stock_purchase" do
    assert_difference('StockPurchase.count') do
      post :create, stock_purchase: { price: @stock_purchase.price, quantity: @stock_purchase.quantity, symbol: @stock_purchase.symbol }
    end

    assert_redirected_to stock_purchase_path(assigns(:stock_purchase))
  end

  test "should show stock_purchase" do
    get :show, id: @stock_purchase
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stock_purchase
    assert_response :success
  end

  test "should update stock_purchase" do
    patch :update, id: @stock_purchase, stock_purchase: { price: @stock_purchase.price, quantity: @stock_purchase.quantity, symbol: @stock_purchase.symbol }
    assert_redirected_to stock_purchase_path(assigns(:stock_purchase))
  end

  test "should destroy stock_purchase" do
    assert_difference('StockPurchase.count', -1) do
      delete :destroy, id: @stock_purchase
    end

    assert_redirected_to stock_purchases_path
  end
end
