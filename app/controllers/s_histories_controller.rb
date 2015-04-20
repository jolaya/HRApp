class SHistoriesController < ApplicationController
  before_filter :authenticate_user!
  before_filter :ensure_admin, :only => [:edit, :destroy]
  before_action :set_s_history, only: [:show, :edit, :update, :destroy]
  # GET /s_histories
  # GET /s_histories.json
  def index
      if current_user.admin? 
        @search = SHistorySearch.new(params[:search])
        @s_histories = @search.scope

      else
        @staffid= Profile.where(:user_id => current_user.id)
        @typeent= TypeEnt.where(:description => "Annual Leave")
        @s_histories = SHistory.where(:staff_id => @staffid, :type_ent => @typeent)
      end

  end

  # GET /s_histories/1
  # GET /s_histories/1.json
  def show
  end

  # GET /s_histories/new
  def new
       @s_history = SHistory.new
  end

  # GET /s_histories/1/edit
  def edit
    
  end

  # POST /s_histories
  # POST /s_histories.json
  def create
    @s_history = SHistory.new(s_history_params)

    respond_to do |format|
      if @s_history.save
        format.html { redirect_to @s_history, notice: 'S history was successfully created.' }
        format.json { render :show, status: :created, location: @s_history }
      else
        format.html { render :new }
        format.json { render json: @s_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /s_histories/1
  # PATCH/PUT /s_histories/1.json
  def update
    respond_to do |format|
      if @s_history.update(s_history_params)
        format.html { redirect_to @s_history, notice: 'S history was successfully updated.' }
        format.json { render :show, status: :ok, location: @s_history }
      else
        format.html { render :edit }
        format.json { render json: @s_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /s_histories/1
  # DELETE /s_histories/1.json
  def destroy
    @s_history.destroy
    respond_to do |format|
      format.html { redirect_to s_histories_url, notice: 'S history was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def ensure_admin
    unless current_user && current_user.admin?
      render :text => "Access Error Message", :status => :unauthorized
    end
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_s_history
      @s_history = SHistory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def s_history_params
      params.require(:s_history).permit(:staff_id, :date, :type_ent_id, :ndays, :observation)
    end
end
