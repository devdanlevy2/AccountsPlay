require 'test_helper'

class BlackAccountsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @black_account = black_accounts(:one)
  end

  test "should get index" do
    get black_accounts_url
    assert_response :success
  end

  test "should get new" do
    get new_black_account_url
    assert_response :success
  end

  test "should create black_account" do
    assert_difference('BlackAccount.count') do
      post black_accounts_url, params: { black_account: { Accountid: @black_account.Accountid, accountBalance: @black_account.accountBalance, accountLimit: @black_account.accountLimit, apr: @black_account.apr, name: @black_account.name, userId: @black_account.userId } }
    end

    assert_redirected_to black_account_url(BlackAccount.last)
  end

  test "should show black_account" do
    get black_account_url(@black_account)
    assert_response :success
  end

  test "should get edit" do
    get edit_black_account_url(@black_account)
    assert_response :success
  end

  test "should update black_account" do
    patch black_account_url(@black_account), params: { black_account: { Accountid: @black_account.Accountid, accountBalance: @black_account.accountBalance, accountLimit: @black_account.accountLimit, apr: @black_account.apr, name: @black_account.name, userId: @black_account.userId } }
    assert_redirected_to black_account_url(@black_account)
  end

  test "should destroy black_account" do
    assert_difference('BlackAccount.count', -1) do
      delete black_account_url(@black_account)
    end

    assert_redirected_to black_accounts_url
  end
end
