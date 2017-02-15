class AnalyticsController < ApplicationController
  before_action :set_analytic, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!


  # GET /analytics
  # GET /analytics.json
  def index
    @analytics = Analytic.all
  end

  # GET /analytics/1
  # GET /analytics/1.json
  def show
  end

  # GET /analytics/new
  def new
    @analytic = Analytic.new
  end

  # GET /analytics/1/edit
  def edit
  end

  # POST /analytics
  # POST /analytics.json
  def create
    @analytic = Analytic.new(analytic_params)

    respond_to do |format|
      if @analytic.save
        format.html { redirect_to @analytic, notice: 'Analytic was successfully created.' }
        format.json { render :show, status: :created, location: @analytic }
      else
        format.html { render :new }
        format.json { render json: @analytic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /analytics/1
  # PATCH/PUT /analytics/1.json
  def update
    respond_to do |format|
      if @analytic.update(analytic_params)
        format.html { redirect_to @analytic, notice: 'Analytic was successfully updated.' }
        format.json { render :show, status: :ok, location: @analytic }
      else
        format.html { render :edit }
        format.json { render json: @analytic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /analytics/1
  # DELETE /analytics/1.json
  def destroy
    @analytic.destroy
    respond_to do |format|
      format.html { redirect_to analytics_url, notice: 'Analytic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def track_clicks() 
    # what button was clicked
    click_item = params[:item].to_s

    # if user is not in analytics db, create one entry 
    @analytics = Analytic.find_by_user_id(current_user.id)
    @analytics ||= Analytic.new( { user_id: current_user.id } )

    # performed database actions
    click_action(@analytics, click_item)

    # puts "\n"
    # puts "*******  DEBUG  START  ********"
    # puts "@analytics.user_id :" + @analytics.user_id.to_s
    # puts "@analytics.download_brochure_timestamp :" + @analytics.download_brochure_timestamp.to_s
    # puts "@analytics.callback_timestamp :" + @analytics.callback_timestamp.to_s
    # puts "@analytics.project_id :" + @analytics.project_id.to_s
    # puts "click_item :" + click_item.to_s
    # puts "*******  DEBUG  END  ********"
    # puts "\n"

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_analytic
      @analytic = Analytic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def analytic_params
      params.require(:analytic).permit(:email, :project_id, :download_brochure_timestamp, :callback_timestamp)
    end

    # click_action helper method to determine what was clicked
    def click_action(analytics, click_item)

      case click_item
      when "download_brochure_clicked" then 
        analytics.download_brochure_timestamp = DateTime.now

        # send file after click
        send_file(
          Rails.root.join('app' , 'assets', 'downloads', 'dummypdf.pdf'),
          type: 'application/pdf',
          x_sendfile: true
        )

      when "callback_clicked" then
        analytics.callback_timestamp = DateTime.now
      end

      # save to database
      analytics.save

    end

end

