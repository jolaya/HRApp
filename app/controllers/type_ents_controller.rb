class TypeEntsController < ApplicationController
  before_action :set_type_ent, only: [:show, :edit, :update, :destroy]

  # GET /type_ents
  # GET /type_ents.json
  def index
    @type_ents = TypeEnt.all
  end

  # GET /type_ents/1
  # GET /type_ents/1.json
  def show
  end

  # GET /type_ents/new
  def new
    @type_ent = TypeEnt.new
  end

  # GET /type_ents/1/edit
  def edit
  end

  # POST /type_ents
  # POST /type_ents.json
  def create
    @type_ent = TypeEnt.new(type_ent_params)

    respond_to do |format|
      if @type_ent.save
        format.html { redirect_to @type_ent, notice: 'Type ent was successfully created.' }
        format.json { render :show, status: :created, location: @type_ent }
      else
        format.html { render :new }
        format.json { render json: @type_ent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_ents/1
  # PATCH/PUT /type_ents/1.json
  def update
    respond_to do |format|
      if @type_ent.update(type_ent_params)
        format.html { redirect_to @type_ent, notice: 'Type ent was successfully updated.' }
        format.json { render :show, status: :ok, location: @type_ent }
      else
        format.html { render :edit }
        format.json { render json: @type_ent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_ents/1
  # DELETE /type_ents/1.json
  def destroy
    @type_ent.destroy
    respond_to do |format|
      format.html { redirect_to type_ents_url, notice: 'Type ent was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_ent
      @type_ent = TypeEnt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def type_ent_params
      params.require(:type_ent).permit(:initial, :description)
    end
end
