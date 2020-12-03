class StudySetsController < ApplicationController
  before_action :set_study_set, only: [:show, :edit, :update, :destroy]

  # GET /study_sets
  # GET /study_sets.json
  def index
    @study_sets = StudySet.all
  end

  # GET /study_sets/1
  # GET /study_sets/1.json
  def show
  end

  # GET /study_sets/new
  def new
    @study_set = StudySet.new
  end

  # GET /study_sets/1/edit
  def edit
  end

  # POST /study_sets
  # POST /study_sets.json
  def create
    @study_set = StudySet.new(study_set_params)

    respond_to do |format|
      if @study_set.save
        format.html { redirect_to @study_set, notice: 'Study set was successfully created.' }
        format.json { render :show, status: :created, location: @study_set }
      else
        format.html { render :new }
        format.json { render json: @study_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /study_sets/1
  # PATCH/PUT /study_sets/1.json
  def update
    respond_to do |format|
      if @study_set.update(study_set_params)
        format.html { redirect_to @study_set, notice: 'Study set was successfully updated.' }
        format.json { render :show, status: :ok, location: @study_set }
      else
        format.html { render :edit }
        format.json { render json: @study_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /study_sets/1
  # DELETE /study_sets/1.json
  def destroy
    @study_set.destroy
    respond_to do |format|
      format.html { redirect_to study_sets_url, notice: 'Study set was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_study_set
      @study_set = StudySet.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def study_set_params
      params.require(:study_set).permit(:user_id, :name)
    end
end
