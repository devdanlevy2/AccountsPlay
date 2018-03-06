require 'test_helper'

class BlueAccountsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @blue_account = blue_accounts(:one)
  end

  test "should get index" do
    get blue_accounts_url
    assert_response :success
  end

  test "should get new" do
    get new_blue_account_url
    assert_response :success
  end

  test "should create blue_account" do
    assert_difference('BlueAccount.count') do
      post blue_accounts_url, params: { blue_account: { Accountid: @blue_account.Accountid, Address: @blue_account.Address, accountBalance: @blue_account.accountBalance, contactInformation: @blue_account.contactInformation, name: @blue_account.name, paymentDate: @blue_account.paymentDate, userID: @blue_account.userID } }
    end

    assert_redirected_to blue_account_url(BlueAccount.last)
  end

  test "should show blue_account" do
    get blue_account_url(@blue_account)
    assert_response :success
  end

  test "should get edit" do
    get edit_blue_account_url(@blue_account)
    assert_response :success
  end

  test "should update blue_account" do
    patch blue_account_url(@blue_account), params: { blue_account: { Accountid: @blue_account.Accountid, Address: @blue_account.Address, accountBalance: @blue_account.accountBalance, contactInformation: @blue_account.contactInformation, name: @blue_account.name, paymentDate: @blue_account.paymentDate, userID: @blue_account.userID } }
    assert_redirected_to blue_account_url(@blue_account)
  end

  test "should destroy blue_account" do
    assert_difference('BlueAccount.count', -1) do
      delete blue_account_url(@blue_account)
    end

    assert_redirected_to blue_accounts_url
  end
end
