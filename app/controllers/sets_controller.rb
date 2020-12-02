class SetsController < ApplicationController
  before_action :set_set, only: [:show, :edit, :update, :destroy]

  # GET /sets
  # GET /sets.json
  def index
    @sets = Set.all
  end

  # GET /sets/1
  # GET /sets/1.json
  def show
    @id = @set.id
    @cards = Photo.where("album_id = ?" , @id)
  end

  # GET /sets/new
  def new
    @set = current_user.sets.build
  end

  # GET /sets/1/edit
  def edit
  end

  # POST /sets
  # POST /sets.json
  def create
    @set = current_user.sets.build(set_params)

    respond_to do |format|
      if @set.save
        format.html { redirect_to @set, notice: 'Set was successfully created.' }
        format.json { render :show, status: :created, location: @set }
      else
        format.html { render :new }
        format.json { render json: @set.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sets/1
  # PATCH/PUT /sets/1.json
  def update
    respond_to do |format|
      if @set.update(set_params)
        format.html { redirect_to @set, notice: 'Set was successfully updated.' }
        format.json { render :show, status: :ok, location: @set }
      else
        format.html { render :edit }
        format.json { render json: @set.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sets/1
  # DELETE /sets/1.json
  def destroy
    @set.destroy
    respond_to do |format|
      format.html { redirect_to sets_url, notice: 'Set was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_set
      @set = Set.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def set_params
      params.require(:set).permit(:user_id, :name)
    end
end
