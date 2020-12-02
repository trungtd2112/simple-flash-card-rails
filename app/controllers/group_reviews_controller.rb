class GroupReviewsController < ApplicationController
  before_action :set_group_review, only: [:show, :edit, :update, :destroy]

  # GET /group_reviews
  # GET /group_reviews.json
  def index
    @group_reviews = GroupReview.all
  end

  # GET /group_reviews/1
  # GET /group_reviews/1.json
  def show
  end

  # GET /group_reviews/new
  def new
    @group_review = GroupReview.new
  end

  # GET /group_reviews/1/edit
  def edit
  end

  # POST /group_reviews
  # POST /group_reviews.json
  def create
    @group_review = GroupReview.new(group_review_params)
    @group_review.user_id = current_user.id
    respond_to do |format|
      if @group_review.save
        url = "/groups/" + @group_review.group_id.to_s
        format.html { redirect_to url, notice: 'Group review was successfully created.' }
        format.json { render :show, status: :created, location: @group_review }
      else
        format.html { render :new }
        format.json { render json: @group_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /group_reviews/1
  # PATCH/PUT /group_reviews/1.json
  def update
    respond_to do |format|
      if @group_review.update(group_review_params)
        format.html { redirect_to @group_review, notice: 'Group review was successfully updated.' }
        format.json { render :show, status: :ok, location: @group_review }
      else
        format.html { render :edit }
        format.json { render json: @group_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /group_reviews/1
  # DELETE /group_reviews/1.json
  def destroy
    @group_review.destroy
    respond_to do |format|
      format.html { redirect_to group_reviews_url, notice: 'Group review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group_review
      @group_review = GroupReview.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def group_review_params
      params.require(:group_review).permit(:user_id, :group_id, :review)
    end
end
