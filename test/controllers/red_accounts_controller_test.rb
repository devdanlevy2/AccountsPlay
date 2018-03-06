require 'test_helper'

class RedAccountsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @red_account = red_accounts(:one)
  end

  test "should get index" do
    get red_accounts_url
    assert_response :success
  end

  test "should get new" do
    get new_red_account_url
    assert_response :success
  end

  test "should create red_account" do
    assert_difference('RedAccount.count') do
      post red_accounts_url, params: { red_account: { accountBalance: @red_account.accountBalance, accountLimit: @red_account.accountLimit, apr: @red_account.apr, id: @red_account.id, integer: @red_account.integer, name: @red_account.name, paymentDate: @red_account.paymentDate, userID: @red_account.userID } }
    end

    assert_redirected_to red_account_url(RedAccount.last)
  end

  test "should show red_account" do
    get red_account_url(@red_account)
    assert_response :success
  end

  test "should get edit" do
    get edit_red_account_url(@red_account)
    assert_response :success
  end

  test "should update red_account" do
    patch red_account_url(@red_account), params: { red_account: { accountBalance: @red_account.accountBalance, accountLimit: @red_account.accountLimit, apr: @red_account.apr, id: @red_account.id, integer: @red_account.integer, name: @red_account.name, paymentDate: @red_account.paymentDate, userID: @red_account.userID } }
    assert_redirected_to red_account_url(@red_account)
  end

  test "should destroy red_account" do
    assert_difference('RedAccount.count', -1) do
      delete red_account_url(@red_account)
    end

    assert_redirected_to red_accounts_url
  end
end
