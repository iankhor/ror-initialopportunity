class DevelopmentsController < ApplicationController
  before_action :set_development, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :check_user

  # GET /developments
  # GET /developments.json
  def index
    @developments = Development.all
  end

  # GET /developments/1
  # GET /developments/1.json
  def show
  end

  # GET /developments/new
  def new
    @development = Development.new
  end

  # GET /developments/1/edit
  def edit
  end

  # POST /developments
  # POST /developments.json
  def create
    @development = Development.new(development_params)

    respond_to do |format|
      if @development.save
        format.html { redirect_to @development, notice: 'Development was successfully created.' }
        format.json { render :show, status: :created, location: @development }
      else
        format.html { render :new }
        format.json { render json: @development.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /developments/1
  # PATCH/PUT /developments/1.json
  def update
    respond_to do |format|
      if @development.update(development_params)
        format.html { redirect_to @development, notice: 'Development was successfully updated.' }
        format.json { render :show, status: :ok, location: @development }
      else
        format.html { render :edit }
        format.json { render json: @development.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /developments/1
  # DELETE /developments/1.json
  def destroy
    @development.destroy
    respond_to do |format|
      format.html { redirect_to developments_url, notice: 'Development was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_development
      @development = Development.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def development_params
      params.require(:development).permit(:image_filename, :desc, :development_name, :is_displayed, :development_type)
    end

    # check if current user admin if not redirect to a 404
    def check_user

      if !current_user.admin? 
        redirect_to root_path
      end

    end
end
