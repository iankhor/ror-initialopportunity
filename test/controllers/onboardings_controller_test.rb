require 'test_helper'

class OnboardingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @onboarding = onboardings(:one)
  end

  test "should get index" do
    get onboardings_url
    assert_response :success
  end

  test "should get new" do
    get new_onboarding_url
    assert_response :success
  end

  test "should create onboarding" do
    assert_difference('Onboarding.count') do
      post onboardings_url, params: { onboarding: { invest_location_preferences: @onboarding.invest_location_preferences, invitation_preference: @onboarding.invitation_preference, is_SMSF: @onboarding.is_SMSF, no_of_investment: @onboarding.no_of_investment, stock_interest: @onboarding.stock_interest, transaction_size: @onboarding.transaction_size, transaction_timeframe: @onboarding.transaction_timeframe } }
    end

    assert_redirected_to onboarding_url(Onboarding.last)
  end

  test "should show onboarding" do
    get onboarding_url(@onboarding)
    assert_response :success
  end

  test "should get edit" do
    get edit_onboarding_url(@onboarding)
    assert_response :success
  end

  test "should update onboarding" do
    patch onboarding_url(@onboarding), params: { onboarding: { invest_location_preferences: @onboarding.invest_location_preferences, invitation_preference: @onboarding.invitation_preference, is_SMSF: @onboarding.is_SMSF, no_of_investment: @onboarding.no_of_investment, stock_interest: @onboarding.stock_interest, transaction_size: @onboarding.transaction_size, transaction_timeframe: @onboarding.transaction_timeframe } }
    assert_redirected_to onboarding_url(@onboarding)
  end

  test "should destroy onboarding" do
    assert_difference('Onboarding.count', -1) do
      delete onboarding_url(@onboarding)
    end

    assert_redirected_to onboardings_url
  end
end
