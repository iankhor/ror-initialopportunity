class OnboardingsController < ApplicationController
  before_action :set_onboarding, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # custom layout
  layout 'onboarding'

  def index
    @onboardings = Onboarding.all
  end

  def show
  end

  def new

    @wizard = ModelWizard.new(Onboarding, session, params).start
    @onboarding = @wizard.object

  end

  def edit
      @wizard = ModelWizard.new(@onboarding, session, params).start
  end

  def create

    @wizard = ModelWizard.new(Onboarding, session, params, onboarding_params).continue
    @onboarding = @wizard.object
    @onboarding.email = current_user.email

    respond_to do |format|
          if @wizard.save
            format.html { redirect_to @onboarding, notice: 'Onboarding was successfully created.' }
            format.json { render :show, status: :created, location: @onboarding }
          else
            format.html { render :new }
            format.json { render json: @onboarding.errors, status: :unprocessable_entity }
          end
    end
  end

  # PATCH/PUT /onboardings/1
  # PATCH/PUT /onboardings/1.json
  def update
    @wizard = ModelWizard.new(@onboarding, session, params, onboarding_params).continue
    @onboarding = @wizard.object

    respond_to do |format|
      if @wizard.save
        format.html { redirect_to @onboarding, notice: 'Onboarding was successfully updated.' }
        format.json { render :show, status: :ok, location: @onboarding }
      else
        format.html { render :edit }
        format.json { render json: @onboarding.errors, status: :unprocessable_entity }
      end
    end

  end

  def destroy
    @onboarding.destroy
    respond_to do |format|
      format.html { redirect_to onboardings_url, notice: 'Onboarding was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_onboarding
      @onboarding = Onboarding.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def onboarding_params
      params.require(:onboarding).permit(:current_step,
                                         :email,
                                         :no_of_investment, 
                                         :is_SMSF, 
                                         :invest_location_preferences, 
                                         :stock_interest, 
                                         :transaction_timeframe, 
                                         :transaction_size, 
                                         :invitation_preference)
    end
end
