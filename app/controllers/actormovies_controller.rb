class ActormoviesController < ApplicationController
  before_action :set_actormovie, only: [:show, :edit, :update, :destroy]

  # GET /actormovies
  # GET /actormovies.json
  def index
    @actormovies = Actormovie.all
  end

  # GET /actormovies/1
  # GET /actormovies/1.json
  def show
  end

  # GET /actormovies/new
  def new
    @actormovie = Actormovie.new
  end

  # GET /actormovies/1/edit
  def edit
  end

  # POST /actormovies
  # POST /actormovies.json
  def create
    @actormovie = Actormovie.new(actormovie_params)

    respond_to do |format|
      if @actormovie.save
        format.html { redirect_to @actormovie, notice: 'Actormovie was successfully created.' }
        format.json { render :show, status: :created, location: @actormovie }
      else
        format.html { render :new }
        format.json { render json: @actormovie.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /actormovies/1
  # PATCH/PUT /actormovies/1.json
  def update
    respond_to do |format|
      if @actormovie.update(actormovie_params)
        format.html { redirect_to @actormovie, notice: 'Actormovie was successfully updated.' }
        format.json { render :show, status: :ok, location: @actormovie }
      else
        format.html { render :edit }
        format.json { render json: @actormovie.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /actormovies/1
  # DELETE /actormovies/1.json
  def destroy
    @actormovie.destroy
    respond_to do |format|
      format.html { redirect_to actormovies_url, notice: 'Actormovie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_actormovie
      @actormovie = Actormovie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def actormovie_params
      params.require(:actormovie).permit(:role, :actor_id, :movie_id)
    end
end
