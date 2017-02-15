class AccountController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = User.find_by(email: current_user.email)
    @onboarding = Onboarding.find_by(email: current_user.email)
  end

end
